svc <- paws::cloudwatchlogs()

test_that("describe_configuration_templates", {
  expect_error(svc$describe_configuration_templates(), NA)
})

test_that("describe_deliveries", {
  expect_error(svc$describe_deliveries(), NA)
})

test_that("describe_delivery_destinations", {
  expect_error(svc$describe_delivery_destinations(), NA)
})

test_that("describe_delivery_sources", {
  expect_error(svc$describe_delivery_sources(), NA)
})

test_that("describe_destinations", {
  expect_error(svc$describe_destinations(), NA)
})

test_that("describe_export_tasks", {
  expect_error(svc$describe_export_tasks(), NA)
})

test_that("describe_import_tasks", {
  expect_error(svc$describe_import_tasks(), NA)
})

test_that("describe_log_groups", {
  expect_error(svc$describe_log_groups(), NA)
})

test_that("describe_log_streams", {
  expect_error(svc$describe_log_streams(), NA)
})

test_that("describe_metric_filters", {
  expect_error(svc$describe_metric_filters(), NA)
})

test_that("describe_queries", {
  expect_error(svc$describe_queries(), NA)
})

test_that("describe_query_definitions", {
  expect_error(svc$describe_query_definitions(), NA)
})

test_that("describe_resource_policies", {
  expect_error(svc$describe_resource_policies(), NA)
})

test_that("list_anomalies", {
  expect_error(svc$list_anomalies(), NA)
})

test_that("list_integrations", {
  expect_error(svc$list_integrations(), NA)
})

test_that("list_log_anomaly_detectors", {
  expect_error(svc$list_log_anomaly_detectors(), NA)
})

test_that("list_log_groups", {
  expect_error(svc$list_log_groups(), NA)
})

test_that("list_scheduled_queries", {
  expect_error(svc$list_scheduled_queries(), NA)
})
