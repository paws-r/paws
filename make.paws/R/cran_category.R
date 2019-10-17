#' @include package.R service.R
NULL

# Make all category-level packages.
make_categories <- function(sdk_dir, out_dir, categories) {
  for (category in categories) {
    make_category(category, sdk_dir, out_dir)
  }
}

# Make a package for the given AWS service category (e.g. compute, storage).
make_category <- function(category, sdk_dir, out_dir) {
  name <- get_category_package_name(category)
  services <- category$services
  title <- category$title
  description <- category$description
  imports <- "paws.common (>= 0.2.3)"
  version <- get_version(sdk_dir)

  if (is.null(name) || is.null(title) || is.null(description)) {
    stop("missing name, title, or description")
  }

  if (length(services) == 0) return()

  package_dir <- file.path(out_dir, name)
  write_skeleton_category(package_dir)
  write_description_category(package_dir, name, title, description,
                             version, imports)
  for (service in services) {
    copy_files(service, from = sdk_dir, to = package_dir)
  }
  write_documentation(package_dir)
}

get_category_package_name <- function(category) {
  sprintf("paws.%s", category$name)
}

# Get the stored AWS service categories and which services they include.
get_categories <- function() {
  path <- system_file("extdata/packages.yml", package = methods::getPackageName())
  yaml::read_yaml(path)
}

# Return a vector of existing packages, excluding those that are not
# generated because they currently have no supported APIs.
get_category_packages <- function(categories) {
  packages <- c()
  for (category in categories) {
    if (length(category$services) > 0) {
      packages <- c(packages, get_category_package_name(category))
    }
  }
  packages
}

# Copy all files for the API given in name.
copy_files <- function(name, from, to) {
  resources <- list(
    list(dir = "man", pattern = "^%s_"),
    list(dir = "R", pattern = "^%s_"),
    list(dir = "tests/testthat", pattern = "^test_%s.R$")
  )
  for (r in resources) {
    copy <- list.files(file.path(from, r$dir), pattern = sprintf(r$pattern, name), full.names = TRUE)
    file.copy(copy, file.path(to, r$dir))
  }
}
