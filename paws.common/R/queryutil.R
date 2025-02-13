#' @include tags.R
NULL

# Parse an object and fill a flattened list of query parameters.
# E.g. list(foo = list("a", "b")) -> list(foo.1 = "a", foo.2 = "b")
# See https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#query-parameters.
query_parse <- function(body, params, is_ec2) {
  body <- query_parse_value(body, params, "", "", is_ec2)
  return(body)
}

query_parse_value <- function(values, value, prefix, tag, is_ec2 = FALSE) {
  if (!is_valid(value)) {
    return(values)
  }
  parse_fn <- switch(
    type(value),
    structure = query_parse_structure,
    list = query_parse_list,
    map = query_parse_map,
    query_parse_scalar
  )
  result <- parse_fn(values, value, prefix, tag, is_ec2)
  return(result)
}

query_parse_structure <- function(values, value, prefix, tag, is_ec2 = FALSE) {
  for (key in names(value)) {
    field <- value[[key]]

    # TODO: PkgPath

    if (tag_get(field, "ignore") != "") {
      next
    }

    if (can_set_idempotency_token(field)) {
      field[[1]] <- get_idempotency_token()
    }

    name <- ""
    if (is_ec2) {
      name <- tag_get(field, "queryName")
    }
    if (name == "") {
      if (tag_get(field, "flattened") != "" && tag_get(field, "locationNameList") != "") {
        name <- tag_get(field, "locationNameList")
      } else if (tag_get(field, "locationName") != "") {
        name <- tag_get(field, "locationName")
      }
      if (name != "" && is_ec2) {
        substr(name, 1, 1) <- toupper(substr(name, 1, 1))
      }
    }
    if (name == "") {
      name <- key
    }

    if (prefix != "") {
      name <- paste(prefix, name, sep = ".")
    }

    values <- query_parse_value(values, field, name, "", is_ec2)
  }
  return(values)
}

query_parse_list <- function(values, value, prefix, tag, is_ec2 = FALSE) {
  if (!is_valid(value)) {
    return(values)
  }

  if (!is_ec2 && tag_get(value, "flattened") == "") {
    list_name <- tag_get(value, "locationNameList")
    if (list_name == "") {
      prefix <- paste(prefix, "member", sep = ".")
    } else {
      prefix <- paste(prefix, list_name, sep = ".")
    }
  }
  value <- value[lengths(value) > 0]
  for (i in seq_along(value)) {
    field <- value[[i]]
    # TODO: Call query_parse_scalar for an array of bytes.

    if (prefix == "") {
      slice_prefix <- as.character(i)
    } else {
      slice_prefix <- paste(prefix, as.character(i), sep = ".")
    }

    values <- query_parse_value(values, field, slice_prefix, "", is_ec2)
  }
  return(values)
}

query_parse_map <- function(values, value, prefix, tag, is_ec2 = FALSE) {
  if (!is_valid(value)) {
    return(values)
  }

  if (!is_ec2 && tag_get(value, "flattened") == "") {
    prefix <- paste(prefix, "entry", sep = ".")
  }

  # Process the entries only if there are any. If there are no entries, there
  # will be one R list element with no name, which we shouldn't process.
  map_entries <- !is.null(names(value))
  if (map_entries) {
    value[seq_along(value)] <- value[names(value)]

    for (i in seq_along(value)) {
      map_key <- names(value)[i]
      map_value <- value[[map_key]]

      key_name <- tag_get(value, "locationNameKey")
      if (key_name == "") key_name <- "key"
      value_name <- tag_get(value, "locationNameValue")
      if (value_name == "") value_name <- "value"

      # Serialize the key.
      if (prefix == "") {
        key_name <- paste(as.character(i), key_name, sep = ".")
      } else {
        key_name <- paste(prefix, as.character(i), key_name, sep = ".")
      }

      values <- query_parse_value(values, map_key, key_name)

      # Serialize the value.
      if (prefix == "") {
        value_name <- paste(as.character(i), value_name, sep = ".")
      } else {
        value_name <- paste(prefix, as.character(i), value_name, sep = ".")
      }

      values <- query_parse_value(values, map_value, value_name)
    }
  }

  return(values)
}

query_parse_scalar <- function(values, value, prefix, tag, is_ec2 = FALSE) {
  if (!is_valid(value)) {
    return(values)
  }
  values[prefix] <- convert_type(value, timestamp_format = "iso8601")
  return(values)
}
