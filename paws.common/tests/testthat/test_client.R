context("Client & service initialization")

test_that("resolver_endpoint", {
  endpoints <- list(
    "*" = list(endpoint = "{service}.{region}.amazonaws.com", global = FALSE),
    "us-east-*" = list(endpoint = "https://{service}.amazonaws.com", global = FALSE),
    "us-west-*" = list(endpoint = "http://us-west.amazonaws.com", global = TRUE)
  )

  r <- resolver_endpoint("service", "region", endpoints)
  expect_equal(r$endpoint, "https://service.region.amazonaws.com")
  expect_equal(r$signing_region, "region")

  r <- resolver_endpoint("service", "us-east-1", endpoints)
  expect_equal(r$endpoint, "https://service.amazonaws.com")
  expect_equal(r$signing_region, "us-east-1")

  r <- resolver_endpoint("service", "us-west-2", endpoints)
  expect_equal(r$endpoint, "https://us-west.amazonaws.com")
  expect_equal(r$signing_region, "us-east-1")
})
