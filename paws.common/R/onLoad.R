#' @include logging.R

.onLoad <- function(libname, pkgname) {
  init_log_config()
  init_log_styles()
}
