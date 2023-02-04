#' @include cran_category.R cran_collection.R cran_sub_category.R

#' @title Make the AWS SDK R package
#'
#' @param in_dir Directory containing AWS API input files.
#' @param out_sdk_dir Directory to write the R packages to.
#' @param out_doc_dir Directory to write the documentation to.
#' @param apis An optional list of APIs to include.
#' @param only_cran Whether to include only the R packages already on CRAN.
#' @param cache_dir Directory to store cached artifacts. Providing a non-`NULL`
#'   value will greatly speed up subsequent runs that use the same value.
#' @name make_sdk
#' @export
make_sdk <- function(
    in_dir = "./vendor/aws-sdk-js",
    out_sdk_dir = "./cran",
    out_doc_dir = "./paws",
    apis = character(0),
    only_cran = TRUE,
    cache_dir = "./cache") {

  if (length(apis) == 0) {
    apis <- list_apis(file.path(in_dir, "apis"))
  }

  # Get the category-level packages that the SDK is separated into.
  # The SDK is separated into categories to fit in CRAN's package size limit.
  categories <- get_categories()
  if (only_cran) {
    cran <- row.names(utils::available.packages(repos = "https://cran.rstudio.com"))
    package <- sapply(categories, function(x) get_package_name(x$name))
    parent_package <- sapply(categories, function(x) get_package_name(x$parent))
    categories <- categories[package %in% cran | parent_package %in% cran]
    apis_to_use <- unlist(sapply(categories, function(x) x$services))
    apis <- apis[apis %in% apis_to_use]
  }

  temp_dir <- file.path(tempdir(), "paws")
  dir.create(temp_dir, recursive = TRUE, showWarnings = FALSE)

  api_names <- list()

  # Generate the code and documentation.
  with_cache_dir(cache_dir, {
    clear_dir(temp_dir)
    clear_dir(out_doc_dir)
    version <- tryCatch(
      get_version(out_doc_dir),
      error = function(e) return("0.0.1")
    )
    write_skeleton(temp_dir, version)
    write_skeleton(out_doc_dir, version)
    for (api in apis) {
      cat(paste0(api, "\n"))
      result <- make_sdk_for_api(api, in_dir)
      write_dict(result$code, temp_dir)
      write_dict(result$tests, temp_dir)
      write_dict(result$docs, out_doc_dir)
      api_names[[api]] <- result$name
    }
  })

  make_categories(temp_dir, out_sdk_dir, categories, api_names)

  # Identify sub-categories
  found <- find_sub_categories(categories)

  if (any(found)){
    # Group categories
    grp_sub_cats <- group_categories(categories[found])

    # Build categories from sub-categories
    for(cat in names(grp_sub_cats)){
      make_category_collection(temp_dir, out_sdk_dir, grp_sub_cats[[cat]], cat, api_names)
    }
  }

  make_collection(temp_dir, out_sdk_dir, categories, api_names)
}

# Clear out files from the output directory.
clear_dir <- function(path) {
  keep <- c(".Rbuildignore", "DESCRIPTION", "cran-comments.md", "NEWS.md")
  files <- list.files(path, recursive = TRUE)
  delete <- setdiff(files, keep)
  sapply(file.path(path, delete), file.remove)
}

# Make a package directory
write_skeleton <- function(path, version) {
  use_r_dir(path)
  use_description(path, version)
  use_namespace(path)
  use_package_doc(path)
  return(TRUE)
}

# Return the names of the APIs available in the given directory.
list_apis <- function(path) {
  files <- list.files(file.path(path), pattern = ".*\\.normal\\.json")
  apis <- unique(gsub("(.+)-\\d{4}.*", "\\1", files))
  return(apis)
}

# Create the package's R directory.
use_r_dir <- function(path) {
  r_dir <- file.path(path, "R")
  dir.create(r_dir, recursive = TRUE, showWarnings = FALSE)
}

# Create a dummy DESCRIPTION file if it doesn't already exist.
use_description <- function(path, version = "0.0.1") {
  file <- file.path(path, "DESCRIPTION")
  if (file.exists(file)) return()
  file.create(file)
  description <- desc::desc(file)
  contents <- list(
    Package = "paws",
    Version = version,
    Title = "Amazon Web Services Software Development Kit",
    `Authors@R` = make_authors(),
    Description = paste0(
      "Interface to Amazon Web Services <https://aws.amazon.com>, ",
     "including storage, database, and compute services, such as 'Simple ",
     "Storage Service' ('S3'), 'DynamoDB' 'NoSQL' database, and 'Lambda' ",
     "functions-as-a-service."),
    License = "Apache License (>= 2.0)",
    Encoding = "UTF-8",
    ByteCompile = "false"
  )
  for (key in names(contents)) {
    value <- contents[[key]]
    description$set(key, value)
  }
  description$normalize()
  description$write()
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

# Return the authors from this package.
make_authors <- function(authors) {
  package <- methods::getPackageName()
  description <- utils::packageDescription(package)
  description$`Authors@R`
}

# Generate the package's documentation.
write_documentation <- function(path) {
  quietly(roxygen2::roxygenize(path))
}
