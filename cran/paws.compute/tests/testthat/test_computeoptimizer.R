svc <- paws.compute::computeoptimizer()

test_that("describe_recommendation_export_jobs", {
  skip_on_cran()
  expect_error(svc$describe_recommendation_export_jobs(), NA)
})
