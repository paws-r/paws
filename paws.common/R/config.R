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
    return(list())
  }
  object <- eval(call[[2]], envir = calling_env)
  config <- object$.internal$config
  if (is.null(config)) return(list())
  return(config)
}

#' Validate and return a service configuration object.
#'
#' @param config A list of optional configuration settings.
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
#' config <- parse_config(
#'   list(
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
parse_config <- function(config) {
  shape <- tag_annotate(Config())
  return(populate(config, shape))
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
get_profile_name <- function() {

  aws_profile <- Sys.getenv("AWS_PROFILE")

  if (aws_profile == "") aws_profile <- get_os_env_variable("AWS_PROFILE")

  if (aws_profile == "") aws_profile <- "default"

  return(aws_profile)
}

# Gets the instance metadata by making an http request
get_instance_metadata <- function(query_path = "") {

  metadata_url <- file.path("http://169.254.169.254/latest/meta-data",
                           query_path)
  metadata_request <-
    new_http_request("GET", metadata_url)

  metadata_response <- tryCatch({
    issue(metadata_request)
  }, error = function (e){
    NULL
  })

  if (metadata_response$status_code != 200) return(NULL)

  return(metadata_response)
}

# Get the name of the IAM Role from the instance meta-data
get_iam_role <- function() {

  iam_role_response <-  get_instance_metadata("iam/security-credentials")

  if (is.null(iam_role_response)) return(NULL)

  iam_role_name <- rawToChar(iam_role_response$body)

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

# Tries to get the region from the config file
check_config_file_region <- function() {

  config_path <- file.path(get_aws_path(), "config")

  if (!file.exists(config_path)) return(NULL)

  aws_profile <- get_profile_name()

  config_values <- ini::read.ini(config_path)

  if (is.null(config_values[[aws_profile]])) return(NULL)

  region <- config_values[[aws_profile]]$region

  return(region)
}

# Get the AWS region.
get_region <- function() {

  region <- check_r_env_region()
  if (region != "") return(region)

  region <- check_os_region()
  if (region != "") return(region)

  region <- check_config_file_region()
  if (is.null(region)) stop("No region provided")

  return(region)
}
