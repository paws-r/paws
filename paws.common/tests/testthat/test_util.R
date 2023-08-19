test_that("is_empty", {
  expect_equal(is_empty(NULL), TRUE)
  expect_equal(is_empty(""), TRUE)
  expect_equal(is_empty(NA_character_), TRUE)
  expect_equal(is_empty(NA_integer_), TRUE)
  expect_equal(is_empty(NA_real_), TRUE)
  expect_equal(is_empty(character(0)), TRUE)
  expect_equal(is_empty(logical(0)), TRUE)
  expect_equal(is_empty(numeric(0)), TRUE)
  expect_equal(is_empty(raw(0)), TRUE)
  expect_equal(is_empty(list()), TRUE)
  expect_equal(is_empty(list(list())), TRUE)
  expect_equal(is_empty(list(list(list(), list()))), TRUE)

  expect_equal(is_empty("foo"), FALSE)
  expect_equal(is_empty(123), FALSE)
  expect_equal(is_empty(TRUE), FALSE)
  expect_equal(is_empty(FALSE), FALSE)
  expect_equal(is_empty(charToRaw("foo")), FALSE)
  expect_equal(is_empty(list(1)), FALSE)
  expect_equal(is_empty(list(list(list(), list(1)))), FALSE)
})

test_that("is_empty_xml", {
  expect_equal(is_empty_xml(NA_character_), TRUE)
  expect_equal(is_empty_xml(character(0)), TRUE)
  expect_equal(is_empty(list()), TRUE)
  expect_equal(is_empty(list(list())), TRUE)
  expect_equal(is_empty(list(list(list(), list()))), TRUE)

  expect_equal(is_empty_xml("foo"), FALSE)
  expect_equal(is_empty_xml(""), FALSE)
  expect_equal(is_empty_xml(list(1)), FALSE)
  expect_equal(is_empty_xml(list(list(list(), list("")))), FALSE)
})

test_that("call_with_args", {
  foo <- function(a) {
    a
  }
  args <- list(a = 1, b = 2)
  expect_equal(call_with_args(foo, args), 1)

  foo <- function(a, b) {
    a + b
  }
  args <- list(a = 1, b = 2)
  expect_equal(call_with_args(foo, args), 3)

  foo <- function(a, b, c) {
    a + b
  }
  args <- list(a = 1, b = 2)
  expect_error(
    call_with_args(foo, args),
    "A parameter has no corresponding element in.*"
  )
})
