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
    source_profile_credentials_provider,
    iam_credentials_provider,
    no_credentials
  )
)

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

# Get credentials using the first set of credentials found by the list of
# credential providers in creds$provider. If no credentials are found, return
# the original credentials object.
get_credentials <- function(credentials) {
  for (provider in credentials$provider) {
    creds <- provider(credentials$profile)
    if (!is.null(creds)) {
      credentials$creds <- creds
      break
    }
  }
  return(credentials)
}
