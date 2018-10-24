# Returns the default handlers.
default_handlers <- function() {
  h <- Handlers(
    validate = HandlerList(
      validate_endpoint_handler,
      validate_parameters_handler
    ),
    build = HandlerList(
      sdk_version_user_agent_handler,
      add_host_exec_env_user_agent_handler
    ),
    sign = HandlerList(
      build_content_length_handler
    ),
    send = HandlerList(
      validate_req_sig_handler,
      send_handler
    ),
    validate_response = HandlerList(
      validate_response_handler
    )
  )
  return(h)
}
