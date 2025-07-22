#' @include RcppExports.R

# Decode raw bytes JSON into an R list object.
decode_json <- function(raw) {
  if (length(raw) == 0) {
    return(list())
  }
  con <- rawConnection(raw)
  on.exit(close(con))
  obj <- jsonlite::fromJSON(
    con,
    simplifyVector = FALSE,
    simplifyDataFrame = FALSE,
    simplifyMatrix = FALSE
  )
  return(obj)
}

# Read a JSON string into an R list object.
json_to_list <- function(string) {
  if (length(string) == 0 || string == "") {
    return(list())
  }
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

  payload_name <- tag_get(values, "payload")
  if (payload_name != "") {
    values <- values[[payload_name]]
    if (is_empty(values)) {
      return(NULL)
    }
  }

  v <- list()

  for (key in names(values)) {
    field <- values[[key]]

    # TODO: Implement PkgPath.

    if (tag_get(field, "json") == "-") {
      next
    }

    if (tag_get(field, "location") != "") {
      next
    }

    if (tag_get(field, "ignore") != "") {
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
    loc_name <- tag_get(field, "locationName")
    if (loc_name != "") {
      name <- loc_name
    }

    buf <- sprintf('"%s":%s', name, json_build_any(field))

    v[[length(v) + 1]] <- buf
  }

  v <- sprintf("{%s}", paste(v, collapse = ","))
}

json_build_list <- function(values) {
  v <- lapply(values, json_build_any)
  l <- sprintf("[%s]", paste(v, collapse = ","))
  return(l)
}

json_build_map <- function(values) {
  v <- lapply(char_sort(names(values)), function(key) {
    sprintf('"%s":%s', key, json_build_any(values[[key]]))
  })
  return(sprintf("{%s}", paste(v, collapse = ",")))
}

json_build_scalar <- function(values) {
  s <- switch(
    tag_get(values, "type"),
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
  # If interface is empty (output shape is incomplete), return the output data.
  # Only needed because output shapes have fixed depth, and some services,
  # e.g. DynamoDB, can return data of arbitrary depth.
  if (length(interface) == 0) {
    return(node)
  }

  result <- interface

  payload_name <- tag_get(interface, "payload")
  if (payload_name != "") {
    result[[payload_name]] <- json_parse(node, interface[[payload_name]])
    return(result)
  }

  for (name in names(interface)) {
    # Skip fields that don't come from the response body.
    if (tag_get(interface[[name]], "location") != "") {
      next
    }

    node_name <- tag_get(interface[[name]], "locationName")
    if (node_name == "") {
      node_name <- name
    }
    parsed <- json_parse(node[[node_name]], interface[[name]])
    result[[name]] <- parsed
  }
  return(result)
}

json_parse_list <- function(node, interface) {
  if (length(node) == 0) {
    return(list())
  }
  # If interface is empty (output shape is incomplete), return the output data.
  # Only needed because output shapes have fixed depth, and some services,
  # e.g. DynamoDB, can return data of arbitrary depth.
  if (length(interface) == 0) {
    return(node)
  }
  names(node) <- NULL
  result <- lapply(node, function(x) json_parse(x, interface[[1]]))
  if (type(interface[[1]]) == "scalar") {
    result <- unlist(result)
  }
  return(result)
}

json_parse_map <- function(node, interface) {
  # If interface is empty (output shape is incomplete), return the output data.
  # Only needed because output shapes have fixed depth, and some services,
  # e.g. DynamoDB, can return data of arbitrary depth.
  if (length(interface) == 0) {
    return(node)
  }
  result <- list()
  for (name in names(node)) {
    parsed <- json_parse(node[[name]], interface[[1]])
    result[[name]] <- parsed
  }
  return(result)
}

json_parse_scalar <- function(node, interface) {
  t <- tag_get(interface, "type")
  if (t == "") {
    return(interface)
  }
  convert <- switch(
    t,
    blob = base64_to_raw,
    boolean = as.logical,
    double = as.numeric,
    float = as.numeric,
    integer = as.numeric,
    long = as.numeric,
    string = as.character,
    timestamp = unix_time,
    as.character
  )
  result <- convert(node)
  return(result)
}
