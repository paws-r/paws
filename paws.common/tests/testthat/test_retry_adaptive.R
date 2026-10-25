# A manual clock: `sleep` advances time instead of waiting.
fake_clock <- function(start = 1000) {
  env <- new.env()
  env$now <- start
  list(
    env = env,
    clock = function() env$now,
    sleep = function(x) {
      env$slept <- c(env$slept, x)
      env$now <- env$now + x
    },
    advance = function(x) env$now <- env$now + x
  )
}

########################################################################
# retry_quota
########################################################################

test_that("quota acquire and release", {
  quota <- new_retry_quota(10)
  expect_true(quota_acquire(quota, 5))
  expect_true(quota_acquire(quota, 5))
  expect_false(quota_acquire(quota, 1))
  expect_equal(quota$available, 0)
  quota_release(quota, 3)
  expect_equal(quota$available, 3)
  quota_release(quota, 100)
  expect_equal(quota$available, 10)
})

########################################################################
# retry_bucket
########################################################################

test_that("token bucket refills and sleeps for missing tokens", {
  fc <- fake_clock()
  bucket <- new_token_bucket(2, fc$clock, fc$sleep)
  expect_equal(bucket$max_capacity, 2)
  expect_equal(bucket$capacity, 0)
  bucket_acquire(bucket, 1) # empty: must wait 1 / 2 = 0.5s
  expect_equal(fc$env$slept, 0.5)
  fc$advance(10) # refill is capped at max capacity
  bucket_acquire(bucket, 1)
  expect_equal(bucket$capacity, 1)
})

test_that("token bucket rate has a floor and capacity at least 1", {
  fc <- fake_clock()
  bucket <- new_token_bucket(10, fc$clock, fc$sleep)
  bucket_set_rate(bucket, 0.1)
  expect_equal(bucket_max_rate(bucket), 0.5)
  expect_equal(bucket$max_capacity, 1)
})

test_that("rate clocker measures a smoothed rate", {
  fc <- fake_clock(1000)
  clocker <- new_rate_clocker(fc$clock)
  for (i in 1:10) {
    clocker_record(clocker)
  }
  expect_equal(clocker$measured_rate, 0)
  fc$advance(1)
  # 11 requests over a 1s bucket, smoothed: 11 * 0.8
  expect_equal(clocker_record(clocker), 11 * 0.8)
})

########################################################################
# retry_cubic
########################################################################

test_that("cubic matches botocore", {
  # Values computed with botocore.retries.throttling.CubicCalculator
  cubic <- new_cubic(10, 0)
  expect_equal(cubic$k, (10 * 0.3 / 0.4)^(1 / 3))
  expect_equal(cubic_error(cubic, 10, 5), 7)
  expect_equal(cubic$last_fail, 5)
  expect_equal(cubic_success(cubic, 5 + cubic$k), 10)
  expect_equal(cubic_success(cubic, 6), 0.4 * (1 - cubic$k)^3 + 10)
})

########################################################################
# retry_adaptive
########################################################################

test_that("limiter is disabled until the first throttle", {
  fc <- fake_clock()
  limiter <- new_rate_limiter(fc$clock, fc$sleep)
  for (i in 1:5) {
    limiter_before_send(limiter)
    fc$advance(0.1)
    limiter_on_response(limiter, FALSE)
  }
  expect_false(limiter$enabled)
  expect_null(fc$env$slept)

  limiter_on_response(limiter, TRUE)
  expect_true(limiter$enabled)
})

test_that("throttling slows the client down", {
  fc <- fake_clock()
  limiter <- new_rate_limiter(fc$clock, fc$sleep)
  # 20 requests/s, then a throttle
  for (i in 1:40) {
    fc$advance(0.05)
    limiter_on_response(limiter, FALSE)
  }
  limiter_on_response(limiter, TRUE)
  rate <- bucket_max_rate(limiter$bucket)
  expect_true(rate < 20)
  expect_true(rate >= 0.5)

  # sends are now spaced out
  limiter$bucket$capacity <- 0
  limiter_before_send(limiter)
  expect_true(length(fc$env$slept) > 0)
})

