test_that("get_config", {
  svc <- set_config(
    svc = list(operation = function() get_config()),
    cfgs = list(region = "123")
  )

  actual <- svc$operation()
  expect_equal(actual$region, "123", ignore_attr = TRUE)

  # Check if config is returned when executed in a `do.call`.
  expect_equal(do.call(svc$operation, list()), svc$operation(), ignore_attr = TRUE)

  f <- function() {
    svc$operation()
  }
  expect_equal(f()$region, "123", ignore_attr = TRUE)

  g <- function() {
    svc <- set_config(
      svc = list(operation = function() get_config()),
      cfgs = list(endpoint = 456)
    )
    svc$operation()
  }
  expect_equal(g()$endpoint, 456, ignore_attr = TRUE)

  operation <- svc$operation
  expect_equal(operation(), Config())
})

test_that("get_config optional parameter update", {
  svc <- set_config(
    svc = list(operation = function() get_config()),
    cfgs = list(sts_regional_endpoint = "legacy")
  )
  actual <- svc$operation()
  expect_equal(actual$sts_regional_endpoint, "legacy", ignore_attr = TRUE)
})

test_that("set_config", {
  svc <- list(f = function() "foo", g = function() 123, h = function() get_config())
  a <- set_config(svc, list(region = "foo", endpoint = "bar"))
  expect_equal(a$f(), "foo")
  expect_equal(a$g(), 123)

  config <- a$h()
  expect_equal(config$region, "foo", ignore_attr = TRUE)
  expect_equal(config$endpoint, "bar", ignore_attr = TRUE)

  expect_error(set_config(list(), list(foo = 123)))
})

test_that("get_profile_name", {
  withr::with_envvar(list(AWS_PROFILE = "bar"), {
    expect_equal(get_profile_name(), "bar")
    expect_equal(get_profile_name(NULL), "bar")
    expect_equal(get_profile_name("foo"), "foo")
  })
})

test_that("get_region", {
  withr::with_envvar(list(AWS_REGION = "foo"), {
    expect_equal(get_region(), "foo")
    expect_equal(get_region(NULL), "foo")
  })
})

test_that("get_role_arn", {
  withr::with_envvar(list(AWS_ROLE_ARN = "bar"), {
    expect_equal(get_role_arn(), "bar")
    expect_equal(get_role_arn(NULL), "bar")
    expect_equal(get_role_arn("foo"), "foo")
  })
})

test_that("get_role_session_name", {
  withr::with_envvar(list(AWS_ROLE_SESSION_NAME = "bar"), {
    expect_equal(get_role_session_name(), "bar")
    expect_equal(get_role_session_name(NULL), "bar")
    expect_equal(get_role_session_name("foo"), "foo")
  })
})

test_that("get_web_identity_token_file", {
  expect_error(get_web_identity_token_file(), "No WebIdentityToken file available")

  withr::with_envvar(list(AWS_WEB_IDENTITY_TOKEN_FILE = "bar"), {
    expect_equal(get_web_identity_token_file(), "bar")
    expect_equal(get_web_identity_token_file(NULL), "bar")
    expect_equal(get_web_identity_token_file("foo"), "foo")
  })
})

test_that("get_web_identity_token", {
  withr::with_tempfile("tmp", {
    write("token", tmp)
    expect_equal(get_web_identity_token(tmp), "token")
  })
})

