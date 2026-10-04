.s3 <- list()

# get s3_generate_presigned_post custom s3 function
custom_dir <- system.file("src", "custom", package = "make.paws")
source(file.path(custom_dir, "s3.R"), local = TRUE)

# import private methods from paws.common
get_config <- get("get_config", asNamespace("paws.common"))
new_request <- get("new_request", asNamespace("paws.common"))

decode_policy <- function(fields) {
  jsonlite::fromJSON(rawToChar(base64enc::base64decode(fields$policy)), simplifyVector = FALSE)
}

test_that("generate_presigned_post returns the expected url and fields", {
  skip_if_not_installed("paws.common")
  skip_if_not_installed("paws.storage")
  Sys.setenv("AWS_ACCESS_KEY_ID" = "DUMMY")
  Sys.setenv("AWS_SECRET_ACCESS_KEY" = "SECRETDUMMY")
  Sys.setenv("AWS_REGION" = "us-east-1")

  svc <- paws.common::set_config(list())
  svc$generate_presigned_post <- s3_generate_presigned_post
  result <- svc$generate_presigned_post(
    Bucket = "foo",
    Key = "bar.txt",
    Fields = list(acl = "public-read"),
    Conditions = list(list(acl = "public-read"))
  )

  expect_equal(result$url, "https://foo.s3.us-east-1.amazonaws.com/")
  expect_equal(result$fields$acl, "public-read")
  expect_equal(result$fields$key, "bar.txt")
  expect_equal(result$fields[["x-amz-algorithm"]], "AWS4-HMAC-SHA256")
  expect_match(
    result$fields[["x-amz-credential"]],
    "^DUMMY/\\d{8}/us-east-1/s3/aws4_request$"
  )
  expect_match(result$fields[["x-amz-date"]], "^\\d{8}T\\d{6}Z$")
  expect_match(result$fields[["x-amz-signature"]], "^[0-9a-f]{64}$")

  policy <- decode_policy(result$fields)
  expect_match(policy$expiration, "^\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}Z$")
  conditions <- lapply(policy$conditions, unlist)
  expect_true(any(vapply(conditions, function(c) identical(c, c(acl = "public-read")), logical(1))))
  expect_true(any(vapply(conditions, function(c) identical(c, c(bucket = "foo")), logical(1))))
  expect_true(any(vapply(conditions, function(c) identical(c, c(key = "bar.txt")), logical(1))))
})

test_that("generate_presigned_post handles a ${filename} key suffix", {
  Sys.setenv("AWS_ACCESS_KEY_ID" = "DUMMY")
  Sys.setenv("AWS_SECRET_ACCESS_KEY" = "SECRETDUMMY")
  Sys.setenv("AWS_REGION" = "us-east-1")

  svc <- paws.common::set_config(list())
  svc$generate_presigned_post <- s3_generate_presigned_post
  result <- svc$generate_presigned_post(Bucket = "foo", Key = "uploads/${filename}")

  # The literal key (including the ${filename} placeholder) is always set
  # as a field; only the condition differs for the ${filename} case.
  expect_equal(result$fields$key, "uploads/${filename}")

  policy <- decode_policy(result$fields)
  conditions <- policy$conditions
  found <- any(vapply(
    conditions,
    function(c) is.null(names(c)) && length(c) == 3 && identical(unlist(c), c("starts-with", "$key", "uploads/")),
    logical(1)
  ))
  expect_true(found)
})

test_that("generate_presigned_post includes a session token when present", {
  Sys.setenv("AWS_ACCESS_KEY_ID" = "DUMMY")
  Sys.setenv("AWS_SECRET_ACCESS_KEY" = "SECRETDUMMY")
  Sys.setenv("AWS_SESSION_TOKEN" = "DUMMYTOKEN")
  Sys.setenv("AWS_REGION" = "us-east-1")
  withr::defer(Sys.unsetenv("AWS_SESSION_TOKEN"))

  svc <- paws.common::set_config(list())
  svc$generate_presigned_post <- s3_generate_presigned_post
  result <- svc$generate_presigned_post(Bucket = "foo", Key = "bar.txt")

  expect_equal(result$fields[["x-amz-security-token"]], "DUMMYTOKEN")
  policy <- decode_policy(result$fields)
  conditions <- lapply(policy$conditions, unlist)
  expect_true(any(vapply(
    conditions,
    function(c) identical(c, c(`x-amz-security-token` = "DUMMYTOKEN")),
    logical(1)
  )))
})

test_that("generate_presigned_post validates its arguments", {
  Sys.setenv("AWS_ACCESS_KEY_ID" = "DUMMY")
  Sys.setenv("AWS_SECRET_ACCESS_KEY" = "SECRETDUMMY")
  Sys.setenv("AWS_REGION" = "us-east-1")

  svc <- paws.common::set_config(list())
  svc$generate_presigned_post <- s3_generate_presigned_post

  expect_error(svc$generate_presigned_post(Bucket = "foo", Key = "bar.txt", ExpiresIn = 0))
  expect_error(svc$generate_presigned_post(Bucket = "foo", Key = "bar.txt", Fields = "not-a-list"))
})