########################################################################
# retry handler wiring
########################################################################

test_that("is_throttling_error and is_transient_error", {
  throttle <- Error(
    "x",
    "y",
    status_code = 400,
    error_response = list(Code = "SlowDown")
  )
  expect_true(is_throttling_error(aws_error(throttle)))
  expect_true(check_if_retryable(aws_error(throttle)))

  server <- Error(
    "x",
    "y",
    status_code = 503,
    error_response = list(Code = "Other")
  )
  expect_false(is_throttling_error(aws_error(server)))
  expect_true(is_transient_error(aws_error(server)))

  denied <- Error(
    "x",
    "y",
    status_code = 403,
    error_response = list(Code = "AccessDenied")
  )
  expect_false(check_if_retryable(aws_error(denied)))
})

new_retry_request <- function(mode = "standard") {
  config <- Config(retry_mode = mode)
  config$retry_state <- new_retry_state()
  req <- new_request(
    Client(config = config),
    Operation(name = "Op"),
    NULL,
    Structure(Timestamp = Scalar(type = "timestamp"))
  )
  req
}

throttled <- function(req) {
  req$error <- Error(
    code = "SlowDown",
    message = "slow",
    status_code = 503,
    error_response = list(Code = "SlowDown")
  )
  req
}

test_that("adaptive mode feeds the limiter, standard mode does not", {
  for (mode in c("standard", "adaptive")) {
    req <- new_retry_request(mode)
    retry_on_response(req, aws_error(throttled(req)$error))
    expect_equal(req$config$retry_state$limiter$enabled, mode == "adaptive")
  }
})

test_that("retries stop once the retry quota is spent", {
  req <- new_retry_request()
  req$config$retry_state$quota$available <- 7 # one retry (5), not two
  fail <- throttled(req)
  sends <- 0
  mockery::stub(retry_handler, "unmarshal_error", function(x) x)
  mockery::stub(retry_handler, "sign", function(x) {
    x$error <- NULL
    x
  })
  mockery::stub(retry_handler, "send", function(x) {
    sends <<- sends + 1
    fail
  })
  mockery::stub(retry_handler, "unmarshal_meta", function(x) x)
  mockery::stub(retry_handler, "validate_response", function(x) x)
  mockery::stub(retry_handler, "exp_back_off", function(...) NULL)

  expect_error(retry_handler(fail), class = "paws_error")
  expect_equal(sends, 1) # original call + 1 retry, then quota refused the next
  expect_equal(req$config$retry_state$quota$available, 2)
})

test_that("a success refunds the retry quota", {
  req <- new_retry_request()
  ok <- req
  quota <- req$config$retry_state$quota
  quota$available <- 100
  mockery::stub(retry_handler, "unmarshal_error", function(x) x)
  mockery::stub(retry_handler, "sign", function(x) {
    x$error <- NULL
    x
  })
  mockery::stub(retry_handler, "send", function(x) ok)
  mockery::stub(retry_handler, "unmarshal_meta", function(x) x)
  mockery::stub(retry_handler, "validate_response", function(x) x)
  mockery::stub(retry_handler, "exp_back_off", function(...) NULL)

  retry_handler(throttled(req))
  expect_equal(quota$available, 100)
})

########################################################################
# config
########################################################################

