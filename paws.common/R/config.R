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
  if (is.name(call)) {
    return(Config())
  }
  object <- eval(call[[2]], envir = calling_env)
  config <- object$.internal$config
  if (is.null(config)) return(Config())
  return(config)
}

#' Add configuration settings to a service object.
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
#'
#' @export
set_config <- function(svc, cfgs = list()) {
  shape <- tag_annotate(Config())
  config <- populate(cfgs, shape)
  config$credentials <- as.environment(config$credentials)
  svc$.internal <- list(config = config)
  return(svc)
}

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

# Get os environment variable.
# Does not work on Windows.
get_os_env_variable <- function(var) {

  if (.Platform$OS.type == "unix") {
    env_var <- system(sprintf("echo $%s", var), intern = T)
  } else {
    env_var <- "" # Not implemented on Windows.
  }

  return(env_var)
}

# Get the AWS profile to use. If none, return "default".
get_profile_name <- function(profile = "") {

  if (!is.null(profile) && profile != "") return(profile)

  profile <- Sys.getenv("AWS_PROFILE")

  if (profile == "") profile <- get_os_env_variable("AWS_PROFILE")

  if (profile == "") profile <- "default"

  return(profile)
}

# Gets the job role credentials by making an http request
get_container_credentials <- function() {

  credentials_uri <- Sys.getenv("AWS_CONTAINER_CREDENTIALS_RELATIVE_URI")
  if (nchar(credentials_uri) == 0) {
    return(NULL)
  }

  metadata_url <- file.path("http://169.254.170.2", credentials_uri)
  metadata_request <-
    new_http_request("GET", metadata_url, timeout = 1)

  metadata_response <- tryCatch({
    issue(metadata_request)
  }, error = function (e){
    NULL
  })

  if (is.null(metadata_response) || metadata_response$status_code != 200) {
    return(NULL)
  }

  return(metadata_response)
}

# Gets the instance metadata by making an http request
get_instance_metadata <- function(query_path = "") {

  metadata_url <- file.path("http://169.254.169.254/latest/meta-data",
                           query_path)
  metadata_request <-
    new_http_request("GET", metadata_url, timeout = 1)

  metadata_response <- tryCatch({
    issue(metadata_request)
  }, error = function (e){
    NULL
  })

  if (is.null(metadata_response) || metadata_response$status_code != 200) {
    return(NULL)
  }

  return(metadata_response)
}

# Get the name of the IAM Role from the instance meta-data
get_iam_role <- function() {

  iam_role_response <-  get_instance_metadata("iam/security-credentials")

  if (is.null(iam_role_response)) return(NULL)

  iam_role_name <- raw_to_utf8(iam_role_response$body)

  return(iam_role_name)
}

# Tries to get the region from the R environment
check_r_env_region <- function() {
  region <- Sys.getenv("AWS_REGION")
  return(region)
}

# Tries to get the region from the OS environment
check_os_region <- function() {
  region <- get_os_env_variable("AWS_REGION")
  return(region)
}

# Get region from the config file.
# For profiles other than default, the profile name is prefaced by "profile".
# See https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-profiles.html
check_config_file_region <- function(profile = "") {

  config_path <- file.path(get_aws_path(), "config")

  if (!file.exists(config_path)) return(NULL)

  profile <- get_profile_name(profile)
  if (profile != "default") profile <- paste("profile", profile)

  config_values <- ini::read.ini(config_path)

  if (is.null(config_values[[profile]])) return(NULL)

  region <- config_values[[profile]]$region

  return(region)
}

# Get the AWS region.
get_region <- function(profile = "") {

  region <- check_r_env_region()
  if (region != "") return(region)

  region <- check_os_region()
  if (region != "") return(region)

  region <- check_config_file_region(profile)

  if (is.null(region)) stop("No region provided")

  return(region)
}
