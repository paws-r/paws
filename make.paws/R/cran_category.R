#' @include package.R service.R
NULL

.paws.common.import.version <- "paws.common (>= 0.5.9)"

# Make all category-level packages.
make_categories <- function(sdk_dir, out_dir, categories, service_names) {
  for (category in categories) {
    make_category(category, service_names, sdk_dir, out_dir)
  }
}

# Make a package for the given AWS service category (e.g. compute, storage).
make_category <- function(category, service_names, sdk_dir, out_dir) {
  name <- get_category_package_name(category)
  services <- category$services
  title <- category$title
  description <- category$description
  imports <- .paws.common.import.version
  version <- get_version(sdk_dir)

  if (is.null(name) || is.null(title) || is.null(description)) {
    stop("missing name, title, or description")
  }

  if (length(services) == 0) {
    return()
  }

  package_dir <- file.path(out_dir, name)
  write_skeleton_category(package_dir)
  write_description_category(
    package_dir, name, title, description,
    version, imports
  )
  for (service in services) {
    copy_files(service_names[[service]], from = sdk_dir, to = package_dir)
  }
  copy_files("reexports", from = sdk_dir, to = package_dir)
  write_documentation(package_dir)
}

get_category_package_name <- function(category) {
  get_package_name(category$name)
}

get_package_name <- function(suffix) {
  sprintf("paws.%s", suffix)
}

# Get the stored AWS service categories and which services they include.
get_categories <- function() {
  path <- system_file("extdata/packages.yml", package = methods::getPackageName())
  yaml::read_yaml(path)
}

# Return a vector of existing packages, excluding those that are not
# generated because they currently have no supported APIs.
get_category_packages <- function(categories, get_parents = FALSE) {
  packages <- c()
  for (category in categories) {
    if (length(category$services) > 0) {
      if (get_parents && !is.null(category$parent)) {
        package <- get_package_name(category$parent)
      } else {
        package <- get_package_name(category$name)
      }
      packages <- c(packages, package)
    }
  }
  unique(packages)
}

# Copy all files for the API given in name.
copy_files <- function(name, from, to) {
  if (length(name) == 0) {
    return()
  }
  resources <- list(
    list(dir = "R", pattern = "^%s_"),
    list(dir = "tests/testthat", pattern = "^test_%s.R$")
  )
  for (r in resources) {
    copy <- list.files(file.path(from, r$dir), pattern = sprintf(r$pattern, name), full.names = TRUE)
    if (length(copy) == 0) {
      warning(sprintf("No %s files found for %s\n", r$dir, name))
      next
    }
    fs::file_copy(copy, file.path(to, r$dir), overwrite = TRUE)
  }
}
