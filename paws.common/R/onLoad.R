#' @include logging.R

.onLoad <- function(libname, pkgname) {
  init_logging()
}
