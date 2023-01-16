svc <- paws::cloudwatch()

test_that("describe_alarm_history", {
  expect_error(svc$describe_alarm_history(), NA)
})

test_that("describe_alarms", {
  expect_error(svc$describe_alarms(), NA)
})

test_that("describe_anomaly_detectors", {
  expect_error(svc$describe_anomaly_detectors(), NA)
})

test_that("describe_anomaly_detectors", {
  expect_error(svc$describe_anomaly_detectors(MaxResults = 20), NA)
})

test_that("describe_insight_rules", {
  expect_error(svc$describe_insight_rules(), NA)
})

test_that("describe_insight_rules", {
  expect_error(svc$describe_insight_rules(MaxResults = 20), NA)
})

test_that("list_dashboards", {
  expect_error(svc$list_dashboards(), NA)
})

test_that("list_metric_streams", {
  expect_error(svc$list_metric_streams(), NA)
})

test_that("list_metric_streams", {
  expect_error(svc$list_metric_streams(MaxResults = 20), NA)
})

test_that("list_metrics", {
  expect_error(svc$list_metrics(), NA)
})
