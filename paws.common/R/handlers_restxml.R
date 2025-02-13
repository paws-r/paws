#' @include xmlutil.R

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
    data <- request$http_response$body
    if (request$operation$stream_api) {
      request$data <- stream_unmarshal(request, data, xml_parse_stream)
    } else {
      interface <- request$data
      result_name <- paste0(request$operation$name, "Result")
      request$data <- xml_unmarshal(data, interface, result_name)
    }
  } else {
    request <- rest_unmarshal(request)
  }
  return(request)
}

# Unmarshal errors from a REST XML response.
restxml_unmarshal_error <- function(request) {
  request$http_response$body <- get_connection_error(
    request$http_response$body,
    request$operation$stream_api
  )
  request <- query_unmarshal_error(request)
  return(request)
}

xml_parse_stream <- function(bytes, interface) {
  if (isTRUE(tag_get(interface, "event"))) {
    for (nms in names(interface)) {
      inter <- interface[[nms]]
      if (isTRUE(tag_get(inter, "eventpayload"))) {
        type <- tag_get(inter, "type")
        if (type == "blob") {
          interface[[nms]] <- bytes
        } else if (type == "string") {
          interface[[nms]] <- raw_to_utf8(bytes)
        } else {
          interface <- xml_stream(bytes, interface)
        }
      }
    }
  }
  return(interface)
}
