svc <- paws.management::cloudwatchlogs()

test_that("describe_configuration_templates", {
  skip_on_cran()
  expect_error(svc$describe_configuration_templates(), NA)
})

test_that("describe_deliveries", {
  skip_on_cran()
  expect_error(svc$describe_deliveries(), NA)
})

test_that("describe_delivery_destinations", {
  skip_on_cran()
  expect_error(svc$describe_delivery_destinations(), NA)
})

test_that("describe_delivery_sources", {
  skip_on_cran()
  expect_error(svc$describe_delivery_sources(), NA)
})

test_that("describe_destinations", {
  skip_on_cran()
  expect_error(svc$describe_destinations(), NA)
})

test_that("describe_export_tasks", {
  skip_on_cran()
  expect_error(svc$describe_export_tasks(), NA)
})

test_that("describe_import_tasks", {
  skip_on_cran()
  expect_error(svc$describe_import_tasks(), NA)
})

test_that("describe_log_groups", {
  skip_on_cran()
  expect_error(svc$describe_log_groups(), NA)
})

test_that("describe_log_streams", {
  skip_on_cran()
  expect_error(svc$describe_log_streams(), NA)
})

test_that("describe_lookup_tables", {
  skip_on_cran()
  expect_error(svc$describe_lookup_tables(), NA)
})

test_that("describe_metric_filters", {
  skip_on_cran()
  expect_error(svc$describe_metric_filters(), NA)
})

test_that("describe_queries", {
  skip_on_cran()
  expect_error(svc$describe_queries(), NA)
})

test_that("describe_query_definitions", {
  skip_on_cran()
  expect_error(svc$describe_query_definitions(), NA)
})

test_that("describe_resource_policies", {
  skip_on_cran()
  expect_error(svc$describe_resource_policies(), NA)
})

test_that("list_anomalies", {
  skip_on_cran()
  expect_error(svc$list_anomalies(), NA)
})

test_that("list_integrations", {
  skip_on_cran()
  expect_error(svc$list_integrations(), NA)
})

test_that("list_log_anomaly_detectors", {
  skip_on_cran()
  expect_error(svc$list_log_anomaly_detectors(), NA)
})

test_that("list_log_groups", {
  skip_on_cran()
  expect_error(svc$list_log_groups(), NA)
})

test_that("list_scheduled_queries", {
  skip_on_cran()
  expect_error(svc$list_scheduled_queries(), NA)
})

test_that("list_syslog_configurations", {
  skip_on_cran()
  expect_error(svc$list_syslog_configurations(), NA)
})