test_that("get_instance_metadata_imdsv1", {
  # this function mocks the behaviour of the IMDSv1 metadata service in so far
  # as it allows testing of get_instance_metadata in config.
  valid_metadata_response <- "ami-id
ami-launch-index
ami-manifest-path
block-device-mapping/
events/
hostname
iam/
identity-credentials/
instance-action
instance-id
instance-life-cycle
instance-type
local-hostname
local-ipv4
mac
metrics/
network/
placement/
profile
public-keys/
reservation-id
security-groups
services/"
  imdsv1_behaviour <- function(http_request) {
    # mock behaviour of the imdsv1 metadata service in case it gets an
    # imdsv2 request
    if (
      http_request$url$scheme == "http" &&
        http_request$method == "PUT" &&
        http_request$url$path == "/latest/api/token"
    ) {
      # ignore this as this only available in IMDSv2.
      mock_imdsv1_response_for_imdsv2_request <- HttpResponse(
        status_code = 404,
        header = c(
          "Server" = "EC2ws",
          "Connection" = "Close",
          "Content-Type" = "text/plain",
          "Content-Length" = "0"
        ),
        content_length = 0L,
        body = charToRaw("")
      )
      return(mock_imdsv1_response_for_imdsv2_request)
    }
    # mock behaviour of the imdsv1 metadata service
    if (
      http_request$url$scheme == "http" &&
        http_request$method == "GET" &&
        grepl("meta-data", http_request$url$path)
    ) {
      # provide response according to IMDSv1
      mock_imdsv1_metadata_response <- HttpResponse(
        status_code = 200,
        header = c(
          "Server" = "EC2ws",
          "Connection" = "Close",
          "Content-Type" = "text/plain",
          "Content-Length" = "297"
        ),
        content_length = 297L,
        body = charToRaw(valid_metadata_response)
      )
      return(mock_imdsv1_metadata_response)
    }
    # if there is an invalid request in general return a HTTP error code
    mock_imdsv1_response_invalid_request <- HttpResponse(
      status_code = 405,
      header = c(
        "Server" = "EC2ws",
        "Connection" = "Close",
        "Content-Type" = "text/plain",
        "Content-Length" = "0"
      ),
      content_length = 0L,
      body = charToRaw("")
    )
    return(mock_imdsv1_response_invalid_request)
  }
  mock_imdsv1_behaviour <- mock2(side_effect = imdsv1_behaviour)
  mockery::stub(get_instance_metadata, "issue", mock_imdsv1_behaviour)
  actual <- get_instance_metadata()

  expect_equal(mock_call_no(mock_imdsv1_behaviour), 2)
  expect_equal(charToRaw(valid_metadata_response), actual$body)
})

test_that("get_instance_metadata_imdsv2", {
  # this function mocks the behaviour of the IMDSv2 metadata service in so far
  # as it allows testing of get_instance_metadata in config.
  valid_metadata_response <- "ami-id
ami-launch-index
ami-manifest-path
block-device-mapping/
events/
hostname
iam/
identity-credentials/
instance-action
instance-id
instance-life-cycle
instance-type
local-hostname
local-ipv4
mac
metrics/
network/
placement/
profile
public-keys/
reservation-id
security-groups
services/"
  test_aws_token <- "AWSTESTINGTokENZZ-XXXXxxxXXXx2XXx1X45XXxXXxX-XxXXxxxXx=="
  imdsv2_behaviour <- function(http_request) {
    # mock behaviour of the imdsv2 metadata service
    if (
      http_request$url$scheme == "http" &&
        http_request$method == "PUT" &&
        http_request$url$path == "/latest/api/token" &&
        !is.na(http_request$header[["X-aws-ec2-metadata-token-ttl-seconds"]]) &&
        !is.na(as.numeric(http_request$header[["X-aws-ec2-metadata-token-ttl-seconds"]]))
    ) {
      # provide a valid IMDSv2 metadata service token
      mock_imdsv2_token_response <- HttpResponse(
        status_code = 200,
        header = c(
          "Server" = "EC2ws",
          "Connection" = "Close",
          "Content-Type" = "text/plain",
          "Content-Length" = "56"
        ),
        content_length = 56L,
        body = charToRaw(test_aws_token)
      )
      return(mock_imdsv2_token_response)
    }
    # mock behaviour of the imdsv2 metadata service
    if (
      http_request$url$scheme == "http" &&
        http_request$method == "GET" &&
        grepl("meta-data", http_request$url$path) &&
        !is.na(http_request$header[["X-aws-ec2-metadata-token"]]) &&
        http_request$header[["X-aws-ec2-metadata-token"]] == test_aws_token
    ) {
      # provide response according to IMDSv1
      mock_imdsv2_metadata_response <- HttpResponse(
        status_code = 200,
        header = c(
          "Server" = "EC2ws",
          "Connection" = "Close",
          "Content-Type" = "text/plain",
          "Content-Length" = "297",
          "X-Aws-Ec2-Metadata-Token-Ttl-Seconds" = "21587"
        ),
        content_length = 297L,
        body = charToRaw(valid_metadata_response)
      )
      return(mock_imdsv2_metadata_response)
    }
    # if there is an invalid request in general return a HTTP error code
    mock_imdsv1_response_invalid_request <- HttpResponse(
      status_code = 405,
      header = c(
        "Server" = "EC2ws",
        "Connection" = "Close",
        "Content-Type" = "text/plain",
        "Content-Length" = "0"
      ),
      content_length = 0L,
      body = charToRaw("")
    )
    return(mock_imdsv1_response_invalid_request)
  }
  mock_imdsv2_behaviour <- mock2(side_effect = imdsv2_behaviour)
  mockery::stub(get_instance_metadata, "issue", mock_imdsv2_behaviour)
  actual <- get_instance_metadata()

  expect_equal(mock_call_no(mock_imdsv2_behaviour), 2)
  expect_equal(charToRaw(valid_metadata_response), actual$body)
})

