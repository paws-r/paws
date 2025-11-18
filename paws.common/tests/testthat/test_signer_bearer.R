# Test bearer token authentication

# Cleanup any bearer tokens that might be lingering in the environment and cache
Sys.unsetenv(c(
  "AWS_BEARER_TOKEN",
  "AWS_BEARER_TOKEN_BEDROCK",
  "AWS_BEARER_TOKEN_BEDROCK_EXPIRATION",
  "AWS_BEARER_TOKEN_EXPIRATION"
))

# Clear all caches (includes os_env_cache and bearer_token_cache)
paws_reset_cache()

# Test bearer token environment provider
test_that("bearer_token_env_provider returns credentials with token", {
  Sys.setenv("AWS_BEARER_TOKEN" = "test-bearer-token-123")
  creds <- bearer_token_env_provider()

  expect_equal(creds$access_token, "test-bearer-token-123")
  expect_equal(creds$expiration, Inf)
  expect_equal(creds$provider_name, "BearerTokenEnvProvider")

  Sys.unsetenv("AWS_BEARER_TOKEN")
})

test_that("bearer_token_env_provider returns credentials with token and expiration", {
  test_expiration <- format(Sys.time() + 3600, "%Y-%m-%dT%H:%M:%SZ")
  Sys.setenv(
    "AWS_BEARER_TOKEN" = "test-bearer-token-456",
    "AWS_BEARER_TOKEN_EXPIRATION" = test_expiration
  )

  creds <- bearer_token_env_provider()

  expect_equal(creds$access_token, "test-bearer-token-456")
  expect_s3_class(creds$expiration, "POSIXct")
  expect_true(creds$expiration > Sys.time())

  Sys.unsetenv(c("AWS_BEARER_TOKEN", "AWS_BEARER_TOKEN_EXPIRATION"))
})

test_that("bearer_token_env_provider returns NULL when no token", {
  Sys.unsetenv("AWS_BEARER_TOKEN")
  creds <- bearer_token_env_provider()

  expect_null(creds)
})

# Test service-specific bearer token provider
test_that("get_bearer_token_for_service returns service-specific token", {
  # Save original values
  orig_bedrock <- Sys.getenv("AWS_BEARER_TOKEN_BEDROCK", unset = NA)
  orig_token <- Sys.getenv("AWS_BEARER_TOKEN", unset = NA)

  # Ensure cleanup happens
  on.exit({
    if (is.na(orig_bedrock)) {
      Sys.unsetenv("AWS_BEARER_TOKEN_BEDROCK")
    } else {
      Sys.setenv("AWS_BEARER_TOKEN_BEDROCK" = orig_bedrock)
    }
    if (is.na(orig_token)) {
      Sys.unsetenv("AWS_BEARER_TOKEN")
    } else {
      Sys.setenv("AWS_BEARER_TOKEN" = orig_token)
    }
    paws_reset_cache()
  }, add = TRUE)

  Sys.setenv(
    "AWS_BEARER_TOKEN_BEDROCK" = "bedrock-specific-token",
    "AWS_BEARER_TOKEN" = "generic-token"
  )

  creds <- get_bearer_token_for_service("bedrock")

  expect_equal(creds$access_token, "bedrock-specific-token")
  expect_equal(creds$provider_name, "BearerTokenServiceProvider")
})

test_that("get_bearer_token_for_service falls back to generic token", {
  withr::local_envvar(list(
    "AWS_BEARER_TOKEN" = "generic-token",
    "AWS_BEARER_TOKEN_BEDROCK" = NA,
    "AWS_BEARER_TOKEN_BEDROCK_EXPIRATION" = NA
  ), .local_envir = environment())

  paws_reset_cache() # Clear caches AFTER setting env vars

  creds <- get_bearer_token_for_service("bedrock")

  expect_equal(creds$access_token, "generic-token")
})

test_that("get_bearer_token_for_service handles service-specific expiration", {
  test_expiration <- format(Sys.time() + 7200, "%Y-%m-%dT%H:%M:%SZ")

  withr::local_envvar(list(
    "AWS_BEARER_TOKEN_BEDROCK" = "bedrock-token",
    "AWS_BEARER_TOKEN_BEDROCK_EXPIRATION" = test_expiration,
    "AWS_BEARER_TOKEN" = NA
  ), .local_envir = environment())

  paws_reset_cache() # Clear caches AFTER setting env vars

  creds <- get_bearer_token_for_service("bedrock")

  expect_equal(creds$access_token, "bedrock-token")
  expect_s3_class(creds$expiration, "POSIXct")
  expect_true(creds$expiration > Sys.time())
})

