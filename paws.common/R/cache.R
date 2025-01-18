#' @include util.R

ini_cache <- new.env(parent = emptyenv())

os_env_cache <- new.env(parent = emptyenv())

vendor_cache <- list2env(list(vendor = "boto"), parent = emptyenv())

set_os_env_cache <- function() {
  env_vars <- system("printenv", intern = TRUE)

  # only cache AWS_* environment variables to avoid caching sensitive information
  # that may stored as environment variables
  aws_env_vars <- env_vars[startsWith(env_vars, "AWS_")]

  # exit if no environment variables can be found
  if (length(aws_env_vars) == 0) {
    return()
  }
  aws_env_vars <- trimws(parse_in_half(aws_env_vars))
  for (i in seq_len(nrow(aws_env_vars))) {
    os_env_cache[[aws_env_vars[i, 1]]] <- aws_env_vars[i, 2]
  }
}

#' @title Clear down paws cache environments
#' @description Clears down the cache environments.
#' * `ini_cache`: an environment that stores the results from `read_ini`, mainly used for storing AWS config files.
#' * `os_env_cache`: an environment that stores environmental variables from Unix Operating Systems.
#' @export
paws_reset_cache <- function() {
  rm(list = names(ini_cache), envir = ini_cache)
  if (.Platform$OS.type == "unix") {
    rm(list = names(os_env_cache), envir = os_env_cache)
    set_os_env_cache()
  }
}
