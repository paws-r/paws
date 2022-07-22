# Decode raw bytes XML into an R list object.
decode_xml <- function(raw) {
  obj <- xml_to_list(raw_to_utf8(raw))
  return(obj)
}

# Convert an XML string to an R list.
xml_to_list <- function(value) {
  if (is_empty(value)) return(NULL)
  result <- xml2::as_list(xml2::read_xml(value))
  return(result)
}

# Convert list to XML text
list_to_xml <- function(value) {
  value_xml <- xml2::as_xml_document(x = value)
  value_character <- as.character(value_xml, options = "no_declaration")
  value_character <- gsub("\\n$", "", value_character) # Delete trailing newline.
  value_character <- gsub("\\n", "&#xA;", value_character) # Keep other newlines.
  return(value_character)
}

# Add xmlns (XML namespace) attributes to all nested elements in a list.
add_xmlns <- function(xml_list, xmlns = "") {
  result <- xml_list
  attr(result, "xmlns") <- xmlns
  if (!is.list(result)) return(result)
  for (i in seq_along(result)) {
    result[[i]] <- add_xmlns(result[[i]], xmlns)
  }
  return(result)
}

#-------------------------------------------------------------------------------

xml_build_body <- function(request) {
  params <- request$params

  if (is_empty(params)) {
    body_xml <- ""
    request$body <- body_xml
    request$http_request$body <- body_xml
    return(request)
  }

  location_name <- tag_get(params, "locationName")
  xmlns <- tag_get(params, "xmlURI")
  if (location_name != "") {
    params <- Structure(
      init = params,
      .tags = list(locationName = location_name, xmlns = xmlns)
    )
  }

  body_list <- xml_build(params)

  if (length(body_list)) {
    if (xmlns != "") body_list <- add_xmlns(body_list, xmlns)
    body_xml <- list_to_xml(body_list)
  } else {
    body_xml <- ""
  }

  request$body <- body_xml
  request$http_request$body <- body_xml
  return(request)
}

xml_build <- function(params) {

  location <- tag_get(params, "location")
  if (location != "") return(NULL)

  t <- type(params)

  build_fn <- switch(
    t,
    structure = xml_build_structure,
    list = xml_build_list,
    xml_build_scalar
  )

  result <- build_fn(params)

  return(result)
}

xml_build_structure <- function(params) {
  result <- list()
  for (name in names(params)) {
    child <- params[[name]]

    if (tag_get(child, "locationName") == "") {
      child <- tag_add(child, list(locationName = name))
    }

    parsed <- xml_build(child)

    if (!is_empty_xml(parsed)) {
      location_name <- tag_get(child, "locationName")
      if (location_name == "") location_name <- name

      flattened <- tag_get(child, "flattened") != ""

      if (flattened) {
        result <- c(result, parsed)
      } else{
        result[[location_name]] <- parsed
      }
    }
  }
  return(result)
}

xml_build_list <- function(params) {
  if (length(params) == 0) return(list())
  children <- lapply(params, function(x) xml_build(x))

  location_name <- tag_get(params, "locationName")

  flattened <- tag_get(params, "flattened") != ""
  if (flattened) {
    result <- children
    names(result) <- rep(location_name, length(children))
  } else {
    location_name_list <- tag_get(params, "locationNameList")
    if (location_name_list == "") location_name_list <- "member"
    result <- children
    names(result) <- rep(location_name_list, length(children))
  }

  return(result)
}

xml_build_scalar <- function(params) {
  # Use `unlist` to avoid embedded lists in scalar nodes; `xml2::as_list`
  # converts <foo>abc</foo> to `list(foo = list("abc"))`, when we want
  # `list(foo = "abc")`.
  data <- unlist(params)
  if (length(data) == 0) return(NULL)
  t <- tag_get(params, "type")
  convert <- switch(
    t,
    blob = raw_to_base64,
    boolean = convert_boolean,
    double = as.numeric,
    float = as.numeric,
    integer = as.numeric,
    long = as.numeric,
    timestamp = function(x) as_timestamp(x, format = "iso8601"),
    as.character
  )
  result <- as.list(convert(data))
  return(result)
}

#-------------------------------------------------------------------------------

