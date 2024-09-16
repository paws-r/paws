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
  expect_lt(mock_arg(mock_sys_sleep)[[1]], 20)
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

########################################################################
# retries
########################################################################

dummy_req_error <- function(req, code, msg, status) {
  req$error <- Error(
    code = code,
    message = msg,
    status_code = status,
    error_response = list(Code = code)
  )
  return(req)
}

op <- Operation(name = "OperationName")
svc1 <- Client(config = Config())

op_output <- Structure(
  Timestamp = Scalar(type = "timestamp")
)

req1 <- new_request(svc1, op, NULL, op_output)

test_that("no error", {
  resp <- standard_retry_handler(req1)
  expect_equal(resp, req1)
})

test_that("default number of retries", {
  mock_unmarshal_error <- mock2(
    dummy_req_error(req1, "ThrottledException", "foo", 400),
    dummy_req_error(req1, "ThrottledException", "foo", 400),
    dummy_req_error(req1, "ThrottledException", "foo", 400),
    dummy_req_error(req1, "ThrottledException", "foo", 400)
  )
  mock_sign <- mock2(side_effect = function(x) x)
  mock_send <- mock2(side_effect = function(x) x)
  mock_unmarshal_meta <- mock2(side_effect = function(x) x)
  mock_validate_response <- mock2(side_effect = function(x) x)

  mock_exp_back_off <- mock2()

  mockery::stub(standard_retry_handler, "unmarshal_error", mock_unmarshal_error)
  mockery::stub(standard_retry_handler, "sign", mock_sign)
  mockery::stub(standard_retry_handler, "send", mock_send)
  mockery::stub(standard_retry_handler, "unmarshal_meta", mock_unmarshal_meta)
  mockery::stub(standard_retry_handler, "validate_response", mock_validate_response)
  mockery::stub(standard_retry_handler, "exp_back_off", mock_exp_back_off)


  standard_retry_handler(
    dummy_req_error(req1, "ThrottledException", "foo", 400)
  )

  last_args <- mock_arg(mock_exp_back_off)
  expect_equal(mock_call_no(mock_exp_back_off), 4)
  expect_equal(last_args[[2]], last_args[[3]])
})

test_that("default number of retries", {
  mock_unmarshal_error <- mock2(side_effect = function(x) x)
  mock_sign <- mock2(req1, req1, req1)
  mock_send <- mock2(
    dummy_req_error(req1, "ThrottledException", "foo", 400),
    dummy_req_error(req1, "ThrottledException", "foo", 400),
    dummy_req_error(req1, "ThrottledException", "foo", 400)
  )
  mock_unmarshal_meta <- mock2(side_effect = function(x) x)
  mock_validate_response <- mock2(side_effect = function(x) x)

  mock_exp_back_off <- mock2()

  mockery::stub(standard_retry_handler, "unmarshal_error", mock_unmarshal_error)
  mockery::stub(standard_retry_handler, "sign", mock_sign)
  mockery::stub(standard_retry_handler, "send", mock_send)
  mockery::stub(standard_retry_handler, "unmarshal_meta", mock_unmarshal_meta)
  mockery::stub(standard_retry_handler, "validate_response", mock_validate_response)
  mockery::stub(standard_retry_handler, "exp_back_off", mock_exp_back_off)


  standard_retry_handler(
    dummy_req_error(req1, "ThrottledException", "foo", 400)
  )

  last_args <- mock_arg(mock_exp_back_off)
  expect_equal(mock_call_no(mock_exp_back_off), 4)
  expect_equal(last_args[[2]], last_args[[3]])
})

test_that("non retryable error", {
  mock_unmarshal_error <- mock2(side_effect = function(x) x)
  mock_sign <- mock2(req1, req1, req1)
  mock_send <- mock2(
    dummy_req_error(req1, "ThrottledException", "foo", 400),
    dummy_req_error(req1, "ThrottledException", "foo", 400),
    dummy_req_error(req1, "DUMMY", "non retryable error", 400)
  )
  mock_unmarshal_meta <- mock2(side_effect = function(x) x)
  mock_validate_response <- mock2(side_effect = function(x) x)

  mock_exp_back_off <- mock2()

  mockery::stub(standard_retry_handler, "unmarshal_error", mock_unmarshal_error)
  mockery::stub(standard_retry_handler, "sign", mock_sign)
  mockery::stub(standard_retry_handler, "send", mock_send)
  mockery::stub(standard_retry_handler, "unmarshal_meta", mock_unmarshal_meta)
  mockery::stub(standard_retry_handler, "validate_response", mock_validate_response)
  mockery::stub(standard_retry_handler, "exp_back_off", mock_exp_back_off)

  expect_error(
    standard_retry_handler(
      dummy_req_error(req1, "ThrottledException", "foo", 400)
    ),
    "non retryable error"
  )
  last_args <- mock_arg(mock_exp_back_off)
  expect_equal(mock_call_no(mock_exp_back_off), 3)
  expect_true(last_args[[2]] != last_args[[3]])
})

