# Decode raw bytes XML into an R list object.
decode_xml <- function(raw) {
  obj <- xml_to_list(rawToChar(raw))
  return(obj)
}

# Convert an XML string to an R list.
xml_to_list <- function(value) {
  result <- xml2::as_list(xml2::read_xml(value))
  return(result)
}

# Convert list to XML text
xml_list_to_character <- function(value) {
  value_xml <- xml2::as_xml_document(x = value)
  value_character <- as.character(value_xml)
  return(value_character)
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

  body_list <- xml_build(params)

  if (length(body_list)) {
    body_xml <- xml_list_to_character(body_list)
  } else {
    body_xml <- ""
  }

  request$body <- body_xml
  request$http_request$body <- body_xml
  return(request)
}

xml_build <- function(params) {

  location <- get_tag(params, "location")
  if (location != "") return(NULL)

  t <- type(params)

  build_fn <- switch(
    t,
    structure = xml_build_structure,
    map = xml_build_map,
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

    parsed <- xml_build(child)

    if (!is.null(parsed)) {
      result[[name]] <- parsed
    }
  }
  return(result)
}

xml_build_list <- function(params) {
  if (length(params) == 0) return(list())
  children <- lapply(params, function(x) xml_build(x))

  location_names <- sapply(params, function(x) get_tag(x, "locationName"))

  result <- lapply(1:length(children), function(i) children[[i]])

  names(result) <- location_names

  return(result)
}

xml_build_map <- function(params, tag = "") {
  # if (length(node) == 0) return(list())
  # result <- list()
  # multiple_entries <- length(unique(names(node))) == 1
  # if (multiple_entries) {
  #   children <- node
  # } else {
  #   children <- list(node) # wrap singular map entry
  # }
  # for (child in children) {
  #   parsed <- xml_build_map_entry(child, interface)
  #   result <- c(result, parsed)
  # }
  # return(result)
  return(list())
}

xml_build_map_entry <- function(params, tag = "") {
  # key_name <- get_tag(interface, "locationNameKey")
  # value_name <- get_tag(interface, "locationNameValue")
  # if (key_name == "") key_name <- "key"
  # if (value_name == "") value_name <- "value"
  # key <- unlist(node[[key_name]])
  # value <- node[[value_name]]
  # result <- list()
  # result[[key]] <- xml_build(value, interface[[1]])
  # return(result)
  return(list())
}

xml_build_scalar <- function(params) {
  # Use `unlist` to avoid embedded lists in scalar nodes; `xml2::as_list`
  # converts <foo>abc</foo> to `list(foo = list("abc"))`, when we want
  # `list(foo = "abc")`.
  data <- unlist(params)
  t <- get_tag(params, "type")
  convert <- switch(
    t,
    blob = base64_to_utf8,
    boolean = as.logical,
    double = as.numeric,
    float = as.numeric,
    integer = as.integer,
    long = as.integer,
    timestamp = function(x) as_timestamp(x, format = "iso8601"),
    as.character
  )
  result <- list(convert(data))
  return(result)
}

#-------------------------------------------------------------------------------

# Unmarshal `data` provided as a list into the shape in `interface`.
xml_unmarshal <- function(data, interface, result_name = NULL) {
  root <- data[[1]]
  if (!is.null(result_name) && result_name %in% names(root)) {
    root <- root[[result_name]]
  }
  result <- xml_parse(root, interface)
  return(result)
}

# Unmarshal errors in `data` provided as a list.
xml_unmarshal_error <- function(data) {
  root <- data[[1]]
  code <- unlist(root$Error$Code)
  message <- unlist(root$Error$Message)
  error <- Error(code, message)
  # TODO: service unavailable
  # TODO: failure to retrieve error from response
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
  payload <- get_tag(node, "payload")
  if (length(payload) > 0 && payload != "") {
    result <- xml_parse_structure(payload, interface)
    return(result)
  }

  result <- list()
  for (name in names(interface)) {
    field <- interface[[name]]

    node_name <- name
    flattened <- get_tag(field, "flattened") != ""
    if (flattened && get_tag(field, "locationNameList") != "") {
      node_name <- get_tag(field, "locationNameList")
    } else if (get_tag(field, "locationName") != "") {
      node_name <- get_tag(field, "locationName")
    }

    elem <- node[[node_name]]
    if (flattened) {
      elem <- node[names(node) == node_name]
    }

    if (length(elem) == 0) {
      # TODO: Implement.
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
  key_name <- get_tag(interface, "locationNameKey")
  value_name <- get_tag(interface, "locationNameValue")
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
  t <- get_tag(interface, "type")
  convert <- switch(
    t,
    blob = base64_to_utf8,
    boolean = as.logical,
    double = as.numeric,
    float = as.numeric,
    integer = as.integer,
    long = as.numeric,
    timestamp = function(x) as_timestamp(x, format = "iso8601"),
    as.character
  )
  result <- convert(data)
  return(result)
}
