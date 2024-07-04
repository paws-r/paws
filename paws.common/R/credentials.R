#' @include struct.R
#' @include credential_providers.R
#' @include config.R
NULL

Credentials <- struct(
  creds = Creds(),
  profile = "",
  force_refresh = FALSE,
  anonymous = FALSE,
  provider = list(
    anonymous_provider,
    env_provider,
    credentials_file_provider,
    config_file_provider,
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

#' @title Locate AWS credentials
#' @param profile The name of a profile to use. If not given, then the default profile is used.
#' @param anonymous Set anonymous credentials.
#' @return list containing AWS credentials
#' \itemize{
#'   \item access_key_id - (character) AWS access key ID
#'   \item secret_access_key - (character) AWS secret access key
#'   \item session_token - (character) AWS temporary session token
#'   \item access_token - (character) A token that gives a user permission to access certain resources
#'   \item expiration - (numeric) Indicates the Unix time when an access token will expire.
#'   \item region - (character) The AWS Region used in instantiating the client.
#' }
#' @export
locate_credentials <- function(profile = "", anonymous = FALSE) {
  credentials <- Credentials(profile = profile, anonymous = anonymous)
  result <- as.list(get_credentials(credentials)$creds)
  result$region <- get_region(profile)
  return(result[names(result) != "provider_name"])
}

# Return whether a creds object has at least the minimum data needed to
# authenticate.
is_credentials_provided <- function(creds, window = 5 * 60) {
  if (is.null(creds)) {
    return(FALSE)
  }
  if (!is.null(creds$access_token) && creds$access_token != "") {
    return(TRUE)
  }
  if (is.null(creds$access_key_id) || creds$access_key_id == "") {
    return(FALSE)
  }
  if (is.null(creds$secret_access_key) || creds$secret_access_key == "") {
    return(FALSE)
  }
  if (length(creds$expiration) == 1 && is.finite(creds$expiration) && Sys.time() > creds$expiration - window) {
    return(FALSE)
  }
  return(TRUE)
}
