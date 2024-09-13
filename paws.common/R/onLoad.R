#' @include cache.R
#' @include logging.R

.onLoad <- function(libname, pkgname) {
  init_log_config()
  init_log_styles()
  set_user_agent(pkgname)

  # Cache UNIX OS environment variables
  if (.Platform$OS.type == "unix") {
    set_os_env_cache()
  }
}
