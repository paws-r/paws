#' @include struct.R
#' @include credential_providers.R
NULL

Credentials <- struct(
  creds = list(
    access_key_id = "",
    secret_access_key = "",
    session_token = "",
    provider_name = ""
  ),
  profile = "",
  force_refresh = TRUE,
  provider = list(
    r_env_provider,
    os_env_provider,
    credentials_file_provider,
    iam_credentials_provider,
    no_credentials
  )
)

# Get credentials using the first set of credentials found by the list of
# credential providers in the AWS credential provider chain. If no credentials 
# are found, return the original credentials object.
get_credentials <- function(credentials) {
  for (provider in credentials$provider) {
    # Use `call_with_args` to call providers with only the arguments they use.
    creds <- call_with_args(provider, credentials)
    if (!is.null(creds)) {
      credentials$creds <- creds
      break
    }
  }
  return(credentials)
}

# Call a function `f` with arguments taken from elements in `data`, including
# only those data elements that correspond to parameters.
# For example:
# f <- function(a) {}
# data <- list(a = "1", b = "2")
# call_with_args(f, data) == f("1")
call_with_args <- function(f, data) {
  args <- formalArgs(f)
  if (is.null(args)) {
    return(f())
  }
  if (!all(args %in% names(data))) {
    stop("A parameter has no corresponding element in `data`.")
  }
  return(do.call(f, data[args]))
}

# Return whether a creds object has at least the minimum data needed to
# authenticate.
is_credentials_provided <- function(creds){
  if (is.null(creds)) return(FALSE)
  
  if (is.null(creds$access_key_id) || creds$access_key_id == "") {
    return(FALSE)
  }
  
  if (is.null(creds$secret_access_key) || creds$secret_access_key == "") {
    return(FALSE)
  }
  
  return(TRUE) 
  
}