test_that("get_bearer_token_for_service returns NULL when no tokens available", {
  withr::local_envvar(list(
    "AWS_BEARER_TOKEN" = NA,
    "AWS_BEARER_TOKEN_BEDROCK" = NA,
    "AWS_BEARER_TOKEN_BEDROCK_EXPIRATION" = NA
  ), .local_envir = environment())

  paws_reset_cache() # Clear caches AFTER setting env vars

  creds <- get_bearer_token_for_service("bedrock")

  expect_null(creds)
})

# Test supported services detection
test_that("get_bearer_auth_supported_services returns correct services", {
  services <- get_bearer_auth_supported_services()

  expect_true("bedrock" %in% services)
  expect_type(services, "character")
})

# Test bearer authentication signer
test_that("bearer_sign_request_handler sets Authorization header", {
  metadata <- list(
    endpoints = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "bedrock.{region}.amazonaws.com",
        global = FALSE
      )
    ),
    service_name = "bedrock"
  )

  test_creds <- Credentials(
    provider = list(function() {
      list(
        access_token = "my-bearer-token-xyz",
        expiration = Inf,
        provider_name = "TestProvider"
      )
    })
  )

  client <- new_service(metadata, new_handlers("restjson", "v4"), Config())
  client$config$credentials <- test_creds
  client$client_info$signing_region <- "us-east-1"

  op <- new_operation("InvokeModel", "POST", "/model/invoke", list())
  params <- list()
  data <- tag_add(list(), list(type = "structure"))
  req <- new_request(client, op, params, data)

  # Manually call bearer_sign_request_handler
  res <- bearer_sign_request_handler(req)

  actual <- res$http_request$header[["Authorization"]]
  expect_equal(actual, "Bearer my-bearer-token-xyz")
})

test_that("bearer_sign_request_handler errors when no token", {
  metadata <- list(
    endpoints = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "bedrock.{region}.amazonaws.com",
        global = FALSE
      )
    ),
    service_name = "bedrock"
  )

  test_creds <- Credentials(
    provider = list(function() {
      list(
        access_key_id = "AKID",
        secret_access_key = "SECRET",
        provider_name = "TestProvider"
      )
    })
  )

  client <- new_service(metadata, new_handlers("restjson", "v4"), Config())
  client$config$credentials <- test_creds
  client$client_info$signing_region <- "us-east-1"

  op <- new_operation("InvokeModel", "POST", "/model/invoke", list())
  params <- list()
  data <- tag_add(list(), list(type = "structure"))
  req <- new_request(client, op, params, data)

  expect_error(
    bearer_sign_request_handler(req),
    "Bearer authentication requires an access token"
  )
})

test_that("bearer_sign_request_handler clears Authorization for anonymous", {
  metadata <- list(
    endpoints = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "bedrock.{region}.amazonaws.com",
        global = FALSE
      )
    ),
    service_name = "bedrock"
  )

  test_creds <- Credentials(
    anonymous = TRUE,
    provider = list(function() {
      list(
        access_token = "should-be-cleared",
        expiration = Inf,
        provider_name = "TestProvider"
      )
    })
  )

  client <- new_service(metadata, new_handlers("restjson", "v4"), Config())
  client$config$credentials <- test_creds
  client$client_info$signing_region <- "us-east-1"

  op <- new_operation("InvokeModel", "POST", "/model/invoke", list())
  params <- list()
  data <- tag_add(list(), list(type = "structure"))
  req <- new_request(client, op, params, data)

  res <- bearer_sign_request_handler(req)

  expect_equal(res$http_request$header[["Authorization"]], "")
})

# Test integration with V4 signer
test_that("v4_sign_request_handler uses bearer auth for bedrock with token", {
  withr::local_envvar(list(
    "AWS_BEARER_TOKEN" = "integration-test-token",
    "AWS_BEARER_TOKEN_BEDROCK" = NA,
    "AWS_BEARER_TOKEN_BEDROCK_EXPIRATION" = NA
  ), .local_envir = environment())

  paws_reset_cache() # Clear caches AFTER setting env vars

  metadata <- list(
    endpoints = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "bedrock.{region}.amazonaws.com",
        global = FALSE
      )
    ),
    service_name = "bedrock"
  )

  # Create credentials that will pick up the bearer token
  test_creds <- Credentials(
    provider = list(bearer_token_env_provider, function() {
      list(
        access_key_id = "AKID",
        secret_access_key = "SECRET",
        provider_name = "FallbackProvider"
      )
    })
  )

  client <- new_service(metadata, new_handlers("restjson", "v4"), Config())
  client$config$credentials <- test_creds
  client$client_info$signing_region <- "us-east-1"

  op <- new_operation("InvokeModel", "POST", "/model/invoke", list())
  params <- list()
  data <- tag_add(list(), list(type = "structure"))
  req <- new_request(client, op, params, data)

  # v4_sign_request_handler should detect bearer token and use bearer auth
  res <- v4_sign_request_handler(req)

  actual <- res$http_request$header[["Authorization"]]
  expect_equal(actual, "Bearer integration-test-token")
  # Should NOT contain AWS4-HMAC-SHA256
  expect_false(grepl("AWS4-HMAC-SHA256", actual))
})

