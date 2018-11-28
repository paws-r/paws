# Read a JSON string into an R list object.
json_to_list <- function(string) {
  if (length(string) == 0 || string == "") return(list())
  l <- jsonlite::fromJSON(
    string,
    simplifyVector = FALSE,
    simplifyDataFrame = FALSE,
    simplifyMatrix = FALSE
  )
  return(l)
}

#-------------------------------------------------------------------------------

# Build a JSON string for a given object.
json_build <- function(object) {
  json <- json_build_any(object)
  return(json)
}

json_build_any <- function(values) {
  build_fn <- switch(
    type(values),
    structure = json_build_structure,
    list = json_build_list,
    map = json_build_map,
    json_build_scalar
  )
  result <- build_fn(values)
  return(result)
}

json_build_structure <- function(values) {

  # TODO: Implement is valid check.

  if ("_" %in% names(values)) {
    metadata <- values[["_"]]
    payload_name <- get_tag(metadata, "payload")
    if (payload_name != "") {
      values <- values[[payload_name]]
      if (is_empty(values)) {
        return(NULL)
      }
    }
  }

  v <- list()

  for (key in names(values)) {
    field <- values[[key]]

    # TODO: Implement PkgPath.

    if (get_tag(field, "json") == "-") {
      next
    }

    if (get_tag(field, "location") != "") {
      next
    }

    if (get_tag(field, "ignore") != "") {
      next
    }

    if (can_set_idempotency_token(field)) {
      token <- get_idempotency_token()
      # Keep all tags when updating the field with the token.
      attributes(token) <- attributes(field)
      field <- token
    }

    # Skip empty fields.
    if (is_empty(field)) {
      next
    }

    name <- key
    loc_name <- get_tag(field, "locationName")
    if (loc_name != "") {
      name <- loc_name
    }

    buf <- sprintf('"%s":%s', name, json_build_any(field))

    v <- c(v, buf)

  }

  v <- sprintf("{%s}", paste(v, collapse = ","))
}

json_build_list <- function(values) {
  v <- lapply(values, json_build_any)
  l <- sprintf("[%s]", paste(v, collapse = ","))
  return(l)
}

json_build_map <- function(values) {
  v <- list()
  for (key in sort(names(values))) {
    value <- values[[key]]
    buf <- sprintf('"%s":%s', key, json_build_any(value))
    v <- c(v, buf)
  }
  v <- sprintf("{%s}", paste(v, collapse = ","))
  return(v)
}

json_build_scalar <- function(values) {
  s <- switch(
    get_tag(values, "type"),
    blob = sprintf('"%s"', convert_blob(values)),
    boolean = convert_boolean(values),
    double = as.character(values),
    float = as.character(values),
    integer = as.character(values),
    long = as.character(values),
    string = json_convert_string(values),
    timestamp = as.character(as.numeric(values)),
    sprintf('"%s"', values)
  )
  return(s)
}

#-------------------------------------------------------------------------------

# Escape control characters by replacing them with their Unicode representation.
json_escape_unicode <- function(string) {
  result <- string
  for (i in 1:31) {
    from <- intToUtf8(i)
    to <- paste0("\\u00", format(as.hexmode(i), width = 2))
    result <- gsub(from, to, result, fixed = TRUE)
  }
  return(result)
}

# Return a string for a JSON value, with special characters escaped.
json_convert_string <- function(string) {
  replace <- list(
    c("\\", "\\\\"),
    c('"', '\\"'),
    c("\b", "\\b"),
    c("\f", "\\f"),
    c("\r", "\\r"),
    c("\t", "\\t"),
    c("\n", "\\n")
  )
  result <- string
  for (elem in replace) {
    from <- elem[1]
    to <- elem[2]
    result <- gsub(from, to, result, fixed = TRUE)
  }
  result <- json_escape_unicode(result)
  result <- sprintf('"%s"', result)
  return(result)
}

#-------------------------------------------------------------------------------

# Convert an API response in `node` to the shape given in `interface`.
json_parse <- function(node, interface) {
  t <- type(interface)
  parse_fn <- switch(
    t,
    structure = json_parse_structure,
    map = json_parse_map,
    list = json_parse_list,
    json_parse_scalar
  )
  result <- parse_fn(node, interface)
  return(result)
}

json_parse_structure <- function(node, interface) {

  result <- interface

  payload_name <- get_tag(interface, "payload")
  if (payload_name != "") {
    result[[payload_name]] <- json_parse(node, interface[[payload_name]])
    return(result)
  }

  for (name in names(interface)) {
    node_name <- get_tag(interface[[name]], "locationName")
    if (node_name == "") node_name <- name
    parsed <- json_parse(node[[node_name]], interface[[name]])
    result[[name]] <- parsed
  }
  return(result)
}

json_parse_list <- function(node, interface) {
  if (length(node) == 0) return(list())
  names(node) <- NULL
  result <- lapply(node, function(x) json_parse(x, interface[[1]]))
  if (type(interface[[1]]) == "scalar") {
    result <- unlist(result)
  }
  return(result)
}

json_parse_map <- function(node, interface) {
  result <- list()
  for (name in names(node)) {
    parsed <- json_parse(node[[name]], interface[[1]])
    result[[name]] <- parsed
  }
  return(result)

}

json_parse_scalar <- function(node, interface) {
  t <- get_tag(interface, "type")
  if (t == "") {
    return(interface)
  }
  convert <- switch(
    t,
    blob = base64_to_utf8,
    boolean = as.logical,
    double = as.numeric,
    float = as.numeric,
    integer = as.integer,
    long = as.numeric,
    string = as.character,
    timestamp = unix_time,
    as.character
  )
  result <- convert(node)
  return(result)
}
