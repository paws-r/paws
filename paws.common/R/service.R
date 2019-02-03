#' Return request handlers for a service
#'
#' Return request handlers for a given protocol and request signer.
#'
#' @param protocol Protocol: `ec2query`, `jsonrpc`, `query`, `rest`, `restjson`,
#'                 or `restxml`.
#' @param signer Signer: `v2` or `v4`.
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
    )
  )
  return(handlers)
}

#' Return an AWS API service object
#'
#' Return an API service client used to make requests.
#'
#' The `metadata` parameter requires a list like the following:
#' ```
#' list(
#'   service_name = "string",
#'   endpoints = list("region" = "endpoint"),
#'   service_id = "string",
#'   api_version = "string",
#'   signing_name = "string"|NULL,
#'   json_version = "string",
#'   target_prefix = "string"
#' )
#' ```
#'
#' @param metadata A named list of API metadata. See details.
#' @param handlers A set of handlers, e.g. from `new_handlers`.
#'
#' @export
new_service <- function(metadata, handlers) {
  cfg <- client_config(
    service_name = metadata$service_name,
    endpoints = metadata$endpoints
  )

  signing_name <- metadata$signing_name
  if (is.null(signing_name)) signing_name <- cfg$signing_name
  client_info <- ClientInfo(
    service_name = metadata$service_name,
    service_id = metadata$service_id,
    api_version = metadata$api_version,
    signing_name = signing_name,
    signing_region = cfg$signing_region,
    endpoint = cfg$endpoint,
    json_version = metadata$json_version,
    target_prefix = metadata$target_prefix
  )

  svc <- Client(
    config = cfg$config,
    client_info = client_info,
    handlers = handlers
  )
  return(svc)
}
