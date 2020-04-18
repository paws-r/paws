#' @include net.R
NULL

# Retrieve credentials stored in R environment variables.
r_env_provider <- function() {
  access_key_id <- Sys.getenv("AWS_ACCESS_KEY_ID")
  secret_access_key <- Sys.getenv("AWS_SECRET_ACCESS_KEY")
  session_token <- Sys.getenv("AWS_SESSION_TOKEN")
  if (access_key_id != "" && secret_access_key != "") {
    creds <- list(
      access_key_id = access_key_id,
      secret_access_key = secret_access_key,
      session_token = session_token,
      provider_name = ""
    )
  } else {
    creds <- NULL
  }
  return(creds)
}

# Retrieve credentials stored in OS environment variables.
os_env_provider <- function() {

  access_key_id <- get_os_env_variable("AWS_ACCESS_KEY_ID")
  secret_access_key <- get_os_env_variable("AWS_SECRET_ACCESS_KEY")
  session_token <- get_os_env_variable("AWS_SESSION_TOKEN")

  if (access_key_id != "" && secret_access_key != "") {
    creds <- list(
      access_key_id = access_key_id,
      secret_access_key = secret_access_key,
      session_token = session_token,
      provider_name = ""
    )
  } else {
    creds <- NULL
  }
  return(creds)
}

# Retrieve credentials stored in credentials file.
credentials_file_provider <- function(profile = "") {

  credentials_path <- file.path(get_aws_path(), "credentials")

  if (!file.exists(credentials_path)) return(NULL)

  aws_profile <- get_profile_name(profile)

  credentials <- ini::read.ini(credentials_path)

  if (is.null(credentials[[aws_profile]])) return(NULL)

  access_key_id <- credentials[[aws_profile]]$aws_access_key_id
  secret_access_key <- credentials[[aws_profile]]$aws_secret_access_key
  session_token <- credentials[[aws_profile]]$aws_session_token

  if (is.null(access_key_id) || is.null(secret_access_key)) return(NULL)

  if (is.null(session_token)) {
    session_token <- ""
  }

  if (access_key_id != "" && secret_access_key != "") {
    creds <- list(
      access_key_id = access_key_id,
      secret_access_key = secret_access_key,
      session_token = session_token,
      provider_name = ""
    )
  } else {
    creds <- NULL
  }
  return(creds)
}

# Retrieve container job role credentials
container_credentials_provider <- function() {

  # Initialize to NULL
  credentials_response <- NULL

  container_credentials_uri <-
    Sys.getenv("AWS_CONTAINER_CREDENTIALS_RELATIVE_URI")

  # Look for job role credentials first
  if (container_credentials_uri != "") {
    credentials_response <- get_container_credentials()
  }

  if (is.null(credentials_response)) return(NULL)

  credentials_response_body <-
    jsonlite::fromJSON(rawToChar(credentials_response$body))

  access_key_id <- credentials_response_body$AccessKeyId
  secret_access_key <- credentials_response_body$SecretAccessKey
  session_token <- credentials_response_body$Token

  if (is.null(access_key_id) || is.null(secret_access_key) ||
      is.null(session_token)) return(NULL)

  if (access_key_id != "" && secret_access_key != "" &&
      session_token != "") {
    creds <- list(
      access_key_id = access_key_id,
      secret_access_key = secret_access_key,
      session_token = session_token,
      provider_name = ""
    )
  } else {
    creds <- NULL
  }
  return(creds)
}


# Retrieve credentials for EC2 IAM Role
iam_credentials_provider <- function() {

  iam_role <- get_iam_role()
  if(is.null(iam_role)) return(NULL)

  credentials_url <- file.path("iam/security-credentials", iam_role)

  credentials_response <- get_instance_metadata(credentials_url)
  
  if (is.null(credentials_response)) return(NULL)

  credentials_response_body <- jsonlite::fromJSON(rawToChar(credentials_response$body))

  access_key_id <- credentials_response_body$AccessKeyId
  secret_access_key <- credentials_response_body$SecretAccessKey
  session_token <- credentials_response_body$Token

  if (is.null(access_key_id) || is.null(secret_access_key) ||
      is.null(session_token)) return(NULL)

  if (access_key_id != "" && secret_access_key != "" &&
      session_token != "") {
    creds <- list(
      access_key_id = access_key_id,
      secret_access_key = secret_access_key,
      session_token = session_token,
      provider_name = ""
    )
  } else {
    creds <- NULL
  }
  return(creds)
}

no_credentials <- function() {
  stop("No credentials provided")
}
