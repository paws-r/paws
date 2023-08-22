# Build the request for the EC2 protocol.
ec2query_build <- function(request) {
  body <- list(
    Action = request$operation$name,
    Version = request$client_info$api_version
  )

  body <- query_parse(body, request$params, TRUE)

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

# Unmarshal the response from an EC2 protocol response.
ec2query_unmarshal <- function(request) {
  body <- xml2::read_xml(request$http_response$body, encoding = "utf8")
  interface <- request$data
  data <- xml2::xml_contents(body)
  request$data <- xml_parse(data, interface, xml2::xml_name(data))
  return(request)
}

# Unmarshal metadata from an EC2 protocol response.
# Do nothing; the EC2 protocol does not require unmarshalling metadata.
ec2query_unmarshal_meta <- function(request) {
  return(request)
}

# Unmarshal errors from an EC2 protocol response.
ec2query_unmarshal_error <- function(request) {
  body <- decode_xml(request$http_response$body)
  error_response <- lapply(body$Response$Errors[[1]], unlist)
  code <- error_response$Code
  message <- error_response$Message
  request$error <- Error(code, message, request$http_response$status_code, error_response)
  return(request)
}
