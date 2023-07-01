#' @include net.R
#' @include credential_sts.R
#' @include credential_sso.R
#' @include dateutil.R
#' @include iniutil.R
#' @include logging.R
NULL

Creds <- struct(
  access_key_id = "",
  secret_access_key = "",
  session_token = "",
  access_token = "",
  expiration = Inf,
  provider_name = ""
)

# Set anonymous credentials
anonymous_provider <- function(anonymous) {
  if (!anonymous) {
    return(NULL)
  }
  return(Creds())
}

# Retrieve credentials stored in R or OS environment variables.
env_provider <- function() {
  access_key_id <- get_env("AWS_ACCESS_KEY_ID")
  secret_access_key <- get_env("AWS_SECRET_ACCESS_KEY")
  session_token <- get_env("AWS_SESSION_TOKEN")
  expiration <- as_timestamp(get_env("AWS_CREDENTIAL_EXPIRATION"), "iso8601")
  if (length(expiration) == 0) expiration <- Inf

  if (access_key_id != "" && secret_access_key != "") {
    creds <- Creds(
      access_key_id = access_key_id,
      secret_access_key = secret_access_key,
      session_token = session_token,
      expiration = expiration
    )
  } else {
    creds <- NULL
  }
  return(creds)
}

# Retrieve credentials stored in credentials file.
credentials_file_provider <- function(profile = "") {
  credentials_path <- get_credentials_file_path()
  if (is.null(credentials_path)) {
    log_info("Unable to locate credentials file")
    return(NULL)
  }

  aws_profile <- get_profile_name(profile)

  credentials <- read_ini(credentials_path)

  if (is.null(credentials[[aws_profile]])) {
    log_info("Profile '%s' not found in '%s'", aws_profile, credentials_path)
    return(NULL)
  }

  access_key_id <- credentials[[aws_profile]]$aws_access_key_id
  secret_access_key <- credentials[[aws_profile]]$aws_secret_access_key
  session_token <- credentials[[aws_profile]]$aws_session_token

  if (is.null(access_key_id) || is.null(secret_access_key)) {
    log_info(
      "Unable to locate aws_access_key_id or aws_secret_access_key in credentials file profile '%s'.",
      aws_profile
    )
    return(NULL)
  }

  if (is.null(session_token)) {
    session_token <- ""
  }

  if (access_key_id != "" && secret_access_key != "") {
    creds <- Creds(
      access_key_id = access_key_id,
      secret_access_key = secret_access_key,
      session_token = session_token,
      expiration = Inf
    )
  } else {
    log_info("Unable to get credentials from credentials file.")
    creds <- NULL
  }
  return(creds)
}

# Get credentials that are specified by an item in the AWS config file.
config_file_provider <- function(profile = "") {
  config_path <- get_config_file_path()
  if (is.null(config_path)) {
    log_info("Unable to locate config file")
    return(NULL)
  }

  config <- read_ini(config_path)

  profile_name <- get_profile_name(profile)
  if (profile_name != "default") profile_name <- paste("profile", profile_name)
  if (is.null(config[[profile_name]])) {
    log_info("Profile '%s' not found in '%s'", profile_name, config_path)
    return(NULL)
  }
  profile <- config[[profile_name]]

  if ("credential_process" %in% names(profile)) {
    creds <- config_file_credential_process(profile$credential_process)
    if (!is.null(creds)) {
      return(creds)
    }
  }

  if ("sso_role_name" %in% names(profile)) {
    sso_role_name <- profile$sso_role_name
    sso_account_id <- profile$sso_account_id
    sso_session <- NULL
    if ("sso_session" %in% names(profile)) {
      sso_session <- profile$sso_session
      sso_session_profile_name <- paste("sso-session", profile$sso_session)
      sso_session_profile <- config[[sso_session_profile_name]]
      sso_start_url <- sso_session_profile$sso_start_url
      sso_region <- sso_session_profile$sso_region
    } else {
      sso_start_url <- profile$sso_start_url
      sso_region <- profile$sso_region
    }
    creds <- sso_credential_process(
      sso_session,
      sso_start_url,
      sso_account_id,
      sso_region,
      sso_role_name
    )
    if (!is.null(creds)) {
      return(creds)
    }
  }
  if ("role_arn" %in% names(profile)) {
    role_arn <- profile$role_arn
    role_session_name <- profile$role_session_name
    if (is.null(role_session_name)) {
      sys <- Sys.info()
      role_session_name <- digest::digest(paste0(sys["user"], sys["nodename"]))
    }
    mfa_serial <- profile$mfa_serial

    if ("credential_source" %in% names(profile)) {
      credential_source <- profile$credential_source
      creds <- config_file_credential_source(role_arn, role_session_name, mfa_serial, credential_source)
      if (!is.null(creds)) {
        return(creds)
      }
    }
    if ("source_profile" %in% names(profile)) {
      source_profile <- profile$source_profile
      creds <- config_file_source_profile(role_arn, role_session_name, mfa_serial, source_profile)
      if (!is.null(creds)) {
        return(creds)
      }
    }
  }
  log_info("Unable to get credentials from config file.")
  return(NULL)
}

