#' @include util.R
NULL

# Retry quota, mirroring botocore's `RetryQuota` (botocore/retries/quota.py).
# Each retry takes tokens from a per-client pool; when the pool can't cover the
# cost the request fails with its original error instead of retrying. A
# successful call gives back what it took.
RETRY_QUOTA_CAPACITY <- 500
RETRY_QUOTA_COST <- 5
RETRY_QUOTA_NO_RETRY_INCREMENT <- 1

new_retry_quota <- function(capacity = RETRY_QUOTA_CAPACITY) {
  quota <- new.env(parent = emptyenv())
  quota$max_capacity <- capacity
  quota$available <- capacity
  return(quota)
}

# Take `amount` from the quota. Returns FALSE (and takes nothing) if there
# isn't enough.
quota_acquire <- function(quota, amount) {
  if (amount > quota$available) {
    return(FALSE)
  }
  quota$available <- quota$available - amount
  return(TRUE)
}

# Give `amount` back, never exceeding the quota's maximum capacity.
quota_release <- function(quota, amount) {
  quota$available <- min(quota$max_capacity, quota$available + amount)
  return(invisible(quota))
}
