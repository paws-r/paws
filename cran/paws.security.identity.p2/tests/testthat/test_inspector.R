svc <- paws::inspector()

test_that("describe_cross_account_access_role", {
  expect_error(svc$describe_cross_account_access_role(), NA)
})

test_that("list_assessment_runs", {
  expect_error(svc$list_assessment_runs(), NA)
})

test_that("list_assessment_targets", {
  expect_error(svc$list_assessment_targets(), NA)
})

test_that("list_assessment_templates", {
  expect_error(svc$list_assessment_templates(), NA)
})

test_that("list_event_subscriptions", {
  expect_error(svc$list_event_subscriptions(), NA)
})

test_that("list_findings", {
  expect_error(svc$list_findings(), NA)
})

test_that("list_rules_packages", {
  expect_error(svc$list_rules_packages(), NA)
})