# Get credentials by running a process specified in `command`.
config_file_credential_process <- function(command) {
  output <- system(command, intern = TRUE)
  data <- jsonlite::fromJSON(output)

  if (data$Version != 1) {
    return(NULL)
  }

  access_key_id <- data$AccessKeyId
  secret_access_key <- data$SecretAccessKey
  if (is.null(access_key_id) || access_key_id == "" ||
    is.null(secret_access_key) || secret_access_key == "") {
    return(NULL)
  }

  session_token <- data$SessionToken
  if (is.null(session_token)) session_token <- ""

  expiration <- as_timestamp(data$Expiration, "iso8601")
  if (length(expiration) == 0) expiration <- Inf

  creds <- Creds(
    access_key_id = access_key_id,
    secret_access_key = secret_access_key,
    session_token = session_token,
    expiration = expiration
  )
  return(creds)
}

# Get the `role_arn`'s temporary credentials given a `credential_source`,
# either "Environment", "Ec2InstanceMetadata", or "EcsContainer".
# See https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-role.html
config_file_credential_source <- function(role_arn, role_session_name, mfa_serial, credential_source) {
  if (credential_source == "Environment") {
    creds <- env_provider()
  } else if (credential_source == "Ec2InstanceMetadata") {
    creds <- iam_credentials_provider()
  } else if (credential_source == "EcsContainer") {
    creds <- container_credentials_provider()
  }
  if (is.null(creds)) {
    return(NULL)
  }
  role_creds <- get_assumed_role_creds(role_arn, role_session_name, mfa_serial, creds)
  return(role_creds)
}

# Get credentials from profile associated with an SSO login.  Assumes
# the user has already logged in via e.g. the aws cli so that a cached
# access token is available.
sso_credential_process <- function(sso_session,
                                   sso_start_url,
                                   sso_account_id,
                                   sso_region,
                                   sso_role_name) {
  input_str <- sso_session %||% sso_start_url
  cache_key <- digest::digest(enc2utf8(input_str), algo = "sha1", serialize = FALSE)
  json_file <- paste0(cache_key, ".json")
  root <- ifelse(
    Sys.info()[[1]] == "Windows",
    file.path(Sys.getenv("HOMEDRIVE"), Sys.getenv("HOMEPATH")),
    "~"
  )
  sso_cache <- file.path(root, ".aws", "sso", "cache", json_file)
  if (!file.exists(sso_cache)) {
    stop(sprintf(
      "Error loading SSO Token: Token for %s does not exist",
      input_str
    ), call. = F)
  }
  cache_creds <- jsonlite::fromJSON(sso_cache)
  if (!("accessToken" %in% names(cache_creds)) || !("expiresAt" %in% names(cache_creds))) {
    stop(sprintf(
      "Error loading SSO Token: Token for %s is invalid.",
      sso_start_url
    ), call. = F)
  }
  svc <- sso(
    config = list(
      credentials = list(
        creds = list(
          access_token = cache_creds$accessToken
        )
      ),
      region = sso_region,
      endpoint = "",
      close_connection = FALSE,
      disable_rest_protocol_uri_cleaning = TRUE
    )
  )
  resp <- svc$get_role_credentials(sso_role_name, sso_account_id, cache_creds$accessToken)
  if (is.null(resp)) {
    return(NULL)
  }
  roleCredentials <- resp$roleCredentials
  creds <- Creds(
    access_key_id = roleCredentials$accessKeyId,
    secret_access_key = roleCredentials$secretAccessKey,
    session_token = roleCredentials$sessionToken,
    expiration = roleCredentials$expiration
  )
  return(creds)
}

