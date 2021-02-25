svc <- paws::computeoptimizer()

test_that("describe_recommendation_export_jobs", {
  expect_error(svc$describe_recommendation_export_jobs(), NA)
})
