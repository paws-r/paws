#' @include util.R
#' @include tags.R

# Decode raw bytes XML into an R list object.
decode_xml <- function(raw) {
  obj <- xml_to_list(raw)
  return(obj)
}

# Convert an XML string to an R list.
xml_to_list <- function(value) {
  if (is_empty(value)) {
    return(NULL)
  }
  result <- xml2::as_list(xml2::read_xml(value, encoding = "utf8"))
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
  if (!is.list(result)) {
    return(result)
  }
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
  if (location != "") {
    return(NULL)
  }

  t <- type(params)

  build_fn <- switch(t,
    structure = xml_build_structure,
    list = xml_build_list,
    xml_build_scalar
  )

  result <- build_fn(params)

  return(result)
}

xml_build_structure <- function(params) {
  result <- list()
  parsed_result <- list()
  for (name in names(params)) {
    child <- params[[name]]
    if (tag_get(child, "locationName") == "") {
      child <- tag_add(child, list(locationName = name))
    }

    parsed <- xml_build(child)
    parsed_result[[name]] <- parsed

    if (!is_empty_xml(parsed)) {
      location_name <- tag_get(child, "locationName")
      if (location_name == "") location_name <- name

      flattened <- tag_get(child, "flattened") != ""

      if (flattened) {
        result[[length(result) + 1]] <- parsed
      } else {
        result[[location_name]] <- parsed
      }
    }
  }
  # Check cache list for default elements
  if (all(vapply(parsed_result, is_empty_xml, FUN.VALUE = logical(1)))) {
    return(NULL)
  }
  return(result)
}

