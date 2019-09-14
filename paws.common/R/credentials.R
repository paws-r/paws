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
    assume_role_provider,
    iam_credentials_provider,
    no_credentials
  )
)

merge_in_creds <- function(existing, new_creds){
  if (is.null(new_creds)) return(existing)
  
  if (existing$access_key_id == "" &&
      !is.null(new_creds$access_key_id) &&
      new_creds$access_key_id != "") {
    existing$access_key_id <- new_creds$access_key_id
  }
  
  if (existing$secret_access_key == "" &&
      !is.null(new_creds$secret_access_key) &&
      new_creds$secret_access_key != "") {
    existing$secret_access_key <- new_creds$secret_access_key
  }
  
  if (existing$session_token == "" &&
      !is.null(new_creds$session_token) &&
      new_creds$session_token != "") {
    existing$session_token <- new_creds$session_token
  }
  
  return(existing)
}

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
  creds <- Credentials()$creds
  for (provider in credentials$provider) {
    provider_creds <- provider()
    creds <- merge_in_creds(creds, provider_creds)
    if (is_credentials_provided(creds)) {
      credentials$creds <- creds
      break
    }
  }
  return(credentials)
}
