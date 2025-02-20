test_that("resolver_endpoint", {
  endpoints <- list(
    "aws-global" = list(endpoint = "service.amazonaws.com", global = TRUE),
    "us-west-1" = list(endpoint = "service.amazonaws.com", global = TRUE),
    "us-east-1" = list(endpoint = "service.amazonaws.com", global = FALSE),
    "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
      endpoint = "service.{region}.amazonaws.com",
      global = FALSE
    )
  )

  r <- resolver_endpoint("service", "region", endpoints)
  expect_equal(r$endpoint, "https://service.region.amazonaws.com")
  expect_equal(r$signing_region, "region")

  r <- resolver_endpoint("service", "us-east-1", endpoints)
  expect_equal(r$endpoint, "https://service.amazonaws.com")
  expect_equal(r$signing_region, "us-east-1")

  r <- resolver_endpoint("service", "us-west-2", endpoints)
  expect_equal(r$endpoint, "https://service.us-west-2.amazonaws.com")
  expect_equal(r$signing_region, "us-west-2")

  r <- resolver_endpoint("service", "aws-global", endpoints)
  expect_equal(r$endpoint, "https://service.amazonaws.com")
  expect_equal(r$signing_region, "aws-global")
})

test_that("resolver_endpoint no region and no global region found", {
  endpoints <- list(
    "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
      endpoint = "service.{region}.amazonaws.com",
      global = FALSE
    )
  )

  expect_error(
    resolver_endpoint("service", "aws-global", endpoints),
    "No region provided and no global region found."
  )
})

test_that("resolver_endpoint service sts_regional_endpoint", {
  endpoints <- list(
    "aws-global" = list(endpoint = "service.amazonaws.com", global = TRUE),
    "us-west-1" = list(endpoint = "service.amazonaws.com", global = TRUE),
    "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
      endpoint = "service.{region}.amazonaws.com",
      global = FALSE
    )
  )

  r <- resolver_endpoint("sts", "us-east-1", endpoints, "regional")
  expect_equal(r$endpoint, "https://sts.us-east-1.amazonaws.com")
  expect_equal(r$signing_region, "us-east-1")

  r <- resolver_endpoint("sts", "aws-global", endpoints, "legacy")
  expect_equal(r$endpoint, "https://sts.amazonaws.com")
  expect_equal(r$signing_region, "us-east-1")
})

test_that("resolver_endpoint service s3 default region", {
  endpoints <- list(
    "aws-global" = list(endpoint = "s3.amazonaws.com", global = TRUE),
    "us-west-1" = list(endpoint = "s3.amazonaws.com", global = TRUE),
    "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
      endpoint = "s3.{region}.amazonaws.com",
      global = FALSE
    )
  )

  r <- resolver_endpoint("s3", "aws-global", endpoints)
  expect_equal(r$endpoint, "https://s3.amazonaws.com")
  expect_equal(r$signing_region, "aws-global")
})

test_that("resolver_endpoint known partition name", {
  endpoints <- list(
    "aws-global" = list(endpoint = "s3.amazonaws.com", global = TRUE),
    "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
      endpoint = "s3.{region}.amazonaws.com",
      global = FALSE,
      signing_region = "us-east-1"
    ),
    "^cn\\-\\w+\\-\\d+$" = list(
      endpoint = "s3.{region}.amazonaws.cn",
      global = FALSE,
      signing_region = "cn-west-2"
    )
  )

  r <- resolver_endpoint("s3", "aws-global", endpoints, partition_name = "aws")
  expect_equal(r$endpoint, "https://s3.us-east-1.amazonaws.com")
  expect_equal(r$signing_region, "us-east-1")

  r <- resolver_endpoint("s3", "aws-global", endpoints, partition_name = "aws-cn")
  expect_equal(r$endpoint, "https://s3.cn-west-2.amazonaws.cn")
  expect_equal(r$signing_region, "cn-west-2")

  # unknown partition name defaults to aws partition
  r <- resolver_endpoint("s3", "aws-global", endpoints, partition_name = "random")
  expect_equal(r$endpoint, "https://s3.us-east-1.amazonaws.com")
  expect_equal(r$signing_region, "us-east-1")
})

test_that("client_config uses custom endpoint", {
  Sys.setenv("AWS_REGION" = "region")
  cfgs <- Config()
  cfgs$endpoint <- "https://test.us-west-2.amazonaws.com"
  client_cfg <- client_config(
    service_name = "dynamodb",
    endpoints = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "dynamodb.{region}.amazonaws.com",
        global = FALSE
      )
    ),
    cfgs = cfgs
  )
  expect_equal("https://test.us-west-2.amazonaws.com", client_cfg$config$endpoint)
})

test_that("client_config uses custom region", {
  Sys.setenv("AWS_REGION" = "region")
  cfgs <- Config()
  cfgs$region <- "test_region"
  client_cfg <- client_config(
    service_name = "dynamodb",
    endpoints = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "dynamodb.{region}.amazonaws.com",
        global = FALSE
      )
    ),
    cfgs = cfgs,
    service_id = "foo"
  )
  expect_equal("test_region", client_cfg$config$region)
})

test_that("client_config uses custom credentials", {
  Sys.setenv("AWS_REGION" = "region")
  cfgs <- Config()
  cfgs$credentials$creds$access_key_id <- "test_key"
  cfgs$credentials$creds$secret_access_key <- "test_secret"
  cfgs$credentials$profile <- "test_profile"

  client_cfg <- client_config(
    service_name = "dynamodb",
    endpoints = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "dynamodb.{region}.amazonaws.com",
        global = FALSE
      )
    ),
    cfgs = cfgs,
    service_id = "foo"
  )
  expect_equal("test_key", client_cfg$config$credentials$creds$access_key_id)
  expect_equal("test_secret", client_cfg$config$credentials$creds$secret_access_key)
  expect_equal("test_profile", client_cfg$config$credentials$profile)
})
