#' @title Iterate over AWS Event Stream connection
#' @usage
#' paws_stream_handler(FUN, .connection = FALSE)
#' paws_stream_parser(con)
#' @param FUN function to iterate over stream connection.
#' @param .chunk_kb size of chunks (default 64 KB)
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

StreamHandler <- function(request, unmarshal) {
  con <- paws_con(request$http_response$body, unmarshal)
  paws_stream_handler <- function(FUN, .connection = FALSE) {
    if (isTRUE(.connection)) {
      return(con)
    }
    on.exit(close(con))
    result <- list()
    while(!is.null(event <- paws_stream_parser(con, unmarshal))) {
      result[[length(result) + 1]] <- list(FUN(resp))
    }
    return(result)
  }
  class(paws_stream_handler) <- "PawsStreamHandler"
  return(paws_stream_handler)
}

paws_con <- function(con, unmarshal) {
  con$paws_unmarshal <- unmarshal
  class(con) <- c("paws_connection", class(con))
  return(con)
}

#' @export
print.PawsStreamHandler <- function(x, ...) {
  request <- environment(x)$request
  op_name <- tolower(gsub("(.)([A-Z])", "\\1_\\2", request$operation$name))
  msg <- sprintf(c(
      "<PawsStreamHandler>",
      "Please check return object for service: %1$s and operation: %2$s",
      "https://www.paws-r-sdk.com/docs/%1$s_%2$s/"
    ),
    request$client_info$service_name,
    op_name
  )
  cli::cat_line(
    c(msg[1:2], cli::style_hyperlink(msg[3], msg[3]))
  )
}

#' @name paws_stream_handler
#' @export
paws_stream_parser <- function(con) {
  event_bytes <- paws_boundary(con)
  if (!is.null(event_bytes)) {
    paws_eventstream_parser(event_bytes, con$paws_unmarshal)
  } else {
    close(con)
    return(NULL)
  }
}

# TODO: correctly parse event stream
paws_eventstream_parser <- function(event, unmarshal) {
  return(event)
}


################ connection boundary ################
# TODO: identify boundaries of message from event stream
paws_boundary <- function(con) {

}


################ aws parsers ################

big_endian <- function(vec, dtype) {
  switch(
    dtype,
    "int64" = c(
      vec[8:1], vec[16:9], vec[24:17], vec[32:25], vec[40:33], vec[48:41], vec[56:49], vec[64:57]
    ),
    "int32" = c(vec[8:1], vec[16:9], vec[24:17], vec[32:25]),
    "int16" = c(vec[8:1], vec[16:9]),
    "int8" = vec[8:1]
  )
}

int_to_uint <- function (x, adjustment=2^32) {
  if (sign(x) < 0) {
    return(x + adjustment)
  }
  return(x)
}

# Convert raw vector into integers with big-endian
parse_int64 <- function(x) {
  bits <- as.integer(big_endian(rawToBits(x), "int64"))
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

# Converts raw vector into unsigned integers with big-endian
parse_uint64 <- function(x) {
  int_to_uint(int64(x), 2^64)
}

parse_uint32 <- function(x) {
  int_to_uint(readBin(x, "integer", n=length(x), size = 4, endian = "big"))
}

parse_uint16 <- function(x) {
  readBin(x, "integer", n=length(x), size=2, signed = F, endian = "big")
}

parse_uint8 <- function(x) {
  readBin(x, "integer", n=length(x), size=1, signed = F, endian = "big")
}

parse_string <- function(x) {
  rawToChar(x)
}
