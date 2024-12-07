#' @title Iterate over AWS Event Stream connection
#' @usage
#' paws_stream_handler(FUN, .connection = FALSE)
#' paws_stream_parser(con)
#' @param FUN function to iterate over stream connection.
#' @param .connection return \code{httr2::req_perform_connection} object (default \code{FALSE})
#' @name paws_stream
#' @return list of responses from the operation or a \code{httr2::req_perform_connection} object
#' @examples
#' \dontrun{
#' # Developed from:
#' # https://docs.aws.amazon.com/code-library/latest/ug/python_3_bedrock-runtime_code_examples.html
#' library(paws)
#'
#' # Create a Bedrock Runtime client in the AWS Region you want to use.
#' client <- bedrockruntime(region = "us-east-1")
#'
#' # Set the model ID, e.g., Titan Text Premier.
#' model_id <- "amazon.titan-text-premier-v1:0"
#'
#' # Start a conversation with the user message.
#' user_message = "Describe the purpose of a 'hello world' program in one line."
#' conversation <- list(
#'   list(
#'     role = "user",
#'     content = list(list(text=user_message))
#'   )
#' )
#'
#' resp <- client$converse_stream(
#'   modelId = model_id,
#'   messages = conversation,
#'   inferenceConfig = list(maxTokens=512, temperature=0.5, topP=0.9)
#' )
#' resp$stream(\(chunk) print(chunk$contentBlockDelta$delta$text))
#'
#' # Or handle stream utilising paws_stream_parser
#' while(!is.null(event <- paws_stream_parser(con))) {
#'    print(chunk$contentBlockDelta$delta$text)
#' }
#'
#' # or return httr2 resp_perform_connection
#' con <- resp$stream(.connection = T)
#'
#' while (!is.null(event <- resp_stream_aws(con))) {
#'   str(event)
#' }
#' close(con)
#'
#' }
NULL

StreamHandler <- function(body, unmarshal, interface, metadata) {
  con <- paws_con(body, unmarshal, interface)
  paws_stream_handler <- function(FUN, .connection = FALSE) {
    if (isTRUE(.connection)) {
      return(con)
    }
    result <- list()
    while(!is.null(resp <- paws_stream_parser(con))) {
      result[[length(result) + 1]] <- FUN(resp)
    }
    return(result)
  }
  class(paws_stream_handler) <- "PawsStreamHandler"
  return(paws_stream_handler)
}

paws_con <- function(con, unmarshal, interface) {
  con$paws_metadata <- list(
    unmarshal=unmarshal,
    interface=interface
  )
  class(con) <- c("paws_connection", class(con))
  return(con)
}

#' @export
print.PawsStreamHandler <- function(x, ...) {
  metadata <- environment(x)$metadata
  op_name <- tolower(gsub("(.)([A-Z])", "\\1_\\2", metadata$operation_name))
  msg <- sprintf(c(
      "<PawsStreamHandler>",
      "Please check return object for: %1$s_%2$s",
      "https://www.paws-r-sdk.com/docs/%1$s_%2$s/"
    ),
    metadata$service_name,
    op_name
  )
  cli::cat_line(
    c(msg[1:2], cli::style_hyperlink(msg[3], msg[3]))
  )
}

#' @name paws_stream_handler
#' @export
paws_stream_parser <- function(con) {
  if (!isIncomplete(con$body)) {
    close(con)
    return(NULL)
  }
  buffer <- readBin(con$body, raw(), n = 1024)
  if (is.null(boundary <- aws_boundary(buffer))) {
    close(con)
    return(NULL)
  }
  return(eventstream_parser(
      buffer,
      unmarshal = con$paws_metadata$unmarshal,
      interface = con$paws_metadata$interface,
      boundary = boundary
    )
  )
}

################ stream unmarshal ################
stream_unmarshal <- function(request, body, unmarshal) {
  payload <- tag_get(request$data, "payload")
  shape <- tag_del(request$data)
  shape[[payload]] <- StreamHandler(
    body, unmarshal, request$data[[payload]], list(
      operation_name = request$operation$name,
      service_name = request$client_info$service_name
    )
  )
  return(shape)
}

############## stream error ##############
get_connection_error <- function(payload, stream_api) {
  if (stream_api && !is.raw(payload)) {
    return(stream_raw(payload$body))
  }
  return(payload)
}

stream_raw <- function(con) {
  on.exit(close(con))
  total <- raw()
  while (isIncomplete(con)) {
    total <- c(total, readBin(con, raw(), n = 1024))
  }
  return(total)
}

################ connection boundary ################
eventstream_parser <- function(buffer, unmarshal, interface, boundary) {
  # chunk loop
  while (!is.null(boundary)) {
    result <- split_buffer(buffer, boundary)
    data <- parse_aws_event(result$matched)
    (nms <- data$headers[[":event-type"]])
    interface[[nms]] <- unmarshal(
      data$payload, interface[[nms]]
    )
    buffer <- result$remaining
    boundary <- aws_boundary(buffer)
  }
  return(tag_del(interface))
}

