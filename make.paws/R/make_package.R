# Make a package description.
write_description <- function(api, path, fields) {
  description <- desc::desc(file.path(path, "DESCRIPTION"))
  description$set("Title" = api$metadata$serviceFullName)

  # Use as the description the first sentence (i.e. text that ends with a
  # period), and if there is none, use the first line or paragraph.
  if (!is.null(api$documentation)) {
    documentation <- convert(api$documentation, wrap = FALSE)
    desc <- documentation[1]
    ends_with_period <- function(x) grepl("\\.$", x)
    if (!ends_with_period(desc)) {
      index <- which(ends_with_period(documentation))[1]
      if (!is.na(index)) {
        desc <- documentation[index]
      }
    }
    # Fix spaces before the last period. If a period appears on a line by
    # itself, the period gets removed, leaving an empty line, which makes the
    # DESCRIPTION file invalid.
    desc <- gsub(" +\\.", ".", desc)
    description$set("Description" = desc)
  }
  authors <- make_authors()
  if (!is.null(authors)) {
    description$set("Authors@R" = authors)
  }
  for (dep in fields$dependencies) {
    description$set_dep(dep)
  }
  description$set("Roxygen" = "list(markdown = TRUE)")
  description$normalize()
  description$write()
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

# Copy supporting functions to the package.
copy_supporting_functions <- function(api, path) {
  path_in <- system_file("src", package = methods::getPackageName())
  files <- list.files(path_in, full.names = TRUE, include.dirs = FALSE)
  src_files <- files[grep("^make", basename(files), invert = TRUE)]
  if (length(src_files) > 0) {
    lapply(src_files, file.copy, to = path)
  }
}

# Copy customizations for a given package, if there are any.
copy_customizations <- function(api, path) {
  path_in <- system_file("src", "customizations", package = methods::getPackageName())
  files <- list.files(path_in, full.names = TRUE)
  service <- tolower(struct_name(api))
  src_file <- files[grep(sprintf("^%s.R$", service), basename(files))]
  if (length(src_file) > 0) {
    package <- package_name(api)
    filename <- sprintf("%s_customizations.R", package)
    file.copy(from = src_file, to = file.path(path, filename))
  }
}

# Generate tests for the package and write them to the tests folder.
write_tests <- function(api, path) {
  testthat <- make_testthat_file(api)
  tests <- make_tests(api)
  package <- package_name(api)
  filename <- paste0("test_", package, ".R")
  test_path <- file.path(path, "tests")
  write_list(testthat, file.path(test_path, "testthat.R"))
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

#' Make an R package for a given API
#'
#' @param api AWS API list object, from \link{read_api}.
#' @param region_config AWS region config, from \link{read_region_config}.
#' @param path Path to the directory where the package should be created.
#' @param fields List of fields to include in the DESCRIPTION.
#' @param overwrite Overwite existing packages?
#'
#' @export
make_package <- function(api_info, region_config, path, fields = NULL, overwrite = FALSE) {
  api <- api_info$normal
  api <- merge_region_config(api, region_config)
  package <- package_name(api)
  package_path <- file.path(path, package)
  r_path <- file.path(package_path, "R")

  # Create the package skeleton if needed.
  if (overwrite) {
    unlink(package_path, recursive = TRUE)
  }
  if (!file.exists(package_path) | overwrite) {
    package_skeleton(package, path, fields, overwrite)
  }

  # Populate the package.
  write_description(api, package_path, fields)
  write_operations(api, r_path)
  write_interfaces(api, r_path)
  write_service(api, r_path)
  copy_supporting_functions(api, r_path)
  copy_customizations(api, r_path)
  write_tests(api, package_path)

  package
}

#-------------------------------------------------------------------------------

# Make a package directory
# TODO: Replace devtools::create.
package_skeleton <- function(package, path, fields, overwrite = FALSE) {
  package_path <- file.path(path, package)
  owd <- getwd()
  if (dir.exists(package_path) && overwrite) {
    unlink(package_path, recursive = TRUE, force = TRUE)
  }
  devtools::create(package_path, rstudio = TRUE, quiet = TRUE)
  use_package_doc(package_path)
  use_apl2_license(package_path)
  use_roxygen_md(package_path)
  setwd(owd)
}

# Create a dummy R file to make Roxygen generate package-level documentation.
use_package_doc <- function(path) {
  package <- methods::getPackageName()
  template <- system_file("templates/package.R", package = package)
  to <- file.path(path, "R", paste0(basename(path), "_package.R"))
  file.copy(template, to)
}

# Add the APL2 license to the package.
# TODO: Render the template with the copyright holder
use_apl2_license <- function(path) {
  description <- desc::desc(file.path(path, "DESCRIPTION"))
  description$set("License" = "Apache License (>= 2.0)")
  description$normalize
  description$write()

  package <- methods::getPackageName()
  template <- system_file("templates/license-apache-2.0.md", package = package)
  to <- file.path(path, "LICENSE.md")
  file.copy(template, to)
}

use_roxygen_md <- function(path) {

}

# Return the authors from this package.
make_authors <- function(authors) {
  package <- methods::getPackageName()
  description <- packageDescription(package)
  authors <- description$`Authors@R`
  return(authors)
}
