# Convert camel case names to snake case, e.g. "camelCase" -> "camel_case".
snake_case <- function(x) {
  y <- gsub("([A-Z][a-z]+)", "_\\1_", x, perl = TRUE)
  y <- gsub("_+", "_", y)
  y <- gsub("^_(.+)$", "\\1", y)
  y <- gsub("^(.+)_$", "\\1", y)
  y <- tolower(y)
  y
}

# Returns a quoted string, e.g. "foo" -> '"foo"'.
quoted <- function(string) {
  quoted_string <- sprintf('"%s"', string)
  return(quoted_string)
}

# Returns the R name for an operation.
get_operation_name <- function(operation) {
  return(snake_case(operation$name))
}

# Replace a pattern within a string, returning NA for non-matches
replace <- function(pattern, replacement, x) {
  replaced <- gsub(pattern, replacement, x)
  replaced <- ifelse(grepl(pattern, x), replaced, NA)
  replaced
}

# Parse API name, version, and file type from an API file name
parse_file_names <- function(file_names) {
  regex <- "^(.+)-(\\d{4}-\\d{2}-\\d{2})\\.(.+).json$"
  name <- replace(regex, "\\1", file_names)
  version <- replace(regex, "\\2", file_names)
  type <- replace(regex, "\\3", file_names)
  parsed <- data.frame(name = name, version = version, type = type,
                       stringsAsFactors = FALSE)
  parsed
}

#' List all APIs in a given directory
#'
#' @export
list_apis <- function(path) {
  files <- list.files(path)
  parsed <- parse_file_names(files)
  parsed <- na.omit(parsed)
  parsed$type <- NULL
  unique(parsed)
}

# Get the file paths for a given API
get_api_paths <- function(name, version, path) {
  template <- "^{name}-{version}.{type}.json$"
  pattern <- glue::glue(template, type = ".+")
  files <- list.files(path, pattern = pattern)
  paths <- file.path(path, files)
  names(paths) <- parse_file_names(files)$type
  as.list(paths)
}

#' Read API definition files given a name, version, and directory
#'
#' @export
read_api <- function(name, version, path) {
  api_paths <- get_api_paths(name, version, path)
  api <- lapply(api_paths, function(path) {
    jsonlite::read_json(path)
  })
  names(api) <- names(api_paths)
  api$normal <- merge_examples(api$normal, api$examples$examples)
  api$normal <- fix_operation_names(api$normal)
  api
}

#' Read the region config file, containing special endpoint information.
#'
#' @export
read_region_config <- function(path) {
  config <- jsonlite::read_json(path)
  return(config)
}

# Returns an API object with region config info attached.
merge_region_config <- function(api, region_config) {
  service <- service_name(api)
  rule_names <- grep(sprintf("/%s$", service), names(region_config$rules), val = TRUE)
  if (length(rule_names) == 0) {
    rule_names <- grep(sprintf("/\\*$", service), names(region_config$rules), val = TRUE)
  }

  rules <- list()
  for (rule_name in rule_names) {
    rule <- region_config$rules[[rule_name]]
    if ("endpoint" %in% names(rule)) {
      endpoint <- rule$endpoint
    } else {
      endpoint <- region_config$patterns[[rule]]$endpoint
    }
    region <- strsplit(rule_name, "/")[[1]][1]
    rules[region] <- gsub("{service}", service, endpoint, fixed = TRUE)
  }

  api$region_config <- rules
  return(api)
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

# Make sure each operation has an exportable name. CloudFront's operation `name`
# element is incorrect in this regard, e.g. they have values like
# "OperationName2017_01_01".
fix_operation_names <- function(api) {
  for (op_name in names(api$operations)) {
    api$operations[[op_name]]$name <- op_name
  }
  return(api)
}

# Find the path to files in R packages.
# This is a replacement for system.file that works with unit tests for this
# package. In this package, the source package has a different directory
# structure than the installed package ("R" vs "src"), which means that
# system.file cannot find our files when run under devtools::test().
system_file <- function(..., package = "base") {
  if (!(package %in% devtools::dev_packages())) {
    base::system.file(..., package = package)
  } else {
    pkg_path <- find.package(package)
    subfolder <- list(...)
    if (length(subfolder) > 0) {
      if (subfolder[[1]] == "src")
        subfolder[[1]] <- "R"
      else
        subfolder <- c("inst", subfolder)
    }
    path <- do.call(file.path, c(pkg_path, subfolder))
    if (file.exists(path)) return(path)
    else return("")
  }
}
