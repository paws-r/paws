EMPTY_JSON <- "{}"

# Build the request body for the JSON RPC protocol.
jsonrpc_build <- function(request) {
  if (params_filled(request)) {
    body <- json_build(request$params)
  } else {
    body <- EMPTY_JSON
  }

  if (!is_empty(request$client_info$target_prefix) || (!is.null(body) && body != "{}")) {
    request <- set_body(request, body)
  }
  if (!is_empty(request$client_info$target_prefix)) {
    target <- paste0(request$client_info$target_prefix, ".", request$operation$name)
    request$http_request$header["X-Amz-Target"] <- target
  }

  if (!is_empty(request$client_info$json_version)) {
    json_version <- request$client_info$json_version
    request$http_request$header["Content-Type"] <- paste0("application/x-amz-json-", json_version)
  }

  return(request)
}

# Unmarshal metadata from a JSON RPC response.
jsonrpc_unmarshal_meta <- function(request) {
  request <- rest_unmarshal_meta(request)
  return(request)
}

# Unmarshal the body of a JSON RPC response.
jsonrpc_unmarshal <- function(request) {
  body <- request$http_response$body
  if (data_filled(request) && length(body) > 0) {
    data <- decode_json(body)
    request$data <- tag_del(json_parse(data, request$data))
  }
  return(request)
}

# Unmarshal errors from a JSON RPC response.
jsonrpc_unmarshal_error <- function(request) {
  error <- decode_json(request$http_response$body)
  if (length(error) == 0) {
    return(request)
  }
  code <- strsplit(error[["__type"]], "#")[[1]][1]
  message <- ""
  message_name <- grep("message", names(error), ignore.case = TRUE, value = TRUE)
  if (length(message_name) > 0) {
    message <- error[[message_name]]
  }
  request$error <- Error(
    code = code,
    message = message,
    status_code = request$http_response$status_code,
    error_response = error
  )
  return(request)
}