# Get STS temporary credentials for the role with ARN `role_arn` using
# credentials found in profile named `source_profile`.
# See https://docs.aws.amazon.com/credref/latest/refdocs/setting-global-source_profile.html.
config_file_source_profile <- function(role_arn, role_session_name, mfa_serial, source_profile) {
  creds <- credentials_file_provider(source_profile)
  if (is.null(creds)) creds <- config_file_provider(source_profile)
  if (is.null(creds)) {
    return(NULL)
  }
  role_creds <- get_assumed_role_creds(role_arn, role_session_name, mfa_serial, creds)
  return(role_creds)
}

# Get the user's MFA token code from a prompt.
# Use an RStudio prompt if running in RStudio.
# Otherwise use a text prompt in the console.
get_token_code <- function() {
  if (requireNamespace("rstudioapi", quietly = TRUE) && rstudioapi::isAvailable()) {
    token_code <- rstudioapi::showPrompt("MFA", "Enter MFA token code")
  } else {
    token_code <- readline("Enter MFA token code: ")
  }
  return(token_code)
}

get_creds_from_sts_resp <- function(resp) {
  role_creds <- Creds(
    access_key_id = resp$Credentials$AccessKeyId,
    secret_access_key = resp$Credentials$SecretAccessKey,
    session_token = resp$Credentials$SessionToken,
    expiration = as_timestamp(resp$Credentials$Expiration, "iso8601")
  )
  return(role_creds)
}

# Get STS credentials for AssumeRole `role_arn`, using credentials in `creds`.
# If the role requires MFA, the MFA device's serial number must be provided in
# `mfa_serial`, and the user will be prompted interactively to provide the
# current MFA token code.
get_assumed_role_creds <- function(role_arn, role_session_name, mfa_serial, creds) {
  svc <- sts(config = list(credentials = list(creds = creds)))
  if (is.null(mfa_serial) || mfa_serial == "") {
    resp <- svc$assume_role(
      RoleArn = role_arn,
      RoleSessionName = role_session_name
    )
  } else {
    token_code <- get_token_code()
    resp <- svc$assume_role(
      RoleArn = role_arn,
      RoleSessionName = role_session_name,
      SerialNumber = mfa_serial,
      TokenCode = token_code
    )
  }
  if (is.null(resp)) {
    return(NULL)
  }
  role_creds <- get_creds_from_sts_resp(resp)
  return(role_creds)
}

# Get STS credentials for AssumeRoleWithWebIdentity
get_assume_role_with_web_identity_creds <- function(role_arn, role_session_name, web_identity_token) {
  svc <- sts(config = list(credentials = list(anonymous = TRUE)))

  resp <- svc$assume_role_with_web_identity(
    RoleArn = role_arn,
    RoleSessionName = role_session_name,
    WebIdentityToken = web_identity_token
  )

  if (is.null(resp)) {
    return(NULL)
  }
  role_creds <- get_creds_from_sts_resp(resp)
  return(role_creds)
}

