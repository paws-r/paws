#' @import data.table
#' @importFrom yaml write_yaml
#' @importFrom devtools release
#' @importFrom urlchecker url_check

#' @title Check paws sdk
#' @param in_dir Directory containing paws sdk packages.
#' @param path Path to output paws sdk check results.
#' @param keep_notes Include note
#' @return A list of any warnings, errors and notes within paws sdk.
#' @export
paws_check_local <- function(in_dir = "../cran", path, keep_notes = FALSE){
  temp_file <- tempfile()
  on.exit(unlink(temp_file))
  checks <- list()
  sink(temp_file)
  for (package in list.dirs(in_dir, recursive = FALSE)) {
    checks[[basename(package)]] <- devtools::check(package, cran = TRUE)
  }
  sink()

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

  if (!missing(path)) {
    yaml::write_yaml(packages_not_ok, path)
  }
  return(packages_not_ok)
}

#' @title Check paws urls
#' @param in_dir Directory containing paws sdk packages.
#' @param path Path to output paws sdk check results.
#' @param pkg_list list of packages urls to check, check all packages by default
#' @export
paws_check_url <- function(in_dir = "../cran", path, pkg_list = list()){
  pkgs <- list.dirs(in_dir, recursive = FALSE)
  if(any(nzchar(pkg_list))) pkgs <- pkgs[basename(pkgs) %in% pkg_list]
  results <- setNames(
    lapply(pkgs, urlchecker::url_check),
    basename(pkgs)
  )
  if (!missing(path)) {
    yaml::write_yaml(results, path)
  }
  return(results)
}

#' @title Check paws using rhub
#' @param in_dir Directory containing paws sdk packages.
#' @param pkg_list list of packages check through rhub, check all packages by default
#' @name paws_check_rhub
#' @export
paws_check_rhub_sub_cat <- function(in_dir = "../cran", pkg_list = list()){
  pkgs <- list.dirs(in_dir, recursive = FALSE)
  pkgs <- list_sub_cat_pkgs(pkgs)
  if (length(pkgs) > 0) {
    if(any(nzchar(pkg_list))) pkgs <- pkgs[basename(pkgs) %in% pkg_list]
    for (pkg in pkgs){
      devtools::check_rhub(pkg)
    }
  } else {
    warning("No sub-categories released.")
  }
}

#' @name paws_check_rhub
#' @export
paws_check_rhub_cat <- function(in_dir = "../cran", pkg_list = list()){
  pkgs <- list.dirs(in_dir, recursive = FALSE)
  pkgs <- list_cat_pkgs(pkgs)
  if( any(nzchar(pkg_list))) pkgs <- pkgs[basename(pkgs) %in% pkg_list]
  for (pkg in pkgs){
    devtools::check_rhub(pkg)
  }
}

#' @rdname paws_check_rhub
#' @export
paws_check_rhub <- function(in_dir = "../cran"){
  paws_check_rhub_sub_cat(in_dir)
  paws_check_rhub_cat(in_dir)
  pkg <- file.path(in_dir, "paws")
  devtools::check_rhub(pkg)
}

#' @rdname paws_check_rhub
#' @export
paws_check_win_devel_sub_cat <- function(in_dir = "../cran", pkg_list = list()){
  pkgs <- list.dirs(in_dir, recursive = FALSE)
  pkgs <- list_sub_cat_pkgs(pkgs)
  if (length(pkgs) > 0) {
    if(any(nzchar(pkg_list))) pkgs <- pkgs[basename(pkgs) %in% pkg_list]
    for (pkg in pkgs){
      devtools::check_win_devel(pkg)
    }
  } else {
    warning("No sub-categories released.")
  }
}

#' @rdname paws_check_rhub
#' @export
paws_check_win_devel_cat <- function(in_dir = "../cran", pkg_list = list()){
  pkgs <- list.dirs(in_dir, recursive = FALSE)
  pkgs <- list_cat_pkgs(pkgs)
  if( any(nzchar(pkg_list))) pkgs <- pkgs[basename(pkgs) %in% pkg_list]
  for (pkg in pkgs){
    devtools::check_win_devel(pkg)
  }
}

#' @rdname paws_check_rhub
#' @export
paws_check_win_devel <- function(in_dir = "../cran"){
  paws_check_win_devel_sub_cat(in_dir)
  paws_check_win_devel_cat(in_dir)
  pkg <- file.path(in_dir, "paws")
  devtools::check_win_devel(pkg)
}

#' @title Method to uninstall paws sdk
#' @export
paws_uninstall <- function(){
  pkg <- as.data.table(installed.packages())
  pkg <- pkg[grepl("^paws.", Package)]$Package
  remove.packages(pkg)
  remove.packages("paws")
}

#' @title Method to install paws sdk
#' @param in_dir Directory containing paws sdk packages.
#' @param force Force installation, even if the state has not changed since the previous install.
#' @export
paws_install <- function(in_dir = "../cran", force = FALSE){
  pkgs <- list.dirs(in_dir, recursive = FALSE)
  pkgs_sub_cat <- list_sub_cat_pkgs(pkgs)
  pkgs_cat <- list_cat_pkgs(pkgs)
  devtools::install_local(file.path(in_dir, "..", "paws.common"), force = force)
  install_local_pkg_list(pkgs_sub_cat, force = force)
  install_local_pkg_list(pkgs_cat, force = force)
  install_local_pkg_list(file.path(in_dir, "paws"), force = force)
}

#' @title Method to release paws sdk to cran
#' @param in_dir Directory containing paws sdk packages.
#' @param pkg_list list of packages to release, release all packages by default
#' @name paws_release
#' @export
paws_release_sub_cat <- function(in_dir = "../cran", pkg_list = ""){
  pkgs <- list.dirs(in_dir, recursive = FALSE)
  pkgs <- list_sub_cat_pkgs(pkgs)
  if (length(pkgs) > 0) {
    if(any(nzchar(pkg_list))) pkgs <- pkgs[basename(pkgs) %in% pkg_list]
    for (pkg in pkgs){
      devtools::release(pkg)
    }
  } else {
    warning("No sub-categories released.")
  }
}

#' @rdname paws_release
#' @export
paws_release_cat <- function(in_dir = "../cran", pkg_list = ""){
  pkgs <- list.dirs(in_dir, recursive = FALSE)
  pkgs <- list_cat_pkgs(pkgs)
  if( any(nzchar(pkg_list))) pkgs <- pkgs[basename(pkgs) %in% pkg_list]
  for (pkg in pkgs){
    devtools::release(pkg)
  }
}

#' @rdname paws_release
#' @export
paws_release <- function(in_dir = "../cran"){
  paws_release_sub_cat(in_dir)
  paws_release_cat(in_dir)
  pkg <- file.path(in_dir, "paws")
  devtools:::release(pkg)
}

list_cat_pkgs <- function(pkgs){
  pkgs <- pkgs[grepl("paws[.].*$", pkgs)]
  pkgs <- pkgs[!grepl(".p[0-9]+$", pkgs)]
  return(pkgs[!grepl("paws.common", pkgs)])
}

list_sub_cat_pkgs <- function(pkgs){
  return(pkgs[grepl(".p[0-9]+$", pkgs)])
}

install_local_pkg_list <- function(pkgs, force){
  for (pkg in pkgs){
    devtools::install_local(pkg, force = force)
  }
}
