#' @include util.R
NULL

# CUBIC congestion control used by the adaptive retry rate limiter, mirroring
# botocore's `CubicCalculator` (botocore/retries/throttling.py).
new_cubic <- function(starting_max_rate, start_time, scale_constant = 0.4, beta = 0.7) {
  cubic <- new.env(parent = emptyenv())
  cubic$w_max <- starting_max_rate
  cubic$scale_constant <- scale_constant
  cubic$beta <- beta
  cubic$last_fail <- start_time
  cubic$k <- cubic_zero_point(cubic)
  return(cubic)
}

cubic_zero_point <- function(cubic) {
  return((cubic$w_max * (1 - cubic$beta) / cubic$scale_constant)^(1 / 3))
}

# The send rate to move to after a non-throttled response at time `timestamp`.
cubic_success <- function(cubic, timestamp) {
  dt <- timestamp - cubic$last_fail
  return(cubic$scale_constant * (dt - cubic$k)^3 + cubic$w_max)
}

# The send rate to back off to after a throttled response while sending at
# `current_rate`; also records `current_rate` as the new maximum.
cubic_error <- function(cubic, current_rate, timestamp) {
  cubic$w_max <- current_rate
  cubic$k <- cubic_zero_point(cubic)
  cubic$last_fail <- timestamp
  return(current_rate * cubic$beta)
}
