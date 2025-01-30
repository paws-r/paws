#' @importFrom utils packageVersion

#' @include util.R

# Add the execution environment to the User-Agent request header.
# TODO: Implement.
add_host_exec_env_user_agent_handler <- function(request) {
  return(request)
}

# Finds the length of the HTTP request body and adds it to the request.
build_content_length_handler <- function(request) {
  content_length <- request$http_request$header[["Content-Length"]]
  if (!is.null(content_length) && content_length != "") {
    len <- as.integer(content_length)
  } else {
    if (!is.null(request$body)) {
      len <- get_content_length(request$body)
    }
  }

  if (exists("len") && !is.null(len)) {
    request$http_request$content_length <- len
    request$http_request$header["Content-Length"] <- as.character(len)
  } else {
    request$http_request$content_length <- 0
    request$http_request$header["Content-Length"] <- NULL
  }

  return(request)
}

get_content_length <- function(content) {
  if (is.character(content)) {
    return(nchar(content, type = "bytes"))
  } else if (is.raw(content)) {
    return(length(content))
  }
  return(NULL)
}

# Ensure that the request's signature doesn't expire before it is sent.
validate_req_sig_handler <- function(request) {
  # TODO: Implement anonymous access.
  # if (request$config$credentials == CREDENTIALS$anonymous_credentials) {
  #   return(request)
  # }

  signed_time <- request$time
  if (is.na(signed_time)) {
    signed_time <- request$last_signed_at
  }

  minute <- 60
  if (signed_time + 10 * minute > now()) {
    return(request)
  }

  request <- sign(request)

  return(request)
}

# Send a service request using an HTTP client.
send_handler <- function(request) {
  sender <- send_follow_redirects
  if (request$disable_follow_redirects) {
    sender <- send_without_follow_redirects
  }

  # TODO: Implement no request body.
  # if (request$no_body == request$http_request$body) {
  #   request$http_request$body <- NULL
  # }

  request$http_response <- sender(request)

  return(request)
}

# Send a request, and follow redirects.
send_follow_redirects <- function(request) {
  response <- issue(request$http_request)
  return(response)
}

# Send a request, and do *not* follow redirects.
# TODO: Implement.
send_without_follow_redirects <- function(request) {
  response <- issue(request$http_request)
  return(response)
}

# Check whether the AWS region and service endpoint are valid.
validate_endpoint_handler <- function(request) {
  if (request$client_info$signing_region == "" && request$config$region == "") {
    request$error <- Error("MissingRegion", "missing region")
  } else if (request$client_info$endpoint == "") {
    request$error <- Error("MissingEndpoint", "missing endpoint")
  }
  return(request)
}

# Check whether the parameters are valid prior to being sent.
# TODO: Implement.
validate_parameters_handler <- function(request) {
  return(request)
}

# Check whether the service's response was ok.
validate_response_handler <- function(request) {
  status_code <- as.integer(request$http_response$status_code)
  if (status_code == 0 | status_code >= 300) {
    request$error <- Error("UnknownError", "unknown error")
  }
  return(request)
}
