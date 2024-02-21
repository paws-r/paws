# Build the request body for the REST JSON protocol.
restjson_build <- function(request) {
  request <- rest_build(request)
  t <- rest_payload_type(request$params)
  if (t == "structure" || t == "") {
    request <- jsonrpc_build(request)
  }
  # Developed from boto3:
  # https://github.com/boto/botocore/blob/d5b2e4ab4bc4ad84f8e0e568e70ddc8ab7f094a8/botocore/serialize.py#L671-L700
  if (has_streaming_payload(request, t)) {
    headers <- request[["http_request"]][["header"]]
    if (is.null(headers[["Content-Type"]])) {
      request[["http_request"]][["header"]][["Content-Type"]] <- "application/json"
    }
    if (is.null(headers[["Accept"]])) {
      request[["http_request"]][["header"]][["Accept"]] <- "application/json"
    }
  }
  return(request)
}

has_streaming_payload <- function(request, type) {
  values <- request$params
  if (!is.null(values)) {
    payload_name <- tag_get(values, "payload")
    if (payload_name != "") {
      if(length(values[[payload_name]]) > 0 && type %in% c('blob', 'string')) {
        return(TRUE)
      }
    }
  }
  return(FALSE)
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
