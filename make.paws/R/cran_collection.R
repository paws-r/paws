#' @include templates.R package.R cran_category.R
NULL

# Make the main paws package, which collects all the category packages.
make_collection <- function(sdk_dir, out_dir, categories, service_names) {
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
  write_source_collection(
    sdk_dir,
    package_dir,
    categories,
    service_names,
    expand_doc_links = TRUE,
    use_parents = TRUE
  )
  write_documentation(package_dir)
  write_imports_collection(
    package_dir,
    version,
    get_category_packages(categories, get_parents = TRUE)
  )
}

# Write the R source files for the collection package, which import and
# re-export the API client objects for each AWS API.
write_source_collection <- function(sdk_dir,
                                    out_dir,
                                    categories,
                                    service_names,
                                    expand_doc_links = FALSE,
                                    use_parents = FALSE) {
  clients <- list()
  for (category in categories) {
    for (service in category$service) {
      service_name <- service_names[[service]]
      if (!service_exists(sdk_dir, service_name)) {
        warning(sprintf("service not found: %s\n", service))
        next
      }
      docs <- get_client_docs(sdk_dir, service_name)
      if (expand_doc_links) {
        docs <- add_package_name_to_links(docs, get_package_name(category$name))
      }
      if (use_parents && !is.null(category$parent)) {
        package <- get_package_name(category$parent)
      } else {
        package <- get_package_name(category$name)
      }
      source <- make_collection_client_source(package, service_name)
      client <- paste(docs, source, sep = "\n")
      clients[service_name] <- client
    }
  }
  write_list(clients, file.path(out_dir, "R", "paws.R"))
  write_list(make_reexports(), file.path(out_dir, "R", "reexports_paws.common.R"))
}

# Add the category packages to the DESCRIPTION file's Imports.
# This is done separately since `write_documentation` will fail if
# the imports are not already installed, which should not be a requirement to
# generate the package.
write_imports_collection <- function(path, version, imports) {
  packages <- sprintf("%s (>= %s)", imports, version)
  packages <- c(packages, .paws.common.import.version)
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
  docs <- lines[(blank_line + 1):(client_line - 1)]
  docs <- delete_internal_links(docs) # Avoid broken link CRAN check warnings.
  paste(docs, collapse = "\n")
}

collection_client_template <- template(
  `
  ${service} <- function(config = list(), credentials = list(), endpoint = NULL, region = NULL) {
    ${package}::${service}(
      config = config,
      credentials = credentials,
      endpoint = endpoint,
      region = region
    )
  }
  `
)

make_collection_client_source <- function(package, service) {
  render(
    collection_client_template,
    service = service,
    package = package
  )
}

service_exists <- function(path, service) {
  if (length(service) == 0) {
    return(FALSE)
  }
  file <- file.path(path, "R", sprintf("%s_service.R", service))
  return(file.exists(file))
}

# Add package name to all function documentation links, e.g.
# link[=wafv2_associate_web_acl]{associate_web_acl} -->
# link[paws.security.identity.p2:wafv2_associate_web_acl]{associate_web_acl}
add_package_name_to_links <- function(docs, package) {
  regex <- "link\\[\\=([^\\[]*)\\]"
  replacement <- sprintf("link[%s:\\1]", package)
  docs <- gsub(regex, replacement, docs)
  return(docs)
}

# Delete internal links, e.g.
# [`create_members`][securityhub_create_members] -->
# `create_members`
delete_internal_links <- function(docs) {
  regex <- "\\[(`[a-z_]+`)\\]\\[[a-z_]+\\]"
  replacement <- "\\1"
  docs <- gsub(regex, replacement, docs)
  return(docs)
}