test_that("v4_sign_request_handler uses V4 signing for S3 even with bearer token", {
  Sys.setenv("AWS_BEARER_TOKEN" = "should-not-be-used")

  metadata <- list(
    endpoints = list("us-east-1" = list(endpoint = "s3.amazonaws.com", global = FALSE)),
    service_name = "s3"
  )

  test_creds <- Credentials(
    provider = list(bearer_token_env_provider, function() {
      list(
        access_key_id = "AKID",
        secret_access_key = "SECRET",
        session_token = "SESSION",
        provider_name = "TestProvider"
      )
    })
  )

  client <- new_service(metadata, new_handlers("restxml", "s3"), Config())
  client$config$credentials <- test_creds
  client$client_info$signing_region <- "us-east-1"

  op <- new_operation("ListBuckets", "GET", "/", list())
  params <- list()
  data <- tag_add(list(), list(type = "structure"))
  req <- new_request(client, op, params, data)

  res <- v4_sign_request_handler(req)

  actual <- res$http_request$header[["Authorization"]]
  # Should use AWS SigV4, not bearer token
  expect_match(actual, "AWS4-HMAC-SHA256")
  expect_false(grepl("Bearer", actual))

  Sys.unsetenv("AWS_BEARER_TOKEN")
})

test_that("v4_sign_request_handler uses V4 signing when no bearer token for bedrock", {
  withr::local_envvar(list(
    "AWS_BEARER_TOKEN" = NA,
    "AWS_BEARER_TOKEN_BEDROCK" = NA,
    "AWS_BEARER_TOKEN_BEDROCK_EXPIRATION" = NA
  ), .local_envir = environment())

  paws_reset_cache() # Clear caches AFTER setting env vars

  metadata <- list(
    endpoints = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "bedrock.{region}.amazonaws.com",
        global = FALSE
      )
    ),
    service_name = "bedrock"
  )

  test_creds <- Credentials(
    provider = list(bearer_token_env_provider, function() {
      list(
        access_key_id = "AKID",
        secret_access_key = "SECRET",
        session_token = "SESSION",
        provider_name = "TestProvider"
      )
    })
  )

  client <- new_service(metadata, new_handlers("restjson", "v4"), Config())
  client$config$credentials <- test_creds
  client$client_info$signing_region <- "us-east-1"

  op <- new_operation("InvokeModel", "POST", "/model/invoke", list())
  params <- list()
  data <- tag_add(list(), list(type = "structure"))
  req <- new_request(client, op, params, data)

  res <- v4_sign_request_handler(req)

  actual <- res$http_request$header[["Authorization"]]
  # Should use AWS SigV4 since no bearer token
  expect_match(actual, "AWS4-HMAC-SHA256")
  expect_false(grepl("Bearer", actual))
})

test_that("v4_sign_request_handler uses service-specific token over generic token", {
  withr::local_envvar(list(
    "AWS_BEARER_TOKEN" = "generic-token",
    "AWS_BEARER_TOKEN_BEDROCK" = "bedrock-specific-token"
  ), .local_envir = environment())

  metadata <- list(
    endpoints = list(
      "^(us|eu|ap|sa|ca|me|af|il|mx)\\-\\w+\\-\\d+$" = list(
        endpoint = "bedrock.{region}.amazonaws.com",
        global = FALSE
      )
    ),
    service_name = "bedrock"
  )

  # Credentials will pick up generic token from bearer_token_env_provider
  test_creds <- Credentials(
    provider = list(bearer_token_env_provider, function() {
      list(
        access_key_id = "AKID",
        secret_access_key = "SECRET",
        provider_name = "FallbackProvider"
      )
    })
  )

  client <- new_service(metadata, new_handlers("restjson", "v4"), Config())
  client$config$credentials <- test_creds
  client$client_info$signing_region <- "us-east-1"

  op <- new_operation("InvokeModel", "POST", "/model/invoke", list())
  params <- list()
  data <- tag_add(list(), list(type = "structure"))
  req <- new_request(client, op, params, data)

  # v4_sign_request_handler should detect service-specific token and use it
  res <- v4_sign_request_handler(req)

  actual <- res$http_request$header[["Authorization"]]
  # Should use service-specific token, not generic
  expect_equal(actual, "Bearer bedrock-specific-token")
  expect_false(grepl("generic-token", actual))
})