test_that("get sso legacy credentials", {
  mock_get_config_file_path <- mock2("data_sso_ini")
  mock_sso_credential_process <- mock2(invisible(TRUE))
  mockery::stub(config_file_provider, "get_config_file_path", mock_get_config_file_path)
  mockery::stub(
    config_file_provider,
    "sso_credential_process",
    mock_sso_credential_process
  )
  config_file_provider("legacy_sso")

  expect_equal(
    mock_arg(mock_sso_credential_process),
    list(
      NULL,
      "https://my-sso-portal.awsapps.com/start",
      "123456789011",
      "us-east-1",
      "readOnly",
      "profile legacy_sso"
    )
  )
})

test_that("get sso credentials", {
  mock_get_config_file_path <- mock2("data_sso_ini")
  mock_sso_credential_process <- mock2(invisible(TRUE))
  mockery::stub(config_file_provider, "get_config_file_path", mock_get_config_file_path)
  mockery::stub(
    config_file_provider,
    "sso_credential_process",
    mock_sso_credential_process
  )
  config_file_provider("sso")

  expect_equal(
    mock_arg(mock_sso_credential_process),
    list(
      "my-sso",
      "https://my-sso-portal.awsapps.com/start",
      "123456789011",
      "us-east-1",
      "readOnly",
      "profile sso"
    )
  )
})

test_that("sso_credential_process legacy", {
  mock_file_exists <- mock2(TRUE)
  mock_fromJSON <- mock2(list(
    startUrl = "https://my-sso-portal.awsapps.com/start",
    region = "us-east-1",
    accessToken = "foo",
    expiresAt = "bar",
    clientId = "cho",
    clientSecret = "zap",
    registrationExpiresAt = "2023-01-01T12:00:00Z"
  ))
  mock_get_role_credentials <- mock2(list(
    roleCredentials = list(
      accessKeyId = "hello",
      secretAccessKey = "world",
      sessionToken = "foo_hello",
      expiration = "foo_world"
    )
  ))
  mock_Creds <- mock2(Creds())
  mock_sso <- mock2(list(get_role_credentials = mock_get_role_credentials))
  mockery::stub(sso_credential_process, "file.exists", mock_file_exists)
  mockery::stub(sso_credential_process, "jsonlite::fromJSON", mock_fromJSON)
  mockery::stub(sso_credential_process, "sso", mock_sso)
  mockery::stub(sso_credential_process, "Creds", mock_Creds)

  cred <- sso_credential_process(
    NULL,
    "https://my-sso-portal.awsapps.com/start",
    "123456789011",
    "us-east-1",
    "readOnly"
  )

  # check for correct sso_cache
  expect_true(grepl(
    "c7aaaf71fcc8777ae2475525ed049d39fe16c484",
    mock_arg(mock_fromJSON)[[1]]
  ))
  expect_equal(
    mock_arg(mock_Creds),
    list(
      access_key_id = "hello",
      secret_access_key = "world",
      session_token = "foo_hello",
      expiration = "foo_world"
    )
  )
})

