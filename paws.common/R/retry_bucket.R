#' @include util.R
NULL

# Token bucket and request rate clocker used by the adaptive retry rate limiter,
# mirroring botocore's `TokenBucket` (botocore/retries/bucket.py) and
# `RateClocker` (botocore/retries/adaptive.py). State lives in environments so
# copies of a client share it. `clock` returns seconds and `sleep` waits, both
# injectable so tests never really wait.

clock_seconds <- function() {
  return(as.numeric(Sys.time()))
}

new_token_bucket <- function(
  max_rate,
  clock = clock_seconds,
  sleep = Sys.sleep,
  min_rate = 0.5
) {
  bucket <- new.env(parent = emptyenv())
  bucket$clock <- clock
  bucket$sleep <- sleep
  bucket$min_rate <- min_rate
  bucket$fill_rate <- NA_real_
  bucket$max_capacity <- NA_real_
  bucket$capacity <- 0
  bucket$last_timestamp <- NA_real_
  bucket_set_rate(bucket, max_rate)
  return(bucket)
}

bucket_refill <- function(bucket) {
  now <- bucket$clock()
  if (is.na(bucket$last_timestamp)) {
    bucket$last_timestamp <- now
    return(invisible(bucket))
  }
  fill <- (now - bucket$last_timestamp) * bucket$fill_rate
  bucket$capacity <- min(bucket$max_capacity, bucket$capacity + fill)
  bucket$last_timestamp <- now
  return(invisible(bucket))
}

# The rate (tokens per second) the bucket currently refills at.
bucket_max_rate <- function(bucket) {
  return(bucket$fill_rate)
}

bucket_set_rate <- function(bucket, value) {
  bucket_refill(bucket)
  bucket$fill_rate <- max(value, bucket$min_rate)
  bucket$max_capacity <- if (value >= 1) value else 1
  bucket$capacity <- min(bucket$capacity, bucket$max_capacity)
  return(invisible(bucket))
}

# Take `amount` tokens, sleeping once for however long the missing ones take to
# refill. (botocore re-checks in a loop; with a clock whose resolution is coarser
# than a tiny remaining wait that can spin, so here a rounding shortfall just
# leaves the capacity a hair below zero, which the next refill makes up.)
bucket_acquire <- function(bucket, amount = 1) {
  bucket_refill(bucket)
  if ((wait <- (amount - bucket$capacity) / bucket$fill_rate) > 0) {
    bucket$sleep(wait)
    bucket_refill(bucket)
  }
  bucket$capacity <- bucket$capacity - amount
  return(invisible(TRUE))
}

# Tracks the rate requests are being sent at, in 0.5s buckets, smoothed with an
# exponentially weighted average.
new_rate_clocker <- function(
  clock = clock_seconds,
  smoothing = 0.8,
  time_bucket_range = 0.5
) {
  clocker <- new.env(parent = emptyenv())
  clocker$clock <- clock
  clocker$smoothing <- smoothing
  clocker$time_bucket_scale <- 1 / time_bucket_range
  clocker$measured_rate <- 0
  clocker$last_bucket <- floor(clock())
  clocker$count <- 0
  return(clocker)
}

# Record `amount` requests and return the smoothed measured rate.
clocker_record <- function(clocker, amount = 1) {
  scale <- clocker$time_bucket_scale
  bucket <- floor(clocker$clock() * scale) / scale
  clocker$count <- clocker$count + amount
  if (bucket > clocker$last_bucket) {
    current_rate <- clocker$count / (bucket - clocker$last_bucket)
    clocker$measured_rate <- current_rate *
      clocker$smoothing +
      clocker$measured_rate * (1 - clocker$smoothing)
    clocker$count <- 0
    clocker$last_bucket <- bucket
  }
  return(clocker$measured_rate)
}
