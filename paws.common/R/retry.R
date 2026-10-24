#' @importFrom stats runif

#' @include retry_quota.R
#' @include retry_adaptive.R
#' @include util.R

# Transient errors/exceptions
transient_codes <- c(
  "RequestTimeout",
  "RequestTimeoutException",
  "PriorRequestNotComplete",
  "ConnectionError",
  "HTTPClientError"
)

# Service-side throttling/limit errors and exceptions. Adaptive retries slow
# down on these (and only these).
throttling_codes <- c(
  "Throttling",
  "ThrottlingException",
  "ThrottledException",
  "RequestThrottledException",
  "TooManyRequestsException",
  "ProvisionedThroughputExceededException",
  "TransactionInProgressException",
  "RequestLimitExceeded",
  "BandwidthLimitExceeded",
  "LimitExceededException",
  "RequestThrottled",
  "SlowDown",
  "PriorRequestNotComplete",
  "EC2ThrottledException"
)

DEFAULT_MAX_RETRIES <- 3

# Retry attempts for an expanded list of errors/exceptions:
retryable_codes <- unique(c(transient_codes, throttling_codes))

# https://github.com/boto/boto3/blob/0b82bf9843ad6d350b48442c47f4a484a886ee3f/docs/source/guide/retries.rst#standard-retry-mode
retry_handler <- function(request) {
  # Handle first api call
  # exit if no error
  if (is.null(request[["error"]])) {
    retry_on_response(request)
    retry_quota_refund(request, RETRY_QUOTA_NO_RETRY_INCREMENT)
    return(request)
  }

  request <- unmarshal_error(request)
  error <- aws_error(request[["error"]])
  retry_on_response(request, error)
  retries <- get_max_retries(request)
  exit_retries <- retries + 1

  # If error is not retryable raise error
  if (!check_if_retryable(error) || retries == 0) {
    stop(error)
  } else {
    # initial backoff
    consumed <- if (1 < exit_retries) retry_quota_acquire(request, error) else 0
    exp_back_off(error, 1, exit_retries)
  }

  # retry api call
  for (i in seq.int(2, exit_retries)) {
    tryCatch(
      {
        request$retry_count <- i - 1
        # drop the previous attempt's error, otherwise it is raised again
        # without the request ever being re-sent
        request$error <- NULL
        request <- sign(request)
        if (!is.null(request[["error"]])) {
          stop(aws_error(request[["error"]]))
        }
        retry_before_send(request)
        request <- send(request)
        request <- unmarshal_meta(request)
        request <- validate_response(request)
        if (!is.null(request[["error"]])) {
          request <- unmarshal_error(request)
          error <- aws_error(request[["error"]])
          retry_on_response(request, error)
          stop(error)
        }
        retry_on_response(request)
        retry_quota_refund(request, consumed)
        return(request)
      },
      paws_error = function(error) {
        if (check_if_retryable(error)) {
          consumed <<- if (i < exit_retries) retry_quota_acquire(request, error) else 0
          exp_back_off(error, i, exit_retries)
        } else {
          stop(error)
        }
      }
    )
  }
}

error_code_of <- function(error) {
  return(error[["error_response"]][["Code"]] %||% error[["error_response"]][["__type"]])
}

# Errors the service raised because we are sending too fast.
is_throttling_error <- function(error) {
  error_code <- error_code_of(error)
  return(!is_empty(error_code) && error_code %in% throttling_codes)
}

# Transient errors: timeouts, connection problems and (nondescriptive) HTTP
# status codes 500, 502, 503, 504.
is_transient_error <- function(error) {
  error_code <- error_code_of(error)
  status_code <- error[["status_code"]]
  if (!is_empty(error_code) && error_code %in% transient_codes) {
    return(TRUE)
  }
  return(!is_empty(status_code) && status_code %in% c(500, 502, 503, 504))
}

check_if_retryable <- function(error) {
  return(is_throttling_error(error) || is_transient_error(error))
}

# `max_retries` is unset (NULL) unless the user, an environment variable or the
# config file set it, so that those can be told apart from the default.
get_max_retries <- function(request) {
  retries <- request[["config"]][["max_retries"]]
  if (length(retries) == 1 && !is.na(retries)) retries else DEFAULT_MAX_RETRIES
}

# -- Per-client retry state: retry quota and adaptive rate limiter ------------
#
# `set_config()` gives each client a `retry_state` environment, so copies of a
# client share it. A `Config()` built by hand has none, in which case the
# helpers below do nothing.

new_retry_state <- function() {
  state <- new.env(parent = emptyenv())
  state$quota <- new_retry_quota()
  state$limiter <- new_rate_limiter()
  return(state)
}

get_retry_state <- function(request) {
  state <- request[["config"]][["retry_state"]]
  if (is.environment(state)) state else NULL
}

is_adaptive_retry <- function(request) {
  mode <- request[["config"]][["retry_mode"]]
  return(length(mode) == 1 && mode == "adaptive")
}

# Call before every send (including the first): adaptive mode waits here if the
# client is sending faster than the rate it has learnt the service tolerates.
retry_before_send <- function(request) {
  state <- get_retry_state(request)
  if (!is.null(state) && is_adaptive_retry(request)) {
    limiter_before_send(state$limiter)
  }
  return(invisible(request))
}

# Call after every response (`error` is NULL for a successful one): adaptive
# mode adjusts its sending rate.
retry_on_response <- function(request, error = NULL) {
  state <- get_retry_state(request)
  if (!is.null(state) && is_adaptive_retry(request)) {
    limiter_on_response(state$limiter, !is.null(error) && is_throttling_error(error))
  }
  return(invisible(request))
}

# Take the quota a retry costs, returning the amount taken, or 0 if the client
# has no retry state. Raises `error` when the quota can't cover the retry.
# (botocore charges more for client side timeouts, but paws has no distinct
# timeout error to tell them apart by.)
retry_quota_acquire <- function(request, error) {
  state <- get_retry_state(request)
  if (is.null(state)) {
    return(0)
  }
  if (!quota_acquire(state$quota, RETRY_QUOTA_COST)) {
    log_warn("Retry quota exceeded, not retrying request.")
    stop(error)
  }
  return(RETRY_QUOTA_COST)
}

retry_quota_refund <- function(request, amount) {
  state <- get_retry_state(request)
  if (!is.null(state)) {
    quota_release(state$quota, amount)
  }
  return(invisible(request))
}

# Any retry attempt will include an exponential backoff by a base factor of 2 for a maximum backoff time of 20 seconds.
# Retry with exponential backoff with jitter
exp_back_off <- function(error, i, retries) {
  if (i == retries) {
    stop(error)
  }
  time <- min(runif(1) * 2^i, 20)
  log_warn("Request failed. Retrying in %.3f seconds...", time)
  Sys.sleep(time)
}
