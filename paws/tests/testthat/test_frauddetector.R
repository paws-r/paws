svc <- paws::frauddetector()

test_that("describe_model_versions", {
  expect_error(svc$describe_model_versions(), NA)
})
