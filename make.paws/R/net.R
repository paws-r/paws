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
  response = NULL,
  ctx = list()
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
new_http_request <- function(method, url, body = NULL) {
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
    host = u$host
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
  body <- http_request$body

  if (url == "") {
    return()
  }

  r <- httr::VERB(
    method,
    url = url,
    config = httr::add_headers(.headers = headers),
    body = body
  )

  response_body <- httr::content(r, as = "text", encoding = "UTF-8")
  if (is.na(response_body)) response_body <- httr::content(r, as = "raw")
  
  response <- HttpResponse(
    status_code = httr::status_code(r),
    header = httr::headers(r),
    content_length = as.integer(httr::headers(r)$`content-length`),
    body = response_body
  )

  return(response)
}
