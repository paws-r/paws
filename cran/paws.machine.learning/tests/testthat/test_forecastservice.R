svc <- paws::forecastservice()

test_that("list_dataset_groups", {
  skip_on_cran()
  expect_error(svc$list_dataset_groups(), NA)
})

test_that("list_dataset_groups", {
  skip_on_cran()
  expect_error(svc$list_dataset_groups(MaxResults = 20), NA)
})

test_that("list_dataset_import_jobs", {
  skip_on_cran()
  expect_error(svc$list_dataset_import_jobs(), NA)
})

test_that("list_dataset_import_jobs", {
  skip_on_cran()
  expect_error(svc$list_dataset_import_jobs(MaxResults = 20), NA)
})

test_that("list_datasets", {
  skip_on_cran()
  expect_error(svc$list_datasets(), NA)
})

test_that("list_datasets", {
  skip_on_cran()
  expect_error(svc$list_datasets(MaxResults = 20), NA)
})

test_that("list_explainabilities", {
  skip_on_cran()
  expect_error(svc$list_explainabilities(), NA)
})

test_that("list_explainabilities", {
  skip_on_cran()
  expect_error(svc$list_explainabilities(MaxResults = 20), NA)
})

test_that("list_explainability_exports", {
  skip_on_cran()
  expect_error(svc$list_explainability_exports(), NA)
})

test_that("list_explainability_exports", {
  skip_on_cran()
  expect_error(svc$list_explainability_exports(MaxResults = 20), NA)
})

test_that("list_forecast_export_jobs", {
  skip_on_cran()
  expect_error(svc$list_forecast_export_jobs(), NA)
})

test_that("list_forecast_export_jobs", {
  skip_on_cran()
  expect_error(svc$list_forecast_export_jobs(MaxResults = 20), NA)
})

test_that("list_forecasts", {
  skip_on_cran()
  expect_error(svc$list_forecasts(), NA)
})

test_that("list_forecasts", {
  skip_on_cran()
  expect_error(svc$list_forecasts(MaxResults = 20), NA)
})

test_that("list_monitors", {
  skip_on_cran()
  expect_error(svc$list_monitors(), NA)
})

test_that("list_monitors", {
  skip_on_cran()
  expect_error(svc$list_monitors(MaxResults = 20), NA)
})

test_that("list_predictor_backtest_export_jobs", {
  skip_on_cran()
  expect_error(svc$list_predictor_backtest_export_jobs(), NA)
})

test_that("list_predictor_backtest_export_jobs", {
  skip_on_cran()
  expect_error(svc$list_predictor_backtest_export_jobs(MaxResults = 20), NA)
})

test_that("list_predictors", {
  skip_on_cran()
  expect_error(svc$list_predictors(), NA)
})

test_that("list_predictors", {
  skip_on_cran()
  expect_error(svc$list_predictors(MaxResults = 20), NA)
})

test_that("list_what_if_analyses", {
  skip_on_cran()
  expect_error(svc$list_what_if_analyses(), NA)
})

test_that("list_what_if_analyses", {
  skip_on_cran()
  expect_error(svc$list_what_if_analyses(MaxResults = 20), NA)
})

test_that("list_what_if_forecast_exports", {
  skip_on_cran()
  expect_error(svc$list_what_if_forecast_exports(), NA)
})

test_that("list_what_if_forecast_exports", {
  skip_on_cran()
  expect_error(svc$list_what_if_forecast_exports(MaxResults = 20), NA)
})

test_that("list_what_if_forecasts", {
  skip_on_cran()
  expect_error(svc$list_what_if_forecasts(), NA)
})

test_that("list_what_if_forecasts", {
  skip_on_cran()
  expect_error(svc$list_what_if_forecasts(MaxResults = 20), NA)
})
