#' @import data.table
#' @importFrom yaml write_yaml
#' @importFrom devtools release

#' @title Check paws sdk
#' @param in_dir Directory containing paws sdk packages.
#' @param path Path to output paws sdk check results.
#' @param keep_notes Include note
#' @return A list of any warnings, errors and notes within paws sdk.
#' @export
paws_check <- function(in_dir = "../cran", path, keep_notes = FALSE){
  checks <- list()

  for (package in list.dirs(in_dir, recursive = FALSE)) {
    checks[[basename(package)]] <- devtools::check(package, cran = TRUE)
  }

  results <- list()
  for (package in names(checks)) {
    errors <- checks[[package]]$errors
    warnings <- checks[[package]]$warnings
    notes <- checks[[package]]$notes
    errors <- if (length(errors)==0) NULL else errors
    warnings <- if (length(warnings) == 0) NULL else warnings
    notes <- if (length(notes) == 0) NULL else notes
    results[[package]] <- list(errors = errors, warnings = warnings)
    if (keep_notes) {
      results[[package]] <- c(results[[package]], notes = notes)
    }
  }
  packages_not_ok <- results[
    sapply(results, function(x) {
      !is.null(x$errors) | !is.null(x$warnings) | !is.null(x$notes)
    })
  ]

  if (!missing(path) & is.character(path)){
    yaml::write_yaml(packages_not_ok, path)
  }
  return(packages_not_ok)
}

#' @title Method to uninstall paws sdk
#' @export
paws_uninstall <- function(){
  pkg <- as.data.table(installed.packages())
  pkg <- pkg[grepl("^paws.", Package)]$Package
  remove.packages(pkg)
}

#' @title Method to release paws sdk to cran
#' @param in_dir Directory containing paws sdk packages.
#' @param pkg_list list of packages to release, release all packages by default
#' @name paws_release
#' @export
paws_release_sub_category <- function(in_dir = "../cran", pkg_list = ""){
  pkgs <- list.dirs(in_dir, recursive = FALSE)
  pkgs <- pkgs[grepl(".p[0-9]+$", pkgs)]
  if (length(pkgs) > 0) {
    if( any(nzchar(pkg_list))) pkgs <- pkgs[basename(pkgs) %in% pkg_list]
    for (pkg in pkgs){
      devtools::release(pkg)
    }
  } else {
    warning("No sub-categories released.")
  }
}

#' @rdname paws_release
#' @export
paws_release_category <- function(in_dir = "../cran", pkg_list = ""){
  pkgs <- list.dirs(in_dir, recursive = FALSE)
  pkgs <- pkgs_cat(pkgs)
  if( any(nzchar(pkg_list))) pkgs <- pkgs[basename(pkgs) %in% pkg_list]
  for (pkg in pkgs){
    devtools::release(pkg)
  }
}

#' @rdname paws_release
#' @export
paws_release <- function(in_dir = "../cran"){
  paws_release_sub_category(in_dir)
  paws_release_category(in_dir)
  pkg <- file.path(in_dir, "paws")
  devtools:::release(pkg)
}

pkgs_cat <- function(pkgs){
  pkgs <- pkgs[grepl("paws[.].*$", pkgs)]
  pkgs <- pkgs[!grepl(".p[0-9]+$", pkgs)]
  return(pkgs[!grepl("paws.common", pkgs)])
}
