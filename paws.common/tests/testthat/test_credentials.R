test_that("credentials are provided", {
  creds <- list(access_key_id = "foo", secret_access_key = "bar")

  expect_true(is_credentials_provided(creds))
})

test_that("credentials not provided", {
  creds <- NULL

  expect_false(is_credentials_provided(creds))

  creds <- Creds(access_key_id = "", secret_access_key = "bar")

  expect_false(is_credentials_provided(creds))

  creds <- Creds(access_key_id = "foo", secret_access_key = "")

  expect_false(is_credentials_provided(creds))

  creds <- Creds(access_key_id = "", secret_access_key = "")

  expect_false(is_credentials_provided(creds))
})

test_that("credentials expired", {
  creds <- Creds(access_key_id = "foo", secret_access_key = "bar", expiration = 1000)

  expect_false(is_credentials_provided(creds))

  creds <- Creds(
    access_key_id = "foo",
    secret_access_key = "bar",
    expiration = Sys.time() - 5 * 60
  )

  expect_false(is_credentials_provided(creds))

  creds <- Creds(
    access_key_id = "foo",
    secret_access_key = "bar",
    expiration = Sys.time() + 30 * 60
  )

  expect_true(is_credentials_provided(creds))

  creds <- Creds(access_key_id = "foo", secret_access_key = "bar", expiration = Inf)

  expect_true(is_credentials_provided(creds))

  creds <- Creds(access_key_id = "foo", secret_access_key = "bar", expiration = NA)

  expect_true(is_credentials_provided(creds))
})

#-------------------------------------------------------------------------------

# Example operation that gets credentials (if unavailable or expired) and
# returns the credentials.
f_get_credentials <- function() {
  cfg <- get_config()
  if (!is_credentials_provided(cfg$credentials$creds, window = 0)) {
    get_credentials(cfg$credentials) # sets credentials in service object as a side effect.
  }
  return(cfg)
}

# Example operation that does NOT get credentials but returns any that were
# previously found.
g_dont_get_credentials <- function() {
  cfg <- get_config()
  return(cfg)
}

credential_provider <- function() {
  list(
    access_key_id = "AKID",
    secret_access_key = "SECRET",
    session_token = "SESSION",
    expiration = Sys.time() + 5,
    provider_name = "StaticProvider"
  )
}

# Example service with two operations.
service <- function(config = list()) {
  svc <- list(
    get_credentials = f_get_credentials,
    dont_get_credentials = g_dont_get_credentials
  )
  svc <- set_config(svc, config)
  svc$.internal$config$credentials$provider <- list(credential_provider)
  return(svc)
}

test_that("credentials are cached", {
  # Use provided credentials.
  creds <- list(access_key_id = "foo", secret_access_key = "bar")
  svc <- service(config = list(credentials = list(creds = creds)))
  actual <- svc$get_credentials()

  expect_equal(
    actual$credentials$creds$access_key_id,
    creds$access_key_id,
    ignore_attr = TRUE
  )
  expect_equal(
    actual$credentials$creds$secret_access_key,
    creds$secret_access_key,
    ignore_attr = TRUE
  )

  # Use cached credentials.
  svc <- service()
  foo <- svc$get_credentials() # get the credentials
  actual <- svc$dont_get_credentials() # access the credentials found above

  expect_equal(actual$credentials$creds$access_key_id, "AKID", ignore_attr = TRUE)
  expect_equal(actual$credentials$creds$secret_access_key, "SECRET", ignore_attr = TRUE)
})

test_that("credentials refresh when expired", {
  svc <- service()

  # get and then use cached credentials
  f1 <- svc$get_credentials() # get the credentials
  expiration1 <- f1$credentials$creds$expiration
  Sys.sleep(1) # add a time gap between successive calls
  f2 <- svc$get_credentials() # access the credentials found above
  expiration2 <- f2$credentials$creds$expiration

  expect_equal(expiration1, expiration2)

  # wait until credentials expire then refresh
  Sys.sleep(5) # these credentials are set to expire after 5 seconds
  f3 <- svc$get_credentials() # refresh the credentials
  expiration3 <- f3$credentials$creds$expiration

  expect_true(expiration1 != expiration3)
})

test_that("check locate_credentials", {
  env <- list(
    "AWS_ACCESS_KEY_ID" = "foo",
    "AWS_SECRET_ACCESS_KEY" = "bar",
    "AWS_REGION" = "zoo"
  )
  do.call(Sys.setenv, env)

  actual <- locate_credentials()
  expect_equal(
    actual,
    list(
      access_key_id = "foo",
      secret_access_key = "bar",
      session_token = "",
      access_token = "",
      expiration = Inf,
      region = "zoo"
    )
  )

  Sys.unsetenv(names(env))
})

# Test bearer token credentials validation
test_that("bearer token credentials are provided", {
  creds <- Creds(access_token = "my-bearer-token")

  expect_true(is_credentials_provided(creds))
})

test_that("bearer token credentials not provided when token is empty", {
  creds <- Creds(access_token = "")

  expect_false(is_credentials_provided(creds))
})

test_that("bearer token credentials not provided when token is NULL", {
  creds <- Creds(access_token = NULL)

  expect_false(is_credentials_provided(creds))
})

test_that("bearer token credentials expired", {
  # Expired token (1 second in past)
  creds <- Creds(access_token = "token", expiration = 1000)

  expect_false(is_credentials_provided(creds))

  # Expired token (5 minutes in past)
  creds <- Creds(access_token = "token", expiration = Sys.time() - 5 * 60)

  expect_false(is_credentials_provided(creds))

  # Valid token (30 minutes in future)
  creds <- Creds(access_token = "token", expiration = Sys.time() + 30 * 60)

  expect_true(is_credentials_provided(creds))

  # Valid token (no expiration)
  creds <- Creds(access_token = "token", expiration = Inf)

  expect_true(is_credentials_provided(creds))
})

test_that("bearer token takes precedence over access keys", {
  # When both are present, bearer token should be validated first
  creds <- Creds(access_token = "valid-token", access_key_id = "", secret_access_key = "")

  expect_true(is_credentials_provided(creds))
})

test_that("falls back to access keys when no bearer token", {
  # When no bearer token, should validate access keys
  creds <- Creds(access_token = "", access_key_id = "AKID", secret_access_key = "SECRET")

  expect_true(is_credentials_provided(creds))
})

test_that("bearer token credential chain order", {
  # Test that bearer token provider comes before standard env provider
  env <- list(
    "AWS_BEARER_TOKEN" = "my-bearer-token",
    "AWS_ACCESS_KEY_ID" = "AKID",
    "AWS_SECRET_ACCESS_KEY" = "SECRET"
  )
  do.call(Sys.setenv, env)

  actual <- locate_credentials()

  # Should get bearer token, not access keys
  expect_equal(actual$access_token, "my-bearer-token")

  Sys.unsetenv(names(env))
})
