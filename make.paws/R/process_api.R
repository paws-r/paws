#' Add the SDK for a given API
#'
#' @param api_name Name of the API to make a package for.
#' @param in_dir Directory containing API files.
#' @param out_dir Directory of the R package.
#'
#' @keywords internal
write_sdk_for_api <- function(api_name, in_dir, out_dir) {
  api <- read_api(api_name, in_dir)
  write_code(api, out_dir)
  write_tests(api, out_dir)
  return(invisible(TRUE))
}

#-------------------------------------------------------------------------------

# Write code for a given API
write_code <- function(api, path) {
  r_dir <- file.path(path, "R")
  write_operations(api, r_dir)
  write_interfaces(api, r_dir)
  write_service(api, r_dir)
  return(TRUE)
}

# Generate the operations and write them to a file in the package.
write_operations <- function(api, path) {
  operations <- make_operations(api)
  package <- package_name(api)
  filename <- paste0(package, "_operations.R")
  write_list(operations, file.path(path, filename))
}

# Generate the interfaces and write them to a file in the package.
write_interfaces <- function(api, path) {
  interfaces <- make_interfaces(api)
  package <- package_name(api)
  filename <- paste0(package, "_interfaces.R")
  write_list(interfaces, file.path(path, filename))
}

# Generate the service info and write it to a file in the package.
write_service <- function(api, path) {
  service <- make_service(api)
  package <- package_name(api)
  filename <- paste0(package, "_service.R")
  write_list(service, file.path(path, filename))
}

# Generate tests for the package and write them to the tests folder.
write_tests <- function(api, path) {
  package <- package_name(api)
  filename <- paste0("test_", package, ".R")
  test_path <- file.path(path, "tests")
  tests <- make_tests(api)
  write_list(tests, file.path(test_path, "testthat", filename))
}

# Write a list of code objects to a file, separated by newlines. Create
# directories if necessary.
write_list <- function(list, file) {
  contents <- paste(list, collapse = "\n\n")
  path <- dirname(file)
  dir.create(path, showWarnings = FALSE, recursive = TRUE)
  write_utf8(contents, file)
}
