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
paws_check_rhub <- function(in_dir = "../cran",
                            pkg_list = list(),
                            email = NULL){
  paws_check_rhub_sub_cat(in_dir, pkg_list, email)
  paws_check_rhub_cat(in_dir, pkg_list, email)
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
paws_check_win_devel <- function(in_dir = "../cran",
                                 pkg_list = list(),
                                 email = NULL){
  paws_check_win_devel_sub_cat(in_dir, pkg_list, email)
  paws_check_win_devel_cat(in_dir, pkg_list, email)
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

#' @title Check paws sdk package size
#' @description Check paws sdk package size after being tarball.
#' @param in_dir Directory containing paws sdk packages.
#' @param threshold [cran package size threshold](https://cran.r-project.org/web/packages/policies.html#:~:text=As%20a%20general%20rule%2C%20neither,to%20a%20maximum%20of%205MB.)
#' (default 5MB)
#' @param pkg_list list of packages check locally, check all packages by default
#' @return A data.table with package status size and percentage.
#' @name paws_check_pkg_size
#' @export
paws_check_pkg_size <- function(in_dir = "../cran",
                                threshold = fs::fs_bytes("5MB"),
                                pkg_list = list()) {
  pkgs <- list_paws_pkgs(in_dir, pkg_list)
  tmp <- tempfile()
  fs::dir_create(tmp)
  on.exit(fs::dir_delete(tmp))
  lapply(
    pkgs,
    devtools::build,
    path = tmp,
    quiet = TRUE
  )
  dir_info <- fs::dir_info(tmp)
  dir_info$package <- basename(pkgs)
  dir_info <- dir_info[, c("package", "size")]
  setDT(dir_info)

  dir_info[, c("status", "percentage") := list(
      fcase(
        get("size") > threshold, "ERROR",
        get("size") > threshold *.75, "WARNING",
        get("size") <= threshold *.75, "OK"
      ),
      paste(round(as.numeric(get("size")/ threshold) * 100, 2), "%")
    )
  ]
  return(dir_info[order(-get("size"))])
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
  devtools::submit_cran(pkg)
}

#' @rdname paws_release
#' @export
paws_release_cat <- function(in_dir = "../cran", pkg_list = list()){
  pkgs <- list_paws_pkgs(in_dir, pkg_list)
  pkgs <- list_cat_pkgs(pkgs)
  for (pkg in pkgs){
    devtools::submit_cran(pkg)
  }
}

#' @rdname paws_release
#' @export
paws_release_sub_cat <- function(in_dir = "../cran", pkg_list = list()){
  pkgs <- list_paws_pkgs(in_dir, pkg_list)
  pkgs <- list_sub_cat_pkgs(pkgs)
  if (length(pkgs) > 0) {
    for (pkg in pkgs){
      devtools::submit_cran(pkg)
    }
  } else {
    warning("No sub-categories released.")
  }
}

cran_comment_template <- "## Test environments

* local macOS install, R 4.2.1
* R-hub (devel and release)
* win-builder

## R CMD check results

%s

Maintainer Notes: tarball package size: %s

## Downstream dependencies

%s"

#' @title Method to build cran comments
#' @param in_dir Directory containing paws sdk packages.
#' @param cache_path yaml file created by `paws_check_local`
#' @param refresh re-write any cran-comments.md that already exists.
#' @name paws_build_cran_comments
#' @export
paws_build_cran_comments <- function(in_dir = "../cran",
                                     cache_path = NULL,
                                     refresh = FALSE) {
  log_info <- utils::getFromNamespace("log_info", "paws.common")
  deps <- desc::desc_get_deps(file.path(in_dir, "paws"))
  current_deps <- deps[deps$type == "Imports","package"]
  all_cats <-  list_paws_pkgs() |> basename()
  pkgs_release <- sapply(
    current_deps, \(x) all_cats[grepl(x, all_cats)], USE.NAMES = F
  ) |> unlist()
  pkgs_release <- c(pkgs_release, "paws")
  log_info(
    "Running local checks for: ['%s']",
    paste(pkgs_release, collapse = "', '")
  )
  dir_info <- paws_check_pkg_size(in_dir, pkg_list = pkgs_release)
  if(is.null(cache_path)){
    results_local <- paws_check_local(
      pkg_list = pkgs_release,
      keep_notes = T
    )
    log_info("Completed local checks.")
  } else {
    results_local <- yaml::read_yaml(cache_path)
    log_info("Retrieved local check results from cache.")
  }
  result_dt <- suppressWarnings(
    rbindlist(results_local, fill = T, idcol = "package", use.names = T)
  )

  dir_info[
    result_dt,
    `:=`(
      "errors"=get("errors"),
      "warnings"=get("warnings"),
      "notes"=get("notes")
    ),
    on = "package"
  ]

  dir_info[,
    "cran_comment" := fcase(
     is.na(get("errors")) & is.na(get("warnings")) & is.na(get("notes")),
     "There were no ERRORs, WARNINGs, or Notes."
     ,
     is.na(get("errors")) & is.na(get("warnings")) & !is.na(get("notes")),
     sprintf(
       "There were no ERRORs, or WARNINGs.\nNotes:\n%s", get("notes")
     ),
     is.na(get("errors")) & !is.na(get("warnings")) & !is.na(get("notes")),
     sprintf(
       "There were no ERRORs.\nWarnings:%s\nNotes:\n%s",
       get("warnings"), get("notes")
     ),
     is.na(get("errors")) & !is.na(get("warnings")) & is.na(get("notes")),
     sprintf(
       "There were no ERRORs or Notes.\nWarnings:%s", warnings
     ),
     !is.na(get("errors")) & !is.na(get("warnings")) & !is.na(get("notes")),
     sprintf(
       "Errors:\n%s\nWarnings:\n%s\nNotes:\n%s",
       get("errors"), get("warnings"), get("notes")
     ),
     !is.na(get("errors")) & is.na(get("warnings")) & is.na(get("notes")),
     sprintf(
       "There was no WARNINGS or Notes.\nErrors:\n%s", get("errors")
     ),
     !is.na(get("errors")) & !is.na(get("warnings")) & is.na(get("notes")),
     sprintf(
       "There was no WARNINGS.\nErrors:\n%s\nNotes:\n%s",
       get("errors"), get("notes")
     ),
     !is.na(get("errors")) & !is.na(get("warnings")) & !is.na(get("notes")),
     sprintf(
       "There was no NOTES.\nErrors:\n%s\nNotes:\n%s",
       get("errors"), get("warnings")
     )
    )
  ]

  dir_info[,
     "downstream_info" := fifelse(
       grepl("paws[.].*$", get("package")),
       "All downstream dependencies ('paws') pass R CMD check.",
       "All downstream dependencies pass R CMD check."
     )
  ]
  cran_comments <- sprintf(
    cran_comment_template,
    dir_info$cran_comment,
    dir_info$size,
    dir_info$downstream_info
  )
  names(cran_comments) <- dir_info$package

  for (pkg in pkgs_release) {
    comment_file <- file.path(in_dir, pkg, "cran-comments.md")
    if (!file.exists(comment_file) || refresh) {
      writeLines(cran_comments[[pkg]], con = comment_file)
      log_info("Updated cran-comments.md: %s", pkg)
    }
  }
}

##### helper functions #####
check_pkgs <- function(pkgs, keep_notes = FALSE){
  temp_file <- tempfile()
  on.exit(unlink(temp_file))

  # Check package locally
  checks <- list()
  sink(temp_file)
  print(pkgs)
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
  packages_not_ok <- list()
  if (length(results) > 1) {
    not_ok <- sapply(results, function(x) {
      !is.null(x$errors) | !is.null(x$warnings) | !is.null(x$notes)
    })

    packages_not_ok <- results[not_ok]
  }

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
