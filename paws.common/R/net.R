#' @importFrom httr2 request req_options req_perform req_perform_connection

#' @include struct.R
#' @include url.R
#' @include util.R
#' @include logging.R
NULL

# Construct an HTTP request object.
HttpRequest <- struct(
  method = "",
  url = Url(),
  proto = "HTTP/1.1",
  proto_major = 1,
  proto_minor = 1,
  header = list(),
  body = "",
  content_length = 0,
  transfer_encoding = list(),
  close = FALSE,
  host = "",
  form = list(),
  post_form = list(),
  multipart_form = list(),
  trailer = list(),
  remote_addr = "",
  request_uri = "",
  tls = NULL,
  cancel = NULL,
  connect_timeout = NULL,
  timeout = NULL,
  response = NULL,
  ctx = list(),
  dest = NULL,
  stream_api = FALSE
)

# Construct an HTTP response object.
HttpResponse <- struct(
  status = "",
  status_code = NA,
  proto = "",
  proto_major = NA,
  proto_minor = NA,
  header = list(),
  body = NULL,
  content_length = NA,
  transfer_encoding = list(),
  close = logical(0),
  uncompressed = logical(0),
  trailer = list(),
  request = list(),
  tls = logical(0)
)

# Returns an HTTP request given a method, URL, and an optional body.
#
# @param method The HTTP method to use for the request.
# @param url The URL to send the request to.
# @param body The body to send in the request, in bytes.
# @param close Whether to immediately close the connection, or else reuse connections.
# @param connect_timeout How long to wait for an initial response.
# @param timeout Timeout for the entire request.
# @param dest Control where the response body is written
# @param header list of HTTP headers to add to the request
new_http_request <- function(
  method,
  url,
  body = NULL,
  close = FALSE,
  connect_timeout = NULL,
  timeout = NULL,
  dest = NULL,
  stream_api = FALSE,
  header = list()
) {
  if (method == "") {
    method <- "GET"
  }
  if (!valid_method(method)) {
    stopf("invalid method: %s", method)
  }
  header["User-Agent"] <- PAWS_USER_AGENT
  u <- parse_url(url)
  req <- HttpRequest(
    method = method,
    url = u,
    proto = "HTTP/1.1",
    proto_major = 1,
    proto_minor = 1,
    header = header,
    body = body,
    host = u[["host"]],
    close = close,
    connect_timeout = connect_timeout,
    timeout = timeout,
    dest = dest,
    stream_api = stream_api
  )
  return(req)
}

valid_method <- function(method) {
  methods <- c("OPTIONS", "GET", "HEAD", "POST", "PUT", "DELETE", "TRACE", "CONNECT")
  ok <- method %in% methods
  return(ok)
}

# Issue an HTTP request.
issue <- function(http_request) {
  url <- build_url(http_request$url)
  if (http_request$close) {
    http_request$header$Connection <- "close"
  }

  if (url == "") {
    stop("no url provided")
  }
  resp <- request_aws(url, http_request)
  response <- HttpResponse(
    status_code = resp$status_code,
    header = resp$headers,
    content_length = as.integer(resp$headers$`content-length`),
    # Prevent reading in data when output is set
    body = resp_body(resp, http_request$dest, http_request$stream_api)
  )

  # Decode gzipped response bodies that are not automatically decompressed
  # by httr/curl.
  if (is_compressed(response)) {
    response <- decompress(response)
  }

  return(response)
}

request_aws <- function(url, http_request) {
  req <- request(url)
  req$method <- http_request$method
  req$headers <- http_request$header
  req$policies$error_is_error <- function(resp) FALSE
  if (http_request$method != "HEAD") {
    req$body <- list(
      data = http_request$body,
      type = "raw",
      content_type = "",
      params = list()
    )
  }
  req <- req_options(
    .req = req,
    timeout_ms = http_request$timeout * 1000,
    connecttimeout = http_request$connect_timeout,
    debugfunction = paws_debug,
    verbose = isTRUE(getOption("paws.log_level") >= 3L)
  )
  if (http_request$stream_api) {
    return(req_perform_connection(req))
  } else {
    return(req_perform(req, path = http_request$dest))
  }
}

resp_body <- function(resp, path, stream_api) {
  if (stream_api) {
    body <- resp
  } else if (is.null(path)) {
    body <- resp$body
    # return error message if call has failed or needs redirecting
  } else if (resp$status_code %in% c(301, 400)) {
    body <- readBin(path, "raw", file.info(path)$size)
    unlink(path)
  } else {
    body <- raw()
  }
  return(body)
}

# Return whether an HTTP response body is (still) compressed by checking
# whether the body has a valid ZLIB header.
# See http://www.faqs.org/rfcs/rfc1950.html.
is_compressed <- function(http_response) {
  content_encoding <- http_response$header[["Content-Encoding"]]

  if (is.null(content_encoding)) {
    return(FALSE)
  }

  if (content_encoding == "gzip") {
    bits_to_int <- function(x) sum(as.integer(x) * 2^(seq_along(x) - 1))
    cmf <- http_response$body[1]
    flg <- http_response$body[2]
    compression_method <- bits_to_int(rawToBits(cmf)[1:4])
    deflate <- 8
    valid_zlib_header <- (as.integer(cmf) * 256 + as.integer(flg)) %% 31 == 0
    if (compression_method == deflate && valid_zlib_header) {
      return(TRUE)
    }
  }

  return(FALSE)
}

# Return an HTTP response with the body decompressed.
decompress <- function(http_response) {
  body <- tryCatch(
    memDecompress(http_response$body, type = "gz", asChar = FALSE),
    error = function(e) http_response$body
  )
  http_response$body <- body
  return(http_response)
}
