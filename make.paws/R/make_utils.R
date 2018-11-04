# Read a given API's definition and documentation files.
read_api <- function(api_name, path) {
  api_path <- file.path(path, "apis")
  region_config_path <- file.path(path, "lib/region_config_data.json")

  version <- get_latest_api_version(api_name, api_path)
  files <- get_api_files(version, api_path)

  api <- jsonlite::read_json(files$normal)
  api <- fix_operation_names(api)

  if (!is.null(files$examples)) {
    examples <- jsonlite::read_json(files$examples)
    api <- merge_examples(api, examples$examples)
  }
  region_config <- jsonlite::read_json(region_config_path)
  api <- merge_region_config(api, region_config)

  return(api)
}

# Return a string where all whole word elements in `translations` have been
# translated to the corresponding value, e.g.
# translate("foo bar barqux", list("bar" = "baz")) -> "foo baz barqux"
translate <- function(x, translations) {
  escape <- function(x) gsub("([[:punct:]])", "\\\\\\1", x)
  whole_word <- function(x) {
    if (startsWith(x, "\\")) return(sprintf("%s\\b", x))
    if (grepl("\\\\.$", x)) return(sprintf("\\b%s", x))
    return(sprintf("\\b%s\\b", x))
  }
  result <- x
  for (from in names(translations)) {
    to <- translations[[from]]
    if (!is.character(to)) to <- deparse(to)
    from <- escape(from) # escape special characters.
    from <- whole_word(from) # find whole words only.
    result <- gsub(from, to, result)
  }
  return(result)
}

# Parse API name, version, and file type from an API file name
parse_file_names <- function(file_names) {
  regex <- "^(.+)-(\\d{4}-\\d{2}-\\d{2})\\.(.+).json$"
  name <- replace(regex, "\\1", file_names)
  version <- replace(regex, "\\2", file_names)
  type <- replace(regex, "\\3", file_names)
  parsed <- data.frame(name = name, version = version, type = type,
                       stringsAsFactors = FALSE)
  return(parsed)
}

# Returns the latest version of the given API.
get_latest_api_version <- function(name, path) {
  files <- list.files(path, pattern = sprintf("^%s-.{10}.normal.json", name))
  versions <- unique(gsub("^(.+)\\..+\\..+", "\\1", files))
  latest <- tail(sort(versions), 1)
  return(latest)
}

# Returns a list of API files for a given API version.
get_api_files <- function(version, path) {
  files <- list.files(path, pattern = sprintf("^%s", version), full.names = TRUE)
  types <- gsub("^.+\\.(.+)\\..+", "\\1", basename(files))
  files <- as.list(files)
  names(files) <- types
  return(files)
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

# Returns an API object with region config info attached. Region config info
# lists endpoints for each service and region, if different from the default.
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

# Make sure each operation has an exportable name. CloudFront's operation `name`
# element is incorrect in this regard, e.g. they have values like
# "OperationName2017_01_01".
fix_operation_names <- function(api) {
  for (op_name in names(api$operations)) {
    api$operations[[op_name]]$name <- op_name
  }
  return(api)
}

# Returns a quoted string, e.g. "foo" -> '"foo"'.
quoted <- function(string) {
  quoted_string <- sprintf('"%s"', string)
  return(quoted_string)
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

# Run an expression without printing messages.
quietly <- function(expr) {
  capture.output(
    suppressMessages(
      expr
    )
  )
}