test_that("succesful retry", {
  mock_unmarshal_error <- mock2(side_effect = function(x) x)
  mock_sign <- mock2(req1, req1, req1)
  mock_send <- mock2(
    dummy_req_error(req1, "ThrottledException", "foo", 400),
    dummy_req_error(req1, "ThrottledException", "foo", 400),
    req1
  )
  mock_unmarshal_meta <- mock2(side_effect = function(x) x)
  mock_validate_response <- mock2(side_effect = function(x) x)

  mock_exp_back_off <- mock2()

  mockery::stub(standard_retry_handler, "unmarshal_error", mock_unmarshal_error)
  mockery::stub(standard_retry_handler, "sign", mock_sign)
  mockery::stub(standard_retry_handler, "send", mock_send)
  mockery::stub(standard_retry_handler, "unmarshal_meta", mock_unmarshal_meta)
  mockery::stub(standard_retry_handler, "validate_response", mock_validate_response)
  mockery::stub(standard_retry_handler, "exp_back_off", mock_exp_back_off)

  resp <- standard_retry_handler(
    dummy_req_error(req1, "ThrottledException", "foo", 400)
  )
  last_args <- mock_arg(mock_exp_back_off)
  expect_equal(mock_call_no(mock_exp_back_off), 3)
  expect_true(last_args[[2]] != last_args[[3]])
  expect_equal(resp, req1)
})

svc2 <- Client(config = Config(max_retries = 0))
req2 <- new_request(svc2, op, NULL, op_output)

test_that("no retries", {
  mock_unmarshal_error <- mock2(side_effect = function(x) x)
  mock_exp_back_off <- mock2()

  mockery::stub(standard_retry_handler, "unmarshal_error", mock_unmarshal_error)
  mockery::stub(standard_retry_handler, "exp_back_off", mock_exp_back_off)

  expect_error(
    standard_retry_handler(
      dummy_req_error(req2, "ThrottledException", "foo", 400)
    ),
    "foo"
  )

  expect_equal(mock_call_no(mock_exp_back_off), 0)
})


svc2 <- Client(config = Config(max_retries = 0))
req2 <- new_request(svc2, op, NULL, op_output)

test_that("no retries", {
  mock_unmarshal_error <- mock2(side_effect = function(x) x)
  mock_exp_back_off <- mock2()

  mockery::stub(standard_retry_handler, "unmarshal_error", mock_unmarshal_error)
  mockery::stub(standard_retry_handler, "exp_back_off", mock_exp_back_off)

  expect_error(
    standard_retry_handler(
      dummy_req_error(req2, "ThrottledException", "foo", 400)
    ),
    "foo"
  )

  expect_equal(mock_call_no(mock_exp_back_off), 0)
})


svc3 <- Client(config = Config(max_retries = 1))
req3 <- new_request(svc3, op, NULL, op_output)

test_that("1 retries", {
  mock_unmarshal_error <- mock2(side_effect = function(x) x)
  mock_sign <- mock2(req3, req3, req3)
  mock_send <- mock2(
    dummy_req_error(req3, "ThrottledException", "foo", 400)
  )
  mock_unmarshal_meta <- mock2(side_effect = function(x) x)
  mock_validate_response <- mock2(side_effect = function(x) x)

  mock_exp_back_off <- mock2()

  mockery::stub(standard_retry_handler, "unmarshal_error", mock_unmarshal_error)
  mockery::stub(standard_retry_handler, "sign", mock_sign)
  mockery::stub(standard_retry_handler, "send", mock_send)
  mockery::stub(standard_retry_handler, "unmarshal_meta", mock_unmarshal_meta)
  mockery::stub(standard_retry_handler, "validate_response", mock_validate_response)
  mockery::stub(standard_retry_handler, "exp_back_off", mock_exp_back_off)


  standard_retry_handler(
    dummy_req_error(req3, "ThrottledException", "foo", 400)
  )

  last_args <- mock_arg(mock_exp_back_off)
  expect_equal(mock_call_no(mock_exp_back_off), 2)
  expect_equal(last_args[[2]], last_args[[3]])
})
