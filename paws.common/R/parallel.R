#' @include net.R
#' @include request.R
NULL

# Support for performing many S3 requests concurrently with
# a curl pool, e.g. the parts of a multipart transfer.
#
# A normal operation builds, signs, sends and unmarshals in one call. The
# functions below split that apart without touching generated code:
#
# 1. `request_only(svc)` returns a copy of a client that builds and signs each
#    request but doesn't send it, so `request_only(svc)$upload_part(...)` returns
#    the signed Request. The setting travels with the client's config, so
#    requests the pipeline makes for itself (e.g. refreshing credentials) use a
#    different config and are sent as normal.
# 2. `perform_requests()` sends a batch of them concurrently on a curl pool
#    (`perform_batch()`), so a Ctrl-C is handled by curl itself and stops the
#    transfer at once.
# 3. `complete_request(request, resp)` feeds each httr2 response back through
#    the rest of the pipeline (send handlers such as S3 redirects, then
#    validate, retry, unmarshal), returning what the operation would have.

# A copy of the client `svc` whose operations return the signed Request instead
# of sending it. Only for plain generated operations that return what
# `send_request()` gives them (e.g. `upload_part`, `get_object`); wrappers that
# do more with the response won't work on it. Wrap calls in `prepared()` to check.
request_only <- function(svc) {
  svc$.internal$config$send <- FALSE
  return(svc)
}

is_prepared_request <- function(x) {
  return(is.list(x) && !is.null(x$http_request) && !is.null(x$operation))
}

# Check that `x`, the result of an operation called on a `request_only()`
# client, really is a Request, and return it.
prepared <- function(x) {
  if (!is_prepared_request(x)) {
    stop(
      "expected a signed request but the operation returned something else; ",
      "`request_only()` clients only work with plain operations",
      call. = FALSE
    )
  }
  return(x)
}

# Finish a prepared `request` given its httr2 response `resp`, e.g. from
# a parallel batch. Returns the operation's output, or throws the same
# error the operation would have.
complete_request <- function(request, resp) {
  request$prefetched_response <- as_http_response(resp, request$http_request)
  request <- send(request)
  return(finish_request(request))
}

# Perform captured `requests` concurrently, returning a list aligned with
# `requests`. Each element is the operation's output, or the `paws_error` it
# failed with (the caller decides whether that is fatal).
#
# Retryable failures (throttling, 5xx, connection errors; see
# `check_if_retryable`) are re-signed and re-queued into the next parallel
# round after one shared backoff, up to `max_retries` times per request, so
# retries are not serialised the way the per-request `retry` handler would be.
#
# @param requests List of signed Requests from a `request_only()` client.
# @param max_active Maximum number of simultaneous connections.
perform_requests <- function(requests, max_active = 10) {
  n <- length(requests)
  results <- vector("list", n)
  pending <- seq_len(n)
  round <- 0L

  while (length(pending) > 0) {
    resps <- perform_batch(requests[pending], max_active)

    retry_idx <- integer(0)
    for (k in seq_along(pending)) {
      i <- pending[[k]]
      outcome <- complete_attempt(requests[[i]], resps[[k]])
      max_retries <- requests[[i]]$config$max_retries
      if (!outcome$ok && check_if_retryable(outcome$error) && round < max_retries) {
        retry_idx <- c(retry_idx, i)
      } else if (outcome$ok) {
        results[[i]] <- outcome$data
      } else {
        results[[i]] <- outcome$error
      }
    }

    pending <- retry_idx
    if (length(pending) > 0) {
      round <- round + 1L
      delay <- min(runif(1) * 2^round, 20)
      log_warn(
        "%d request(s) failed. Retrying in %.3f seconds...",
        length(pending),
        delay
      )
      Sys.sleep(delay)
      for (i in pending) {
        requests[[i]] <- resign_request(requests[[i]], round)
      }
    }
  }
  return(results)
}

# One attempt of a prepared request given its httr2 response (or the error
# httr2 returned when no response came back). Never retries.
complete_attempt <- function(request, resp) {
  if (inherits(resp, "error")) {
    error <- Error(
      "ConnectionError",
      conditionMessage(resp),
      error_response = list(Code = "ConnectionError", Message = conditionMessage(resp))
    )
    return(list(ok = FALSE, error = aws_error(error)))
  }
  # The request came from a `request_only()` client; anything the pipeline does
  # with this config from here on (a redirect, a region lookup) must really send.
  request$config$send <- TRUE
  tryCatch(
    {
      request$prefetched_response <- as_http_response(resp, request$http_request)
      request <- send(request)
      request <- unmarshal_meta(request)
      request <- validate_response(request)
      if (!is.null(request[["error"]])) {
        request <- unmarshal_error(request)
        return(list(ok = FALSE, error = aws_error(request[["error"]])))
      }
      request <- unmarshal(request)
      list(ok = TRUE, data = request[["data"]])
    },
    paws_error = function(error) list(ok = FALSE, error = error)
  )
}

