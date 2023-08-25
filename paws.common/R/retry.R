#' @include util.R

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
  # exit if no error
  if (is.null(request[["error"]])) {
    return(request)
  }

  retries <- request[["config"]][["max_retries"]]
  for (i in seq_len(retries)) {
    tryCatch({
      request <- send(request)
      request <- unmarshal_meta(request)
      request <- validate_response(request)

      if (!is.null(request[["error"]])) {
        request <- unmarshal_error(request)
        stop(aws_error(request[["error"]]))
      }
      return(request)
    }, paws_error = function(error) {
      if (retry_able(error)) {
        exp_back_off(error, i, retries)
        } else {
          stop(error)
        }
      }
    )
  }
}

# Retry attempts on nondescriptive, transient error codes. Specifically, these HTTP status codes: 500, 502, 503, 504.
retry_able <- function(error) {
  error_code <- error[["error_response"]][["Code"]]
  status_code <- error[["status_code"]]
  retry_able <- FALSE
  if (!is_empty(error_code) && error_code %in% retryable_codes) {
    retry_able <- TRUE
  } else if (!is_empty(status_code) && status_code %in% c(500, 502, 503, 504)) {
    retry_able <- TRUE
  }
  return(retry_able)
}

# Any retry attempt will include an exponential backoff by a base factor of 2 for a maximum backoff time of 20 seconds.
# Retry with exponential backoff with jitter
exp_back_off <- function(error, i, retries) {
  if (i == (retries)) {
    stop(error)
  }
  time <- min(runif(1) * 2^i, 20)
  log_error("Request failed. Retrying in %.3f seconds...", time)
  Sys.sleep(time)
}


## Temp Archive

# See https://docs.aws.amazon.com/sdkref/latest/guide/feature-retry-behavior.html
# retry_api_call <- function(expr, retries) {
#   attempts <- seq_len(retries + 1) - 1
#   for (i in attempts) {
#     tryCatch(
#       {
#         return(eval.parent(substitute(expr)))
#       },
#       paws_error = function(error) {
#         if (retry_able(error)) {
#           exp_back_off(error, i, retries)
#         } else {
#           stop(error)
#         }
#       }
#     )
#   }
# }
