#' @include cache.R
#' @include util.R
#' @include iniutil.R
NULL

#' Get the service configuration from the service object.
#'
#' Look up the service configuration from the service object, e.g. when
#' calling `svc$operation()`, `get_config()` will look up `svc`, then get
#' any configuration stored in it, as if the operation function were
#' a method and the service object were a class instance.
#'
#' `get_config` must be called directly by the operation function and
#' assigned immediately, not provided as an argument to another function.
#'
#' We look up the service object then fetch its data so we can both support
#' documentation tooltips in RStudio and also have class-object-like
#' behavior. Alternatives that do not support documentation tooltips in
#' RStudio include reference classes (RC), R6 classes, and any modification of
#' the functions at run-time, e.g. inserting the configuration into the
#' function definition for each operation in a particular service object.
#'
#' @export
get_config <- function() {
  calling_env <- parent.frame(2)
  call <- sys.call(-1)[[1]]
  # Ensure we correctly identify the service object (e.g. `svc`) when the
  # operation is called through `do.call`, e.g. `do.call(svc$operation, args)`.
  if (is.function(call)) {
    call <- sys.call(-2)[[2]]
  }
  if (is.name(call)) {
    return(Config())
  }
  object <- eval(call[[2]], envir = calling_env)
  config <- object$.internal$config
  if (is.null(config)) {
    return(Config())
  }
  return(config)
}

#' Add configuration settings to a service object.
#'
#' `set_config` adds a given set of configuration settings in `cfgs` to a
#' service object, i.e. the service object for S3. Configuration settings can
#' include credentials, region, endpoint, etc. These configuration settings
#' will be used whenever an operation is called from that service object.
#'
#' `set_config` explicitly makes the `credentials` property mutable, such that
#' when the SDK retrieves credentials later on, it will save them in the
#' service object. This means that credentials don't need to be fetched on each
#' operation, only if and when the saved credentials expire.
#'
#' @param svc A service object containing service operations.
#' @param cfgs A list of optional configuration settings.
#'
#' @details
#' The optional configuration settings can include the following:
#' ```
#' list(
#'   credentials = list(
#'     creds = list(
#'       access_key_id = "string",
#'       secret_access_key = "string",
#'       session_token = "string"
#'     ),
#'     profile = "string"
#'   ),
#'   endpoint = "string",
#'   region = "string"
#' )
#' ```
#'
#' @examples
#' # Create a config object with custom credentials and endpoint.
#' config <- set_config(
#'   svc = list(),
#'   cfgs = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "abc",
#'         secret_access_key = "123"
#'       )
#'     ),
#'     endpoint = "https://foo.com"
#'   )
#' )
#' @export
set_config <- function(svc, cfgs = list()) {
  shape <- tag_annotate(Config())

  # update optional config parameters
  cfgs <- update_optional_config_parameter(cfgs, cfgs$credentials$profile)
  config <- populate(cfgs, shape)
  config$credentials <- as.environment(config$credentials)
  svc$.internal <- list(config = config)
  return(svc)
}

update_optional_config_parameter <- function(cfgs, profile) {
  for (cfg_param in names(.optional_config_parameter)) {
    if (is.null(cfgs[[cfg_param]])) {
      cfgs[[cfg_param]] <- .optional_config_parameter[[cfg_param]](profile)
    }
  }
  return(cfgs)
}

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------

# Get the path to the .aws folder.
get_aws_path <- function() {
  if (.Platform$OS.type == "unix") {
    home <- "~"
  } else {
    home <- Sys.getenv("USERPROFILE")
  }
  path <- path.expand(file.path(home, ".aws"))
  return(path)
}

get_config_file_path <- function() {
  path <- get_env("AWS_CONFIG_FILE")
  if (path != "" && file.exists(path)) {
    return(path)
  }

  path <- file.path(get_aws_path(), "config")
  if (file.exists(path)) {
    return(path)
  }

  return(NULL)
}

get_credentials_file_path <- function() {
  path <- get_env("AWS_SHARED_CREDENTIALS_FILE")
  if (path != "" && file.exists(path)) {
    return(path)
  }

  path <- file.path(get_aws_path(), "credentials")
  if (file.exists(path)) {
    return(path)
  }

  return(NULL)
}

get_env <- function(variable) {
  value <- Sys.getenv(variable)
  if (value != "") {
    return(value)
  }

  value <- get_os_env(variable)
  if (value != "") {
    return(value)
  }

  return("")
}