xml_build_list <- function(params) {
  if (length(params) == 0) {
    return(list())
  }
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
  if (length(data) == 0) {
    return(NULL)
  }
  t <- tag_get(params, "type")
  convert <- switch(t,
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
xml_unmarshal <- function(raw_data, interface = NULL, result_name = NULL) {
  if (is_empty(raw_data)) {
    return(tag_del(interface))
  }

  data <- xml2::read_xml(raw_data, encoding = "utf8")
  xml_nms <- xml2::xml_name(data)

  # drop a level if result_name is known in data
  # https://github.com/paws-r/paws/issues/501
  if (!is.null(result_name) && result_name %in% xml_nms) {
    if (inherits(data, "xml_document")) {
      data <- xml2::xml_contents(data)
      xml_nms <- xml2::xml_name(data)
    }
    if (result_name %in% names(interface)) {
      result <- list(xml_parse(data, interface[[result_name]], xml_nms))
      names(result) <- result_name
    } else {
      result <- xml_parse(data, interface, xml_nms)
    }
    return(result)
  }

  root <- xml2::xml_contents(data)
  xml_nms <- xml2::xml_name(root)

  if (!is.null(result_name) && result_name %in% xml_nms) {
    root <- xml2::xml_contents(root)
    xml_nms <- xml2::xml_name(root)
  }

  return(xml_parse(root, interface, xml_nms))
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
xml_parse <- function(data, interface, data_nms, flattened = NULL) {
  nms <- names(interface)
  if (length(interface) == 0) {
    interface <- list(interface)
  }

  result <- vector("list", length = length(interface))
  for (i in seq_along(interface)) {
    interface_i <- interface[[i]]
    tags_i <- attr(interface_i, "tags")
    flat <- tags_i[["flattened"]]

    if (isTRUE(flat) && !is.null(tags_i[["locationNameList"]])) {
      key <- tags_i[["locationNameList"]]
    } else if (!is.null(tags_i[["locationName"]])) {
      key <- tags_i[["locationName"]]
    } else {
      key <- nms[[i]]
    }

    if (is.null(key)) {
      found <- TRUE
    } else {
      # Check if element exists in response
      found <- (key == data_nms)
    }
    result[[i]] <- (
      if (any(found)) {
        xml_elts <- data[found]
        parse_xml_elt(xml_elts, interface_i, tags_i, flattened)
      } else {
        default_parse_xml(interface_i, tags_i)
      })
  }
  names(result) <- nms
  return(result)
}

parse_xml_elt <- function(xml_elts, interface_i, tags_i, flattened = NULL) {
  tag_type <- tags_i[["type"]]
  flattened <- flattened %||% tags_i[["flattened"]]
  t <- type(interface_i)
  parse_fn <- switch(t,
    structure = xml_parse_structure,
    map = xml_parse_map,
    list = xml_parse_list,
    xml_parse_scalar
  )

  result <- parse_fn(xml_elts, interface_i, tags_i, tag_type, flattened)

  return(result)
}

xml_parse_structure <- function(xml_elts, interface_i, tags_i, tag_type = NULL, flattened = NULL) {
  xml_elt <- xml2::xml_contents(xml_elts)
  result <- xml_parse(xml_elt, interface_i, xml2::xml_name(xml_elt), flattened)

  # the `is.list()` check is necessary because e.g. `CheckSumAlgorithm` has
  # a list interface though it isn't a list?!
  if (isTRUE(flattened)) {
    result <- transpose(result)
  } else {
    result <- as.list(result)
  }
  return(result)
}

xml_parse_map <- function(xml_elts, interface_i, tags_i, tag_type = NULL, flattened = NULL) {
  if (length(xml_elts) == 0) {
    return(list())
  }

  key_name <- tags_i[["locationNameKey"]] %||% "key"
  value_name <- tags_i[["locationNameValue"]] %||% "value"

  result <- list()
  if (isTRUE(flattened)) {
    for (i in seq_along(xml_elts)) {
      result[[i]] <- xml_parse_map_entry(
        xml_elts[[i]], interface_i, key_name, value_name, flattened
      )
    }
  } else {
    contents <- xml2::xml_contents(xml_elts)
    for (i in seq_along(contents)) {
      result[[i]] <- xml_parse_map_entry(
        contents[[i]], interface_i, key_name, value_name, flattened
      )
    }
  }
  result <- unlist(result, recursive = FALSE)
  return(result)
}

xml_parse_map_entry <- function(xml_elts_i, interface_i, key_name, value_name, flattened) {
  contents <- xml2::xml_contents(xml_elts_i)
  contents_nms <- xml2::xml_name(contents)

  key <- xml2::xml_text(contents[(key_name == contents_nms)])
  value <- contents[(value_name == contents_nms)]
  xml_value <- xml2::xml_contents(value)
  result <- xml_parse(xml_value, interface_i[[1]], xml2::xml_name(xml_value))
  if (!isTRUE(flattened)) {
    result <- list(result)
  }
  names(result) <- key
  return(result)
}

xml_parse_list <- function(xml_elts, interface_i, tags_i, tag_type = NULL, flattened = NULL) {
  contents <- xml2::xml_contents(xml_elts)
  xml_nms <- xml2::xml_name(contents)
  nms <- names(interface_i[[1]])
  if (is.null(nms) || any(xml_nms %in% nms)) {
    result <- xml_parse(contents, interface_i[[1]], xml_nms, flattened)
  } else {
    result <- lapply(contents, function(x) {
      xml_elt <- xml2::xml_contents(x)
      xml_parse(xml_elt, interface_i[[1]], xml2::xml_name(xml_elt), flattened)
    })
  }

  if (type(interface_i[[1]]) == "scalar") {
    result <- unlist(result)
  }

  # the `is.list()` check is necessary because e.g. `CheckSumAlgorithm` has
  # a list interface though it isn't a list?!
  if (isTRUE(flattened)) {
    result <- transpose(result)
  }

  return(result)
}

xml_parse_scalar <- function(xml_elts, interface_i, tags_i, tag_type = NULL, flattened = NULL) {
  results <- xml2::xml_text(xml_elts)

  convert <- switch(tag_type,
    blob = base64_to_raw,
    boolean = as.logical,
    double = as.numeric,
    float = as.numeric,
    integer = as.numeric,
    long = as.numeric,
    timestamp = function(x) as_timestamp(x, format = "iso8601"),
    function(x) {
      if (identical(x, "")) x <- NULL
      as.character(x)
    }
  )
  result <- convert(results)
  names(result) <- names(interface_i)
  return(result)
}

default_parse_xml <- function(interface_i, tags_i) {
  tag_type <- tags_i[["type"]]

  t <- type(interface_i)
  parse_fn <- switch(t,
    structure = default_parse_structure,
    map = default_parse_map,
    list = default_parse_list,
    default_parse_scalar
  )
  return(parse_fn(interface_i, tag_type))
}

default_parse_structure <- function(interface_i, tag_type = NULL) {
  len_interface_i <- length(interface_i)
  if (len_interface_i == 0) {
    return(list(list()))
  }
  nms <- names(interface_i)
  result <- vector("list", len_interface_i)
  for (i in seq_along(interface_i)) {
    tags_i <- attr(interface_i[[i]], "tags")
    result[[i]] <- default_parse_xml(interface_i[[i]], tags_i)
  }
  names(result) <- nms

  return(list(result))
}

default_parse_map <- function(interface_i, tag_type = NULL) {
  len_interface_i <- length(interface_i)
  if (len_interface_i == 0) {
    return(list(list()))
  }
  nms <- names(interface_i)
  result <- vector("list", len_interface_i)
  for (i in seq_along(interface_i)) {
    tags_i <- attr(interface_i[[i]], "tags")
    result[[i]] <- default_parse_xml(interface_i[[i]], tags_i)
  }
  names(result) <- nms
  return(list(result))
}

default_parse_list <- function(interface_i, tag_type = NULL) {
  interface_i <- interface_i[[1]]
  len_interface_i <- length(interface_i)
  if (len_interface_i == 0) {
    return(list(list()))
  }

  return(list())
}

xml_scalar_default <- function(interface, default) {
  if (length(interface) > 0) {
    attr(interface, "tags") <- NULL
    return(interface)
  } else {
    return(default)
  }
}

default_parse_scalar <- function(interface_i, tag_type = NULL) {
  result <- switch(tag_type,
    integer = xml_scalar_default(interface_i, numeric()),
    double = xml_scalar_default(interface_i, numeric()),
    long = xml_scalar_default(interface_i, numeric()),
    float = xml_scalar_default(interface_i, numeric()),
    timestamp = xml_scalar_default(interface_i, .POSIXct(numeric())),
    boolean = xml_scalar_default(interface_i, logical()),
    xml_scalar_default(interface_i, character())
  )
  return(result)
}

transpose <- function(x) {
  if (!is.list(x)) {
    return(x)
  }
  n_col <- length(x)
  if (n_col == 0) {
    return(list())
  }
  n_row <- length(x[[1]])
  if (n_row == 0) {
    return(list())
  }
  out <- vector("list", length = n_row)
  col_seq <- seq.int(n_col, 1)

  vals <- vector("list", length = n_col)
  names(vals) <- names(x)

  for (row in seq.int(1, n_row)) {
    for (col in col_seq) {
      vals[col] <- (
        if (length(x[[col]]) < n_row) {
          list(rep_len(x[[col]], n_row)[[row]])
        } else {
          list(x[[col]][[row]])
        })
    }
    out[[row]] <- vals
  }
  names(out) <- names(x[[1]])
  return(out)
}
