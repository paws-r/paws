svc <- paws.management::autoscalingplans()

test_that("describe_scaling_plans", {
  skip_on_cran()
  expect_error(svc$describe_scaling_plans(), NA)
})

test_that("describe_scaling_plans", {
  skip_on_cran()
  expect_error(svc$describe_scaling_plans(MaxResults = 20), NA)
})
