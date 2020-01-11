#' @include struct.R
#' @include credential_providers.R
NULL

Creds <- struct(
  access_key_id = "",
  secret_access_key = "",
  session_token = "",
  provider_name = ""
)

Credentials <- struct(
  creds = Creds(),
  profile = "",
  force_refresh = TRUE,
  provider = list(
    r_env_provider,
    os_env_provider,
    credentials_file_provider,
    container_credentials_provider,
    iam_credentials_provider,
    no_credentials
  )
)

# Get credentials using the first set of credentials found by the AWS
# credential provider chain. If no credentials are found, return the
# original credentials object.
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
