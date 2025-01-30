# Developed from IRkernel logging system
# https://github.com/IRkernel/IRkernel/blob/a862774dc0758b23ef4e911a3c0b1d9e550652bc/R/logging.r

# basic paws logging system
# Error messages only shown
# Levels: 5 = TRACE, 4 = DEBUG, 3 = INFO/MSG, 2 = WARNING, 1 = ERROR

#' @importFrom utils modifyList flush.console

#' @title paws logging system
#' @description Ability to configure paws logging system, through the use of paws
#' helper function \code{`paws_config_log`} or `R:base` \code{options} function.
#' Users are able to change logging levels without calling \code{paws.common} by
#' the use of \code{options} e.g. \code{options("paws.log_level" = 2L)}.
#' * `paws.log_level` (integer): The minimum log level that should be tracked
#' * `paws.log_file` (character): path for logs to populate, default output logs to console.
#' * `paws.log_timestamp_fmt` (character): see [format.POSIXct()]
#'
#' @param level (integer) to determine the level logging threshold.
#' * `5L`: TRACE
#' * `4L`: DEBUG
#' * `3L`: INFO
#' * `2L`: WARNING
#' * `1L`: ERROR
#'
#' @param file (character) path for logs to populate, default output logs to console.
#' @param timestamp_fmt (character) for timestamp format, see [format.POSIXct()].
#' @examples
#' # log to a file
#' temp_file <- tempfile()
#' paws_config_log(file = temp_file)
#' unlink(temp_file)
#'
#' # change log threshold to INFO
#' paws_config_log(level = 3L)
#'
#' # reset to default config
#' paws_config_log()
#' @export
paws_config_log <- function(level = 2L,
                            file = "",
                            timestamp_fmt = "%Y-%m-%d %H:%M:%OS3") {
  stopifnot(
    "`level` must be integer" = is.integer(level),
    "`file` must be character" = is.character(file),
    "`timestamp_fmt` must be character" = is.character(timestamp_fmt)
  )
  # create directory if doesn't exist
  if (grepl("/", file)) {
    dir.create(dirname(file), showWarnings = FALSE, recursive = TRUE)
  }

  log_config <- list(
    paws.log_level = level,
    paws.log_file = file,
    paws.log_timestamp_fmt = timestamp_fmt
  )
  do.call(options, log_config)
}

# default log settings
paws_logging_opt <- list(
  paws.log_level = 2L,
  paws.log_file = "",
  paws.log_timestamp_fmt = "%Y-%m-%d %H:%M:%OS3"
)

# Help parse log messages that contain % i.e. encoded urls
parse_msg <- function(...) {
  if (length(list(...)) == 1) paste(...) else sprintf(...)
}

log_trace <- function(...) {
  if (isTRUE(getOption("paws.log_level") >= 5L)) {
    log_msg("TRACE", parse_msg(...))
  }
}

log_debug <- function(...) {
  if (isTRUE(getOption("paws.log_level") >= 4L)) {
    log_msg("DEBUG", parse_msg(...))
  }
}

log_info <- function(...) {
  if (isTRUE(getOption("paws.log_level") >= 3L)) {
    log_msg("INFO", parse_msg(...))
  }
}

log_warn <- function(...) {
  if (isTRUE(getOption("paws.log_level") >= 2L)) {
    log_msg("WARN", parse_msg(...))
  }
}

log_error <- function(...) {
  if (isTRUE(getOption("paws.log_level") >= 1L)) {
    log_msg("ERROR", parse_msg(...))
  }
}

log_msg <- function(lvl, msg) {
  log_file <- getOption("paws.log_file")
  now <- strftime(now(), "%Y-%m-%d %H:%M:%OS3")
  cat(
    sprintf("%s [%s]: %s\n", log_color(lvl), now, msg),
    file = log_file,
    append = TRUE
  )
  on.exit(flush.console())
}

log_color <- function(lvl) {
  color <- switch(lvl,
    TRACE = style_trace,
    DEBUG = style_debug,
    INFO = style_info,
    WARN = style_warn,
    ERROR = style_error,
    stop("unknown level: ", lvl)
  )
  color(lvl)
}

# modified httr2::req_verbose to align with paws logging system
# https://github.com/r-lib/httr2/blob/8e9f8588e66378f1f419158cd1810a82a4dad022/R/req-options.R#L167-L187
paws_debug <- function(type, msg) {
  switch(type + 1,
    text = prefix_trace("*  ", msg),
    headerIn = prefix_debug("<- ", msg),
    headerOut = prefix_debug("-> ", msg)
  )
}

prefix_debug <- function(prefix, x) {
  x <- readBin(x, character())
  lines <- unlist(strsplit(x, "\r?\n", useBytes = TRUE))
  out <- paste0(prefix, lines, collapse = "\n")
  log_debug(out)
}

prefix_trace <- function(prefix, x) {
  x <- readBin(x, character())
  lines <- unlist(strsplit(x, "\r?\n", useBytes = TRUE))
  out <- paste0(prefix, lines, collapse = "\n")
  log_trace(out)
}

init_log_config <- function() {
  #---- set up logging ----
  log_opt_name <- names(paws_logging_opt)

  # check R options for log settings
  r_options <- lapply(log_opt_name, getOption)
  names(r_options) <- log_opt_name
  paws_logging_opt <- modifyList(
    paws_logging_opt, Filter(Negate(is.null), r_options)
  )

  # check environment variables for log settings
  env_options <- lapply(
    gsub(".", "_", toupper(log_opt_name), fixed = TRUE),
    Sys.getenv,
    unset = NA
  )
  names(env_options) <- c(log_opt_name)
  paws_logging_opt <- modifyList(
    paws_logging_opt, Filter(Negate(is.na), env_options)
  )
  # ensure log level is an integer
  paws_logging_opt$paws.log_level <- as.integer(paws_logging_opt$paws.log_level)

  do.call(options, paws_logging_opt)
}

init_log_styles <- function() {
  # set up log colors
  if (requireNamespace("crayon", quietly = TRUE) && crayon::has_color()) {
    style_error <- crayon::make_style("#BB3333", colors = 256)
    style_warn <- crayon::make_style("#EEBB50", colors = 256)
    style_info <- function(...) paste(...)
    style_debug <- crayon::make_style("#808080", grey = TRUE)
    style_trace <- style_debug
  } else {
    style_error <- function(...) paste(...)
    style_warn <- style_error
    style_info <- style_error
    style_debug <- style_error
    style_trace <- style_error
  }

  # make color functions available inside the package
  assign("style_error", style_error, envir = parent.env(environment()))
  assign("style_warn", style_warn, envir = parent.env(environment()))
  assign("style_info", style_info, envir = parent.env(environment()))
  assign("style_debug", style_debug, envir = parent.env(environment()))
  assign("style_trace", style_trace, envir = parent.env(environment()))
}
