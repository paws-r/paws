test_that("env_provider", {
  Sys.setenv(
    "AWS_ACCESS_KEY_ID" = "foo",
    "AWS_SECRET_ACCESS_KEY" = "bar"
  )
  creds <- env_provider()
  expect_equal(creds$access_key_id, "foo")
  expect_equal(creds$secret_access_key, "bar")

  Sys.setenv(
    "AWS_ACCESS_KEY_ID" = "foo",
    "AWS_SECRET_ACCESS_KEY" = "bar",
    "AWS_SESSION_TOKEN" = "foobar"
  )
  creds <- env_provider()
  expect_equal(creds$access_key_id, "foo")
  expect_equal(creds$secret_access_key, "bar")
  expect_equal(creds$session_token, "foobar")

  Sys.setenv(
    "AWS_ACCESS_KEY_ID" = "",
    "AWS_SECRET_ACCESS_KEY" = "",
    "AWS_SESSION_TOKEN" = ""
  )
  creds <- env_provider()
  expect_null(creds)
})

test_that("get_creds_from_sts_resp()", {
  test_access_key_id <- "AccessKeyId"
  test_secret_access_key <- "SecretAccessKey"
  test_session_token <-  "SessionToken"
  test_expiration <- structure(1136214245, class = c("POSIXct", "POSIXt"), tzone = "GMT")

  test_response <- list(
    Credentials = list(
      AccessKeyId = test_access_key_id,
      SecretAccessKey = test_secret_access_key,
      SessionToken = test_session_token,
      Expiration = test_expiration
    )
  )

  expected_creds <- list(
    access_key_id = test_access_key_id,
    secret_access_key = test_secret_access_key,
    session_token = test_session_token,
    expiration = as_timestamp(test_expiration, "iso8601")
  )

  test_creds <- get_creds_from_sts_resp(test_response)

  expect_equal(test_creds$access_key_id, test_access_key_id)
  expect_equal(test_creds$secret_access_key, test_secret_access_key)
  expect_equal(test_creds$session_token, test_session_token)
  expect_equal(test_creds$expiration, test_expiration)
})


