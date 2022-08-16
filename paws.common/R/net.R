#' @include struct.R
#' @include url.R
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
  timeout = NULL,
  response = NULL,
  ctx = list(),
  dest = NULL
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
# @param timeout How long to wait for an initial response.
# @param dest Control where the response body is written
new_http_request <- function(method, url, body = NULL, close = FALSE, timeout = NULL, dest = NULL) {
  if (method == "") {
    method <- "GET"
  }
  if (!valid_method(method)) {
    stop(sprintf("invalid method: %s", method))
  }
  u <- parse_url(url)
  req <- HttpRequest(
    method = method,
    url = u,
    proto = "HTTP/1.1",
    proto_major = 1,
    proto_minor = 1,
    header = list(), # TODO
    body = body,
    host = u$host,
    close = close,
    timeout = timeout,
    dest = dest
  )
  return(req)
}

valid_method <- function(method) {
  methods <- c(
    "OPTIONS",
    "GET",
    "HEAD",
    "POST",
    "PUT",
    "DELETE",
    "TRACE",
    "CONNECT"
  )
  ok <- method %in% methods
  return(ok)
}

# Issue an HTTP request.
issue <- function(http_request) {
  method <- http_request$method
  url <- build_url(http_request$url)
  headers <- unlist(http_request$header)
  if (http_request$close) {
    headers["Connection"] <- "close"
  }
  body <- http_request$body
  timeout <- httr::config(connecttimeout = http_request$timeout)
  if (is.null(http_request$timeout)) timeout <- NULL

  if (url == "") {
    stop("no url provided")
  }

  # utilize httr to write to disk
  dest <- NULL
  if(!is.null(http_request$dest)) {
    dest <- httr::write_disk(http_request$dest)
  }
  r <- httr::VERB(
    method,
    url = url,
    config = c(httr::add_headers(.headers=headers), dest),
    body = body,
    timeout
  )

  response <- HttpResponse(
    status_code = httr::status_code(r),
    header = httr::headers(r),
    content_length = as.integer(httr::headers(r)$`content-length`),
    # Prevent reading in data when output is set
    body = (
      if(is.null(http_request$dest)) httr::content(r, as = "raw") else raw()
    )
  )

  # Decode gzipped response bodies that are not automatically decompressed
  # by httr/curl.
  if (is_compressed(response)) {
    response <- decompress(response)
  }

  return(response)
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
    bits_to_int <- function(x) sum(as.integer(x) * 2^(1:length(x)-1))
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