test_that("sso_credential_process", {
  mock_file_exists <- mock2(TRUE)
  mock_fromJSON <- mock2(list(
    startUrl = "https://my-sso-portal.awsapps.com/start",
    region = "us-east-1",
    accessToken = "foo",
    expiresAt = "bar",
    clientId = "cho",
    clientSecret = "zap",
    registrationExpiresAt = "2023-01-01T12:00:00Z"
  ))
  mock_get_role_credentials <- mock2(list(
    roleCredentials = list(
      accessKeyId = "hello",
      secretAccessKey = "world",
      sessionToken = "foo_hello",
      expiration = "foo_world"
    )
  ))
  mock_Creds <- mock2(Creds())
  mock_sso <- mock2(list(get_role_credentials = mock_get_role_credentials))
  mockery::stub(sso_credential_process, "file.exists", mock_file_exists)
  mockery::stub(sso_credential_process, "jsonlite::fromJSON", mock_fromJSON)
  mockery::stub(sso_credential_process, "sso", mock_sso)
  mockery::stub(sso_credential_process, "Creds", mock_Creds)

  cred <- sso_credential_process(
    "my-sso",
    "https://my-sso-portal.awsapps.com/start",
    "123456789011",
    "us-east-1",
    "readOnly"
  )

  # check for correct sso_cache
  expect_true(grepl(
    "0ad374308c5a4e22f723adf10145eafad7c4031c",
    mock_arg(mock_fromJSON)[[1]]
  ))
  expect_equal(
    mock_arg(mock_Creds),
    list(
      access_key_id = "hello",
      secret_access_key = "world",
      session_token = "foo_hello",
      expiration = "foo_world"
    )
  )
})

test_that("check sso_cache doesn't exist legacy", {
  mock_file_exists <- mock2(FALSE)
  mockery::stub(sso_credential_process, "file.exists", mock_file_exists)

  expect_error(
    sso_credential_process(
      NULL,
      "https://my-sso-portal.awsapps.com/start",
      "123456789011",
      "us-east-1",
      "readOnly",
      "profile demo"
    ),
    paste(
      "Error loading SSO Token: Token for https://my-sso-portal.awsapps.com/start does not exist",
      "Try refreshing sso credentials: `aws sso login --profile demo`",
      sep = "\n"
    )
  )
})

test_that("check sso_cache doesn't exist", {
  mock_file_exists <- mock2(FALSE)
  mockery::stub(sso_credential_process, "file.exists", mock_file_exists)

  expect_error(
    sso_credential_process(
      "my-sso",
      "https://my-sso-portal.awsapps.com/start",
      "123456789011",
      "us-east-1",
      "readOnly",
      "profile demo"
    ),
    paste(
      "Error loading SSO Token: Token for my-sso does not exist",
      "Try refreshing sso credentials: `aws sso login --profile demo`",
      sep = "\n"
    )
  )
})

test_that("check for invalid token, missing accessToken", {
  mock_file_exists <- mock2(TRUE)
  mock_fromJSON <- mock2(list(
    startUrl = "https://my-sso-portal.awsapps.com/start",
    region = "us-east-1",
    expiresAt = "bar",
    clientId = "cho",
    clientSecret = "zap",
    registrationExpiresAt = "2023-01-01T12:00:00Z"
  ))
  mockery::stub(sso_credential_process, "file.exists", mock_file_exists)
  mockery::stub(sso_credential_process, "jsonlite::fromJSON", mock_fromJSON)

  expect_error(
    sso_credential_process(
      NULL,
      "https://my-sso-portal.awsapps.com/start",
      "123456789011",
      "us-east-1",
      "readOnly",
      "profile demo"
    ),
    paste(
      "Error loading SSO Token: Token for https://my-sso-portal.awsapps.com/start is invalid.",
      "Try refreshing sso credentials: `aws sso login --profile demo`",
      sep = "\n"
    )
  )
})