# Retrieve container job role credentials
container_credentials_provider <- function() {
  # Initialize to NULL
  credentials_response <- NULL

  container_credentials_uri <- get_env("AWS_CONTAINER_CREDENTIALS_RELATIVE_URI")
  container_credentials_token <- get_env("AWS_WEB_IDENTITY_TOKEN_FILE")

  # Look for job role credentials first, then web identity token file
  if (container_credentials_uri != "") {
    credentials_response <- get_container_credentials()
  } else if (container_credentials_token != "") {
    credentials_response <- get_container_credentials_eks()
  }

  access_key_id <- credentials_response$access_key_id
  secret_access_key <- credentials_response$secret_access_key
  session_token <- credentials_response$session_token
  expiration <- credentials_response$expiration

  # return credential
  if (is.null(access_key_id) || is.null(secret_access_key) ||
    is.null(session_token)) {
    log_info(
      "Unable to obtain access_key_id, secret_access_key or session_token"
    )
    return(NULL)
  }

  if (access_key_id != "" && secret_access_key != "" &&
    session_token != "") {
    creds <- Creds(
      access_key_id = access_key_id,
      secret_access_key = secret_access_key,
      session_token = session_token,
      expiration = expiration
    )
  } else {
    log_info("Unable to obtain credentials from container.")
    creds <- NULL
  }
  return(creds)
}

# Gets the job role credentials by making an http request
get_container_credentials <- function() {
  credentials_uri <- get_env("AWS_CONTAINER_CREDENTIALS_RELATIVE_URI")
  if (nchar(credentials_uri) == 0) {
    return(NULL)
  }

  metadata_url <- file.path("http://169.254.170.2", credentials_uri)
  metadata_request <-
    new_http_request("GET", metadata_url, timeout = 1)

  metadata_response <- tryCatch(
    {
      issue(metadata_request)
    },
    error = function(e) {
      NULL
    }
  )

  if (is.null(metadata_response) || metadata_response$status_code != 200) {
    return(NULL)
  }

  credentials_response_body <-
    jsonlite::fromJSON(raw_to_utf8(metadata_response$body))

  credentials_list <- list(
    access_key_id = credentials_response_body$AccessKeyId,
    secret_access_key = credentials_response_body$SecretAccessKey,
    session_token = credentials_response_body$Token,
    expiration = as_timestamp(credentials_response_body$Expiration, "iso8601")
  )

  return(credentials_list)
}

get_container_credentials_eks <- function() {
  credentials_list <- get_assume_role_with_web_identity_creds(
    role_arn = get_role_arn(),
    role_session_name = get_role_session_name(),
    web_identity_token = readLines(get_web_identity_token_file(), warn = FALSE)
  )

  return(credentials_list)
}

# Retrieve credentials for EC2 IAM Role
iam_credentials_provider <- function() {
  iam_role <- get_iam_role()
  if (is.null(iam_role)) {
    log_info("Unable to obtain iam role")
    return(NULL)
  }

  credentials_url <- file.path("iam/security-credentials", iam_role)

  credentials_response <- get_instance_metadata(credentials_url)

  if (is.null(credentials_response)) {
    log_info("Unable credentials from iam role")
    return(NULL)
  }

  credentials_response_body <- jsonlite::fromJSON(raw_to_utf8(credentials_response$body))

  access_key_id <- credentials_response_body$AccessKeyId
  secret_access_key <- credentials_response_body$SecretAccessKey
  session_token <- credentials_response_body$Token
  expiration <- as_timestamp(credentials_response_body$Expiration, "iso8601")

  if (is.null(access_key_id) || is.null(secret_access_key) ||
    is.null(session_token)) {
    log_info(
      "Unable to obtain access_key_id, secret_access_key or session_token"
    )
    return(NULL)
  }

  if (access_key_id != "" && secret_access_key != "" &&
    session_token != "") {
    creds <- Creds(
      access_key_id = access_key_id,
      secret_access_key = secret_access_key,
      session_token = session_token,
      expiration = expiration
    )
  } else {
    log_info("Unable to obtain credentials from iam role.")
    creds <- NULL
  }
  return(creds)
}

no_credentials <- function() {
  message <- (
    if (isTRUE(getOption('paws.log_level') <= 2L)) {
      'No compatible credentials provided. Use `options("paws.log_level" = 3L)` for more information.'
    } else {
      "No compatible credentials provided."
    }
  )
  stop(message, call. = FALSE)
}