# Get the name of the IAM role from the instance metadata.
get_iam_role <- function() {
  iam_role_response <- get_instance_metadata("iam/security-credentials")

  if (is.null(iam_role_response)) {
    return(NULL)
  }

  iam_role_name <- raw_to_utf8(iam_role_response$body)

  return(iam_role_name)
}

# Gets the instance metadata by making an http request to an instance metadata services
# Please see security recommendations by AWS: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-service.html
get_instance_metadata <- function(query_path = "") {
  token_ttl <- "21600" # same approach as in boto3: https://github.com/boto/botocore/blob/master/botocore/utils.py#L376
  # Do not get metadata when the disabled setting is on.
  if (trimws(tolower(get_env("AWS_EC2_METADATA_DISABLED"))) %in% c("true", "1")) {
    return(NULL)
  }
  # Get token timeout for IMDSv2 tokens
  token <- "" # Token to be used in case of more secure IMDSv2 authentication
  # try IMDSv2  (more information): https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-instance-metadata-service.html
  metadata_token_url <- file.path(
    "http://169.254.169.254/latest/api/token"
  )
  metadata_token_request <- new_http_request(
    "PUT",
    metadata_token_url,
    timeout = 1,
    header = c("X-aws-ec2-metadata-token-ttl-seconds" = token_ttl)
  )

  metadata_token_response <- tryCatch(
    {
      issue(metadata_token_request)
    },
    error = function(e) {
      NULL
    }
  )
  if (!is.null(metadata_token_response) && metadata_token_response$status_code == 200) {
    if (length(metadata_token_response[["body"]]) > 0) {
      token <- rawToChar(metadata_token_response[["body"]])
    }
  }
  metadata_url <- file.path(
    "http://169.254.169.254/latest/meta-data",
    query_path
  )
  if (token != "") {
    metadata_request <- new_http_request(
      "GET",
      metadata_url,
      timeout = 1,
      header = c("X-aws-ec2-metadata-token" = token)
    )
  } else {
    metadata_request <- new_http_request("GET", metadata_url, timeout = 1)
  }
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

  return(metadata_response)
}

# Get the value of an OS environment variable.
# NOTE: Does not work on Windows.
get_os_env <- function(var) {
  if (.Platform$OS.type == "unix") {
    value <- os_env_cache[[var]] %||% ""
  } else {
    value <- "" # Not implemented on Windows.
  }

  return(value)
}

# Get the AWS profile to use. If none, return "default".
get_profile_name <- function(profile = "") {
  if (!is.null(profile) && profile != "") {
    return(profile)
  }

  profile <- get_env("AWS_PROFILE")

  if (profile == "") profile <- "default"

  return(profile)
}

# Get region from the config file.
# For profiles other than default, the profile name is prefaced by "profile".
# See https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html
check_config_file_region <- function(profile = "") {
  config_path <- get_config_file_path()
  if (is.null(config_path)) {
    return(NULL)
  }

  profile <- get_profile_name(profile)
  if (profile != "default") profile <- paste("profile", profile)

  config_values <- read_ini(config_path)

  if (is.null(config_values[[profile]])) {
    return(NULL)
  }

  region <- config_values[[profile]]$region

  return(region)
}

# Get the AWS region.
get_region <- function(profile = "") {
  region <- get_env("AWS_REGION")
  if (region != "") {
    return(region)
  }

  # Check if default region is specified
  region <- get_env("AWS_DEFAULT_REGION")
  if (region != "") {
    return(region)
  }

  region <- check_config_file_region(profile)

  if (is.null(region)) stop("No region provided")

  return(region)
}

# Get Endpoint for Service
# https://docs.aws.amazon.com/sdkref/latest/guide/ss-endpoints-table.html
# https://docs.aws.amazon.com/sdkref/latest/guide/feature-ss-endpoints.html#ss-endpoints-envar
get_service_endpoint <- function(profile = "", service_id = "") {
  service_id <- gsub(" ", "_", service_id)
  endpoint <- get_env(paste0("AWS_ENDPOINT_URL_", toupper(service_id)))
  if (endpoint != "") {
    return(endpoint)
  }

  endpoint <- check_config_file_endpoint(profile, tolower(service_id))
  return(endpoint)
}

