cache <- new.env(parent = emptyenv())

# Read a given API's definition and documentation files.
read_api <- function(api_name, path) {
  api_path <- file.path(path, "botocore", "data")
  region_config_path <- file.path(api_path, "endpoints.json")

  version <- get_latest_api_version(api_name, api_path)
  files <- get_api_files(version, api_name, api_path)
  if (length(version) == 0 || length(files) == 0) stop("Invalid API")

  api <- jsonlite::read_json(files$service)
  api <- fix_operation_names(api)

  if (!is.null(files$examples)) {
    examples <- jsonlite::read_json(files$examples)
    api <- merge_examples(api, examples$examples)
  }
  if (!is.null(files$paginators)) {
    paginators <- jsonlite::read_json(files$paginators)$pagination
    api <- merge_paginators(api, api_name, paginators)
  }
  api <- merge_eventstream(api)
  region_config <- get_cache_file(region_config_path)
  api <- merge_region_config(api, region_config)
  api <- fix_region_config(api)

  return(api)
}

# Returns the latest version of the given API.
get_latest_api_version <- function(api_name, path) {
  dir_ls <- list.files(file.path(path, api_name))
  if (length(dir_ls) == 0) stop("Invalid API")
  return(max(as.Date(dir_ls)))
}

# Returns a list of API files for a given API version.
get_api_files <- function(version, api_name, api_path) {
  files <- list.files(file.path(api_path, api_name, version), full.names = TRUE)
  types <- gsub("(-\\d.json)$", "", basename(files))
  names(files) <- types
  return(as.list(files))
}

# Returns an API object with examples merged into the corresponding operations.
merge_examples <- function(api, examples) {
  for (name in names(examples)) {
    operation <- api$operations[[name]]
    operation[["examples"]] <- examples[[name]]
    api$operations[[name]] <- operation
  }
  return(api)
}

# Returns an API object with paginators merged into the corresponding operations.
merge_paginators <- function(api, api_name, paginators) {
  pg <- get_paginators_override()
  missing <- setdiff(names(pg[[api_name]]), names(paginators))
  for (name in names(paginators)) {
    api$operations[[name]][["paginators"]] <- paginators[[name]]
  }
  # merge paginators from aws-sdk-js
  if (length(missing) > 0) {
    for (name in names(pg[[api_name]])) {
      if (!is.null(api$operations[[name]])) {
        api$operations[[name]][["paginators"]] <- pg[[api_name]][[name]]
      }
    }
  }
  return(api)
}

get_paginators_override <- function() {
  if (!is.null(cache$paginators)) {
    return(cache$paginators)
  }
  file_pg <- system.file(
    file.path("extdata", "paginators_override.json"),
    package = "make.paws"
  )
  cache$paginators <- jsonlite::read_json(file_pg)
  return(cache$paginators)
}

get_cache_file <- function(path) {
  if (!is.null(cache[[path]])) {
    return(cache[[path]])
  }
  cache[[path]] <- jsonlite::read_json(path)
  return(cache[[path]])
}

merge_eventstream <- function(api) {
  flat_shape <- unlist(api$shapes)
  eventstream <- flat_shape[endsWith(names(flat_shape), "eventstream")]
  names(eventstream) <- stringr::str_extract(names(eventstream), "([a-zA-Z]+)")

  shape <- flat_shape[endsWith(names(flat_shape), "shape")]
  shape <- shape[shape %in% names(eventstream)]
  names(shape) <- gsub(
    "Output$|Response$|Request$",
    "",
    stringr::str_extract(names(shape), "([a-zA-Z]+)")
  )
  names(eventstream) <- names(shape)

  for (nms in unique(names(eventstream))) {
    api$operations[[nms]]$eventstream <- eventstream[[nms]]
  }
  return(api)
}

