#' @include util.R

# Retry attempts for an expanded list of errors/exceptions:
retryable_codes <- c(
  # Transient errors/exceptions
  "RequestTimeout",
  "RequestTimeoutException",
  "PriorRequestNotComplete",
  "ConnectionError",
  "HTTPClientError",

  # Service-side throttling/limit errors and exceptions
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
  "EC2ThrottledException"
)

# https://github.com/boto/boto3/blob/0b82bf9843ad6d350b48442c47f4a484a886ee3f/docs/source/guide/retries.rst#standard-retry-mode
standard_retry_handler <- function(request) {
  # Handle first api call
  # exit if no error
  if (is.null(request[["error"]])) {
    return(request)
  }

  request <- unmarshal_error(request)
  error <- aws_error(request[["error"]])
  retries <- request[["config"]][["max_retries"]]
  exit_retries <- retries + 1

  # If error is not retryable raise error
  if (!check_if_retryable(error) || retries == 0) {
    stop(error)
  } else {
    # initial backoff
    exp_back_off(error, 1, exit_retries)
  }

  # retry api call
  for (i in seq.int(2, exit_retries)) {
    tryCatch(
      {
        request$retry_count <- i - 1
        request <- sign(request)
        if (!is.null(request[["error"]])) {
          stop(aws_error(request[["error"]]))
        }
        request <- send(request)
        request <- unmarshal_meta(request)
        request <- validate_response(request)
        if (!is.null(request[["error"]])) {
          request <- unmarshal_error(request)
          stop(aws_error(request[["error"]]))
        }
        return(request)
      },
      paws_error = function(error) {
        if (check_if_retryable(error)) {
          exp_back_off(error, i, exit_retries)
        } else {
          stop(error)
        }
      }
    )
  }
}

check_if_retryable <- function(error) {
  error_code <- error[["error_response"]][["Code"]] %||% error[["error_response"]][["__type"]]
  status_code <- error[["status_code"]]
  retryable <- FALSE

  if (!is_empty(error_code) && error_code %in% retryable_codes) {
    retryable <- TRUE
    # Retry attempts on nondescriptive, transient error codes. Specifically, these HTTP status codes: 500, 502, 503, 504.
  } else if (!is_empty(status_code) && status_code %in% c(500, 502, 503, 504)) {
    retryable <- TRUE
  }
  return(retryable)
}

# Any retry attempt will include an exponential backoff by a base factor of 2 for a maximum backoff time of 20 seconds.
# Retry with exponential backoff with jitter
exp_back_off <- function(error, i, retries) {
  if (i == retries) {
    stop(error)
  }
  time <- min(runif(1) * 2^i, 20)
  log_error("Request failed. Retrying in %.3f seconds...", time)
  Sys.sleep(time)
}
