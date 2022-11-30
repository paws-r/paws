test_that("get_config", {
  svc <- set_config(
    svc = list(
      operation = function() get_config()
    ),
    cfgs = list(region = 123)
  )

  actual <- svc$operation()
  expect_equivalent(actual$region, 123)

  # Check if config is returned when executed in a `do.call`.
  expect_equivalent(do.call(svc$operation, list()), svc$operation())

  f <- function() {
    svc$operation()
  }
  expect_equivalent(f()$region, 123)

  g <- function() {
    svc <- set_config(
      svc = list(
        operation = function() get_config()
      ),
      cfgs = list(endpoint = 456)
    )
    svc$operation()
  }
  expect_equivalent(g()$endpoint, 456)

  operation <- svc$operation
  expect_equal(operation(), Config())
})

test_that("set_config", {
  svc <- list(
    f = function() "foo",
    g = function() 123,
    h = function() get_config()
  )
  a <- set_config(
    svc,
    list(
      region = "foo",
      endpoint = "bar"
    )
  )
  expect_equal(a$f(), "foo")
  expect_equal(a$g(), 123)

  config <- a$h()
  expect_equivalent(config$region, "foo")
  expect_equivalent(config$endpoint, "bar")

  expect_error(set_config(list(), list(foo = 123)))
})

test_that("get_profile_name", {
  Sys.setenv(AWS_PROFILE = "bar")
  expect_equal(get_profile_name(), "bar")
  expect_equal(get_profile_name(NULL), "bar")
  expect_equal(get_profile_name("foo"), "foo")
})

test_that("get_region", {
  Sys.setenv(AWS_REGION = "foo")
  expect_equal(get_region(), "foo")
  expect_equal(get_region(NULL), "foo")
})

test_that("get_role_arn", {
  Sys.setenv(AWS_ROLE_ARN = "bar")
  expect_equal(get_role_arn(), "bar")
  expect_equal(get_role_arn(NULL), "bar")
  expect_equal(get_role_arn("foo"), "foo")
})

test_that("get_role_session_name", {
  Sys.setenv(AWS_ROLE_SESSION_NAME = "bar")
  expect_equal(get_role_session_name(), "bar")
  expect_equal(get_role_session_name(NULL), "bar")
  expect_equal(get_role_session_name("foo"), "foo")
})

test_that("get_web_identity_token_file", {
  Sys.setenv(AWS_WEB_IDENTITY_TOKEN_FILE = "bar")
  expect_equal(get_web_identity_token_file(), "bar")
  expect_equal(get_web_identity_token_file(NULL), "bar")
  expect_equal(get_web_identity_token_file("foo"), "foo")
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
    if (http_request$url$scheme=="http"
        && http_request$method=="PUT"
        && http_request$url$path=="/latest/api/token") {
        # ignore this as this only available in IMDSv2.
      mock_imdsv1_response_for_imdsv2_request <- HttpResponse(
        status_code = 404,
        header = c(
          "Server"="EC2ws",
          "Connection"="Close",
          "Content-Type"="text/plain",
          "Content-Length"="0"
        ),
        content_length = 0L,
        body = charToRaw("")
      )
      return (mock_imdsv1_response_for_imdsv2_request)
    }
    # mock behaviour of the imdsv1 metadata service
    if (http_request$url$scheme=="http"
      && http_request$method=="GET"
      && grepl("meta-data", http_request$url$path)) {
      # provide response according to IMDSv1
      mock_imdsv1_metadata_response <- HttpResponse(
        status_code = 200,
        header = c(
          "Server"="EC2ws",
          "Connection"="Close",
          "Content-Type"="text/plain",
          "Content-Length"="297"
        ),
        content_length = 297L,
        body = charToRaw(valid_metadata_response)
      )
      return (mock_imdsv1_metadata_response)
    }
    # if there is an invalid request in general return a HTTP error code
    mock_imdsv1_response_invalid_request <- HttpResponse(
      status_code = 405,
      header = c(
        "Server"="EC2ws",
        "Connection"="Close",
        "Content-Type"="text/plain",
        "Content-Length"="0"
      ),
      content_length = 0L,
      body = charToRaw("")
    )
    return (mock_imdsv1_response_invalid_request)
  }
  mock_imdsv1_behaviour <- mock2(side_effect = imdsv1_behaviour)
  mockery::stub(get_instance_metadata, 'issue', mock_imdsv1_behaviour)
  actual <- get_instance_metadata()

  expect_equal(mock_call_no(mock_imdsv1_behaviour), 2)
  expect_equal(
    charToRaw(valid_metadata_response),
    actual$body
  )
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
    if (http_request$url$scheme=="http"
      && http_request$method=="PUT"
      && http_request$url$path=="/latest/api/token"
      && !is.na(http_request$header[["X-aws-ec2-metadata-token-ttl-seconds"]])
      && !is.na(as.numeric(http_request$header[["X-aws-ec2-metadata-token-ttl-seconds"]]))
      ) {
      # provide a valid IMDSv2 metadata service token
      mock_imdsv2_token_response <- HttpResponse(
        status_code = 200,
        header = c(
        "Server"="EC2ws",
        "Connection"="Close",
        "Content-Type"="text/plain",
        "Content-Length"="56"
        ),
        content_length = 56L,
        body = charToRaw(test_aws_token)
      )
      return (mock_imdsv2_token_response)
    }
    # mock behaviour of the imdsv2 metadata service
    if (http_request$url$scheme=="http"
      && http_request$method=="GET"
      && grepl("meta-data", http_request$url$path)
      && !is.na(http_request$header[["X-aws-ec2-metadata-token"]])
      && http_request$header[["X-aws-ec2-metadata-token"]]==test_aws_token
      ) {
      # provide response according to IMDSv1
      mock_imdsv2_metadata_response <- HttpResponse(
        status_code = 200,
        header = c(
          "Server"="EC2ws","Connection"="Close",
          "Content-Type"="text/plain",
          "Content-Length"="297",
          "X-Aws-Ec2-Metadata-Token-Ttl-Seconds"="21587"
        ),
        content_length = 297L,
        body = charToRaw(valid_metadata_response)
      )
      return (mock_imdsv2_metadata_response)
    }
    # if there is an invalid request in general return a HTTP error code
    mock_imdsv1_response_invalid_request <- HttpResponse(
      status_code = 405,
      header = c(
        "Server"="EC2ws",
        "Connection"="Close",
        "Content-Type"="text/plain",
        "Content-Length"="0"
      ),
      content_length = 0L,
      body = charToRaw("")
    )
    return (mock_imdsv1_response_invalid_request)
  }
  mock_imdsv2_behaviour <- mock2(side_effect = imdsv2_behaviour)
  mockery::stub(get_instance_metadata, 'issue', mock_imdsv2_behaviour)
  actual <- get_instance_metadata()

  expect_equal(mock_call_no(mock_imdsv2_behaviour), 2)
  expect_equal(
    charToRaw(valid_metadata_response),
    actual$body
  )
})
