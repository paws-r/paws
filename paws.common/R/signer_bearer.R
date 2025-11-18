#' @include credentials.R
#' @include struct.R
NULL

# Bearer token authentication following RFC 6750 Section 2.1.
# See https://datatracker.ietf.org/doc/html/rfc6750#section-2.1
#
# Bearer authentication does not use AWS Signature V4 signing.
# Instead, it simply places the bearer token in the Authorization header.

# Returns a set of AWS signing names that support bearer token authentication.
# These services can use bearer tokens instead of AWS Signature V4 signing.
get_bearer_auth_supported_services <- function() {
  # Currently only Bedrock supports bearer token authentication
  # This matches the botocore implementation
  c("bedrock")
}

# Signs an SDK request with bearer token authentication.
# This is much simpler than V4 signing - it just sets the Authorization header.
bearer_sign_request_handler <- function(request) {
  creds <- request$config$credentials$creds

  # Ensure credentials are available
  if (!is_credentials_provided(request$config$credentials$creds)) {
    credentials <- get_credentials(request$config$credentials)
    creds <- credentials$creds
  }

  # Check if we have a bearer token
  if (
    is.null(creds$access_token) || creds$access_token == "" || is.na(creds$access_token)
  ) {
    stop("Bearer authentication requires an access token", call. = FALSE)
  }

  # Check token expiration
  if (check_if_cred_needs_refresh(creds)) {
    # Attempt to refresh credentials
    credentials <- get_credentials(request$config$credentials)
    creds <- credentials$creds

    # Check again after refresh
    if (
      is.null(creds$access_token) || creds$access_token == "" || is.na(creds$access_token)
    ) {
      stop("Bearer authentication requires an access token", call. = FALSE)
    }
  }

  # Set Authorization header with bearer token
  # Following RFC 6750 Section 2.1: Authorization: Bearer <token>
  # No signing process, no HMAC operations, no X-Amz-* headers
  request$http_request$header["Authorization"] <- paste("Bearer", creds$access_token)

  # Set headers for anonymous credentials (clear Authorization if anonymous)
  if (isTRUE(request$config$credentials$anonymous)) {
    request$http_request$header["Authorization"] <- ""
  }

  return(request)
}
