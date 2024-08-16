#' @include url.R

# Build a request for the REST protocol.
rest_build <- function(request) {
  if (params_filled(request)) {
    request <- rest_build_location_elements(request, request$params, FALSE)
    request <- rest_build_body(request, request$params)
  }
  return(request)
}

rest_build_location_elements <- function(request, values, build_get_query) {
  query <- parse_query_string(request$http_request$url$raw_query)

  request$http_request$url$raw_path <- request$http_request$url$path

  values <- values[lengths(values) > 0]
  for (field_name in names(values)) {
    field <- values[[field_name]]

    name <- tag_get(field, "locationName")
    if (name == "") {
      name <- field_name
    }

    if (tag_get(field, "ignore") != "") {
      next
    }

    location <- tag_get(field, "location")
    if (location == "headers") {
      request$http_request$header <- rest_build_header_map(request$http_request$header, field)
    } else if (location == "header") {
      request$http_request$header <- rest_build_header(request$http_request$header, field, name)
    } else if (location == "uri") {
      request$http_request$url <- rest_build_uri(request$http_request$url, field, name)
    } else if (location == "querystring") {
      query <- rest_build_query_string(query, field, name)
    } else if (build_get_query) {
      query <- rest_build_query_string(query, field, name)
    }
  }

  request$http_request$url$raw_query <- build_query_string(query)
  if (!request$config$disable_rest_protocol_uri_cleaning) {
    request$http_request$url <- clean_path(request$http_request$url)
  }

  return(request)
}

rest_build_header_map <- function(header, values) {
  prefix <- tag_get(values, "locationName")
  for (key in names(values)) {
    value <- values[[key]]
    header[[paste0(prefix, key)]] <- convert_type(value, timestamp_format = "unix")
  }
  return(header)
}

rest_build_header <- function(header, value, name) {
  header[[name]] <- convert_type(value, timestamp_format = "rfc822")
  return(header)
}

rest_build_uri <- function(uri, value, name) {
  str <- convert_type(value, timestamp_format = "unix")
  uri$path <- sub(sprintf("{%s}", name), str, uri$path, fixed = TRUE)
  uri$path <- sub(sprintf("{%s+}", name), str, uri$path, fixed = TRUE)
  uri$raw_path <- sub(sprintf("{%s}", name), escape_path(str, TRUE), uri$raw_path, fixed = TRUE)
  uri$raw_path <- sub(sprintf("{%s+}", name), escape_path(str, FALSE), uri$raw_path, fixed = TRUE)
  return(uri)
}

rest_build_query_string <- function(query, field, name) {
  t <- tag_get(field, "type")
  if (t == "list") {
    query[[name]] <- field
  } else if (t == "map") {
    for (key in char_sort(names(field))) {
      query[[key]] <- field[[key]]
    }
  } else {
    query[[name]] <- convert_type(field, timestamp_format = "iso8601")
  }
  return(query)
}

rest_build_body <- function(request, values) {
  if (!is.null(values)) {
    payload_name <- tag_get(values, "payload")
    if (payload_name != "") {
      payload <- values[[payload_name]]
      t <- tag_get(payload, "type")
      if (length(payload) > 0 && t != "structure" && t != "") {
        if (t == "string") {
          request <- set_body(request, as.character(payload))
        } else if (t == "blob") {
          request <- set_body(request, payload)
        }
      }
    }
  }
  return(request)
}

#-------------------------------------------------------------------------------

# Unmarshal REST protocol API response metadata.
rest_unmarshal_meta <- function(request) {
  request$request_id <- request$http_response$header[["X-Amzn-Requestid"]]
  if (is.null(request$request_id)) {
    request$request_id <- request$http_response$header[["X-Amz-Request-Id"]]
  }
  if (data_filled(request)) {
    request <- rest_unmarshal_location_elements(request)
  }
  return(request)
}

# Unmarshal the body from a REST protocol API response.
rest_unmarshal <- function(request) {
  values <- request[["data"]]
  if ((payload_name <- tag_get(values, "payload")) != "") {
    if ((payload_type <- tag_get(values[[payload_name]], "type")) == "blob") {
      payload <- request$http_response$body
    } else {
      payload <- raw_to_utf8(request$http_response$body)
    }
    values[[payload_name]] <- payload
    request$data <- values
  }
  request[["data"]] <- tag_del(request[["data"]])
  return(request)
}

# Unmarshal headers and status from a REST protocol API response.
rest_unmarshal_location_elements <- function(request) {
  values <- request$data
  for (field_name in names(values)) {
    field <- values[[field_name]]
    # if location isn't found skip:
    # https://github.com/boto/botocore/blob/7e24ee2369ef2fbd0bb89294848e2e4fc76e66a7/botocore/parsers.py#L956-L957
    if ((location <- tag_get(field, "location")) == "") {
      next
    }
    if ((name <- tag_get(field, "locationName")) == "") {
      name <- field_name
    }
    if (location == "statusCode") {
      result <- rest_unmarshal_status_code(request$http_response$status_code)
    } else if (location == "header") {
      v <- request$http_response$header[[name]]
      type <- tag_get(field, "type")
      result <- rest_unmarshal_header(v, type)
    } else if (location == "headers") {
      v <- request$http_response$header
      prefix <- tag_get(field, "locationName")
      type <- tag_get(field, "type")
      result <- rest_unmarshal_header_map(v, prefix, type)
    }
    tags <- tag_get_all(field)
    values[[field_name]] <- tag_add(result, tags)
  }
  request$data <- values
  return(request)
}

# Unmarshal a status code.
rest_unmarshal_status_code <- function(status_code) {
  result <- as.integer(status_code)
  return(result)
}

# Unmarshal a header.
rest_unmarshal_header <- function(value, type) {
  convert <- switch(type,
    blob = base64_to_raw,
    boolean = as.logical,
    double = as.numeric,
    integer = as.integer,
    float = as.numeric,
    jsonvalue = json_to_list,
    long = as.numeric,
    string = as.character,
    timestamp = function(x) as_timestamp(x, format = "rfc822"),
    as.character
  )
  result <- convert(value)
  return(result)
}

# Unmarshal a collection of header values that share a common prefix.
rest_unmarshal_header_map <- function(values, prefix, type) {
  value_names <- names(values)
  value_names <- value_names[
    grepl(sprintf("^%s", prefix), value_names, ignore.case = T)
  ]
  result <- lapply(value_names, function(name) {
    rest_unmarshal_header(values[[name]], type)
  })
  names(result) <- substr(value_names, nchar(prefix) + 1, nchar(value_names))
  return(result)
}

#-------------------------------------------------------------------------------

# Return a URL with duplicate "/" characters removed.
clean_path <- function(url) {
  url$path <- gsub("/+", "/", url$path)
  url$raw_path <- gsub("/+", "/", url$raw_path)
  return(url)
}

# Return a string with special characters escaped, e.g. " " -> "%20".
escape_path <- function(string, encode_sep) {
  safe <- ""
  if (!encode_sep) {
    safe <- "/"
  }
  path <- paws_url_encoder(string, safe)
  return(path)
}

# Return the type of a payload if there is one, otherwise return "".
rest_payload_type <- function(values) {
  if (!is_valid(values)) {
    return("")
  }
  payload_name <- tag_get(values, "payload")
  if (payload_name != "") {
    payload <- values[[payload_name]]
    return(tag_get(payload, "type"))
  }
  return("")
}
