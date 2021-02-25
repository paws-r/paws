svc <- paws::devopsguru()

test_that("describe_account_health", {
  expect_error(svc$describe_account_health(), NA)
})

test_that("describe_service_integration", {
  expect_error(svc$describe_service_integration(), NA)
})

test_that("list_notification_channels", {
  expect_error(svc$list_notification_channels(), NA)
})
