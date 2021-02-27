test_that("rds_build_auth_token", {
  actual <- rds_build_auth_token(
    "prod-instance.us-east-1.rds.amazonaws.com:3306",
    "us-west-2",
    "mysqlUser",
    creds = list(
      access_key_id = "AKIA",
      secret_access_key = "SECRET",
      session_token = "SESSION"
    )
  )
  expect_match(actual, "^prod-instance\\.us-east-1\\.rds\\.amazonaws\\.com:3306/\\?Action=connect.*?DBUser=mysqlUser.*")
})
