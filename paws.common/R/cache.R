ini_cache <- new.env(parent = emptyenv())

os_env_cache <- new.env(parent = emptyenv())

set_os_env_cache <- function() {
  env <- Sys.getenv()

  # exit if no environment variables can be found
  if (length(env) == 0) {
    return()
  }

  # only cache AWS_* environment variables to avoid caching sensitive information
  # that may stored as environment variables
  aws_env_vars <- env[grepl("^AWS_", names(env))]
  for (i in seq_len(length(aws_env_vars))) {
    os_env_cache[[names(aws_env_vars[i])]] <- as.character(aws_env_vars[i])
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
