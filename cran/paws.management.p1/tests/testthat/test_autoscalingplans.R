svc <- paws::autoscalingplans()

test_that("describe_scaling_plans", {
  expect_error(svc$describe_scaling_plans(), NA)
})

test_that("describe_scaling_plans", {
  expect_error(svc$describe_scaling_plans(MaxResults = 20), NA)
})
