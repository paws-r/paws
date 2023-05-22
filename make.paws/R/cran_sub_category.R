# Make the categories from collection of sub-categories
make_category_collection <- function(sdk_dir, out_dir, categories, package, service_names) {
  version <- get_version(sdk_dir)
  package <- sprintf("paws.%s", package)
  package_dir <- file.path(out_dir, package)
  write_skeleton_category(package_dir)
  write_description_category(
    package_dir,
    package,
    title = unique(vapply(categories, function(cat) cat$title, FUN.VALUE = "")),
    description = paste0(
      lapply(categories, function(cat) cat$category_description),
      collapse = ""
    ),
    version = version,
    imports = c()
  )
  # Create packages that contain services
  active <- vapply(categories, function(cat) {
    !is.null(cat$services)
  }, FUN.VALUE = logical(1))
  categories <- categories[active]
  write_source_collection(
    sdk_dir,
    package_dir,
    categories,
    service_names,
    expand_doc_links = TRUE
  )
  write_documentation(package_dir)
  write_imports_collection(package_dir, version, get_category_packages(categories))
}

# Identify sub-categories
find_sub_categories <- function(categories) {
  return(vapply(categories, function(cat) {
    !is.null(cat$category_description)
  }, logical(1)))
}

# Group sub-categories
group_categories <- function(categories) {
  grp <- vapply(categories, function(cat) {
    gsub(".p[0-9]+$", "", cat$name)
  }, FUN.VALUE = "")
  return(split(categories, grp))
}
