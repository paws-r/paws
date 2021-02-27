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
