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
    request$body <- encode(body)
    request$http_request$body <- request$body
  } else {
    request$http_request$method <- "GET"
    request$http_request$url$raw_query <- encode(body)
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
  data <- request$http_response$body
  error <- xml_unmarshal_error(data)
  request$error <- error
  return(request)
}