aws_boundary <- function(buffer) {
  # No valid AWS event message is less than 16 bytes
  if (length(buffer) < 16) {
    return(NULL)
  }

  # Read first 4 bytes as a big endian number
  event_size <- parse_int32(buffer[1:4])
  if (event_size > length(buffer)) {
    return(NULL)
  }

  event_size + 1
}


# Modified from httr2:
# https://github.com/r-lib/httr2/blob/e972770199f674eca4c64ca8161235e5745683dd/R/utils.R#L314C1-L326C2
split_buffer <- function (buffer, split_at) {
  list(
    matched = slice(buffer, end = split_at),
    remaining = slice(buffer, start = split_at)
  )
}

slice <- function(vector, start = 1, end = length(vector) + 1) {
  if (start == end) {
    vector[FALSE]
  } else {
    vector[start:(end - 1)]
  }
}

################ aws parsers ################
# Implementation from https://github.com/lifion/lifion-aws-event-stream/blob/develop/lib/index.js
# Modified from httr2: https://github.com/r-lib/httr2/blob/main/R/resp-stream.R
parse_aws_event <- function(bytes) {
  i <- 1
  read_bytes <- function(n) {
    if (n == 0) {
      return(raw())
    }
    out <- bytes[i:(i + n - 1)]
    i <<- i + n
    out
  }

  # Parse prelude
  # The prelude for an event stream message has the following format:
  #   [total_length][header_length][prelude_crc]
  prelude_bytes <- read_bytes(8)
  tot_hd <- parse_int32(prelude_bytes)
  total_length <- tot_hd[1]
  header_length <- tot_hd[2]

  # validate perlude checksum
  validate_checksum(prelude_bytes, paste(read_bytes(4), collapse = ""))

  if (total_length != length(bytes)) {
    stop("AWS event metadata doesn't match supplied bytes")
  }

  # Parse headers
  headers <- list()
  while(i <= 12 + header_length) {
    name_length <- parse_int8(read_bytes(1))
    name <- rawToChar(read_bytes(name_length))
    type <- parse_int8(read_bytes(1))
    delayedAssign("len", parse_int16(read_bytes(2)))
    value <- switch(
      type_enum(type),
      'TRUE' = TRUE,
      'FALSE' = FALSE,
      BYTE = parse_int8(read_bytes(1)),
      SHORT = parse_int16(read_bytes(2)),
      INTEGER = parse_int(read_bytes(4)),
      LONG = parse_int64(read_bytes(8)),
      BYTE_ARRAY = read_bytes(len),
      CHARACTER = rawToChar(read_bytes(len)),
      TIMESTAMP = parse_int64(read_bytes(8)),
      UUID = paste(read_bytes(16), collapse = ""),
    )
    headers[[name]] <- value
  }

  # Parse message
  payload_raw <- read_bytes(total_length - i - 4 + 1)

  # validate the message checksum
  validate_checksum(
    bytes[1:(total_length-4)], paste(read_bytes(4), collapse = "")
  )

  list(
    total_length = total_length,
    header_length = header_length,
    payload = payload_raw,
    headers = headers
  )
}

################ Helpers ################
type_enum <- function(value) {
  if (value < 0 || value > 10) {
    stopf("Unsupported type %s.", value)
  }
  switch(value + 1,
         "TRUE",
         "FALSE",
         "BYTE",
         "SHORT",
         "INTEGER",
         "LONG",
         "BYTE_ARRAY",
         "CHARACTER",
         "TIMESTAMP",
         "UUID",
  )
}

# Convert raw vector into integers with big-endian
parse_int64 <- function(x) {
  bits <- as.integer(big_endian_int64(rawToBits(x)))
  sum(bits[-1] * 2^(62:0)) - bits[[1]] * 2^63
}

parse_int32 <- function(x) {
  readBin(x, "integer", n=length(x), size=4, endian = "big")
}

parse_int16 <- function(x) {
  readBin(x, "integer", n=length(x), size=2, endian = "big")
}

parse_int8 <- function(x) {
  readBin(x, "integer", n=length(x), size=1, endian = "big")
}

hex_to_raw <- function(x) {
  x <- gsub("(\\s|\n)+", "", x)

  pairs <- substring(x, seq(1, nchar(x), by = 2), seq(2, nchar(x), by = 2))
  as.raw(strtoi(pairs, 16L))
}

# Get the CRC of a raw vector.
crc32 <- function(raw) {
  return(digest::digest(raw, algo = "crc32", serialize = FALSE))
}

validate_checksum <- function(data, crc) {
  computed_checksum <- crc32(data)
  if (computed_checksum != crc) {
    stopf(
      'Checksum mismatch: expected %s, calculated %s', crc, computed_checksum
    )
  }
}