check_config_file_endpoint <- function(profile = "", service_id = "") {
  config_path <- get_config_file_path()
  if (is.null(config_path)) {
    return(NULL)
  }

  profile_name <- get_profile_name(profile)
  if (profile_name != "default") profile_name <- paste("profile", profile_name)

  config_values <- read_ini(config_path)

  if (is.null(config_values[[profile_name]])) {
    return(NULL)
  }

  profile <- config_values[[profile_name]]

  if (!("services" %in% names(profile))) {
    return(NULL)
  }

  service_name <- profile[["services"]]
  profile_service <- config_values[[paste("services", service_name)]][[service_id]]
  if (is.null(profile_service)) {
    return(NULL)
  }

  endpoint <- profile_service[["endpoint_url"]]
  return(endpoint)
}

# Get the AWS role ARN to use.
get_role_arn <- function(role_arn = "") {
  if (!is.null(role_arn) && role_arn != "") {
    return(role_arn)
  }

  role_arn <- get_env("AWS_ROLE_ARN")

  if (role_arn == "") stop("No Role ARN provided")

  return(role_arn)
}

# Get the AWS role session to use. If none, return "default".
get_role_session_name <- function(role_session_name = "") {
  if (!is.null(role_session_name) && role_session_name != "") {
    return(role_session_name)
  }

  role_session_name <- get_env("AWS_ROLE_SESSION_NAME")

  if (role_session_name == "") role_session_name <- "default"

  return(role_session_name)
}

# Get the Web Identity Token File to use (via AssumeRoleWithWebIdentity).
get_web_identity_token_file <- function(web_identity_token_file = "") {
  if (!is.null(web_identity_token_file) && web_identity_token_file != "") {
    return(web_identity_token_file)
  }

  web_identity_token_file <- get_env("AWS_WEB_IDENTITY_TOKEN_FILE")

  if (web_identity_token_file == "") stop("No WebIdentityToken file available")

  return(web_identity_token_file)
}

# Get the Web Identity Token from reading the token file
get_web_identity_token <- function(web_identity_token_file = "") {
  return(readLines(get_web_identity_token_file(web_identity_token_file), warn = FALSE))
}

# Check if sts_regional_endpoint is present in config file
check_config_file_sts_regional_endpoint <- function(profile = "") {
  config_path <- get_config_file_path()
  if (is.null(config_path)) {
    return(NULL)
  }

  profile <- get_profile_name(profile)
  if (profile != "default") profile <- paste("profile", profile)

  config_values <- read_ini(config_path)

  if (is.null(config_values[[profile]])) {
    return(NULL)
  }

  sts_regional_endpoint <- config_values[[profile]]$sts_regional_endpoint

  return(sts_regional_endpoint)
}

# Get the AWS STS Regional Endpoint property from envvar or
# config file. Envvar takes precedence as per general AWS strategy
get_sts_regional_endpoint <- function(profile = "") {
  sts_regional_endpoint <- get_env("AWS_STS_REGIONAL_ENDPOINTS")
  if (sts_regional_endpoint != "") {
    return(sts_regional_endpoint)
  }

  sts_regional_endpoint <- check_config_file_sts_regional_endpoint(profile)

  return(sts_regional_endpoint %||% "")
}

.optional_config_parameter <- list(
  "sts_regional_endpoint" = get_sts_regional_endpoint
)

# Ensures config is built correctly from service parameters
build_config <- function(cfg) {
  add_list <- function(x) if (length(x) == 0) NULL else x

  creds <- list()
  credentials <- list()
  config <- list()

  cred_names <- names(Creds())
  credentails_names <- names(Credentials())
  cred_names <- cred_names[cred_names != "provider_name"]
  credentails_names <- credentails_names[credentails_names != "provider"]

  for (cfg_name in names(cfg)) {
    if (cfg_name == "credentials") {
      for (credentails_name in credentails_names) {
        if (credentails_name == "creds") {
          for (cred_name in cred_names) {
            creds[[cred_name]] <- cfg[[cfg_name]][[credentails_name]][[cred_name]]
          }
          credentials[[credentails_name]] <- add_list(creds)
        } else {
          credentials[[credentails_name]] <- cfg[[cfg_name]][[credentails_name]]
        }
      }
      config[[cfg_name]] <- add_list(credentials)
    } else {
      config[[cfg_name]] <- cfg[[cfg_name]]
    }
  }
  return(config)
}

#' @title Merges config lists for paws services
#' @description Allows config list to be flatten from shorthand.
#' @param orig_cfg Original config list
#' @param param_cfg Config list developed from service parameters
#' @keywords internal
#' @export
merge_config <- function(orig_cfg, param_cfg) {
  if (identical(param_cfg$credentials, credentials())) {
    param_cfg$credentials <- list()
  }
  built_cfg <- build_config(param_cfg)
  return(modifyList(orig_cfg, built_cfg))
}
