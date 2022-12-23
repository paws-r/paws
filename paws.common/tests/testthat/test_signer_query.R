mock_request <- function(bucket, key, http_path) {
  list(
    operation = list(
      http_path = http_path
    ),
    params = list(
      Bucket = bucket,
      Key = key
    )
  )
}

http_paths <- c(
  "/{Bucket}",
  "/{Bucket}?foo",
  "/{Bucket}/{Key+}",
  "/{Bucket}/{Key+}?bar"
)

test_that("get auth path for standard bucket and key", {
  bucket <- "made-up"
  key <- "file"
  expect_out <- list(
    sprintf("/%s/", bucket),
    sprintf("/%s/", bucket),
    sprintf("/%s/%s", bucket, key),
    sprintf("/%s/%s", bucket, key)
  )

  for (i in seq_along(http_paths)) {
    actual <- get_auth(mock_request(bucket, key, http_paths[i]))
    expect_equal(actual, expect_out[[i]])
  }
})

test_that("get auth path with special characters #1", {
  bucket <- "made_up"
  key <- "path/file#"
  expect_out <- list(
    sprintf("/%s", bucket),
    sprintf("/%s", bucket),
    sprintf("/%s/%s", bucket, paws_url_encoder(key, "/-")),
    sprintf("/%s/%s", bucket, paws_url_encoder(key, "/~"))
  )

  for (i in seq_along(http_paths)) {
    actual <- get_auth(mock_request(bucket, key, http_paths[i]))
    expect_equal(actual, expect_out[[i]])
  }
})

test_that("get auth path with special characters #2", {
  bucket <- "made.up"
  key <- "path/file#"
  expect_out <- list(
    sprintf("/%s", bucket),
    sprintf("/%s", bucket),
    sprintf("/%s/%s", bucket, paws_url_encoder(key, "/-")),
    sprintf("/%s/%s", bucket, paws_url_encoder(key, "/~"))
  )

  for (i in seq_along(http_paths)) {
    actual <- get_auth(mock_request(bucket, key, http_paths[i]))
    expect_equal(actual, expect_out[[i]])
  }
})

test_that("get auth path with small bucket name", {
  bucket <- "hi"
  key <- "path/file#"
  expect_out <- list(
    sprintf("/%s", bucket),
    sprintf("/%s", bucket),
    sprintf("/%s/%s", bucket, paws_url_encoder(key, "/-")),
    sprintf("/%s/%s", bucket, paws_url_encoder(key, "/~"))
  )

  for (i in seq_along(http_paths)) {
    actual <- get_auth(mock_request(bucket, key, http_paths[i]))
    expect_equal(actual, expect_out[[i]])
  }
})

test_that("check standard generated presigned url", {
  Sys.setenv("AWS_ACCESS_KEY_ID" = "DUMMY")
  Sys.setenv("AWS_SECRET_ACCESS_KEY" = "SECRETDUMMY")
  Sys.setenv("AWS_REGION" = "us-east-1")

  s3 <- list()
  s3$generate_presigned_url <- generate_presigned_url
  actual <- s3$generate_presigned_url(
    client_method = "list_objects_v2",
    params = list(Bucket = "foo", Prefix = "bar")
  )

  expect_true(
    grepl(
      sprintf(
        "https://%s.s3.amazonaws.com/\\?list-type=2&prefix=%s&AWSAccessKeyId=%s&Expires=.*?&Signature=.*",
        "foo",
        "bar",
        "DUMMY"
      ),
      actual
    )
  )
})

test_that("check generated presigned url with different http_method", {
  Sys.setenv("AWS_ACCESS_KEY_ID" = "DUMMY")
  Sys.setenv("AWS_SECRET_ACCESS_KEY" = "SECRETDUMMY")
  Sys.setenv("AWS_REGION" = "us-east-1")

  s3 <- list()
  s3$generate_presigned_url <- generate_presigned_url
  actual <- s3$generate_presigned_url(
    client_method = "list_objects_v2",
    params = list(Bucket = "foo", Prefix = "bar"),
    http_method = "HTTP"
  )

  expect_true(
    grepl(
      sprintf(
        "HTTP://%s.s3.amazonaws.com/\\?list-type=2&prefix=%s&AWSAccessKeyId=%s&Expires=.*?&Signature=.*",
        "foo",
        "bar",
        "DUMMY"
      ),
      actual
    )
  )
})

test_that("check generate_presigned_url with query string arguments of interest", {
  Sys.setenv("AWS_ACCESS_KEY_ID" = "DUMMY")
  Sys.setenv("AWS_SECRET_ACCESS_KEY" = "SECRETDUMMY")
  Sys.setenv("AWS_REGION" = "us-east-1")

  s3 <- list()
  s3$generate_presigned_url <- generate_presigned_url
  actual <- s3$generate_presigned_url(
    client_method = "get_object",
    params = list(Bucket = "foo", Key = "bar", VersionId = "something_made_up#")
  )

  expect_true(
    grepl(
      sprintf(
        "https://%s.s3.amazonaws.com/%s\\?versionId=%s&AWSAccessKeyId=%s&Expires=.*?&Signature=.*",
        "foo",
        "bar",
        "something_made_up%23",
        "DUMMY"
      ),
      actual
    )
  )
})

test_that("check generate_presigned_url with error in client_method", {
  Sys.setenv("AWS_ACCESS_KEY_ID" = "DUMMY")
  Sys.setenv("AWS_SECRET_ACCESS_KEY" = "SECRETDUMMY")
  Sys.setenv("AWS_REGION" = "us-east-1")

  s3 <- list()
  s3$generate_presigned_url <- generate_presigned_url
  expect_error(
    s3$generate_presigned_url(
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

  s3 <- list()
  s3$generate_presigned_url <- generate_presigned_url
  expect_error(
    s3$generate_presigned_url(
      client_method = "list_buckets",
      params = list(MadeUp = "foo")
    ),
    "Invalid parameter.*"
  )
})
