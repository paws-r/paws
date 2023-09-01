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
  close_connection = FALSE,
  max_retries = 3,
  connect_timeout = 60,
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
  disable_rest_protocol_uri_cleaning = FALSE,
  sts_regional_endpoint = "",
  signature_version = ""
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
  return(s)
}

# resolver_endpoint returns the endpoint for a given service.
# e.g. "https://ec2.us-east-1.amazonaws.com"
resolver_endpoint <- function(service, region, endpoints, sts_regional_endpoint = "", scheme = "https") {
  get_region_pattern <- function(region, endpoints) {
    patterns <- names(endpoints)
    matches <- patterns[sapply(patterns, function(pattern) grepl(pattern, region))]
    match <- matches[order(nchar(matches), decreasing = TRUE)][1]
    return(match)
  }
  signing_region <- NULL
  if (service == "sts" & nzchar(sts_regional_endpoint)) {
    global <- vapply(endpoints, function(x) x$global, FUN.VALUE = logical(1))
    endpoint <- endpoints[global][[1]]$endpoint
    endpoints[global][[1]]$endpoint <- set_sts_regional_endpoint(
      sts_regional_endpoint,
      endpoint
    )
    signing_region <- set_sts_signing_region(sts_regional_endpoint, region)
  }


  e <- endpoints[[get_region_pattern(region, endpoints)]]
  # TODO: Delete old endpoint format handling once all packages are updated.
  if (is.character(e)) {
    e <- list(endpoint = e, global = FALSE)
  }
  endpoint <- gsub("{service}", service, e$endpoint, fixed = TRUE)
  endpoint <- gsub("{region}", region, endpoint, fixed = TRUE)
  endpoint <- gsub("^(.+://)?", sprintf("%s://", scheme), endpoint)
  signing_region <- signing_region %||% ifelse(e$global, "us-east-1", region)
  return(list(
    endpoint = endpoint,
    signing_region = signing_region
  ))
}

set_sts_regional_endpoint <- function(sts_regional_endpoint, endpoint) {
  switch(sts_regional_endpoint,
    "legacy" = "sts.amazonaws.com",
    "regional" = "sts.{region}.amazonaws.com",
    endpoint
  )
}

set_sts_signing_region <- function(sts_regional_endpoint, region) {
  switch(sts_regional_endpoint,
    "legacy" = "us-east-1",
    "regional" = region
  )
}

# client_config returns a ClientConfig configured for the service.
client_config <- function(service_name, endpoints, cfgs) {
  s <- new_session()
  if (!is.null(cfgs)) {
    s$config <- cfgs
  }
  # If region not defined, set it
  if (nchar(s$config$region) == 0) {
    s$config$region <- get_region(cfgs$credentials$profile)
  }
  region <- s$config$region
  if (s$config$endpoint != "") {
    endpoint <- s$config$endpoint
    signing_region <- region
  } else {
    sts_regional_endpoint <- s$config$sts_regional_endpoint
    e <- resolver_endpoint(service_name, region, endpoints, sts_regional_endpoint)
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
