context("cloudwatch")

svc <- paws::cloudwatch()

test_that("describe_alarm_history", {
  expect_error(svc$describe_alarm_history(), NA)
})

test_that("describe_alarms", {
  expect_error(svc$describe_alarms(), NA)
})

test_that("list_dashboards", {
  expect_error(svc$list_dashboards(), NA)
})

test_that("list_metrics", {
  expect_error(svc$list_metrics(), NA)
})