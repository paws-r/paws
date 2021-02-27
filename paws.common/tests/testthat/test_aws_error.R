test_that("error conditions have correct classes", {
  error_list <- list(
    code = "foo",
    message = "bar",
    status_code = 404,
    error_response = list(a="baz", b="pizza", c=list(1,2))
  )
  error_condition <- aws_error(error_list)

  expect_equal(error_condition$message, "foo (HTTP 404). bar")
  expect_equal(attributes(error_condition)$status_code, 404)
  expect_equal(attributes(error_condition)$error_response$c[[1]], 1)
  expect_identical(attributes(error_condition)$error_response, list(a="baz", b="pizza", c=list(1,2)))

  expect_error(stop(error_condition))
  expect_error(stop(error_condition), class = "http_error")
  expect_error(stop(error_condition), class = "http_400")
  expect_error(stop(error_condition), class = "http_404")
})

test_that("error with NA status codes don't have incorrect classes", {
  error_list <- list(
    code = "foo",
    message = "bar",
    status_code = NA_integer_,
    error_response = list(a="baz", b="pizza", c=list(1,2))
  )
  error_condition <- aws_error(error_list)

  expect_equal(error_condition$message, "foo (HTTP NA). bar")
  expect_identical(attributes(error_condition)$status_code, NA_integer_)
  expect_equal(attributes(error_condition)$error_response$c[[1]], 1)
  expect_identical(attributes(error_condition)$error_response, list(a="baz", b="pizza", c=list(1,2)))

  expect_error(stop(error_condition))
  expect_error(stop(error_condition), class = "http_error")
  expect_false(inherits(error_condition, "http_NA"))
  expect_false(inherits(error_condition, "http_NA_integer"))
  expect_false(inherits(error_condition, "http_na"))
  expect_false(inherits(error_condition, "http_na_integer"))
})
