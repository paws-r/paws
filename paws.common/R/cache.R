ini_cache <- new.env(parent = emptyenv())

os_env_cache <- new.env(parent = emptyenv())

set_os_env_cache <- function() {
  env <- system("printenv", intern = TRUE)
  # exit if no environment variables can be found
  if (length(env) == 0) {
    return()
  }
  env <- strsplit(sub("=", "U+003D", env, fixed = TRUE), "U+003D", fixed = TRUE)
  found <- lengths(env) == 1
  env <- trimws(do.call(rbind, env))
  env[found, 2] <- ""
  for (i in seq_len(nrow(env))) {
    os_env_cache[[env[i, 1]]] <- env[i, 2]
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
