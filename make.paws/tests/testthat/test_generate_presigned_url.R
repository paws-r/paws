.s3 <- list()

# get s3_generate_presigned_url custom s3 function
custom_dir <- system.file("src", "custom", package = "make.paws")
source(file.path(custom_dir, "s3.R"), local = TRUE)

# import private methods from paws.common
get_config <- get("get_config", asNamespace("paws.common"))
new_request <- get("new_request", asNamespace("paws.common"))

test_that("check generated presigned url with different http_method", {
  skip_if_not_installed("paws.common")
  skip_if_not_installed("paws.storage")
  Sys.setenv("AWS_ACCESS_KEY_ID" = "DUMMY")
  Sys.setenv("AWS_SECRET_ACCESS_KEY" = "SECRETDUMMY")
  Sys.setenv("AWS_REGION" = "us-east-1")

  svc <- paws.common::set_config(list())
  svc$generate_presigned_url <- s3_generate_presigned_url
  actual <- svc$generate_presigned_url(
    client_method = "list_objects_v2",
    params = list(Bucket = "foo", Prefix = "bar"),
    http_method = "HTTP"
  )

  # Default is SigV4 (not the legacy "v1" query-auth scheme); see
  # s3_generate_presigned_url()'s signer default.
  expect_true(grepl(
    sprintf(
      "HTTP://%s.s3.us-east-1.amazonaws.com/\\?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=%s.*&X-Amz-Date=.*&X-Amz-Expires=3600&X-Amz-SignedHeaders=host&list-type=2&prefix=%s&X-Amz-Signature=.*",
      "foo",
      "DUMMY",
      "bar"
    ),
    actual
  ))
})

test_that("check generate_presigned_url falls back to the legacy v1 scheme when requested", {
  skip_if_not_installed("paws.common")
  skip_if_not_installed("paws.storage")
  Sys.setenv("AWS_ACCESS_KEY_ID" = "DUMMY")
  Sys.setenv("AWS_SECRET_ACCESS_KEY" = "SECRETDUMMY")
  Sys.setenv("AWS_REGION" = "us-east-1")

  svc <- paws.common::set_config(list(), cfgs = list(signature_version = "v1"))
  svc$generate_presigned_url <- s3_generate_presigned_url
  actual <- svc$generate_presigned_url(
    client_method = "list_objects_v2",
    params = list(Bucket = "foo", Prefix = "bar"),
    http_method = "HTTP"
  )

  expect_true(grepl(
    sprintf(
      "HTTP://%s.s3.us-east-1.amazonaws.com/\\?list-type=2&prefix=%s&AWSAccessKeyId=%s&Expires=.*?&Signature=.*",
      "foo",
      "bar",
      "DUMMY"
    ),
    actual
  ))
})

test_that("check generate_presigned_url with error in client_method", {
  skip_if_not_installed("paws.common")
  skip_if_not_installed("paws.storage")
  Sys.setenv("AWS_ACCESS_KEY_ID" = "DUMMY")
  Sys.setenv("AWS_SECRET_ACCESS_KEY" = "SECRETDUMMY")
  Sys.setenv("AWS_REGION" = "us-east-1")

  svc <- paws.common::set_config(list())
  svc$generate_presigned_url <- s3_generate_presigned_url
  expect_error(
    svc$generate_presigned_url(
      client_method = "AWS_HELLO",
      params = list(Bucket = "foo", Prefix = "bar")
    ),
    "Client does not have method: AWS_HELLO"
  )
})

test_that("check generate_presigned_url with wrong parameters", {
  Sys.setenv("AWS_ACCESS_KEY_ID" = "DUMMY")
  Sys.setenv("AWS_SECRET_ACCESS_KEY" = "SECRETDUMMY")
  Sys.setenv("AWS_REGION" = "us-east-1")

  svc <- paws.common::set_config(list())
  svc$generate_presigned_url <- s3_generate_presigned_url
  expect_error(
    svc$generate_presigned_url(
      client_method = "list_buckets",
      params = list(MadeUp = "foo")
    ),
    "Invalid parameter.*"
  )
})
