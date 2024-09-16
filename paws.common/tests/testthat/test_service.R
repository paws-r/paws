test_that("new_handlers", {
  contains <- function(list, object) {
    any(sapply(list$list, function(x) identical(x$fn, object)))
  }

  example <- list(list = list(list(fn = 1), list(fn = 2)))
  expect_true(contains(example, 1))
  expect_false(contains(example, 3))

  handlers <- new_handlers("ec2query", "v4")
  expect_named(handlers, names(Handlers()))
  expect_true(contains(handlers$unmarshal, ec2query_unmarshal))
  expect_true(contains(handlers$sign, v4_sign_request_handler))

  handlers <- new_handlers("jsonrpc", "v2")
  expect_true(contains(handlers$build, jsonrpc_build))
  expect_true(contains(handlers$sign, v2_sign_request_handler))

  expect_error(new_handlers("foo", "v4"))
  expect_error(new_handlers("ec2query", "foo"))
})

test_that("new_service", {
  metadata <- list(
    service_name = "foo",
    endpoints = list("region" = list(endpoint = "endpoint", global = FALSE)),
    service_id = "bar",
    api_version = "1",
    signing_name = "foobar",
    json_version = "2",
    target_prefix = "baz"
  )
  handlers <- new_handlers("restxml", "v4")
  cfgs <- Config()
  # new_service needs a region.
  Sys.setenv("AWS_REGION" = "region")
  service <- new_service(metadata, handlers, cfgs)

  expect_named(service$client_info, names(ClientInfo()))
  expect_named(service$config, names(Config()))
  expect_named(service$handlers, names(Handlers()))

  expect_equal(service$client_info$service_name, metadata$service_name)
  expect_equal(service$client_info$service_id, metadata$service_id)
  expect_equal(service$client_info$signing_name, metadata$signing_name)
})

test_that("new_service null cfgs", {
  metadata <- list(
    service_name = "foo",
    endpoints = list("region" = list(endpoint = "endpoint", global = FALSE)),
    service_id = "bar",
    api_version = "1",
    signing_name = "foobar",
    json_version = "2",
    target_prefix = "baz"
  )
  handlers <- new_handlers("restxml", "v4")
  # new_service needs a region.
  Sys.setenv("AWS_REGION" = "region")
  service <- new_service(metadata, handlers)

  expect_named(service$config, names(Config()))
  expect_equal(service$config$region, "region")
})

test_that("new_service adds customizations", {
  metadata <- list(
    service_name = "dynamodb",
    endpoints = list("*" = list(endpoint = "dynamodb.{region}.amazonaws.com", global = FALSE)),
    service_id = "DynamoDB",
    api_version = "2012-08-10",
    signing_name = NULL,
    json_version = "1.0",
    target_prefix = "DynamoDB_20120810"
  )
  handlers <- new_handlers("jsonrpc", "v4")
  cfgs <- Config()
  service <- new_service(metadata, handlers, cfgs)
  handler_names <- sapply(service$handlers$build$list, function(x) x$name)
  expect_true("disable_compression" %in% handler_names)
})

test_that("test custom config credentials take priority", {
  metadata <- list(
    service_name = "foo",
    endpoints = list("region" = list(endpoint = "endpoint", global = FALSE)),
    service_id = "bar",
    api_version = "1",
    signing_name = "foobar",
    json_version = "2",
    target_prefix = "baz"
  )
  handlers <- new_handlers("restxml", "v4")
  # Set env variables
  Sys.setenv("AWS_REGION" = "env_region")
  Sys.setenv("AWS_ACCESS_KEY_ID" = "env_key")
  Sys.setenv("AWS_SECRET_ACCESS_KEY" = "env_secret")
  Sys.setenv("AWS_PROFILE" = "env_profile")

  # Set custom config
  cfgs <- Config()
  cfgs$region <- "cfgs_region"
  cfgs$credentials$creds$access_key_id <- "cfgs_key"
  cfgs$credentials$creds$secret_access_key <- "cfgs_secret"
  cfgs$credentials$profile <- "cfgs_profile"
  service <- new_service(metadata, handlers, cfgs)

  expect_equal(service$config$region, "cfgs_region")
  expect_equal(service$config$credentials$creds$access_key_id, "cfgs_key")
  expect_equal(
    service$config$credentials$creds$secret_access_key,
    "cfgs_secret"
  )
  expect_equal(service$config$credentials$profile, "cfgs_profile")
})

test_that("test service endpoint config file with service present", {
  mock_get_config_file_path <- mock2("data_ini", cycle = TRUE)
  mockery::stub(check_config_file_endpoint, "get_config_file_path", mock_get_config_file_path)

  s3_endpoint <- check_config_file_endpoint("localstack", "s3")
  ec2_endpoint <- check_config_file_endpoint("localstack", "ec2")
  bob_endpoint <- check_config_file_endpoint("localstack", "bob")
  expect_equal(s3_endpoint, "http://localhost:9000")
  expect_equal(ec2_endpoint, "http://localhost:1234")
  expect_equal(bob_endpoint, "http://localhost:1234")
})

test_that("test service endpoint config file with service not present", {
  mock_get_config_file_path <- mock2("data_ini")
  mockery::stub(check_config_file_endpoint, "get_config_file_path", mock_get_config_file_path)

  endpoint <- check_config_file_endpoint("minio", "ec2")
  expect_null(endpoint)
})

test_that("test service endpoint environment variables", {
  Sys.setenv(
    "AWS_ENDPOINT_URL_BAR" = "http://localhost:9000",
    "AWS_ENDPOINT_URL_BAZ_CHO" = "http://localhost:9090",
    "AWS_ENDPOINT_URL" = "http://localhost:1234"
  )

  endpoint1 <- get_service_endpoint("foo", "bar")
  endpoint2 <- get_service_endpoint("foo", "baz cho")
  endpoint3 <- get_service_endpoint("foo", "zoo")

  expect_equal(endpoint1, "http://localhost:9000")
  expect_equal(endpoint2, "http://localhost:9090")
  expect_equal(endpoint3, "http://localhost:1234")

  Sys.unsetenv(c("AWS_ENDPOINT_URL_BAR", "AWS_ENDPOINT_URL_BAZ_CHO", "AWS_ENDPOINT_URL"))
})
