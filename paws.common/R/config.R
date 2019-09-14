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
get_profile_name <- function(aws_profile = "") {

  if (aws_profile != "") return(aws_profile)
  
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

  if (is.null(metadata_response) || metadata_response$status_code != 200) 
    return(NULL)

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
check_config_file_region <- function(aws_profile = "") {

  config_path <- file.path(get_aws_path(), "config")

  if (!file.exists(config_path)) return(NULL)

  aws_profile <- get_profile_name(aws_profile)

  config_values <- ini::read.ini(config_path)

  if (is.null(config_values[[aws_profile]])) return(NULL)

  region <- config_values[[aws_profile]]$region

  return(region)
}

# Tries to get the region from the config file
check_config_file_assume_role <- function() {

  config_path <- file.path(get_aws_path(), "config")

  if (!file.exists(config_path)) return(NULL)
  
  aws_profile <- get_profile_name()

  config_values <- ini::read.ini(config_path)

  if (is.null(config_values[[aws_profile]])) {
    aws_profile <- paste("profile", aws_profile)
    config_values <- ini::read.ini(config_path)
    if (is.null(config_values[[aws_profile]])) return(NULL)
  }

  role_arn <- config_values[[aws_profile]]$role_arn
  source_profile <- config_values[[aws_profile]]$source_profile
  role_session_name <- config_values[[aws_profile]]$role_session_name
  
  if (is.null(role_session_name)) {
    role_session_name <- paste0(sample(LETTERS, 15, replace = TRUE),
                                collapse = "")
  } 

  assumed_role <- list(
    role_arn = role_arn,
    source_profile = source_profile,
    role_session_name = role_session_name
    )
  
  return(assumed_role)
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
