#' @include cran_category.R cran_collection.R cran_sub_category.R

# #' @title Make the AWS SDK R package
# #'
# #' @param in_dir Directory containing AWS API input files.
# #' @param out_sdk_dir Directory to write the R packages to.
# #' @param out_doc_dir Directory to write the documentation to.
# #' @param apis An optional list of APIs to include.
# #' @param only_cran Whether to include only the R packages already on CRAN.
# #' @param cache_dir Directory to store cached artifacts. Providing a non-`NULL`
# #'   value will greatly speed up subsequent runs that use the same value.
# #' @name make_sdk
# #' @export
build_apis <- function(
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
  make_categories(temp_dir, out_sdk_dir, categories, api_names, refresh = FALSE)
}


github_make_category_collection <- function(
    out_sdk_dir = "./cran",
    out_doc_dir = "./paws") {
  # Get the category-level packages that the SDK is separated into.
  # The SDK is separated into categories to fit in CRAN's package size limit.
  categories <- get_categories()

  # Identify sub-categories
  found <- find_sub_categories(categories)

  if (any(found)){
    # Group categories
    grp_sub_cats <- group_categories(categories[found])

    # Build categories from sub-categories
    for(cat in names(grp_sub_cats)){
      make_category_collection(out_doc_dir, out_sdk_dir, grp_sub_cats[[cat]], cat, api_names,  refresh = TRUE)
    }
  }
}

github_make_collection <- function(out_sdk_dir = "./cran",
                                   out_doc_dir = "./paws") {
  make_collection(temp_dir, out_sdk_dir, categories, api_names,  refresh = TRUE)
}
