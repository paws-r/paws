context("machinelearning")

svc <- paws::machinelearning()

test_that("describe_batch_predictions", {
  expect_error(svc$describe_batch_predictions(), NA)
})

test_that("describe_data_sources", {
  expect_error(svc$describe_data_sources(), NA)
})

test_that("describe_evaluations", {
  expect_error(svc$describe_evaluations(), NA)
})

test_that("describe_ml_models", {
  expect_error(svc$describe_ml_models(), NA)
})