test_that("retry_mode and max_attempts resolve through a real client config", {
  withr::local_envvar(c(AWS_RETRY_MODE = "", AWS_MAX_ATTEMPTS = ""))
  svc <- set_config(list(), list(region = "us-east-1"))
  cfg <- svc$.internal$config
  expect_true(cfg$retry_mode == "standard")
  expect_true(cfg$max_retries == 3)
  expect_true(is.environment(cfg$retry_state))

  svc <- set_config(
    list(),
    list(region = "us-east-1", retry_mode = "adaptive", max_attempts = 6)
  )
  expect_true(svc$.internal$config$retry_mode == "adaptive")
  expect_true(svc$.internal$config$max_retries == 5)

  withr::local_envvar(c(AWS_RETRY_MODE = "adaptive", AWS_MAX_ATTEMPTS = "2"))
  svc <- set_config(list(), list(region = "us-east-1"))
  expect_true(svc$.internal$config$retry_mode == "adaptive")
  expect_true(svc$.internal$config$max_retries == 1)

  expect_error(
    set_config(list(), list(region = "us-east-1", retry_mode = "nope")),
    "Invalid `retry_mode`"
  )
})

test_that("retry_mode 'legacy' is accepted and runs as standard", {
  mode <- function(...) {
    set_config(
      list(),
      list(region = "us-east-1", ...)
    )$.internal$config$retry_mode
  }
  withr::local_envvar(c(AWS_RETRY_MODE = "legacy", AWS_MAX_ATTEMPTS = ""))
  expect_true(mode() == "standard")
  expect_true(mode(retry_mode = "legacy") == "standard")

  # case and whitespace from the environment are tolerated too
  withr::local_envvar(c(AWS_RETRY_MODE = " Legacy "))
  expect_true(mode() == "standard")

  # a client setting still wins over the environment
  expect_true(mode(retry_mode = "adaptive") == "adaptive")
  expect_error(mode(retry_mode = "nope"), "'standard', 'adaptive' or 'legacy'")
})

test_that("warns when max_retries conflicts with max_attempts", {
  warned <- mock2()
  mockery::stub(resolve_retry_config, "log_warn", warned)
  resolve_retry_config(
    list(retry_mode = "standard", max_retries = 5, max_attempts = 2),
    ""
  )
  expect_equal(mock_call_no(warned), 1)
  expect_match(do.call(sprintf, mock_arg(warned)), "using 2 attempts")

  # same meaning in both settings: no warning
  warned <- mock2()
  mockery::stub(resolve_retry_config, "log_warn", warned)
  cfg <- resolve_retry_config(
    list(retry_mode = "standard", max_retries = 1, max_attempts = 2),
    ""
  )
  expect_equal(mock_call_no(warned), 0)
  expect_equal(cfg$max_retries, 1)

  # only one of them set: no warning
  warned <- mock2()
  mockery::stub(resolve_retry_config, "log_warn", warned)
  resolve_retry_config(list(retry_mode = "standard", max_retries = 5), "")
  resolve_retry_config(list(retry_mode = "standard", max_attempts = 2), "")
  expect_equal(mock_call_no(warned), 0)
})

test_that("max_retries is unset unless given, and falls back to 3", {
  withr::local_envvar(c(AWS_RETRY_MODE = "", AWS_MAX_ATTEMPTS = ""))
  expect_equal(length(Config()$max_retries), 0)
  expect_equal(get_max_retries(list(config = Config())), 3)
  expect_equal(get_max_retries(list(config = Config(max_retries = 0))), 0)

  svc <- set_config(list(), list(region = "us-east-1"))
  expect_true(svc$.internal$config$max_retries == 3)
})

test_that("AWS_MAX_ATTEMPTS applies unless max_retries or max_attempts is given", {
  withr::local_envvar(c(AWS_RETRY_MODE = "", AWS_MAX_ATTEMPTS = "2"))
  cfg <- function(...) {
    set_config(list(), list(region = "us-east-1", ...))$.internal$config
  }
  expect_true(cfg()$max_retries == 1)
  expect_true(cfg(max_retries = 7)$max_retries == 7)
  expect_true(cfg(max_attempts = 5)$max_retries == 4)
})

test_that("each client gets its own retry state", {
  a <- set_config(list(), list(region = "us-east-1"))
  b <- set_config(list(), list(region = "us-east-1"))
  expect_false(identical(
    a$.internal$config$retry_state,
    b$.internal$config$retry_state
  ))
})
