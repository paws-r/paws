#' @include RcppExports.R
#' @include config.R
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
  custom_endpoint = FALSE,
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
  custom_endpoint = FALSE,
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

# only add host_prefix that match HOST_PREFIX_RE
# https://github.com/boto/botocore/blob/786396c9b236671cc57f6404d84c381ad1499cc5/botocore/serialize.py#L173-L203
HOST_PREFIX_RE <- "^[A-Za-z0-9\\.\\-]+$"

# resolver_endpoint returns the endpoint for a given service.
# e.g. "https://ec2.us-east-1.amazonaws.com"
resolver_endpoint <- function(service, region, endpoints, sts_regional_endpoint = "", scheme = "https", host_prefix = "") {
  # Set default region for s3:
  # https://github.com/boto/botocore/blob/develop/botocore/regions.py#L189-L220
  if (service == "s3" & (region == "aws-global")) {
    region <- "us-east-1"
  }
  # locate global endpoint
  global_found <- check_global(endpoints)
  global_region <- (region == "aws-global")
  if (!any(global_found) & global_region) {
    stop("No region provided and no global region found.")
  }
  search_region <- (
    if (any(global_found) & global_region) names(global_found[global_found][1]) else region
  )
  e <- endpoints[[get_region_pattern(names(endpoints), search_region)]]
  # TODO: Delete old endpoint format handling once all packages are updated.
  if (is.character(e)) {
    e <- list(endpoint = e, global = FALSE)
  }
  if (service == "sts" & nzchar(sts_regional_endpoint)) {
    e$endpoint <- set_sts_regional_endpoint(
      sts_regional_endpoint, e
    )
    region <- set_sts_region(sts_regional_endpoint, region)
  }
  signing_region <- if (e[["global"]]) "us-east-1" else region
  endpoint <- endpoint_unescape(e[["endpoint"]], service, signing_region)
  if (grepl(HOST_PREFIX_RE, host_prefix)) {
    endpoint <- sprintf("%s%s", host_prefix, endpoint)
  }
  endpoint <- gsub("^(.+://)?", sprintf("%s://", scheme), endpoint)

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

set_sts_region <- function(sts_regional_endpoint, region) {
  switch(sts_regional_endpoint,
    "legacy" = "us-east-1",
    "regional" = region
  )
}

# client_config returns a ClientConfig configured for the service.
client_config <- function(service_name, endpoints, cfgs, service_id, operation = Operation()) {
  s <- new_session()
  if (!is.null(cfgs)) {
    s$config <- cfgs
  }
  custom_endpoint <- FALSE
  # If region not defined, set it
  if (nchar(s$config$region) == 0) {
    s$config$region <- get_region(cfgs[["credentials"]][["profile"]])
  }
  region <- s$config$region
  if (s$config$endpoint != "") {
    endpoint <- s$config$endpoint
    signing_region <- region
  } else {
    endpoint <- get_service_endpoint(cfgs[["credentials"]][["profile"]], service_id)
    if (!is.null(endpoint)) {
      signing_region <- region
      custom_endpoint <- TRUE
    } else {
      sts_regional_endpoint <- s$config$sts_regional_endpoint
      e <- resolver_endpoint(
        service_name,
        region, endpoints,
        sts_regional_endpoint,
        host_prefix = operation$host_prefix
      )
      endpoint <- e$endpoint
      signing_region <- e$signing_region
    }
  }
  c <- ClientConfig(
    config = s$config,
    handlers = s$handlers,
    endpoint = endpoint,
    custom_endpoint = custom_endpoint,
    signing_region = signing_region,
    signing_name = service_name
  )
  return(c)
}