# Returns an API object with region config info attached. Region config info
# lists endpoints for each service and region, if different from the default.
merge_region_config <- function(api, region_config) {
  service <- service_name(api)
  endpoint_prefix <- api$metadata$endpointPrefix
  get_rule_names <- function(service) {
    grep(sprintf("/%s$", service), names(region_config$rules), value = TRUE)
  }
  rule_names <- c(get_rule_names(service), get_rule_names("\\*"))
  rules <- list()
  for (rule_name in rule_names) {
    region <- strsplit(rule_name, "/")[[1]][1]
    if (region %in% names(rules)) next

    rule <- region_config$rules[[rule_name]]
    if (is.character(rule)) {
      rule <- region_config$patterns[[rule]]
    }
    rules[[region]] <- list(
      endpoint = gsub("{service}", endpoint_prefix, rule$endpoint, fixed = TRUE),
      global = isTRUE(rule$globalEndpoint)
    )
  }

  api$region_config <- rules
  return(api)
}

merge_region_config <- function(api, region_config) {
  service <- api$metadata$endpointPrefix
  ep <- list()
  for (partition in region_config$partition) {
    regionRegex <- gsub("\\", "\\\\", partition$regionRegex, fixed = T)
    # partition_alias <- partition$partition

    service_data <- partition$services[[service]]

    partition_defaults <- partition$defaults %||% list()
    service_defaults <- service_data$defaults %||% list()
    dnsSuffix <- service_data$dnsSuffix %||% partition$dnsSuffix

    partitionEndpoint <- service_data$partitionEnd %||% ""
    isRegionalized <- service_data$isRegionalized %||% TRUE

    if (!is.null(global <- service_data$endpoints[[partitionEndpoint]])) {
      endpoint <- build_endpoint(service, global$hostname, dnsSuffix)
      endpoint <- list(endpoint = endpoint, global = TRUE)
      ep[[partitionEndpoint]] <- endpoint
      if (!is.null(region_name <- global$credentialScope$region)) {
        ep[[region_name]] <- endpoint
        ep[[partitionEndpoint]]$signing_region <- region_name
      }
    }

    if (nzchar(partitionEndpoint) && !isRegionalized) {
      endpoint_name <- partitionEndpoint
      result <- service_data$endpoints[[endpoint_name]]
    } else {
      result <- partition_defaults
    }

    # If dnsSuffix has not already been consumed from a variant definition
    if (!('dnsSuffix' %in% names(result))) {
      result[['dnsSuffix']] <- dnsSuffix
    }

    # Merge in the service defaults then the partition defaults.
    result <- merge_keys(result, service_defaults)
    result <- merge_keys(result, partition_defaults)

    endpoint <- list(
      endpoint = build_endpoint(service, result$hostname, result$dnsSuffix),
      global = FALSE
    )
    if (!is.null(result$credentialScope$region)) {
      endpoint$signing_region <- result$credentialScope$region
    }
    ep[[regionRegex]] <- endpoint
  }
  api$region_config <- ep
  return(api)
}

build_endpoint <- function(service, hostname, dnsSuffix) {
  endpoint <- gsub("{service}", service, hostname, fixed = TRUE)
  gsub("{dnsSuffix}", dnsSuffix, endpoint, fixed = TRUE)
}

merge_keys <- function(result, from_data) {
  for (key in names(from_data)) {
    if (!(key %in% names(result))) {
      result[[key]] <- from_data[[key]]
    }
  }
  return(result)
}

# Make sure each operation has an exportable name. CloudFront's operation `name`
# element is incorrect in this regard, e.g. they have values like
# "OperationName2017_01_01".
fix_operation_names <- function(api) {
  for (op_name in names(api$operations)) {
    api$operations[[op_name]]$name <- op_name
  }
  return(api)
}

# Fix certain services' region config, which are (apparently) incorrect.
fix_region_config <- function(api) {
  service <- package_name(api)
  region_config <- list(
    chime = list("*" = "service.chime.aws.amazon.com"),
    docdb = list("*" = "rds.{region}.amazonaws.com")
  )
  if (service %in% names(region_config)) {
    api$region_config <- region_config[[service]]
  }
  api
}
