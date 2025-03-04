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
  signature_version = "",
  partition_name = ""
)

# A Session object stores configuration and request handlers for a service.
Session <- struct(config = Config(), handlers = Handlers())

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
GLOBAL_REGIONS <- c(
  "aws-global",
  "aws-cn-global",
  "aws-us-gov-global",
  "aws-iso-global",
  "aws-iso-b-global"
)
PARTITIONS <- c(
  "aws" = "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$",
  "aws-cn" = "^cn\\-\\w+\\-\\d+$",
  "aws-us-gov" = "^us\\-gov\\-\\w+\\-\\d+$",
  "aws-iso" = "^us\\-iso\\-\\w+\\-\\d+$",
  "aws-iso-b" = "^us\\-isob\\-\\w+\\-\\d+$",
  "aws-iso-e" = "^eu\\-isoe\\-\\w+\\-\\d+$",
  "aws-iso-f" = "^us\\-isof\\-\\w+\\-\\d+$"
)

# resolver_endpoint returns the endpoint for a given service.
# e.g. "https://ec2.us-east-1.amazonaws.com"
resolver_endpoint <- function(
  service,
  region,
  endpoints,
  sts_regional_endpoint = "",
  scheme = "https",
  host_prefix = "",
  partition_name = ""
) {
  switch(
    vendor_cache[["vendor"]],
    "boto" = resolver_endpoint_boto(
      service = service,
      region = region,
      endpoints = endpoints,
      sts_regional_endpoint = sts_regional_endpoint,
      scheme = scheme,
      host_prefix = host_prefix,
      partition_name = partition_name
    ),
    "js" = resolver_endpoint_js(
      service = service,
      region = region,
      endpoints = endpoints,
      sts_regional_endpoint = sts_regional_endpoint,
      scheme = scheme,
      host_prefix = host_prefix
    )
  )
}

resolver_endpoint_boto <- function(
  service,
  region,
  endpoints,
  sts_regional_endpoint,
  scheme,
  host_prefix,
  partition_name
) {
  # Set default region for s3 if not provided
  # https://github.com/boto/botocore/blob/develop/botocore/regions.py#L200-L205
  if (service == 's3' && !nzchar(region)) region <- 'us-east-1'
  global_found <- check_global(endpoints)
  global_endpoints <- global_found[global_found]

  # use first global endpoint if region isn't provided
  if (!nzchar(region) && length(global_endpoints) > 0) {
    region <- names(global_endpoints)[1]
  }

  global_region <- region %in% GLOBAL_REGIONS
  if (!any(global_found) && global_region) {
    stop("No region provided and no global region found.")
  }
  e <- get_region_pattern(endpoints, region, partition_name)
  if (service == "sts" & nzchar(sts_regional_endpoint)) {
    e[["endpoint"]] <- set_sts_regional_endpoint(sts_regional_endpoint, e[["endpoint"]])
    e[["signing_region"]] <- set_sts_region(sts_regional_endpoint, region)
  }
  endpoint <- endpoint_unescape(e[["endpoint"]], e[["signing_region"]])
  if (grepl(HOST_PREFIX_RE, host_prefix)) {
    endpoint <- sprintf("%s%s", host_prefix, endpoint)
  }
  endpoint <- gsub("^(.+://)?", sprintf("%s://", scheme), endpoint)

  return(list(endpoint = endpoint, signing_region = e[["signing_region"]]))
}

# Support paws < 0.8.0
resolver_endpoint_js <- function(
  service,
  region,
  endpoints,
  sts_regional_endpoint,
  scheme,
  host_prefix
) {
  # Set default region for s3:
  # https://github.com/boto/botocore/blob/develop/botocore/regions.py#L189-L220
  if (service == 's3' && !nzchar(region)) region <- 'us-east-1'
  # locate global endpoint
  global_found <- check_global(endpoints)
  global_region <- (region == "aws-global")
  if (!any(global_found) & global_region) {
    stop("No region provided and no global region found.")
  }
  search_region <- (if (any(global_found) & global_region)
    names(global_found[global_found][1]) else region)
  e <- endpoints[[get_region_pattern_js(names(endpoints), search_region)]]
  if (is.character(e)) {
    e <- list(endpoint = e, global = FALSE)
  }
  if (service == "sts" & nzchar(sts_regional_endpoint)) {
    e$endpoint <- set_sts_regional_endpoint(sts_regional_endpoint, e)
    region <- set_sts_region(sts_regional_endpoint, region)
  }
  signing_region <- if (e[["global"]]) "us-east-1" else region
  endpoint <- endpoint_unescape_js(e[["endpoint"]], service, signing_region)
  if (grepl(HOST_PREFIX_RE, host_prefix)) {
    endpoint <- sprintf("%s%s", host_prefix, endpoint)
  }
  endpoint <- gsub("^(.+://)?", sprintf("%s://", scheme), endpoint)

  return(list(endpoint = endpoint, signing_region = signing_region))
}

set_sts_regional_endpoint <- function(sts_regional_endpoint, endpoint) {
  switch(
    sts_regional_endpoint,
    "legacy" = "sts.amazonaws.com",
    "regional" = "sts.{region}.amazonaws.com",
    endpoint
  )
}

set_sts_region <- function(sts_regional_endpoint, region) {
  switch(sts_regional_endpoint, "legacy" = "us-east-1", "regional" = region)
}

get_region_pattern <- function(endpoints, region, partition_name = "") {
  if (nzchar(partition_name)) {
    found <- PARTITIONS[names(PARTITIONS) == partition_name]
  } else {
    nms <- names(endpoints)
    found <- nms[nms == region]
    if (length(found) == 0) {
      partition_name <- set_partition_name(region)
      found <- PARTITIONS[names(PARTITIONS) == partition_name]
    }
  }
  result <- list()
  if (length(found) > 0) {
    result <- endpoints[[found]]
  } else {
    # default to partition "aws" when no region is found
    # https://github.com/boto/botocore/blob/develop/botocore/client.py#L638-L647
    result <- endpoints[["^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$"]]
  }

  if (is.null(result[["signing_region"]])) result[["signing_region"]] <- region
  return(result)
}

# client_config returns a ClientConfig configured for the service.
client_config <- function(
  service_name,
  endpoints,
  cfgs,
  service_id,
  operation = Operation()
) {
  sess <- new_session()
  if (!is.null(cfgs)) {
    sess[["config"]] <- cfgs
  }
  custom_endpoint <- FALSE
  signing_region <- sess[["config"]][["region"]]
  if (sess[["config"]][["endpoint"]] != "") {
    endpoint <- sess[["config"]][["endpoint"]]
  } else {
    endpoint <- get_service_endpoint(
      sess[["config"]][["credentials"]][["profile"]],
      service_id
    )
    if (!is.null(endpoint)) {
      custom_endpoint <- TRUE
    } else {
      re <- resolver_endpoint(
        service_name,
        signing_region,
        endpoints,
        sess[["config"]][["sts_regional_endpoint"]],
        host_prefix = operation[["host_prefix"]],
        partition_name = sess[["config"]][["partition_name"]]
      )
      endpoint <- re[["endpoint"]]
      signing_region <- re[["signing_region"]]
    }
    # sess$config$endpoint <- endpoint
    # sess$config$region <- signing_region
  }
  cc <- ClientConfig(
    config = sess[["config"]],
    handlers = sess[["handlers"]],
    endpoint = endpoint,
    custom_endpoint = custom_endpoint,
    signing_region = signing_region,
    signing_name = service_name
  )
  return(cc)
}
