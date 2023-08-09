# Build the request body for the REST JSON protocol.
restjson_build <- function(request) {
  request <- rest_build(request)
  t <- rest_payload_type(request$params)
  if (t == "structure" || t == "") {
    request <- jsonrpc_build(request)
  }
  return(request)
}

# Unmarshal metadata from a REST JSON protocol API response.
restjson_unmarshal_meta <- function(request) {
  request <- rest_unmarshal_meta(request)
  return(request)
}

# Unmarshal a REST JSON protocol API response.
restjson_unmarshal <- function(request) {
  if (rest_payload_type(request$data) %in% c("structure", "")) {
    request <- jsonrpc_unmarshal(request)
  } else {
    request <- rest_unmarshal(request)
  }
  return(request)
}

# Unmarshal errors from a REST JSON protocol API response.
restjson_unmarshal_error <- function(request) {
  error <- decode_json(request$http_response$body)

  code <- request$http_response$header[["X-Amzn-Errortype"]]
  if (is.null(code)) code <- error$code
  if (is.null(code)) code <- error$`__type`
  if (is.null(code)) {
    code <- ""
  } else {
    code <- strsplit(code, ":")[[1]][1]
  }

  message <- ""
  if (!is.null(error$message)) message <- error$message

  request$error <- Error(
    code = code,
    message = message,
    status_code = request$http_response$status_code,
    error_response = error
  )
  return(request)
}
