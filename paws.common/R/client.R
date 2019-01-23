# @include credentials.R
# @include handlers.R
# @include struct.R
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

# new_session returns a Session with default configuration.
new_session <- function() {
  s <- Session()
  s$config$region <- get_region()
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
  endpoint <- endpoints[[get_region_pattern(region, endpoints)]]
  endpoint <- gsub("{service}", service, endpoint, fixed = TRUE)
  endpoint <- gsub("{region}", region, endpoint, fixed = TRUE)
  endpoint <- gsub("^(.+://)?", sprintf("%s://", scheme), endpoint)
  return(endpoint)
}

# client_config returns a ClientConfig configured for the service.
client_config <- function(service_name, endpoints) {
  s <- new_session()
  region <- s$config$region
  if (s$config$endpoint != "") {
    url <- sprintf("https://%s", s$config$endpoint)
  } else {
    url <- resolver_endpoint(service_name, region, endpoints)
  }
  c <- ClientConfig(
    config = s$config,
    handlers = s$handlers,
    endpoint = url,
    signing_region = region,
    signing_name = service_name
  )
  return(c)
}
