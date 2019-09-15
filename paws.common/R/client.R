#' @include credentials.R
#' @include handlers.R
#' @include struct.R
NULL

# A Config object provides service configuration for service clients.
Config <- struct(
  credentials = Credentials(),
  endpoint = "",
  endpoint_resolver = "",
  enforce_should_retry_check = FALSE,
  region = "",
  disable_ssl = FALSE,
  max_retries = -1,
  retryer = NULL,
  disable_param_validation = FALSE,
  disable_compute_checksums = FALSE,
  s3_force_path_style = FALSE,
  s3_disable_100_continue = FALSE,
  s3_use_accelerate = FALSE,
  s3_disable_content_md5_validation = FALSE,
  ec2_metadata_disable_timeout_override = FALSE,
  use_dual_stack = FALSE,
  sleep_delay = NULL,
  disable_rest_protocol_uri_cleaning = FALSE
)

# A Session object stores configuration and request handlers for a service.
Session <- struct(
  config = Config(),
  handlers = Handlers()
)

# A ClientConfig object stores the information required to configure a service
# client instance.
ClientConfig <- struct(
  config = Config(),
  handlers = Handlers(),
  endpoint = "",
  signing_region = "",
  signing_name = "",
  signing_name_derived = FALSE
)

# A ClientInfo object stores immutable data about a service.
ClientInfo <- struct(
  service_name = "",
  service_id = "",
  api_version = "",
  endpoint = "",
  signing_name = "",
  signing_region = "",
  json_version = "",
  target_prefix = ""
)

# A Client object stores everything needed to create a service client.
Client <- struct(
  retryer = NULL,
  client_info = ClientInfo(),
  config = Config(),
  handlers = Handlers()
)

#-------------------------------------------------------------------------------

# Populate config
merge_in_config <- function(existing, other){
  if (is.null(other)){
    return(existing)
  }
  # Populate profile
  if (!is.null(other$credentials$profile)){
    existing$credentials$profile <- other$credentials$profile
  }
  # Populate credentials
  if (!is.null(other$credentials$creds)){
    
    # Set null values to an empty string
    if (is.null(other$credentials$creds$access_key_id)){
      other$credentials$creds$access_key_id <- ""
    }
    if (is.null(other$credentials$creds$secret_access_key)){
      other$credentials$creds$secret_access_key <- ""
    }
    if (is.null(other$credentials$creds$session_token)){
      other$credentials$creds$session_token <- ""
    }
    if (is.null(other$credentials$creds$provider_name)){
      other$credentials$creds$provider_name <- ""
    }
    
    existing$credentials$creds <- other$credentials$creds
  }
  # Populate endpoint
  if (!is.null(other$endpoint)){
    existing$endpoint <- other$endpoint
  }
  # Populate region
  if (!is.null(other$region)){
    existing$region <- other$region
  }
  return(existing)
}

# new_session returns a Session with user configuration.
new_session <- function(cfgs = NULL) {
  s <- Session()
  cfg <- Config()
  handlers <- Handlers()
  # Fill in Config with any user defined values
  cfg <- merge_in_config(cfg, cfgs)
  # If region not defined, set it
  if (nchar(cfg$region) == 0) {
    cfg$region <- get_region(cfg$credentials$profile)
  }
  s$config <- cfg
  s$handlers <- handlers
  return(s)
}

# resolver_endpoint returns the endpoint for a given service.
# e.g. "https://ec2.us-east-1.amazonaws.com"
resolver_endpoint <- function(service, region, endpoints, scheme = "https") {
  get_region_pattern <- function(region, endpoints) {
    patterns <- names(endpoints)
    matches <- patterns[sapply(patterns, function(pattern) grepl(pattern, region))]
    match <- matches[order(nchar(matches), decreasing = TRUE)][1]
    return(match)
  }
  e <- endpoints[[get_region_pattern(region, endpoints)]]
  # TODO: Delete old endpoint format handling once all packages are updated.
  if (is.character(e)) {
    e <- list(endpoint = e, global = FALSE)
  }
  endpoint <- gsub("{service}", service, e$endpoint, fixed = TRUE)
  endpoint <- gsub("{region}", region, endpoint, fixed = TRUE)
  endpoint <- gsub("^(.+://)?", sprintf("%s://", scheme), endpoint)
  signing_region <- ifelse(e$global, "us-east-1", region)
  return(list(
    endpoint = endpoint,
    signing_region = signing_region
  ))
}



# client_config returns a ClientConfig configured for the service.
client_config <- function(service_name, endpoints, cfgs = NULL) {
  s <- new_session(cfgs)
  region <- s$config$region
  if (s$config$endpoint != "") {
    endpoint <-  s$config$endpoint
    signing_region <- region
  } else {
    e <- resolver_endpoint(service_name, region, endpoints)
    endpoint <- e$endpoint
    signing_region <- e$signing_region
  }
  c <- ClientConfig(
    config = s$config,
    handlers = s$handlers,
    endpoint = endpoint,
    signing_region = signing_region,
    signing_name = service_name
  )
  return(c)
}
