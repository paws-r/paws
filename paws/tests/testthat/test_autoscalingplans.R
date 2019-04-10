context("autoscalingplans")

svc <- paws::autoscalingplans()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("describe_scaling_plans", {
  expect_error(svc$describe_scaling_plans(), NA)
})

test_that("describe_scaling_plans", {
  expect_error(svc$describe_scaling_plans(MaxResults = 20), NA)
})

}
