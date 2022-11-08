svc <- paws::frauddetector()

test_that("describe_model_versions", {
  expect_error(svc$describe_model_versions(), NA)
})

test_that("list_event_predictions", {
  expect_error(svc$list_event_predictions(), NA)
})
