context("elb")

svc <- paws::elb()

test_that("describe_account_limits", {
  expect_error(svc$describe_account_limits(), NA)
})

test_that("describe_load_balancer_policies", {
  expect_error(svc$describe_load_balancer_policies(), NA)
})

test_that("describe_load_balancer_policy_types", {
  expect_error(svc$describe_load_balancer_policy_types(), NA)
})

test_that("describe_load_balancers", {
  expect_error(svc$describe_load_balancers(), NA)
})
