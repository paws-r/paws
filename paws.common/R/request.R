#' @include client.R
#' @include struct.R
NULL

# An operation is the service API operation to be made.
Operation <- struct(
  name = "",
  http_method = "",
  http_path = "",
  paginator = list(),
  before_presign_fn = function() {}
)

#' @export
new_operation <- function(name, http_method, http_path, paginator, before_presign_fn = NULL) {
  args <- as.list(environment())
  args[sapply(args, is.null)] <- NULL
  return(do.call(Operation, args))
}

# A request is a service request to be made.
Request <- struct(
  config = Config(),
  client_info = ClientInfo(),
  handlers = Handlers(),

  retryer = list(),
  time = 0,
  operation = "",
  http_request = HttpRequest(),
  http_response = NULL,
  body = "",
  body_start = NULL,
  params = list(),
  error = NULL,
  data = list(),
  request_id = "",
  retry_count = 0,
  retryable = FALSE,
  retry_delay = 0,
  not_hoist = FALSE,
  signed_header_vals = list(),
  last_signed_at = NULL,
  disable_follow_redirects = FALSE,

  expire_time = 0,

  context = list(),

  built = FALSE,

  safe_body = ""
)

# Returns a new request for the service API operation and parameters.
#' @export
new_request <- function(client, operation, params, data) {

  method <- operation$http_method
  if (is.null(method)) {
    method <- "POST"
  }

  http_req <- new_http_request(method, "", NULL)

  http_req$url <- parse_url(
    paste0(client$client_info$endpoint, operation$http_path)
  )

  http_req <- sanitize_host_for_header(http_req)

  r <- Request(
    config = client$config,
    client_info = client$client_info,
    handlers = client$handlers,

    retryer = NULL, # Implement retryers.
    time = Sys.time(),
    expire_time = 0,
    operation = operation,
    http_request = http_req,
    body = NULL,
    params = params,
    error = NULL,
    data = data
  )

  # TODO: Custom initialization.

  return(r)
}

# Send a request to the service.
# TODO: Retry the request in case of error.
#' @export
send_request <- function(request) {

  request <- sign(request)

  if (!is.null(request$error)) {
    stop(format_error(request$error), call. = FALSE)
  }

  request <- send(request)
  request <- unmarshal_meta(request)
  request <- validate_response(request)

  if (!is.null(request$error)) {
    request <- unmarshal_error(request)
    stop(format_error(request$error), call. = FALSE)
  }

  request <- unmarshal(request)

  out <- get_request_output(request)

  return(out)
}

#-------------------------------------------------------------------------------

# Return the request's output.
get_request_output <- function(request) {
  out <- tag_del(request$data)
  return(out)
}

set_body <- function(request, body) {
  request$body <- body
  request$http_request$body <- body
  return(request)
}

# Returns TRUE if the request represents a presigned API URL.
is_presigned <- function(request) {
  presigned <- request$expire_time != 0
  return(presigned)
}

# Remove the default port from the HTTP request host.
sanitize_host_for_header <- function(http_request) {
  host <- get_host(http_request)
  port <- get_port(host)
  if (port != "" && is_default_port(http_request$url$scheme, port)) {
    http_request$host <- strip_port(host)
  }
  return(http_request)
}

# Return the host from an HTTP request.
get_host <- function(http_request) {
  host <- http_request$host
  if (host == "") {
    host <- http_request$url$host
  }
  return(host)
}

# Return the port from an HTTP request.
get_port <- function(host) {
  port <- strsplit(host, ":")[[1]][-1]
  if (length(port) == 0) port <- ""
  return(port)
}

# Return a host with the port stripped off, e.g. "example.com:80" -> "example.com."
strip_port <- function(host) {
  port <- strsplit(host, ":")[[1]][1]
  return(port)
}

# Return whether the given port is the default port for the given scheme.
is_default_port <- function(scheme, port) {
  defaults <- c(
    "http" = 80,
    "https" = 443
  )
  ok <- defaults[[scheme]] == port
  return(ok)
}

# Check whether the submitted parameters are populated and valid.
# TODO: Complete.
params_filled <- function(request) {
  filled <- length(request$params) > 0
  return(filled)
}

# Check whether a given value is a valid value.
# TODO: Complete.
is_valid <- function(value) {
  return(length(value) > 0)
}

# Return whether the request has a response object.
data_filled <- function(request) {
  return(!is.null(request$data))
}
