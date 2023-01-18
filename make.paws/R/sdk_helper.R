#' @import data.table
#' @importFrom yaml write_yaml
#' @importFrom devtools release check check_rhub check_win_devel
#' @importFrom urlchecker url_check
#' @importFrom utils installed.packages remove.packages

#' @title Check paws sdk
#' @description Check paws sdk locally using \code{devtools::check}
#' @param in_dir Directory containing paws sdk packages.
#' @param path Path to output paws sdk check results.
#' @param pkg_list list of packages check locally, check all packages by default
#' @param keep_notes Include note
#' @return A list of any warnings, errors and notes within paws sdk.
#' @name paws_check_local
#' @export
paws_check_local <- function(in_dir = "../cran",
                             path,
                             pkg_list = list(),
                             keep_notes = FALSE){
  check_sub_cat <- paws_check_local_sub_cat(
    in_dir = in_dir,
    pkg_list = pkg_list,
    keep_notes = keep_notes
  )
  check_cat <- paws_check_local_cat(
    in_dir = in_dir,
    pkg_list = pkg_list,
    keep_notes = keep_notes
  )
  pkg <- file.path(in_dir, "paws")
  check_paws <- check_pkgs(pkg, keep_notes)
  checks <- c(check_sub_cat, check_cat, check_paws)

  if (!missing(path)) {
    yaml::write_yaml(checks, path)
  }
  return(checks)
}

#' @rdname paws_check_local
#' @export
paws_check_local_cat <- function(in_dir = "../cran",
                                 path,
                                 pkg_list = list(),
                                 keep_notes = FALSE){
  pkgs <- list_paws_pkgs(in_dir, pkg_list)
  pkgs <- list_cat_pkgs(pkgs)
  checks <- check_pkgs(pkgs, keep_notes)
  if (!missing(path)) {
    yaml::write_yaml(checks, path)
  }
  return(checks)
}

#' @rdname paws_check_local
#' @export
paws_check_local_sub_cat <- function(in_dir = "../cran",
                                     path,
                                     pkg_list = list(),
                                     keep_notes = FALSE){
  pkgs <- list_paws_pkgs(in_dir, pkg_list)
  pkgs <- list_sub_cat_pkgs(pkgs)
  checks <- check_pkgs(pkgs, keep_notes)

  if (!missing(path)) {
    yaml::write_yaml(checks, path)
  }
  return(checks)
}

