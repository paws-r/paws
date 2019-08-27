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

test_that("resolver_endpoint old endpoint format handling", {
  endpoints <- list(
    "*" = "{service}.{region}.amazonaws.com",
    "us-east-*" = "https://{service}.amazonaws.com",
    "us-west-*" = "http://us-west.amazonaws.com"
  )

  r <- resolver_endpoint("service", "region", endpoints)
  expect_equal(r$endpoint, "https://service.region.amazonaws.com")
  expect_equal(r$signing_region, "region")
})

test_that("client_config uses custom endpoint", {
  Sys.setenv("AWS_REGION" = "region")
  cfgs <- list(endpoint = "https://test.us-west-2.amazonaws.com")
  client_cfg <- client_config(
    service_name = "dynamodb",
    endpoints = list("*" = list(endpoint = "dynamodb.{region}.amazonaws.com",
                                global = FALSE)
                     ),
    cfgs = cfgs
  )
  expect_equal("https://test.us-west-2.amazonaws.com",
               client_cfg$endpoint)
})
