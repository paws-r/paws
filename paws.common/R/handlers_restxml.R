# Build the request body for the REST XML protocol.
restxml_build <- function(request) {
  request <- rest_build(request)
  t <- rest_payload_type(request$params)
  if (t == "structure" || t == "") {
    request <- xml_build_body(request)
  }
  return(request)
}

# Unmarshal metadata from a REST XML response.
restxml_unmarshal_meta <- function(request) {
  request <- rest_unmarshal_meta(request)
  return(request)
}

# Unmarshal the body of a REST XML response.
restxml_unmarshal <- function(request) {
  t <- rest_payload_type(request$data)
  if (t == "structure" || t == "") {
    data <- decode_xml(request$http_response$body)
    interface <- request$data
    result_name <- paste0(request$operation$name, "Result")
    request$data <- xml_unmarshal(data, interface, result_name)
  } else {
    request <- rest_unmarshal(request)
  }
  return(request)
}

# Unmarshal errors from a REST XML response.
restxml_unmarshal_error <- function(request) {
  request <- query_unmarshal_error(request)
  return(request)
}
