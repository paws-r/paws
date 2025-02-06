# Note: Issue with mocking `now` function on cran.

test_that("check rds_build_auth_token", {
  skip_on_cran()
  local_mocked_bindings(
    now = function() as.POSIXct("2025/01/01 00:00:01 UTC"),
    get_config = function() {
      list(
        credentials = list(
          creds = list(
            access_key_id = "AKIA",
            secret_access_key = "SECRET",
            session_token = "SESSION"
          )
        )
      )
    },
    .package = "paws.common"
  )
  expected <- "prod-instance.us-east-1.rds.amazonaws.com:3306/?Action=connect&DBUser=mysqlUser&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA%2F20250101%2Fus-west-2%2Frds-db%2Faws4_request&X-Amz-Date=20250101T000001Z&X-Amz-Expires=900&X-Amz-Security-Token=SESSION&X-Amz-SignedHeaders=host&X-Amz-Signature=4e4ce10c7b3710decae757df60ba2519348dcb4db802f15646dce1bf5e17c3ed"

  client <- list(
    build_auth_token = rds_build_auth_token,
    build_auth_token_v2 = rds_build_auth_token_v2
  )
  actual_v1 <- client$build_auth_token(
    endpoint = "prod-instance.us-east-1.rds.amazonaws.com:3306",
    region = "us-west-2",
    user = "mysqlUser",
    creds = list(
      access_key_id = "AKIA",
      secret_access_key = "SECRET",
      session_token = "SESSION"
    )
  )

  actual_v2 <- client$build_auth_token_v2(
    DBHostname = "prod-instance.us-east-1.rds.amazonaws.com",
    Port = 3306,
    DBUsername = "mysqlUser",
    Region = "us-west-2"
  )
  expect_equal(actual_v1, expected)
  expect_equal(actual_v2, expected)
})

test_that("check rds_build_auth_token upper case host", {
  skip_on_cran()
  local_mocked_bindings(
    now = function() as.POSIXct("2025/01/01 00:00:01 UTC"),
    get_config = function() {
      list(
        credentials = list(
          creds = list(
            access_key_id = "AKIA",
            secret_access_key = "SECRET",
            session_token = "SESSION"
          )
        )
      )
    },
    .package = "paws.common"
  )

  expected <- "XXXXX.US-EAST-2.RDS.AMAZONAWS.COM:3306/?Action=connect&DBUser=user1&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIA%2F20250101%2Fus-east-2%2Frds-db%2Faws4_request&X-Amz-Date=20250101T000001Z&X-Amz-Expires=900&X-Amz-Security-Token=SESSION&X-Amz-SignedHeaders=host&X-Amz-Signature=c57093ec8c5c9a668ceab511fe2d72df1794936673fec2418744f71496eed913"

  client <- list(
    build_auth_token = rds_build_auth_token,
    build_auth_token_v2 = rds_build_auth_token_v2
  )

  actual_v1 <- client$build_auth_token(
    endpoint = "XXXXX.US-EAST-2.RDS.AMAZONAWS.COM:3306",
    region = "us-east-2",
    user = "user1",
    creds = list(
      access_key_id = "AKIA",
      secret_access_key = "SECRET",
      session_token = "SESSION"
    )
  )

  actual_v2 <- client$build_auth_token_v2(
    DBHostname = "XXXXX.US-EAST-2.RDS.AMAZONAWS.COM",
    Port = 3306,
    DBUsername = "user1",
    Region = "us-east-2"
  )
  expect_equal(actual_v1, expected)
  expect_equal(actual_v2, expected)
})