# Unmarshal `data` provided as a list into the shape in `interface`.
xml_unmarshal <- function(data, interface, result_name = NULL) {
  if (is.null(data)) return(interface)

  # help to parse xml:
  # https://github.com/paws-r/paws/issues/501
  if (!is.null(result_name) && result_name %in% names(data)) {
    return(xml_parse(data, interface))
  }

  root <- data[[1]]
  if (!is.null(result_name) && result_name %in% names(root)) {
    root <- root[[result_name]]
  }
  result <- xml_parse(root, interface)
  return(result)
}

# Unmarshal errors in `data` provided as a list.
xml_unmarshal_error <- function(data, status_code) {
  root <- data[[1]]
  error_response <- lapply(root$Error, unlist)
  code <- error_response$Code
  message <- error_response$Message

  if (is.null(message) && is.null(code)) {
    return(NULL)
  }

  error <- Error(code, message, status_code, error_response)
  return(error)
}

# Convert an API response in `node` to the shape given in `interface`.
#
# e.g. convert EC2 API response
#   `list(reservationSet = "foo", nextToken = "bar")`
# to output shape
#   `list(Reservations = foo, NextToken = bar)`.
xml_parse <- function(node, interface) {
  t <- type(interface)
  parse_fn <- switch(
    t,
    structure = xml_parse_structure,
    map = xml_parse_map,
    list = xml_parse_list,
    xml_parse_scalar
  )
  result <- parse_fn(node, interface)
  return(result)
}

xml_parse_structure <- function(node, interface) {
  payload <- tag_get(node, "payload")
  if (length(payload) > 0 && payload != "") {
    result <- xml_parse_structure(payload, interface)
    return(result)
  }

  result <- interface
  for (name in names(interface)) {
    field <- interface[[name]]

    # Skip fields that don't come from the response body.
    if (tag_get(field, "location") != "") {
      next
    }

    node_name <- name
    flattened <- tag_get(field, "flattened") != ""
    if (flattened && tag_get(field, "locationNameList") != "") {
      node_name <- tag_get(field, "locationNameList")
    } else if (tag_get(field, "locationName") != "") {
      node_name <- tag_get(field, "locationName")
    }

    elem <- node[[node_name]]
    if (flattened) {
      elem <- node[names(node) == node_name]
    }

    parsed <- xml_parse(elem, field)

    result[[name]] <- parsed
  }
  return(result)
}

xml_parse_list <- function(node, interface) {
  if (length(node) == 0) return(list())
  names(node) <- NULL
  result <- lapply(node, function(x) xml_parse(x, interface[[1]]))
  if (type(interface[[1]]) == "scalar") {
    result <- unlist(result)
  }
  return(result)
}

xml_parse_map <- function(node, interface) {
  if (length(node) == 0) return(list())
  result <- list()
  multiple_entries <- length(unique(names(node))) == 1
  if (multiple_entries) {
    children <- node
  } else {
    children <- list(node) # wrap singular map entry
  }
  for (child in children) {
    parsed <- xml_parse_map_entry(child, interface)
    result <- c(result, parsed)
  }
  return(result)
}

xml_parse_map_entry <- function(node, interface) {
  key_name <- tag_get(interface, "locationNameKey")
  value_name <- tag_get(interface, "locationNameValue")
  if (key_name == "") key_name <- "key"
  if (value_name == "") value_name <- "value"
  key <- unlist(node[[key_name]])
  value <- node[[value_name]]
  result <- list()
  result[[key]] <- xml_parse(value, interface[[1]])
  return(result)
}

xml_parse_scalar <- function(node, interface) {
  # Use `unlist` to avoid embedded lists in scalar nodes; `xml2::as_list`
  # converts <foo>abc</foo> to `list(foo = list("abc"))`, when we want
  # `list(foo = "abc")`.
  data <- unlist(node)
  t <- tag_get(interface, "type")
  convert <- switch(
    t,
    blob = base64_to_raw,
    boolean = as.logical,
    double = as.numeric,
    float = as.numeric,
    integer = as.numeric,
    long = as.numeric,
    timestamp = function(x) as_timestamp(x, format = "iso8601"),
    as.character
  )
  result <- convert(data)
  return(result)
}
