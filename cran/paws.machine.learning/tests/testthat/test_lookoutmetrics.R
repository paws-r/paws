svc <- paws::lookoutmetrics()

test_that("list_alerts", {
  expect_error(svc$list_alerts(), NA)
})

test_that("list_alerts", {
  expect_error(svc$list_alerts(MaxResults = 20), NA)
})

test_that("list_anomaly_detectors", {
  expect_error(svc$list_anomaly_detectors(), NA)
})

test_that("list_anomaly_detectors", {
  expect_error(svc$list_anomaly_detectors(MaxResults = 20), NA)
})

test_that("list_metric_sets", {
  expect_error(svc$list_metric_sets(), NA)
})

test_that("list_metric_sets", {
  expect_error(svc$list_metric_sets(MaxResults = 20), NA)
})
