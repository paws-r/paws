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
  cfgs <- Config()
  cfgs$endpoint <- "https://test.us-west-2.amazonaws.com"
  client_cfg <- client_config(
    service_name = "dynamodb",
    endpoints = list("*" = list(
      endpoint = "dynamodb.{region}.amazonaws.com",
      global = FALSE
    )),
    cfgs = cfgs
  )
  expect_equal(
    "https://test.us-west-2.amazonaws.com",
    client_cfg$config$endpoint
  )
})

test_that("client_config uses custom region", {
  Sys.setenv("AWS_REGION" = "region")
  cfgs <- Config()
  cfgs$region <- "test_region"
  client_cfg <- client_config(
    service_name = "dynamodb",
    endpoints = list("*" = list(
      endpoint = "dynamodb.{region}.amazonaws.com",
      global = FALSE
    )),
    cfgs = cfgs,
    service_id = "foo"
  )
  expect_equal(
    "test_region",
    client_cfg$config$region
  )
})

test_that("client_config uses custom credentials", {
  Sys.setenv("AWS_REGION" = "region")
  cfgs <- Config()
  cfgs$credentials$creds$access_key_id <- "test_key"
  cfgs$credentials$creds$secret_access_key <- "test_secret"
  cfgs$credentials$profile <- "test_profile"

  client_cfg <- client_config(
    service_name = "dynamodb",
    endpoints = list("*" = list(
      endpoint = "dynamodb.{region}.amazonaws.com",
      global = FALSE
    )),
    cfgs = cfgs,
    service_id = "foo"
  )
  expect_equal(
    "test_key",
    client_cfg$config$credentials$creds$access_key_id
  )
  expect_equal(
    "test_secret",
    client_cfg$config$credentials$creds$secret_access_key
  )
  expect_equal(
    "test_profile",
    client_cfg$config$credentials$profile
  )
})
