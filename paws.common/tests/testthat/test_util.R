test_that("is_empty", {
  expect_true(is_empty(NULL))
  expect_true(is_empty(""))
  expect_true(is_empty(NA_character_))
  expect_true(is_empty(NA_integer_))
  expect_true(is_empty(NA_real_))
  expect_true(is_empty(character(0)))
  expect_true(is_empty(logical(0)))
  expect_true(is_empty(numeric(0)))
  expect_true(is_empty(raw(0)))
  expect_true(is_empty(list()))
  expect_true(is_empty(list(list())))
  expect_true(is_empty(list(list(list(), list()))))

  expect_false(is_empty("foo"))
  expect_false(is_empty(123))
  expect_false(is_empty(TRUE))
  expect_false(is_empty(FALSE))
  expect_false(is_empty(charToRaw("foo")))
  expect_false(is_empty(list(1)))
  expect_false(is_empty(list(list(list(), list(1)))))
})

test_that("is_empty_xml", {
  expect_true(is_empty_xml(NA_character_))
  expect_true(is_empty_xml(character(0)))
  expect_true(is_empty(list()))
  expect_true(is_empty(list(list())))
  expect_true(is_empty(list(list(list(), list()))))

  expect_false(is_empty_xml("foo"))
  expect_false(is_empty_xml(""))
  expect_false(is_empty_xml(list(1)))
  expect_false(is_empty_xml(list(list(list(), list("")))))
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
