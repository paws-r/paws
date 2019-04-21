
# Create the skeleton for category package.
write_skeleton_category <- function(path) {
  if (!dir.exists(path)) dir.create(path)
  else clear_files(path, keep = "cran-comments.md")
  for (dir in c("man", "R", "tests/testthat")) {
    dir.create(file.path(path, dir), recursive = TRUE)
  }
  package <- methods::getPackageName()
  rbuildignore <- system_file("templates/Rbuildignore", package = package)
  file.copy(rbuildignore, path)
}

# Write the DESCRIPTION file for a category package.
write_description_category <- function(path, package, title, description,
                                       version, imports) {
  file <- file.path(path, "DESCRIPTION")
  file.create(file)
  f <- desc::desc(file)
  contents <- list(
    Package = package,
    Version = version,
    Title = title,
    `Authors@R` = make_authors(),
    Description = description,
    Imports = paste(imports, collapse = ","),
    Suggests = "testthat",
    License = "Apache License (>= 2.0)",
    Encoding = "UTF-8",
    LazyData = "true",
    Roxygen = 'list(markdown = TRUE, roclets = c("rd", "namespace", "collate"))'
  )
  for (key in names(contents)) {
    value <- contents[[key]]
    if (length(value) == 0 || is.character(value) && value == "") next
    f$set(key, value)
  }
  f$normalize()
  f$write()
}

# Get the title from the package in the given path.
get_title <- function(path) {
  desc::desc_get("Title", file.path(path, "DESCRIPTION"))
}

# Get the description from the package in the given path.
get_description <- function(path) {
  desc::desc_get("Description", file.path(path, "DESCRIPTION"))
}

# Get the version number from the package in the given path.
get_version <- function(path) {
  desc::desc_get("Version", file.path(path, "DESCRIPTION"))
}

# Delete all files in a folder, with some given exceptions.
clear_files <- function(path, keep) {
  if (dir.exists(path)) {
    files <- list.files(path, full.names = TRUE)
    delete <- grep(keep, files, invert = TRUE, value = TRUE)
    unlink(delete, recursive = TRUE)
  }
}
