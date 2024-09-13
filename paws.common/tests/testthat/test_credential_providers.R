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
  test_session_token <- "SessionToken"
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

test_that("config_file_provider", {
  # Setup the expected creds for each profile
  profiles <- c("default", "env", "p1", "p2", "p3")
  creds <- lapply(profiles, function(profile) {
    return(Creds(
      access_key_id = paste0(profile, "Id"),
      secret_access_key = paste0(profile, "Secret")
    ))
  })
  names(creds) <- profiles

  envvars <- list(
    "AWS_CONFIG_FILE" = "test_config_ini",
    "AWS_ACCESS_KEY_ID" = creds$env$access_key_id,
    "AWS_SECRET_ACCESS_KEY" = creds$env$secret_access_key
  )
  withr::with_envvar(envvars, {
    # Test missing profile
    expect_null(config_file_provider("invalidProfile"))

    # Test default profile using credential_process
    expect_equal(config_file_provider(), creds$default)

    # Test profile using environment credential_source
    mock_get_assumed_role_creds <- mock2(creds$p1)
    local_mocked_bindings(
      get_assumed_role_creds = mock_get_assumed_role_creds,
    )
    expect_equal(config_file_provider("p1"), creds$p1)
    expect_equal(mock_arg(mock_get_assumed_role_creds)[1:3], list(
      "arn:aws:iam::p1_role", "p1_role_session", NULL
    ))
    expect_equal(
      mock_arg(mock_get_assumed_role_creds)[[4]]$access_key_id,
      creds$env$access_key_id
    )
    expect_equal(
      mock_arg(mock_get_assumed_role_creds)[[4]]$secret_access_key,
      creds$env$secret_access_key
    )

    # Test profile using web_identity_token
    mock_web_identity_creds <- mock2(creds$p2)
    local_mocked_bindings(
      get_assume_role_with_web_identity_creds = mock_web_identity_creds,
    )
    # mockery::stub(config_file_provider, "get_assume_role_with_web_identity_creds", mock_web_identity_creds)
    expect_equal(config_file_provider("p2"), creds$p2)
    expect_equal(mock_arg(mock_web_identity_creds), list(
      "arn:aws:iam::p2_role", "p2_role_session", "webtoken_for_p2"
    ))

    # Test profile using source_profile
    mock_get_web_identity_creds <- mock2(creds$p2)
    mock_get_assumed_role_creds <- mock2(creds$p3)
    local_mocked_bindings(
      get_assume_role_with_web_identity_creds = mock_get_web_identity_creds,
      get_assumed_role_creds = mock_get_assumed_role_creds
    )
    expect_equal(config_file_provider("p3"), creds$p3)
    expect_equal(mock_arg(mock_get_web_identity_creds), list(
      "arn:aws:iam::p2_role", "p2_role_session", "webtoken_for_p2"
    ))
    expect_equal(mock_arg(mock_get_assumed_role_creds), list(
      "arn:aws:iam::p3_role", "p3_role_session", NULL, creds$p2
    ))
  })
})
