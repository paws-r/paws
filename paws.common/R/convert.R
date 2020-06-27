# Convert an R value to a value acceptable by the AWS API.
convert_type <- function(value, timestamp_format) {
  t <- tag_get(value, "type")
  string <- switch(
    t,
    blob = convert_blob(value),
    boolean = convert_boolean(value),
    float = as.character(value),
    integer = as.character(value),
    string = as.character(value),
    timestamp = convert_timestamp(value, timestamp_format),
    as.character(value)
  )
  return(string)
}

# Convert a value to a base64-encoded string.
# e.g. "foo" (raw: 66 6f 6f) -> "Zm9v".
convert_blob <- function(blob) {
  string <- raw_to_base64(blob)
  return(string)
}

# Convert a "truthy" R value to a string.
# e.g. TRUE -> "true".
convert_boolean <- function(boolean) {
  if (boolean) {
    return("true")
  } else {
    return("false")
  }
}

# Convert an R datetime to a string.
convert_timestamp <- function(timestamp, timestamp_format) {
  if (timestamp_format == "unix") {
    string <- as.character(as.numeric(timestamp))
  } else {
    format_string <- get_timestamp_format(timestamp_format)
    string <- format(timestamp, format = format_string)
  }
  return(string)
}

#-------------------------------------------------------------------------------

# Convert a base64-encoded value to a raw vector.
base64_to_raw <- function(value) {
  if (length(value) == 0) return(character(0))
  return(base64enc::base64decode(value))
}

# Convert a raw-encoded string to a base64-encoded value.
# e.g. "foo" (raw: 66 6f 6f) -> "Zm9v".
raw_to_base64 <- function(value) {
  if (length(value) == 0) return(character(0))
  return(base64enc::base64encode(value))
}

# Convert a raw-encoded string to a character variable.
raw_to_utf8 <- function(value) {
  if (length(value) == 0) return(character(0))
  result <- rawToChar(value)
  Encoding(result) <- "UTF-8"
  return(result)
}

# Return a strptime format string for a given timestamp format.
get_timestamp_format <- function(name) {
  format_string <- switch(
    name,
    iso8601 = "%Y-%m-%dT%H:%M:%SZ",
    rfc822 = "%a, %d %b %Y %H:%M:%S %Z"
  )
  if (is.null(format_string)) stop("invalid timestamp format")
  return(format_string)
}
