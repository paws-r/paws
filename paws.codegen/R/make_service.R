# Returns a list of functions for setting up API service.
make_service <- function(api) {
  protocol <- protocol_package(api)
  signature <- api$metadata$signatureVersion

  template <- readChar(
    system_file("templates/service.R", package = methods::getPackageName()),
    nchars = 1e5
  )
  template <- gsub("\r", "", template)

  service <- translate(
    template,
    list(
      .PROTOCOL = protocol_package(api),
      .SIGNER = signature,
      .SERVICE_NAME = service_name(api),
      .ENDPOINTS = endpoint_data(api),
      .SERVICE_ID = service_id(api),
      .API_VERSION = api$metadata$apiVersion,
      .SIGNING_NAME = signing_name(api),
      .JSON_VERSION = json_version(api),
      .TARGET_PREFIX = target_prefix(api)
    )
  )
  return(service)
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
  if (!is.null(name)) return(quoted(name))
  return("NULL")
}

endpoint_data <- function(api) {
  return(api$region_config)
}

# Returns the JSON version for the API, or "" if none.
json_version <- function(api) {
  version <- api$metadata$jsonVersion
  if (is.null(version)) return("")
  return(version)
}

# Returns the target prefix for the API, or "" if none.
target_prefix <- function(api) {
  prefix <- api$metadata$targetPrefix
  if (is.null(prefix)) return("")
  return(prefix)
}
