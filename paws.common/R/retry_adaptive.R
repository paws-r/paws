#' @include retry_bucket.R
#' @include retry_cubic.R
#' @include util.R
NULL

# Client side rate limiter for `retry_mode = "adaptive"`, mirroring botocore's
# `ClientRateLimiter` (botocore/retries/adaptive.py). It starts disabled and
# costs nothing until the first throttling response; from then on every send
# first takes a token from a bucket whose refill rate follows CUBIC.
MAX_RATE_ADJUST_SCALE <- 2.0

new_rate_limiter <- function(clock = clock_seconds, sleep = Sys.sleep) {
  limiter <- new.env(parent = emptyenv())
  limiter$clock <- clock
  limiter$enabled <- FALSE
  limiter$cubic <- new_cubic(0, clock())
  limiter$bucket <- new_token_bucket(1, clock, sleep)
  limiter$clocker <- new_rate_clocker(clock)
  return(limiter)
}

# Call before every send, including the first.
limiter_before_send <- function(limiter) {
  if (limiter$enabled) {
    bucket_acquire(limiter$bucket)
  }
  return(invisible(limiter))
}

# Call after every response, successful or not.
limiter_on_response <- function(limiter, throttled) {
  measured_rate <- clocker_record(limiter$clocker)
  timestamp <- limiter$clock()
  if (!throttled) {
    new_rate <- cubic_success(limiter$cubic, timestamp)
  } else {
    rate_to_use <- measured_rate
    if (limiter$enabled) {
      rate_to_use <- min(measured_rate, bucket_max_rate(limiter$bucket))
    }
    new_rate <- cubic_error(limiter$cubic, rate_to_use, timestamp)
    limiter$enabled <- TRUE
  }
  bucket_set_rate(limiter$bucket, min(new_rate, MAX_RATE_ADJUST_SCALE * measured_rate))
  return(invisible(limiter))
}
