#' Add the SDK for a given API
#'
#' @param api_name Name of the API to make a package for.
#' @param in_dir Directory containing API files.
#' @param out_dir Directory of the R package.
#'
#' @keywords internal
make_sdk_for_api <- function(api_name, in_dir) {
  result <- list()
  api <- read_api(api_name, in_dir)
  result$code <- get_code(api)
  result$tests <- get_tests(api)
  return(result)
}

#-------------------------------------------------------------------------------

# Write code for a given API
get_code <- function(api, path) {
  result <- list()
  r_dir <- file.path(path, "R")
  result$operations <- make_operations(api, r_dir)
  result$interfaces <- make_interfaces(api, r_dir)
  result$service <- make_service(api, r_dir)
  result$custom <- get_custom_operations(api, r_dir)
  return(result)
}

# Generate the operations and write them to a file in the package.
get_operations <- function(api, path) {
  result <- list()
  operations <- make_operations(api)
  package <- package_name(api)
  filename <- paste0(package, "_operations.R")
  result[file.path(path, filename)] <- operations
  return(result)
}

# Generate the interfaces and write them to a file in the package.
get_interfaces <- function(api, path) {
  result <- list()
  interfaces <- make_interfaces(api)
  package <- package_name(api)
  filename <- paste0(package, "_interfaces.R")
  result[file.path(path, filename)] <- interfaces
  return(result)
}

# Generate the service info and write it to a file in the package.
get_service <- function(api, path) {
  service <- make_service(api)
  package <- package_name(api)
  filename <- paste0(package, "_service.R")
  write_list(service, file.path(path, filename))
}

# Generate tests for the package and write them to the tests folder.
make_tests <- function(api, path) {
  package <- package_name(api)
  filename <- paste0("test_", package, ".R")
  test_path <- file.path(path, "tests")
  tests <- make_tests(api)
  write_list(tests, file.path(test_path, "testthat", filename))
}

get_custom_operations <- function(api, path) {
  package <- package_name(api)
  from <- system_file(sprintf("src/custom/%s.R", package), package = methods::getPackageName())
  to <- file.path(path, paste0(package, "_custom.R"))
  if (from != "" && file.exists(from)) {
    file.copy(from, to)
  }
}

#-------------------------------------------------------------------------------

# Write a dictionary of key value pairs to disk, where the key is the file name
# and the value is the contents of the file. If the contents are themselves a
# dictionary, recursively write the dictionary.
write <- function(dict) {
  for (file in names(dict)) {
    contents <- dict[[file]]
    if (class(contents) == "character") {
      write_list(contents, file)
    } else {
      write(contents)
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
