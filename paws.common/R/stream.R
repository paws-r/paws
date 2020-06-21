#' @include util.R
#' @include xmlutil.R
NULL

# Decode all messages in a HTTP response body using the format specfied in
# https://docs.aws.amazon.com/AmazonS3/latest/API/RESTSelectObjectAppendix.html
stream_decode <- function(data) {
  return(stream_decode_messages(data))
}

# Decode a series of variable-length messages and return them as a list.
stream_decode_messages <- function(messages) {
  result <- list()
  offset <- 1
  records <- ""
  while (offset < length(messages)) {
    message <- stream_decode_message(messages, offset = offset)
    message_length <- message$total_length
    event_type <- message$header[["event-type"]]
    if (event_type == "Records") {
      records <- paste0(records, message$payload)
    } else if (event_type %in% c("Stats", "Progress")) {
      result[[event_type]] <- list(Details = xml_to_list(message$payload)[[1]])
    }
    offset <- offset + message_length
  }
  result[["Records"]] <- list(Payload = records)
  return(result)
}

# Decode a single message starting at `offset`.
stream_decode_message <- function(messages, offset) {
  template <- list(
    list(name = "message_length", type = "number", length = 4),
    list(name = "header_length",  type = "number", length = 4),
    list(name = "prelude_crc",    type = "binary", length = 4),
    list(name = "header",         type = "binary", length = "header_length"),
    list(name = "payload",        type = "string", length = "message_length - header_length - 16"),
    list(name = "message_crc",    type = "binary", length = 4)
  )
  start <- offset
  message_length <- stream_decode_number(messages[start:(start+4-1)])
  stop <- start + message_length
  result <- stream_decode_chunk(messages[start:stop], template)
  result$header <- stream_decode_headers(result$header)
  return(result)
}

# Decode a message's headers and return them as a list.
stream_decode_headers <- function(headers) {
  result <- new.env()
  offset <- 1
  while (offset < length(headers)) {
    header <- stream_decode_header(headers, offset)
    offset <- offset + header$total_length
    name <- substring(header$name, 2)
    result[[name]] <- header$value
  }
  return(as.list(result))
}

# Decode a single header.
stream_decode_header <- function(header, offset) {
  template <- list(
    list(name = "name_length",  type = "number", length = 1),
    list(name = "name",         type = "string", length = "name_length"),
    list(name = "value_type",   type = "number", length = 1),
    list(name = "value_length", type = "number", length = 2),
    list(name = "value",        type = "string", length = "value_length")
  )
  result <- stream_decode_chunk(header[offset:length(header)], template)
  return(result)
}

# Decode a binary message given `template`.
stream_decode_chunk <- function(message, template) {
  start <- 1
  result  <- new.env()
  for (element in template) {
    name <- element$name
    length <- element$length
    if (is.character(length)) length <- eval(parse(text = length), envir = result)
    stop <- start + length - 1
    data <- message[start:stop]
    data <- switch(
      element$type,
      "binary" = data,
      "number" = stream_decode_number(data),
      "string" = stream_decode_string(data)
    )
    result[[name]] <- data
    start <- stop + 1
  }
  result$total_length <- start - 1
  return(as.list(result))
}

# Convert big-endian binary data to a number.
stream_decode_number <- function(raw) {
  return(readBin(raw, what = "integer", endian = "big", size = length(raw)))
}

# Convery binary data to a string.
stream_decode_string <- function(raw) {
  return(rawToChar(raw))
}

# Get the CRC of a raw vector.
crc <- function(raw) {
  return(digest::digest(raw, algo = "crc32", serialize = FALSE))
}
