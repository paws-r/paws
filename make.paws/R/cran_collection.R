#' @include templates.R package.R cran_category.R
NULL

#' @importFrom stats setNames

#' @title Make packages for CRAN
#'
#' @param sdk_dir Directory containing the output of `make_sdk`.
#' @param out_dir Directory to write the packages to.
#' @param categories An optional list of categories to use.
#' @param only_cran Use paws packages on cran or use paws dev packages.
#'
#' @export
make_cran <- function(sdk_dir, out_dir, categories = NULL, only_cran = FALSE) {
  if (is.null(categories)) categories <- get_categories()
  make_categories(sdk_dir, out_dir, categories)

  # Identify sub-categories
  found <- find_sub_categories(categories)

  if (any(found)){
    # Group categories
    grp_sub_cats <- group_categories(categories[found])

    # Build categories from sub-categories
    for(cat in names(grp_sub_cats)){
      make_category_collection(sdk_dir, out_dir, grp_sub_cats[[cat]], cat)
    }

    # rebuild categories from sub-categories for paws
    categories <- make_category_from_sub_category(categories)
  }
  make_collection(sdk_dir, out_dir, categories, only_cran)
}

# Make the categories from collection of sub-categories
make_category_collection <- function(sdk_dir, out_dir, categories, package) {
  version <- get_version(sdk_dir)
  package <- sprintf("paws.%s", package)
  package_dir <- file.path(out_dir, package)
  write_skeleton_category(package_dir)
  write_description_category(
    package_dir,
    package,
    title = unique(unlist(sapply(categories, function(cat) cat$title))),
    description = paste0(
      lapply(categories, function(cat) cat$category_description), collapse = ""
    ),
    version = version,
    imports = c()
  )
  # Create packages that contain services
  active <- vapply(categories, function(cat) {
    !is.null(cat$services)
    }, FUN.VALUE = logical(1)
  )
  categories <- categories[active]
  write_source_collection(sdk_dir, package_dir, categories)
  write_documentation(package_dir)
  write_imports_collection(package_dir, version, get_category_packages(categories))
}

# Identify sub-categories
find_sub_categories <- function(categories){
  return(vapply(categories, function(cat) {
      !is.null(cat$category_description)
    }, logical(1))
  )
}

# Group sub-categories
group_categories <- function(categories){
  grp <- sapply(categories, function(cat) {
    gsub(".p[0-9]+$", "", cat$name)
  })
  return(split(categories, grp))
}

make_category_from_sub_category <- function(categories){
  found <- find_sub_categories(categories)
  sub_categories <- categories[found]
  grp_sub_cats <- group_categories(sub_categories)
  cats <- names(grp_sub_cats)
  # Build each categories metadata from sub-categories
  cat_meta <- setNames(vector(mode = "list", length = length(cats)), cats)
  for (cat in cats){
    cat_meta[[cat]]$name <- cat
    cat_meta[[cat]]$services <- unlist(sapply(
      grp_sub_cats[[cat]], function(sub_cat) sub_cat$services
    ))
    cat_meta[[cat]]$title <- unique(unlist(sapply(
      grp_sub_cats[[cat]], function(sub_cat) sub_cat$title
    )))
    cat_meta[[cat]]$description <- paste0(
      lapply(grp_sub_cats[[cat]], function(sub_cat) {
        sub_cat$category_description
      }), collapse = ""
    )
  }
  return(c(categories[!found], unname(cat_meta)))
}

# Make the package which collects all the category packages.
make_collection <- function(sdk_dir, out_dir, categories, only_cran) {
  package <- "paws"
  version <- get_version(sdk_dir)
  package_dir <- file.path(out_dir, package)
  write_skeleton_category(package_dir)
  write_description_category(
    package_dir,
    package,
    title = get_title(sdk_dir),
    description = get_description(sdk_dir),
    version = version,
    imports = c()
  )
  if (only_cran) {
    cran <- row.names(utils::available.packages(repos = "https://cran.rstudio.com"))
    categories <- categories[sapply(categories, get_category_package_name) %in% cran]
  } else {
    # Create packages that contain services
    active <- vapply(categories,
      function(cat) {!is.null(cat$services)}, FUN.VALUE = logical(1)
    )
    categories <- categories[active]
  }
  write_source_collection(sdk_dir, package_dir, categories)
  write_documentation(package_dir)
  write_imports_collection(package_dir, version, get_category_packages(categories))
}

# Write the R source files for the collection package, which import and
# re-export the API client objects for each AWS API.
write_source_collection <- function(sdk_dir, out_dir, categories) {
  clients <- list()
  for (category in categories) {
    for (service in category$service) {
      docs <- get_client_docs(sdk_dir, service)
      source <- make_collection_client_source(category, service)
      client <- paste(docs, source, sep = "\n")
      clients[service] <- client
    }
  }
  write_list(clients, file.path(out_dir, "R", "paws.R"))
}

# Add the category packages to the DESCRIPTION file's Imports.
# This is done separately since `write_documentation` will fail if
# the imports are not already installed, which should not be a requirement to
# generate the package.
write_imports_collection <- function(path, version, imports) {
  packages <- sprintf("%s (>= %s)", imports, version)
  desc::desc_set(
    Imports = paste0(packages, collapse = ","),
    file = file.path(path, "DESCRIPTION"),
    normalize = TRUE
  )
  invisible(TRUE)
}

get_client_docs <- function(path, service) {
  file <- file.path(path, "R", sprintf("%s_service.R", service))
  lines <- readLines(file)
  client_line <- grep(sprintf("^%s", service), lines)
  blank_line <- which.max(lines[1:client_line] == "")
  docs <- lines[(blank_line+1):(client_line-1)]
  paste(docs, collapse = "\n")
}

collection_client_template <- template(
  `
  ${service} <- function(config = list()) {
    ${package}::${service}(config)
  }
  `
)

make_collection_client_source <- function(category, service) {
  package <- get_category_package_name(category)
  render(
    collection_client_template,
    service = service,
    package = package
  )
}
