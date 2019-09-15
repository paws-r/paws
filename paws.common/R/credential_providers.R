#' @include net.R
NULL

# Retrieve credentials stored in R environment variables.
r_env_provider <- function(aws_profile = "") {
  access_key_id <- Sys.getenv("AWS_ACCESS_KEY_ID")
  secret_access_key <- Sys.getenv("AWS_SECRET_ACCESS_KEY")
  session_token <- Sys.getenv("AWS_SESSION_TOKEN")
  if (access_key_id != "" || secret_access_key != "" || session_token != "") {
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
os_env_provider <- function(aws_profile = "") {

  access_key_id <- get_os_env_variable("AWS_ACCESS_KEY_ID")
  secret_access_key <- get_os_env_variable("AWS_SECRET_ACCESS_KEY")
  session_token <- get_os_env_variable("AWS_SESSION_TOKEN")

  if (access_key_id != "" || secret_access_key != "" || session_token != "") {
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
credentials_file_provider <- function(aws_profile = "") {

  credentials_path <- file.path(get_aws_path(), "credentials")

  if (!file.exists(credentials_path)) return(NULL)

  aws_profile <- get_profile_name(aws_profile)

  credentials <- ini::read.ini(credentials_path)

  if (is.null(credentials[[aws_profile]])) return(NULL)

  access_key_id <- credentials[[aws_profile]]$aws_access_key_id
  secret_access_key <- credentials[[aws_profile]]$aws_secret_access_key

  if (is.null(access_key_id) || is.null(secret_access_key)) return(NULL)

  if (access_key_id != "" && secret_access_key != "") {
    creds <- list(
      access_key_id = access_key_id,
      secret_access_key = secret_access_key,
      session_token = "",
      provider_name = ""
    )
  } else {
    creds <- NULL
  }
  return(creds)
}

# Retrieve credentials for EC2 IAM Role
iam_credentials_provider <- function(aws_profile = "") {

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

# Get creds from source profile
source_profile_credentials_provider <- function(aws_profile = "") {

  source_profile <- check_config_file_source_profile(aws_profile)

  if (source_profile == "") return(NULL)

  creds <- credentials_file_provider(source_profile)

  return(creds)
}
  
# Retrieve temporary credentials from an assumed role
assume_role_provider <- function(credentials) {

  assumed_creds <- check_config_file_assume_role(credentials$profile)

  if (is.null(assumed_creds) || is.null(assumed_creds$role_arn)) {
    return(credentials$creds)
  }

  source_credentials <- credentials
  source_credentials$profile <-
    check_config_file_source_profile(credentials$profile)

  # STS is global so we set region to us-east-1
  region <- "us-east-1"

  config <- list(
    credentials = source_credentials,
    region = region
  )

  assumed_creds <- sts_assume_role(
      assumed_creds$role_arn,
      assumed_creds$role_session_name,
      config
  )

  if (is.null(assumed_creds)) return(creds)

  assumed_creds <- list(
    access_key_id = assumed_creds$Credentials$AccessKeyId,
    secret_access_key = assumed_creds$Credentials$SecretAccessKey,
    session_token = assumed_creds$Credentials$SessionToken
  )

  return(assumed_creds)
}

no_credentials <- function(aws_profile = "") {
  stop("No credentials provided")
}
