svc <- paws::codestarnotifications()

test_that("list_event_types", {
  expect_error(svc$list_event_types(), NA)
})

test_that("list_event_types", {
  expect_error(svc$list_event_types(MaxResults = 20), NA)
})

test_that("list_notification_rules", {
  expect_error(svc$list_notification_rules(), NA)
})

test_that("list_notification_rules", {
  expect_error(svc$list_notification_rules(MaxResults = 20), NA)
})

test_that("list_targets", {
  expect_error(svc$list_targets(), NA)
})

test_that("list_targets", {
  expect_error(svc$list_targets(MaxResults = 20), NA)
})
