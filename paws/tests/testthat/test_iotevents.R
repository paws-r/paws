context("iotevents")

svc <- paws::iotevents()

test_that("describe_logging_options", {
  expect_error(svc$describe_logging_options(), NA)
})

test_that("list_detector_models", {
  expect_error(svc$list_detector_models(), NA)
})

test_that("list_inputs", {
  expect_error(svc$list_inputs(), NA)
})