test_that("check for invalid token, missing expiresAt", {
  mock_file_exists <- mock2(TRUE)
  mock_fromJSON <- mock2(list(
    startUrl = "https://my-sso-portal.awsapps.com/start",
    region = "us-east-1",
    accessToken = "foo",
    clientId = "cho",
    clientSecret = "zap",
    registrationExpiresAt = "2023-01-01T12:00:00Z"
  ))
  mockery::stub(sso_credential_process, "file.exists", mock_file_exists)
  mockery::stub(sso_credential_process, "jsonlite::fromJSON", mock_fromJSON)

  expect_error(
    sso_credential_process(
      NULL,
      "https://my-sso-portal.awsapps.com/start",
      "123456789011",
      "us-east-1",
      "readOnly",
      "profile demo"
    ),
    "Error loading SSO Token: Token for https://my-sso-portal.awsapps.com/start is invalid."
  )
})

test_that("check sts regional from environment", {
  withr::with_envvar(list(AWS_STS_REGIONAL_ENDPOINTS = "regional"), {
    actual <- get_sts_regional_endpoint()
    expect_equal(actual, "regional")
  })
})

test_that("check sts regional from config file", {
  mock_get_config_file_path <- mock2("data_ini")
  mockery::stub(
    check_config_file_sts_regional_endpoint,
    "get_config_file_path",
    mock_get_config_file_path
  )

  actual <- check_config_file_sts_regional_endpoint("sts")

  expect_equal(actual, "legacy")
})

test_that("merge_config default param config", {
  cfg <- list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string",
      anonymous = "logical"
    ),
    endpoint = "string",
    region = "string",
    close_connection = "logical",
    timeout = "numeric",
    s3_force_path_style = "logical"
  )

  # Check cfg is not affected by default credentials()
  actual1 <- merge_config(
    cfg,
    list(credentials = credentials(), endpoint = NULL, region = NULL)
  )

  # Check if cfg is not affected by credentials list()
  actual2 <- merge_config(cfg, list(credentials = list(), endpoint = NULL, region = NULL))

  # Check if default config is not affected by default credentials()
  actual3 <- merge_config(
    config(),
    list(credentials = credentials(), endpoint = NULL, region = NULL)
  )
  # Check if empty list isnt affect by default credentials()
  actual4 <- merge_config(
    list(),
    list(credentials = credentials(), endpoint = NULL, region = NULL)
  )

  expect_equal(actual1, cfg)
  expect_equal(actual2, cfg)
  expect_equal(actual3, config())
  expect_equal(actual4, list())
})

test_that("merge_config modify default config with param config", {
  # check if list config is modified by credentials()
  actual1 <- merge_config(
    list(),
    list(credentials = credentials(profile = "dummy"), endpoint = NULL, region = NULL)
  )

  # check if list config is modified by credentials
  actual2 <- merge_config(
    list(),
    list(credentials = list(profile = "dummy"), endpoint = NULL, region = NULL)
  )

  # check if config() is modified by all param config
  actual3 <- merge_config(
    config(),
    list(credentials = credentials(profile = "dummy"), endpoint = "bar", region = "zoo")
  )

  expect_credentials <- as.list(credentials(profile = "dummy"))
  expect_equal(actual1, list(credentials = expect_credentials))
  expect_equal(actual2, list(credentials = list(profile = "dummy")))
  expect_equal(
    actual3,
    config(credentials = expect_credentials, endpoint = "bar", region = "zoo")
  )
})

