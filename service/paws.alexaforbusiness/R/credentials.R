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
# credential providers in creds$provider. If no credentials are found, return
# the original credentials object.
get_credentials <- function(credentials) {
  for (provider in credentials$provider) {
    creds <- provider()
    if (!is.null(creds)) {
      credentials$creds <- creds
      break
    }
  }
  return(credentials)
}
