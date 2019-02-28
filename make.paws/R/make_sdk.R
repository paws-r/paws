#' Make the AWS SDK R package
#'
#' @param in_dir Directory containing API files.
#' @param out_dir Directory of the R package.
#'
#' @export
make_sdk <- function(in_dir, out_dir, quiet = FALSE) {
  version <- make_version(out_dir)
  write_skeleton(out_dir)
  write_description(out_dir, version)
  # TODO: Delete [1:5].
  for (api in list_apis(file.path(in_dir, "apis"))) {
    if (!quiet) cat(paste0(api, "\n"))
    write_sdk_for_api(api, in_dir, out_dir)
  }
  write_documentation(out_dir)
  return(invisible(TRUE))
}

# Make a package directory
write_skeleton <- function(path, overwrite = TRUE) {
  if (dir.exists(path) && overwrite) {
    unlink(path, recursive = TRUE, force = TRUE)
  }
  dir.create(file.path(path, "R"), recursive = TRUE, showWarnings = FALSE)
  use_description(path)
  use_namespace(path)
  use_package_doc(path)
  use_apl2_license(path)
  return(TRUE)
}

# Return the names of the APIs available in the given directory.
list_apis <- function(path) {
  files <- list.files(file.path(path), pattern = ".*\\.normal\\.json")
  apis <- unique(gsub("(.+)-\\d{4}.*", "\\1", files))
  return(apis)
}

# Create a dummy DESCRIPTION file.
use_description <- function(path) {
  desc_path <- file.path(path, "DESCRIPTION")
  file.create(desc_path, showWarnings = FALSE)
}

# Create a dummy R file to make Roxygen generate package-level documentation.
use_package_doc <- function(path) {
  package <- methods::getPackageName()
  template <- system_file("templates/package.R", package = package)
  to <- file.path(path, "R", paste0(basename(path), "_package.R"))
  file.copy(template, to)
}

# Create a dummy NAMESPACE file.
use_namespace <- function(path) {
  package <- methods::getPackageName()
  template <- system_file("templates/NAMESPACE", package = package)
  to <- file.path(path, "NAMESPACE")
  file.copy(template, to)
}

# Add the APL2 license to the package.
use_apl2_license <- function(path) {
  description <- desc::desc(file.path(path, "DESCRIPTION"))
  description$set("License" = "Apache License (>= 2.0)")
  description$normalize
  description$write()
}

# Make a package description.
write_description <- function(path, version) {
  description <- desc::desc(file.path(path, "DESCRIPTION"))
  contents <- list(
    Package = "paws",
    Title = "Paws Amazon Web Services SDK",
    Version = version,
    `Authors@R` = make_authors(),
    Description = "An Amazon Web Services software development kit.",
    Depends = "R (>= 3.4.0)",
    Imports = "paws.common",
    Suggests = "testthat",
    Remotes = "paws-r/paws/paws.common",
    License = "Apache License (>= 2.0)",
    Encoding = "UTF-8",
    LazyData = "true",
    Roxygen = 'list(markdown = TRUE, roclets = c("rd", "namespace", "collate"))'
  )
  for (key in names(contents)) {
    value <- contents[[key]]
    description$set(key, value)
  }
  description$normalize()
  description$write()
  return(TRUE)
}

# Generate the package's documentation.
write_documentation <- function(path) {
  quietly(roxygen2::roxygenize(path))
  return(TRUE)
}

# Returns a version; the existing package's if present, otherwise a default.
make_version <- function(path) {
  version <- "0.0.0.9000"
  description <- file.path(path, "DESCRIPTION")
  if (file.exists(description)) {
    version <- tryCatch({
      desc::desc_get_version(description)
    }, error = function(e) version
    )
  }
  return(version)
}

# Return the authors from this package.
make_authors <- function(authors) {
  package <- methods::getPackageName()
  description <- utils::packageDescription(package)
  authors <- description$`Authors@R`
  return(authors)
}