test_that("merge_config config and param config", {
  # check if config is modified by param config
  actual1 <- merge_config(
    config(credentials(profile = "dummy"), sts_regional_endpoint = "regional"),
    list(
      credentials = credentials(profile = "dummy"),
      endpoint = NULL,
      region = "us-east-1"
    )
  )

  # check if list config is modified by credentials
  actual2 <- merge_config(
    config(credentials(profile = "dummy"), endpoint = "endpoint1", region = "eu-west-1"),
    list(
      credentials = list(profile = "edited"),
      endpoint = "my-endpoint",
      region = "us-east-1"
    )
  )

  # check if list config is modified by list param config
  actual3 <- merge_config(
    list(
      credentials = list(profile = "dummy"),
      endpoint = "endpoint1",
      region = "eu-west-1"
    ),
    list(
      credentials = list(profile = "edited"),
      endpoint = "my-endpoint",
      region = "us-east-1"
    )
  )
  actual4 <- merge_config(
    config(credentials(creds(access_key_id = "dummy", secret_access_key = "secret"))),
    list(endpoint = "my-endpoint", region = "us-east-1")
  )

  expect1 <- config(
    credentials(profile = "dummy"),
    region = "us-east-1",
    sts_regional_endpoint = "regional"
  )
  expect2 <- config(
    credentials(profile = "edited"),
    region = "us-east-1",
    endpoint = "my-endpoint"
  )
  expect3 <- list(
    credentials = list(profile = "edited"),
    endpoint = "my-endpoint",
    region = "us-east-1"
  )

  expect4 <- config(
    credentials(creds = creds(access_key_id = "dummy", secret_access_key = "secret")),
    endpoint = "my-endpoint",
    region = "us-east-1"
  )

  expect_equal(actual1, expect1)
  expect_equal(actual2, expect2)
  expect_equal(actual3, expect3)
  expect_equal(actual4, expect4)
})

test_that("set_partition_name", {
  # regions generated from:
  # https://github.com/boto/botocore/blob/develop/botocore/data/endpoints.json
  aws <- c(
    "af-south-1",
    "ap-east-1",
    "ap-northeast-1",
    "ap-northeast-2",
    "ap-northeast-3",
    "ap-south-1",
    "ap-south-2",
    "ap-southeast-1",
    "ap-southeast-2",
    "ap-southeast-3",
    "ap-southeast-4",
    "ap-southeast-5",
    "ap-southeast-7",
    "ca-central-1",
    "ca-west-1",
    "eu-central-1",
    "eu-central-2",
    "eu-north-1",
    "eu-south-1",
    "eu-south-2",
    "eu-west-1",
    "eu-west-2",
    "eu-west-3",
    "il-central-1",
    "me-central-1",
    "me-south-1",
    "mx-central-1",
    "sa-east-1",
    "us-east-1",
    "us-east-2",
    "us-west-1",
    "us-west-2"
  )
  aws_cn <- c("cn-north-1", "cn-northwest-1")
  aws_us_gov <- c("us-gov-east-1", "us-gov-west-1")
  aws_iso <- c("us-iso-east-1", "us-iso-west-1")
  aws_isob <- "us-isob-east-1"
  aws_isoe <- "eu-isoe-west-1"
  # no region found for this partition used regex pattern for testing
  aws_isof <- "us-isof-east-1"
  made_up <- c("region", "dummy_region")

  for (region in aws) expect_equal(set_partition_name(region), "aws")
  for (region in aws_cn) expect_equal(set_partition_name(region), "aws-cn")
  for (region in aws_us_gov) expect_equal(set_partition_name(region), "aws-us-gov")
  for (region in aws_iso) expect_equal(set_partition_name(region), "aws-iso")
  for (region in aws_isob) expect_equal(set_partition_name(region), "aws-iso-b")
  for (region in aws_isoe) expect_equal(set_partition_name(region), "aws-iso-e")
  for (region in aws_isof) expect_equal(set_partition_name(region), "aws-iso-f")
  for (region in made_up) expect_equal(set_partition_name(region), "")
})
