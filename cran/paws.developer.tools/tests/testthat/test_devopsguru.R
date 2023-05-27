svc <- paws::devopsguru()

test_that("describe_account_health", {
  expect_error(svc$describe_account_health(), NA)
})

test_that("describe_event_sources_config", {
  expect_error(svc$describe_event_sources_config(), NA)
})

test_that("describe_feedback", {
  expect_error(svc$describe_feedback(), NA)
})

test_that("describe_organization_health", {
  expect_error(svc$describe_organization_health(), NA)
})

test_that("describe_service_integration", {
  expect_error(svc$describe_service_integration(), NA)
})

test_that("list_monitored_resources", {
  expect_error(svc$list_monitored_resources(), NA)
})

test_that("list_monitored_resources", {
  expect_error(svc$list_monitored_resources(MaxResults = 20), NA)
})

test_that("list_notification_channels", {
  expect_error(svc$list_notification_channels(), NA)
})
