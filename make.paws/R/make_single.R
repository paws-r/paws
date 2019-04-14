#' @include templates.R service.R
NULL

#' Make all single-service packages
#'
#' @param in_dir Directory containing API files.
#' @param sdk_dir Directory containing the output of `make_sdk`.
#' @param out_dir Directory of the R package.
#'
#' @export
make_single <- function(in_dir, sdk_dir, out_dir) {
  apis <- list_apis(file.path(in_dir, "apis"))
  version <- get_version(sdk_dir)
  url <- get_url(sdk_dir)
  for (api_name in apis) {
    api <- read_api(api_name, in_dir)
    name <- package_name(api)
    package_dir <- file.path(out_dir, name)
    if (dir.exists(package_dir)) unlink(package_dir, recursive = TRUE)
    write_skeleton_single(package_dir, api)
    write_description_single(package_dir, api, version, url)
    copy_files_single(name, from = sdk_dir, to = package_dir)
    write_documentation(package_dir)
  }
}

#-------------------------------------------------------------------------------

# Create the skeleton for single-service R package.
write_skeleton_single <- function(path, api) {
  dir.create(path)
  for (dir in c("man", "R", "tests/testthat")) {
    dir.create(file.path(path, dir), recursive = TRUE)
  }
}

# Write the DESCRIPTION file for a single-service package.
write_description_single <- function(path, api, version, url) {
  file <- file.path(path, "DESCRIPTION")
  file.create(file)
  title <- sprintf("%s Software Development Kit", api$metadata$serviceFullName)
  f <- desc::desc(file)
  contents <- list(
    Package = sprintf("paws.%s", package_name(api)),
    Version = version,
    Title = title,
    `Authors@R` = make_authors(),
    Description = make_description_single(api),
    URL = url,
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

# Get the URL from the package in the given path.
get_url <- function(path) {
  desc::desc_get("URL", file.path(path, "DESCRIPTION"))
}

make_description_single <- function(api) {
  base <- sprintf("An R interface to %s", api$metadata$serviceFullName)
  url <- sprintf("https://aws.amazon.com/%s", api$metadata$endpointPrefix)
  if (!url_ok(url)) return(paste0(base, "."))
  paste0(base, " <", url, ">.")
}

# Copy all files for the API given in name.
copy_files_single <- function(name, from, to) {
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
