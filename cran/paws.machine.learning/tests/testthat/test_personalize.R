svc <- paws::personalize()

test_that("list_batch_inference_jobs", {
  expect_error(svc$list_batch_inference_jobs(), NA)
})

test_that("list_batch_segment_jobs", {
  expect_error(svc$list_batch_segment_jobs(), NA)
})

test_that("list_campaigns", {
  expect_error(svc$list_campaigns(), NA)
})

test_that("list_data_deletion_jobs", {
  expect_error(svc$list_data_deletion_jobs(), NA)
})

test_that("list_dataset_export_jobs", {
  expect_error(svc$list_dataset_export_jobs(), NA)
})

test_that("list_dataset_groups", {
  expect_error(svc$list_dataset_groups(), NA)
})

test_that("list_dataset_import_jobs", {
  expect_error(svc$list_dataset_import_jobs(), NA)
})

test_that("list_datasets", {
  expect_error(svc$list_datasets(), NA)
})

test_that("list_event_trackers", {
  expect_error(svc$list_event_trackers(), NA)
})

test_that("list_filters", {
  expect_error(svc$list_filters(), NA)
})

test_that("list_metric_attribution_metrics", {
  expect_error(svc$list_metric_attribution_metrics(), NA)
})

test_that("list_metric_attributions", {
  expect_error(svc$list_metric_attributions(), NA)
})

test_that("list_recipes", {
  expect_error(svc$list_recipes(), NA)
})

test_that("list_recommenders", {
  expect_error(svc$list_recommenders(), NA)
})

test_that("list_schemas", {
  expect_error(svc$list_schemas(), NA)
})

test_that("list_solution_versions", {
  expect_error(svc$list_solution_versions(), NA)
})

test_that("list_solutions", {
  expect_error(svc$list_solutions(), NA)
})
