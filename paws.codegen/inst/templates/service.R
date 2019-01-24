METADATA <- list(
  service_name = ".SERVICE_NAME",
  endpoints = .ENDPOINTS,
  service_id = ".SERVICE_ID",
  api_version = ".API_VERSION",
  signing_name = .SIGNING_NAME,
  json_version = ".JSON_VERSION",
  target_prefix = ".TARGET_PREFIX"
)

HANDLERS <- paws.common::new_handlers(".PROTOCOL", ".SIGNER")

service <- function() {
  return(paws.common::new_service(METADATA, HANDLERS))
}
