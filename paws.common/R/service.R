#' Return request handlers for a service
#'
#' Return request handlers for a given protocol and request signer.
#'
#' @param protocol Protocol: `ec2query`, `jsonrpc`, `query`, `rest`, `restjson`,
#'                 or `restxml`.
#' @param signer Signer: `v2` or `v4`.
#'
#' @family API request functions
#'
#' @examples
#' # Get the handlers needed for an API using REST-JSON and AWS signature V4.
#' handlers <- new_handlers("restjson", "v4")
#'
#' @export
new_handlers <- function(protocol, signer) {
  handler <- function(protocol, type) {
    get(paste0(protocol, "_", type))
  }
  handlers <- Handlers(
    validate = HandlerList(
      validate_endpoint_handler,
      validate_parameters_handler
    ),
    build = HandlerList(
      sdk_version_user_agent_handler,
      add_host_exec_env_user_agent_handler,
      handler(protocol, "build")
    ),
    sign = HandlerList(
      build_content_length_handler,
      handler(signer, "sign_request_handler")
    ),
    send = HandlerList(
      validate_req_sig_handler,
      send_handler
    ),
    validate_response = HandlerList(
      validate_response_handler
    ),
    unmarshal = HandlerList(
      handler(protocol, "unmarshal")
    ),
    unmarshal_meta = HandlerList(
      handler(protocol, "unmarshal_meta")
    ),
    unmarshal_error = HandlerList(
      handler(protocol, "unmarshal_error")
    ),
    retry = HandlerList(
      standard_retry_handler
    )
  )
  return(handlers)
}

#' Return an AWS API service object
#'
#' Return an API service object with information and handlers needed to make
#' API requests.
#'
#' @section Region and credentials:
#'
#' `new_service` requires that you've set your AWS region in one of:
#' 1. `AWS_REGION` R environment variable
#' 2. `AWS_REGION` OS environment variable (Linux and macOS)
#' 3. `~/.aws/config` AWS configuration file
#'
#' `new_service` also requires that you've set your AWS credentials in one of:
#' 1. `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` R environment variables
#' 2. `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` OS environment variables
#'    (Linux and macOS)
#' 3. `~/.aws/credentials` AWS credentials file
#' 4. IAM role
#'
#' @param metadata A named list of API metadata. It should look like:
#' ```
#' list(
#'   service_name = "string",
#'   endpoints = list("region" = list(endpoint = "endpoint", global = FALSE)),
#'   service_id = "string",
#'   api_version = "string",
#'   signing_name = "string"|NULL,
#'   json_version = "string",
#'   target_prefix = "string"
#' )
#' ```
#' @param handlers A set of handlers, e.g. from `new_handlers`.
#'
#' @param cfgs A config defined by the service. Defaults to null.
#'
#' @param operation A operation defined by the service.
#'
#' @family API request functions
#'
#' @examples
#' \dontrun{
#' # Metadata for the S3 API.
#' metadata <- list(
#'   service_name = "s3",
#'   endpoints = list("us-east-1" = list(endpoint = "s3.amazonaws.com", global = FALSE)),
#'   service_id = "S3",
#'   api_version = "2006-03-01",
#'   signing_name = NULL,
#'   json_version = "",
#'   target_prefix = ""
#' )
#'
#' # Handlers for S3.
#' handlers <- new_handlers("restxml", "v4")
#'
#' # Build a service object for S3, containing the information necessary to
#' # build, send, and receive requests.
#' service <- new_service(metadata, handlers)
#' }
#'
#' @seealso [new_operation()]
#'
#' @export
new_service <- function(metadata, handlers, cfgs = NULL, operation = Operation()) {
  cfg <- client_config(
    service_name = metadata$service_name,
    endpoints = metadata$endpoints,
    cfgs = cfgs,
    service_id = metadata$service_id,
    operation = operation
  )

  signing_name <- metadata$signing_name
  if (is.null(signing_name)) signing_name <- cfg$signing_name
  custom_endpoint <- cfg$config$endpoint != "" || cfg$custom_endpoint
  client_info <- ClientInfo(
    service_name = metadata$service_name,
    service_id = metadata$service_id,
    api_version = metadata$api_version,
    signing_name = signing_name,
    signing_region = cfg$signing_region,
    endpoint = cfg$endpoint,
    custom_endpoint = custom_endpoint,
    json_version = metadata$json_version,
    target_prefix = metadata$target_prefix
  )

  handlers <- customize(handlers, metadata$service_name)

  svc <- Client(
    config = cfg$config,
    client_info = client_info,
    handlers = handlers
  )
  return(svc)
}

# A list of customization functions, which can add special handlers for a
# particular service. A service that needs customizations should have a
# function added this list under its service name. The function should accept
# a handlers object and return a handlers object. `customize` will look up
# the appropriate customization function and apply it to the handlers object.
# Example: `customizations$s3 <- function(handlers) {...}`
customizations <- list()

# Add customizations to the handlers for a given service.
customize <- function(handlers, service) {
  if (service %in% names(customizations)) {
    customize_fn <- customizations[[service]]
    handlers <- customize_fn(handlers)
  }
  handlers
}
