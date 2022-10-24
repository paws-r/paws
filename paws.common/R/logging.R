# Developed from IRkernel logging system
# https://github.com/IRkernel/IRkernel/blob/a862774dc0758b23ef4e911a3c0b1d9e550652bc/R/logging.r

# basic paws logging system
# Error messages only shown
# Levels: 4 = DEBUG, 3 = INFO/MSG, 2 = WARNING, 1 = ERROR

#' @importFrom httr config with_config

#' @title paws logging system
#' @description Ability to configure paws logging system, through the use of paws
#' helper function \code{`paws_config_log`} or `R:base` \code{options} function.
#' Users are able to change logging levels without calling \code{paws.common} by
#' the use of \code{options} e.g. \code{options(paws.log_level = 2L)}.
#' \itemize{
#'    \item{paws.log_level} {integer: The minimum log level that should be tracked}
#'    \item{paws.logfile} {character: path for logs to populate, default output logs to console.}
#'    \item{paws.log_timestamp_fmt} {character: see [format.POSIXct()]}
#' }
#' @param level integer to determine the level logging threshold.
#' \itemize{
#'     \item{4L :} {DEBUG}
#'     \item{3L :} {INFO}
#'     \item{2L :} {WARNING}
#'     \item{1L :} {ERROR}
#' }
#' @param file character path for logs to populate, default output logs to console.
#' @param timestamp_fmt character for timestamp format, see [format.POSIXct()].
#' @examples
#' # log to a file
#' temp_file = tempfile()
#' paws_config_log(file = temp_file)
#' unlink(temp_file)
#'
#' # change log threshold to INFO
#' paws_config_log(level = 3L)
#'
#' # reset to default config
#' paws_config_log()
#' @export
paws_config_log <- function(level = 1L,
                            file = "",
                            timestamp_fmt = "%Y-%m-%d %H:%M:%OS3"){
  stopifnot(
    "`log_level` must be integer" = is.integer(level),
    "`logfile` must be character" = is.character(file),
    "`log_timestamp_fmt` must be character" = is.character(timestamp_fmt)
  )
  # create directory if doesn't exist
  if (grepl("/", file))
    dir.create(dirname(file), showWarnings = FALSE, recursive = TRUE)
  log_config <- list(
    paws.log_level = level,
    paws.logfile = file,
    paws.log_timestamp_fmt = timestamp_fmt
  )
  do.call(options, log_config)
}

# default log
paws_logging_opt <- list(
  paws.log_level = 1L,
  paws.logfile = "",
  paws.log_timestamp_fmt = "%Y-%m-%d %H:%M:%OS3"
)

from_env <- list(
  PAWS_LOG_LEVEL = as.integer,
  PAWS_LOGFILE = function(f) if (nzchar(f)) "" else f
)

# called in .onLoad
init_logging <- function() {
  log_opt_name <- names(paws_logging_opt)
  r_options <-lapply(log_opt_name, getOption)
  names(r_options) <- log_opt_name
  paws_logging_opt <-modifyList(
    paws_logging_opt, Filter(Negate(is.null), r_options)
  )
  env_options <- lapply(
    gsub('.', '_', toupper(log_opt_name), fixed = TRUE),
    Sys.getenv, unset = NA
  )
  names(env_options) <- c(log_opt_name)
  paws_logging_opt <-modifyList(
    paws_logging_opt, Filter(Negate(is.na), env_options)
  )
  do.call(options, paws_logging_opt)
}

log_debug <- function(...) {
  if (isTRUE(getOption('paws.log_level') >= 4L)) {
    log_msg('DEBUG', sprintf(...))
  }
}

log_info <- function(...) {
  if (isTRUE(getOption('paws.log_level') >= 3L)) {
    log_msg('INFO', sprintf(...))
  }
}

log_warn <- function(...) {
  if (isTRUE(getOption('paws.log_level') >= 2L)) {
    log_msg('WARNING', sprintf(...))
  }
}

log_error <- function(...) {
  if (isTRUE(getOption('paws.log_level') >= 1L)) {
    log_msg('ERROR', sprintf(...))
  }
}

log_msg <- function(lvl, msg) {
  log_file <- getOption("paws.logfile")
  now <- strftime(Sys.time(), "%Y-%m-%d %H:%M:%OS3")
  cat(sprintf('%s [%s]: %s\n', log_color(lvl), now, msg), file = log_file)
}

log_color <- function(lvl) {
  color <- switch(lvl,
    DEBUG = style_debug,
    INFO = function(...) paste(...),
    WARNING = style_warning,
    ERROR = style_error,
    stop('unknown level: ', lvl)
  )
  color(lvl)
}

# basic logging colors
style_error   <- function(str) {
  sprintf("\033[38;5;167m%s\033[39m", str)
}
style_warning <- function(str) {
  sprintf("\033[38;5;221m%s\033[39m", str)
}
style_debug  <- function(str) {
  sprintf("\033[38;5;244m%s\033[39m", str)
}

# paws https verbose wrapper
with_paws_verbose <- function(expr, ...){
  httr::with_config(paws_verbose(...), expr)
}

# modified httr::verbose to align with paws logging system
# https://github.com/r-lib/httr/blob/21ff69f219ad11298854a63b8f753389088cf382/R/verbose.r
paws_verbose <- function(data_out = TRUE, data_in = FALSE, ssl = FALSE) {
  Debug <- function(type, msg) {
    switch(type + 1,
           text =                            prefix_debug("*  ", msg),
           headerIn =                        prefix_info("<- ", msg),
           headerOut =                       prefix_info("-> ", msg),
           dataIn =     if (data_in)         prefix_info("<<  ", msg, TRUE),
           dataOut =    if (data_out)        prefix_info(">> ", msg, TRUE),
           sslDataIn =  if (ssl && data_in)  prefix_info("*< ", msg, TRUE),
           sslDataOut = if (ssl && data_out) prefix_info("*> ", msg, TRUE)
    )
  }
  httr::config(debugfunction = Debug, verbose = TRUE)
}

prefix_info <- function(prefix, x, blank_line = FALSE) {
  x <- readBin(x, character())

  lines <- unlist(strsplit(x, "\n", fixed = TRUE, useBytes = TRUE))
  out <- paste0(prefix, lines, collapse = "\n")
  log_info(out)
  if (blank_line) cat("\n")
}

prefix_debug <- function(prefix, x) {
  x <- readBin(x, character())

  lines <- unlist(strsplit(x, "\n", fixed = TRUE, useBytes = TRUE))
  out <- paste0(prefix, lines, collapse = "\n")
  log_debug(out)
}
