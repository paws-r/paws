# Returns a list of functions for setting up API service.
make_service <- function(api) {
  service <- list(
    make_service_init(api)
  )
  return(service)
}

# Returns a function setting up API service: client info, handlers, etc.
make_service_init <- function(api) {
  template <- make_function_template({
    cfg <- client_config(
      .SERVICE_NAME,
      .ENDPOINT_DATA
    )
    client_info <- ClientInfo(
      service_name = .SERVICE_NAME,
      service_id = .SERVICE_ID,
      api_version = .API_VERSION,
      signing_name = .SIGNING_NAME,
      signing_region = cfg$signing_region,
      endpoint = cfg$endpoint,
      json_version = .JSON_VERSION,
      target_prefix = .TARGET_PREFIX
    )
    handlers <- .HANDLERS
    svc <- Client(
      config = cfg$config,
      client_info = client_info,
      handlers = handlers
    )
    return(svc)
  })

  fn <- make_function_from_template(
    name = "service",
    template = template,
    subs = list(
      .SERVICE_NAME = service_name(api),
      .ENDPOINT_DATA = make_endpoint_data(api),
      .SERVICE_ID = service_id(api),
      .API_VERSION = api$metadata$apiVersion,
      .SIGNING_NAME = signing_name(api),
      .JSON_VERSION = api$metadata$jsonVersion,
      .TARGET_PREFIX = api$metadata$targetPrefix,
      .HANDLERS = make_handlers(api)
    ),
    params = c()
  )

  return(fn)
}

# Returns a call which will create a list of handlers for a given API.
# TODO: Rename all handlers to `..._handler`?
make_handlers <- function(api) {
  protocol <- protocol_package(api)
  signature <- api$metadata$signatureVersion
  args <- c(
    build = paste0(protocol, "_build"),
    sign = paste0(signature, "_sign_request_handler"),
    unmarshal = paste0(protocol, "_unmarshal"),
    unmarshal_meta = paste0(protocol, "_unmarshal_meta"),
    unmarshal_error = paste0(protocol, "_unmarshal_error")
  )
  # TODO: Event stream handler -- applies only to S3.
  # if (has_event_stream) {
  #   args <- c(
  #     args,
  #     unmarshal_stream = paste0(protocol, "_unmarshal_handler")
  #   )
  # }
  args <- lapply(args, as.symbol)
  h <- make_call("handlers", args)
  return(h)
}

make_endpoint_data <- function(api) {
  return(api$region_config)
}

#-------------------------------------------------------------------------------

# Returns the standardized protocol name used by an API.
# e.g. rest-json -> restjson.
protocol_package <- function(api) {
  protocol <- api$metadata$protocol
  if (protocol == "json") return("jsonrpc")
  else if (protocol == "ec2") return("ec2query")
  else return(gsub("\\-", "", protocol))
}

# Returns the signing name for an API, either the signing name specified in the
# API definition or the signing name assigned by `client_config`.
signing_name <- function(api) {
  name <- api$metadata$signingName
  if (!is.null(name)) return(name)
  return(quote(cfg$signing_name))
}
