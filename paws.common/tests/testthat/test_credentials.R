context("Credentials")

test_that("credentials are provided", {
  creds <- list(
    access_key_id = "foo",
    secret_access_key = "bar"
  )

  expect_true(is_credentials_provided(creds))
})

test_that("credentials not provided", {
  creds <- NULL

  expect_false(is_credentials_provided(creds))

  creds <- list(
    access_key_id = "",
    secret_access_key = "bar"
  )

  expect_false(is_credentials_provided(creds))

  creds <- list(
    access_key_id = "foo",
    secret_access_key = ""
  )

  expect_false(is_credentials_provided(creds))

  creds <- list(
    access_key_id = "",
    secret_access_key = ""
  )

  expect_false(is_credentials_provided(creds))
})
