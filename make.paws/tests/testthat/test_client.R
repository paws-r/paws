context("Client & service initialization")

test_that("resolver_endpoint", {
  endpoints <- list(
    "*" = "{service}.{region}.amazonaws.com",
    "us-east-*" = "https://{service}.amazonaws.com",
    "us-west-*" = "http://us-west.amazonaws.com"
  )

  r <- resolver_endpoint("service", "region", endpoints)
  expect_equal(r, "https://service.region.amazonaws.com")

  r <- resolver_endpoint("service", "us-east-1", endpoints)
  expect_equal(r, "https://service.amazonaws.com")

  r <- resolver_endpoint("service", "us-west-2", endpoints)
  expect_equal(r, "https://us-west.amazonaws.com")
})
