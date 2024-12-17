svc <- paws::cleanroomsml()

test_that("list_audience_export_jobs", {
  expect_error(svc$list_audience_export_jobs(), NA)
})

test_that("list_audience_generation_jobs", {
  expect_error(svc$list_audience_generation_jobs(), NA)
})

test_that("list_audience_models", {
  expect_error(svc$list_audience_models(), NA)
})

test_that("list_configured_audience_models", {
  expect_error(svc$list_configured_audience_models(), NA)
})

test_that("list_configured_model_algorithms", {
  expect_error(svc$list_configured_model_algorithms(), NA)
})

test_that("list_training_datasets", {
  expect_error(svc$list_training_datasets(), NA)
})
