#' @include templates.R package.R cran_category.R
NULL

#' Make packages for CRAN
#'
#' @param sdk_dir Directory containing the output of `make_sdk`.
#' @param out_dir Directory to write the packages to.
#' @param categories An optional list of categories to use.
#'
#' @export
make_cran <- function(sdk_dir, out_dir, categories = NULL) {
  if (is.null(categories)) categories <- get_categories()
  make_categories(sdk_dir, out_dir, categories)
  make_collection(sdk_dir, out_dir, categories)
}

# Make the package which collects all the category packages.
make_collection <- function(sdk_dir, out_dir, categories) {
  package <- "paws"
  package_dir <- file.path(out_dir, package)
  write_skeleton_category(package_dir)
  write_description_category(
    package_dir,
    package,
    title = get_title(sdk_dir),
    description = get_description(sdk_dir),
    version = get_version(sdk_dir),
    imports = c()
  )
  write_source_collection(sdk_dir, package_dir, categories)
  write_documentation(package_dir)
  write_imports_collection(package_dir, get_category_packages(categories))
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
write_imports_collection <- function(path, imports) {
  desc::desc_set(
    Imports = paste0(imports, collapse = ","),
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
  ${service} <- function() {
    ${package}::${service}()
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
