svc <- paws::neptunedata()

test_that("list_gremlin_queries", {
  expect_error(svc$list_gremlin_queries(), NA)
})

test_that("list_loader_jobs", {
  expect_error(svc$list_loader_jobs(), NA)
})

test_that("list_ml_data_processing_jobs", {
  expect_error(svc$list_ml_data_processing_jobs(), NA)
})

test_that("list_ml_endpoints", {
  expect_error(svc$list_ml_endpoints(), NA)
})

test_that("list_ml_model_training_jobs", {
  expect_error(svc$list_ml_model_training_jobs(), NA)
})

test_that("list_ml_model_transform_jobs", {
  expect_error(svc$list_ml_model_transform_jobs(), NA)
})

test_that("list_open_cypher_queries", {
  expect_error(svc$list_open_cypher_queries(), NA)
})
