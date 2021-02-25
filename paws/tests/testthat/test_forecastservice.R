svc <- paws::forecastservice()

test_that("list_dataset_groups", {
  expect_error(svc$list_dataset_groups(), NA)
})

test_that("list_dataset_groups", {
  expect_error(svc$list_dataset_groups(MaxResults = 20), NA)
})

test_that("list_dataset_import_jobs", {
  expect_error(svc$list_dataset_import_jobs(), NA)
})

test_that("list_dataset_import_jobs", {
  expect_error(svc$list_dataset_import_jobs(MaxResults = 20), NA)
})

test_that("list_datasets", {
  expect_error(svc$list_datasets(), NA)
})

test_that("list_datasets", {
  expect_error(svc$list_datasets(MaxResults = 20), NA)
})

test_that("list_forecast_export_jobs", {
  expect_error(svc$list_forecast_export_jobs(), NA)
})

test_that("list_forecast_export_jobs", {
  expect_error(svc$list_forecast_export_jobs(MaxResults = 20), NA)
})

test_that("list_forecasts", {
  expect_error(svc$list_forecasts(), NA)
})

test_that("list_forecasts", {
  expect_error(svc$list_forecasts(MaxResults = 20), NA)
})

test_that("list_predictor_backtest_export_jobs", {
  expect_error(svc$list_predictor_backtest_export_jobs(), NA)
})

test_that("list_predictor_backtest_export_jobs", {
  expect_error(svc$list_predictor_backtest_export_jobs(MaxResults = 20), NA)
})

test_that("list_predictors", {
  expect_error(svc$list_predictors(), NA)
})

test_that("list_predictors", {
  expect_error(svc$list_predictors(MaxResults = 20), NA)
})
