test_that("get_config", {
  svc <- set_config(
    svc = list(
      operation = function() get_config()
    ),
    cfgs = list(region = 123)
  )

  actual <- svc$operation()
  expect_equivalent(actual$region, 123)

  # Check if config is returned when executed in a `do.call`.
  expect_equivalent(do.call(svc$operation, list()), svc$operation())

  f <- function() {
    svc$operation()
  }
  expect_equivalent(f()$region, 123)

  g <- function() {
    svc <- set_config(
      svc = list(
        operation = function() get_config()
      ),
      cfgs = list(endpoint = 456)
    )
    svc$operation()
  }
  expect_equivalent(g()$endpoint, 456)

  operation <- svc$operation
  expect_equal(operation(), Config())
})

test_that("set_config", {
  svc <- list(
    f = function() "foo",
    g = function() 123,
    h = function() get_config()
  )
  a <- set_config(
    svc,
    list(
      region = "foo",
      endpoint = "bar"
    )
  )
  expect_equal(a$f(), "foo")
  expect_equal(a$g(), 123)

  config <- a$h()
  expect_equivalent(config$region, "foo")
  expect_equivalent(config$endpoint, "bar")

  expect_error(set_config(list(), list(foo = 123)))
})

test_that("get_region", {
  Sys.setenv(AWS_REGION = "foo")
  expect_equal(get_region(), "foo")
  expect_equal(get_region(NULL), "foo")
})

test_that("get_profile_name", {
  Sys.setenv(AWS_PROFILE = "bar")
  expect_equal(get_profile_name(), "bar")
  expect_equal(get_profile_name(NULL), "bar")
  expect_equal(get_profile_name("foo"), "foo")
})
