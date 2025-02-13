CODE_DIR <- "R"
TEST_DIR <- "tests/testthat"

#' Add the SDK for a given API
#'
#' @param api_name Name of the API to make a package for.
#' @param in_dir Directory containing API files.
#'
#' @keywords internal
make_sdk_for_api <- function(api_name, in_dir) {
  api <- read_api(api_name, in_dir)
  result <- list(
    name = package_name(api),
    code = make_code_files(api),
    tests = make_tests_files(api),
    docs = make_docs_files(api)
  )
  return(result)
}

#-------------------------------------------------------------------------------

# Write code for a given API.
make_code_files <- function(api) {
  result <- list(
    operations = make_operations_files(api, doc_maker = make_docs_short),
    interfaces = make_interfaces_files(api),
    service = make_service_files(api),
    custom = make_custom_operations_files(api),
    reexports = make_reexports()
  )
  return(result)
}

# Generate the operations.
make_operations_files <- function(api, doc_maker) {
  result <- list()
  operations <- make_operations(api, doc_maker)
  filename <- paste0(package_name(api), "_operations.R")
  result[[file.path(CODE_DIR, filename)]] <- operations
  return(result)
}

# Generate the interfaces.
make_interfaces_files <- function(api) {
  result <- list()
  interfaces <- make_interfaces(api)
  filename <- paste0(package_name(api), "_interfaces.R")
  result[[file.path(CODE_DIR, filename)]] <- interfaces
  return(result)
}

# Generate the service info.
make_service_files <- function(api, path) {
  result <- list()
  service <- make_service(api)
  filename <- paste0(package_name(api), "_service.R")
  result[file.path(CODE_DIR, filename)] <- service
  return(result)
}

# Generate tests for the package.
make_tests_files <- function(api, path) {
  result <- list()
  tests <- make_tests(api)
  filename <- paste0("test_", package_name(api), ".R")
  result[[file.path(TEST_DIR, filename)]] <- tests
  return(result)
}

make_custom_operations_files <- function(api) {
  result <- list()
  package <- package_name(api)
  from <- system_file(
    sprintf("src/custom/%s.R", package),
    package = methods::getPackageName()
  )
  filename <- paste0(package, "_custom.R")
  if (from != "" && file.exists(from)) {
    contents <- readLines(from)
    result[[file.path(CODE_DIR, filename)]] <- paste(contents, collapse = "\n")
  }
  return(result)
}

make_reexports <- function() {
  result <- list()
  from <- system_file(
    "templates/reexports_paws.common.R",
    package = methods::getPackageName()
  )
  filename <- "reexports_paws.common.R"
  if (from != "" && file.exists(from)) {
    contents <- readLines(from)
    result[[file.path(CODE_DIR, filename)]] <- paste(contents, collapse = "\n")
  }
  return(result)
}

make_docs_files <- function(api) {
  result <- list(
    operations = make_operations_files(api, doc_maker = make_docs_long),
    service = make_service_files(api),
    custom = make_custom_operations_files(api),
    reexports = make_reexports()
  )
  return(result)
}

#-------------------------------------------------------------------------------

# Write a dictionary of key value pairs to disk, where the key is the file name
# and the value is the contents of the file. If the contents are themselves a
# dictionary, recursively write the dictionary.
write_dict <- function(dict, dir) {
  for (file in names(dict)) {
    contents <- dict[[file]]
    if (inherits(contents, "character")) {
      write_list(contents, file.path(dir, file))
    } else {
      write_dict(contents, dir)
    }
  }
}

# Write a list of code objects to a file, separated by newlines. Create
# directories if necessary.
write_list <- function(list, file) {
  contents <- paste(list, collapse = "\n\n")
  path <- dirname(file)
  dir.create(path, showWarnings = FALSE, recursive = TRUE)
  write_utf8(contents, file)
}
