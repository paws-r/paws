#' @import paws.common
NULL

HANDLERS <- Handlers(
  validate = HandlerList(
    validate_endpoint_handler,
    validate_parameters_handler
  ),
  build = HandlerList(
    sdk_version_user_agent_handler,
    add_host_exec_env_user_agent_handler,
    .BUILD_HANDLER
  ),
  sign = HandlerList(
    build_content_length_handler,
    .SIGN_HANDLER
  ),
  send = HandlerList(
    validate_req_sig_handler,
    send_handler
  ),
  validate_response = HandlerList(
    validate_response_handler
  ),
  unmarshal = HandlerList(
    .UNMARSHAL_HANDLER
  ),
  unmarshal_meta = HandlerList(
    .UNMARSHAL_META_HANDLER
  ),
  unmarshal_error = HandlerList(
    .UNMARSHAL_ERROR_HANDLER
  )
)

service <- function () {
  cfg <- client_config(
    service_name = ".SERVICE_NAME",
    endpoints = .ENDPOINT_DATA
  )
  client_info <- ClientInfo(
    service_name = ".SERVICE_NAME",
    service_id = ".SERVICE_ID",
    api_version = ".API_VERSION",
    signing_name = .SIGNING_NAME,
    signing_region = cfg$signing_region,
    endpoint = cfg$endpoint,
    json_version = ".JSON_VERSION",
    target_prefix = ".TARGET_PREFIX"
  )
  handlers <- HANDLERS
  svc <- Client(
    config = cfg$config,
    client_info = client_info,
    handlers = handlers
  )
  return(svc)
}
