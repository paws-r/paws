#' @include templates.R service.R
NULL

#' Make category-level packages for CRAN
#'
#' @param sdk_dir Directory containing the output of `make_sdk`.
#' @param out_dir Directory to write the packages to.
#'
#' @export
make_cran <- function(sdk_dir, out_dir) {
  path <- system_file("extdata/packages.yml", package = methods::getPackageName())
  categories <- yaml::read_yaml(path)

  for (category in categories) {
    name <- category$name
    cat(paste0(name, "\n"))
    services <- category$services
    title <- category$title
    description <- category$description

    if (is.null(name) || is.null(title) || is.null(description)) {
      stop("missing name, title, or description")
    }

    if (length(services) == 0) next

    package_dir <- file.path(out_dir, name)
    if (dir.exists(package_dir)) unlink(package_dir, recursive = TRUE)

    write_skeleton_category(package_dir)
    write_description_category(package_dir, name, title, description, get_version(sdk_dir))
    for (service in services) {
      copy_files(service, from = sdk_dir, to = package_dir)
    }
    write_documentation(package_dir)
  }
}

#-------------------------------------------------------------------------------

# Create the skeleton for category package.
write_skeleton_category <- function(path) {
  dir.create(path)
  for (dir in c("man", "R", "tests/testthat")) {
    dir.create(file.path(path, dir), recursive = TRUE)
  }
}

# Write the DESCRIPTION file for a category package.
write_description_category <- function(path, category, title, description, version) {
  file <- file.path(path, "DESCRIPTION")
  file.create(file)
  f <- desc::desc(file)
  contents <- list(
    Package = sprintf("paws.%s", category),
    Version = version,
    Title = title,
    `Authors@R` = make_authors(),
    Description = description,
    Imports = "paws.common",
    Suggests = "testthat",
    License = "Apache License (>= 2.0)",
    Encoding = "UTF-8",
    LazyData = "true",
    Roxygen = 'list(markdown = TRUE, roclets = c("rd", "namespace", "collate"))'
  )
  for (key in names(contents)) {
    value <- contents[[key]]
    f$set(key, value)
  }
  f$normalize()
  f$write()
}

# Get the version number from the package in the given path.
get_version <- function(path) {
  desc::desc_get_version(file.path(path, "DESCRIPTION"))
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
