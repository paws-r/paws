#' @include error.R

# Build the request for the Query protocol.
query_build <- function(request) {
  body <- list(
    Action = request$operation$name,
    Version = request$client_info$api_version
  )

  body <- query_parse(body, request$params, FALSE)

  request$http_request$header["Accept"] <- "application/xml"

  if (!is_presigned(request)) {
    request$http_request$method <- "POST"
    request$http_request$header["Content-Type"] <- "application/x-www-form-urlencoded; charset=utf-8"
    request$body <- build_query_string(body)
    request$http_request$body <- request$body
  } else {
    request$http_request$method <- "GET"
    request$http_request$url$raw_query <- build_query_string(body)
  }

  return(request)
}

# Unmarshal the response from a Query protocol response.
query_unmarshal <- function(request) {
  data <- request$http_response$body
  interface <- request$data
  result_name <- paste0(request$operation$name, "Result")
  request$data <- xml_unmarshal(data, interface, result_name)
  return(request)
}

# Unmarshal metadata from a Query protocol response.
query_unmarshal_meta <- function(request) {
  request$request_id <- request$http_response$header[["X-Amzn-Requestid"]]
  return(request)
}

# Unmarshal errors from a Query protocol response.
query_unmarshal_error <- function(request) {
  data <- tryCatch(
    decode_xml(request$http_response$body),
    error = function(e) NULL
  )

  if (is.null(data)) {
    request$error <- serialization_error(request)
    return(request)
  }

  error <- tryCatch(
    xml_unmarshal_error(data, request$http_response$status_code),
    error = function(e) NULL
  )

  if (is.null(error)) {
    request$error <- serialization_error(request)
    return(request)
  }

  request$error <- error
  return(request)
}