#' @title Check paws urls
#' @param in_dir Directory containing paws sdk packages.
#' @param path Path to output paws sdk check results.
#' @param pkg_list list of packages urls to check, check all packages by default
#' @export
paws_check_url <- function(in_dir = "../cran", path, pkg_list = list()){
  pkgs <- list_paws_pkgs(in_dir, pkg_list)
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
#' @param email address to notify, defaults to the maintainer address in the package.
#' @name paws_check_rhub
#' @export
paws_check_rhub <- function(in_dir = "../cran", email = NULL){
  paws_check_rhub_sub_cat(in_dir)
  paws_check_rhub_cat(in_dir)
  pkg <- file.path(in_dir, "paws")
  devtools::check_rhub(pkg, email = email)
}

#' @name paws_check_rhub
#' @export
paws_check_rhub_cat <- function(in_dir = "../cran",
                                pkg_list = list(),
                                email = NULL){
  pkgs <- list_paws_pkgs(in_dir, pkg_list)
  pkgs <- list_cat_pkgs(pkgs)
  for (pkg in pkgs){
    devtools::check_rhub(pkg, email = email)
  }
}

#' @rdname paws_check_rhub
#' @export
paws_check_rhub_sub_cat <- function(in_dir = "../cran",
                                    pkg_list = list(),
                                    email = NULL){
  pkgs <- list_paws_pkgs(in_dir, pkg_list)
  pkgs <- list_sub_cat_pkgs(pkgs)
  if (length(pkgs) > 0) {
    for (pkg in pkgs){
      devtools::check_rhub(pkg, email = email)
    }
  } else {
    warning("No sub-categories released.")
  }
}

#' @rdname paws_check_rhub
#' @export
paws_check_win_devel <- function(in_dir = "../cran", email = NULL){
  paws_check_win_devel_sub_cat(in_dir)
  paws_check_win_devel_cat(in_dir)
  pkg <- file.path(in_dir, "paws")
  devtools::check_win_devel(pkg, email = email)
}

#' @rdname paws_check_rhub
#' @export
paws_check_win_devel_cat <- function(in_dir = "../cran",
                                     pkg_list = list(),
                                     email = NULL){
  pkgs <- list_paws_pkgs(in_dir, pkg_list)
  pkgs <- list_cat_pkgs(pkgs)
  for (pkg in pkgs){
    devtools::check_win_devel(pkg, email = email)
  }
}

#' @rdname paws_check_rhub
#' @export
paws_check_win_devel_sub_cat <- function(in_dir = "../cran",
                                         pkg_list = list(),
                                         email = NULL){
  pkgs <- list_paws_pkgs(in_dir, pkg_list)
  pkgs <- list_sub_cat_pkgs(pkgs)
  if (length(pkgs) > 0) {
    for (pkg in pkgs){
      devtools::check_win_devel(pkg, email = email)
    }
  } else {
    warning("No sub-categories released.")
  }
}

#' @title Method to uninstall paws sdk
#' @export
paws_uninstall <- function(){
  pkg <- as.data.table(installed.packages())
  pkg <- pkg[
    grepl("^paws.", get("Package")) &
    !(get("Package") %in% "paws.common") # don't remove paws.common
  ]$Package
  remove.packages(pkg)
  remove.packages("paws")
}

#' @title Method to install paws sdk
#' @param in_dir Directory containing paws sdk packages.
#' @param force Force installation, even if the state has not changed since the previous install.
#' @export
paws_install <- function(in_dir = "../cran", force = FALSE){
  pkgs <- list_paws_pkgs(in_dir)
  pkgs_sub_cat <- list_sub_cat_pkgs(pkgs)
  pkgs_cat <- list_cat_pkgs(pkgs)
  devtools::install_local(file.path(in_dir, "..", "paws.common"), force = TRUE)
  install_local_pkg_list(pkgs_sub_cat, force = force)
  install_local_pkg_list(pkgs_cat, force = force)
  install_local_pkg_list(file.path(in_dir, "paws"), force = force)
}

#' @title Method to release paws sdk to cran
#' @param in_dir Directory containing paws sdk packages.
#' @param pkg_list list of packages to release, release all packages by default
#' @name paws_release
#' @export
paws_release <- function(in_dir = "../cran", pkg_list = list()){
  paws_release_sub_cat(in_dir, pkg_list)
  paws_release_cat(in_dir, pkg_list)
  pkg <- file.path(in_dir, "paws")
  devtools::release(pkg)
}

#' @rdname paws_release
#' @export
paws_release_cat <- function(in_dir = "../cran", pkg_list = list()){
  pkgs <- list_paws_pkgs(in_dir, pkg_list)
  pkgs <- list_cat_pkgs(pkgs)
  for (pkg in pkgs){
    devtools::release(pkg)
  }
}

#' @rdname paws_release
#' @export
paws_release_sub_cat <- function(in_dir = "../cran", pkg_list = list()){
  pkgs <- list_paws_pkgs(in_dir, pkg_list)
  pkgs <- list_sub_cat_pkgs(pkgs)
  if (length(pkgs) > 0) {
    for (pkg in pkgs){
      devtools::release(pkg)
    }
  } else {
    warning("No sub-categories released.")
  }
}

##### helper functions #####
check_pkgs <- function(pkgs, keep_notes = FALSE){
  temp_file <- tempfile()
  on.exit(unlink(temp_file))

  # Check package locally
  checks <- list()
  sink(temp_file)
  for (pkg in pkgs) {
    checks[[basename(pkg)]] <- devtools::check(pkg, cran = TRUE)
  }
  sink()

  # parse results
  results <- list()
  for (pkg in names(checks)) {
    errors <- checks[[pkg]]$errors
    warnings <- checks[[pkg]]$warnings
    notes <- checks[[pkg]]$notes
    errors <- if (length(errors)==0) NULL else errors
    warnings <- if (length(warnings) == 0) NULL else warnings
    notes <- if (length(notes) == 0) NULL else notes
    results[[pkg]] <- list(errors = errors, warnings = warnings)
    if (keep_notes) {
      results[[pkg]] <- c(results[[pkg]], notes = notes)
    }
  }
  packages_not_ok <- results[
    sapply(results, function(x) {
      !is.null(x$errors) | !is.null(x$warnings) | !is.null(x$notes)
    })
  ]

  return(packages_not_ok)
}

# list paws packages
list_paws_pkgs <- function(in_dir = "../cran", pkg_list = list()){
  pkgs <- list.dirs(in_dir, recursive = FALSE)
  pkgs <- pkgs[grepl("paws", pkgs)]
  if(any(nzchar(pkg_list))) pkgs <- pkgs[basename(pkgs) %in% pkg_list]
  return(pkgs)
}

list_cat_pkgs <- function(pkgs){
  pkgs <- pkgs[grepl("paws[.].*$", pkgs)]
  pkgs <- pkgs[!grepl(".p[0-9]+$", pkgs)]
  return(pkgs[!grepl("paws.common", pkgs)])
}

list_sub_cat_pkgs <- function(pkgs){
  return(pkgs[grepl(".p[0-9]+$", pkgs)])
}

# install packages
install_local_pkg_list <- function(pkgs, force){
  for (pkg in pkgs){
    devtools::install_local(pkg, force = force)
  }
}
