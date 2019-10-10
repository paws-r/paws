context("Configuration")

test_that("get_config", {
  expected <- list(foo = 123)

  svc <- list(
    .internal = list(
      config = expected
    ),
    operation = function() {
      config <- get_config()
      config
    }
  )

  actual <- svc$operation()
  expect_equal(actual, expected)

  operation <- svc$operation
  expect_equal(operation(), list())

  f <- function() {
    svc$operation()
  }
  expect_equal(f(), expected)

  g <- function() {
    svc <- list(
      .internal = list(
        config = list(bar = 456)
      ),
      operation = function() {
        config <- get_config()
        config
      }
    )
    svc$operation()
  }
  expect_equal(g(), list(bar = 456))
})

test_that("parse_config", {
  actual <- parse_config(
    list(
      region = "foo",
      endpoint = "bar"
    )
  )
  expect_equivalent(actual$region, "foo")
  expect_equivalent(actual$endpoint, "bar")

  expect_error(parse_config(list(foo = 123)))
})
