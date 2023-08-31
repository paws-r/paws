########################################################################
# check_if_retryable
########################################################################

aws_dummy_error <- function(msg, status_code, error_response) {
  http_class <- sprintf("http_%s", status_code)
  structure(
    list(
      message = msg,
      status_code = status_code,
      error_response = error_response
    ),
    class = c("paws_error", http_class, "error", "condition"),
    status_code = status_code,
    error_response = error_response
  )
}

test_that("check error response codes", {
  for (code in retryable_codes) {
    error <- aws_dummy_error("foo bar", 400, list("Code" = code))
    expect_true(check_if_retryable(error))
  }

  for (code in retryable_codes) {
    error <- aws_dummy_error("foo bar", 400, list("__type" = code))
    expect_true(check_if_retryable(error))
  }
  error <- aws_dummy_error("foo bar", 400, list("Code" = "zoo"))
  expect_false(check_if_retryable(error))
})

test_that("check error status_code", {
  for (status_code in c(500, 502, 503, 504)) {
    error <- aws_dummy_error("foo bar", status_code, list("Code" = "foo"))
    expect_true(check_if_retryable(error))
  }
})

########################################################################
# exp_back_off
########################################################################

test_that("check exponential back off", {
  error <- aws_dummy_error("foo bar", 400, list("Code" = "zoo"))
  mock_sys_sleep <- mock2()

  mockery::stub(exp_back_off, "Sys.sleep", mock_sys_sleep)
  exp_back_off(error, 1, 2)
  expect_true(mock_arg(mock_sys_sleep)[[1]] < 20)
})

test_that("check exponential back off iteration greater 20", {
  error <- aws_dummy_error("foo bar", 400, list("Code" = "zoo"))
  mock_sys_sleep <- mock2()

  mockery::stub(exp_back_off, "Sys.sleep", mock_sys_sleep)
  exp_back_off(error, 200, 201)
  expect_true(mock_arg(mock_sys_sleep)[[1]] == 20)
})

test_that("check exponential back off raise error", {
  error <- aws_dummy_error("foo bar", 400, list("Code" = "zoo"))
  expect_error(
    exp_back_off(error, 1, 1)
  )
})