resign_request <- function(request, retry_count) {
  request$config$send <- TRUE
  request$error <- NULL
  request$http_response <- NULL
  request$retry_count <- retry_count
  request$time <- now()
  return(sign(request))
}

# Send `requests` (signed Requests) concurrently, at most `max_active` at a time,
# returning a list aligned with `requests`: an httr2 response for each that came
# back, or an error condition for each that failed to connect, time out, etc.
# The responses are httr2 ones so they flow through `as_http_response()` exactly
# like the serial path's, headers included.
perform_batch <- function(requests, max_active) {
  if (any(!vapply(requests, function(r) is.null(r$http_request$dest), logical(1)))) {
    stop("writing responses to a file isn't supported in parallel", call. = FALSE)
  }
  handles <- lapply(requests, function(r) as_curl_handle(r$http_request))
  results <- run_pool(handles, max_active)
  return(lapply(seq_along(results), function(i) {
    if (inherits(results[[i]], "error")) {
      return(results[[i]])
    }
    curl_response(results[[i]], requests[[i]]$http_request)
  }))
}

# Run curl `handles` on a pool of `max_active` connections until all finish.
# Returns a list aligned with `handles`: curl's result for each that completed,
# or an error condition for each that failed.
#
# `curl::multi_run()` returns to R every `poll_interval` seconds, and checks for
# a Ctrl-C itself, so an interrupt stops the transfer promptly; the handles are
# cancelled on the way out so no connection is left running.
run_pool <- function(handles, max_active, poll_interval = 0.25) {
  results <- vector("list", length(handles))
  pool <- curl::new_pool(total_con = max_active, host_con = max_active, multiplex = FALSE)
  on.exit(
    for (h in handles) {
      try(curl::multi_cancel(h), silent = TRUE)
    },
    add = TRUE
  )

  for (i in seq_along(handles)) {
    local({
      k <- i
      curl::multi_add(
        handles[[k]],
        done = function(res) results[[k]] <<- res,
        fail = function(msg) results[[k]] <<- simpleError(msg),
        pool = pool
      )
    })
  }
  while (curl::multi_run(timeout = poll_interval, pool = pool)$pending > 0) {
    NULL
  }
  return(results)
}

# A curl handle for a signed paws HttpRequest, set up as `as_httr2_request()`
# sets up an httr2 one: same curl defaults (`curl::new_handle()`), method, body,
# headers and timeouts.
as_curl_handle <- function(http_request) {
  handle <- curl::new_handle()
  opts <- list(url = build_url(http_request$url))
  if (identical(http_request$method, "HEAD")) {
    opts$nobody <- TRUE
  } else {
    body <- http_request$body
    if (is.character(body)) {
      body <- charToRaw(enc2utf8(paste(body, collapse = "")))
    }
    opts$customrequest <- http_request$method
    opts$post <- TRUE
    opts$postfieldsize_large <- length(body)
    opts$postfields <- if (is.null(body)) raw(0) else body
  }
  if (!is.null(http_request$timeout)) {
    opts$timeout_ms <- http_request$timeout * 1000
  }
  if (!is.null(http_request$connect_timeout)) {
    opts$connecttimeout <- http_request$connect_timeout
  }
  opts$debugfunction <- paws_debug
  opts$verbose <- isTRUE(getOption("paws.log_level") >= 3L)
  curl::handle_setopt(handle, .list = opts)

  headers <- http_request$header
  if (isTRUE(http_request$close)) {
    headers$Connection <- "close"
  }
  # curl adds `Content-Type: application/x-www-form-urlencoded` to bodies unless
  # told not to; the serial path sends none, so send none here too.
  if (!"content-type" %in% tolower(names(headers))) {
    headers[["Content-Type"]] <- ""
  }
  if (length(headers) > 0) {
    curl::handle_setheaders(handle, .list = lapply(headers, as.character))
  }
  return(handle)
}

# curl's result for a completed request as an httr2 response.
curl_response <- function(result, http_request) {
  return(httr2::response(
    status_code = result$status_code,
    url = result$url,
    method = http_request$method,
    headers = curl::parse_headers_list(result$headers),
    body = result$content
  ))
}
