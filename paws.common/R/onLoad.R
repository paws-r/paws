#' @include logging.R

.onLoad <- function(libname, pkgname) {

  #---- set up logging ----
  log_opt_name <- names(paws_logging_opt)

  # check R options for log settings
  r_options <-lapply(log_opt_name, getOption)
  names(r_options) <- log_opt_name
  paws_logging_opt <-modifyList(
    paws_logging_opt, Filter(Negate(is.null), r_options)
  )

  # check environment variables for log settings
  env_options <- lapply(
    gsub('.', '_', toupper(log_opt_name), fixed = TRUE),
    Sys.getenv, unset = NA
  )
  names(env_options) <- c(log_opt_name)
  paws_logging_opt <-modifyList(
    paws_logging_opt, Filter(Negate(is.na), env_options)
  )

  # set up log colors
  if (requireNamespace("crayon", quietly = TRUE) && crayon::has_color()){
    style_error <- crayon::make_style("#BB3333", colors = 256)
    style_warn <- crayon::make_style("#EEBB50", colors = 256)
    style_info <- function(...) paste(...)
    style_debug  <- crayon::make_style("#808080", grey = TRUE)
  } else {
    style_error <- function(...) paste(...)
    style_warn <- style_error
    style_info <- style_error
    style_debug  <- style_error
  }

  # make color functions available inside the package
  assign("style_error", style_error, envir = parent.env(environment()))
  assign("style_warn", style_warn, envir = parent.env(environment()))
  assign("style_info", style_info, envir = parent.env(environment()))
  assign("style_debug", style_debug, envir = parent.env(environment()))

  do.call(options, paws_logging_opt)
}
