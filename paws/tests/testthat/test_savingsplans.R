context("savingsplans")

svc <- paws::savingsplans()

test_that("describe_savings_plans", {
  expect_error(svc$describe_savings_plans(), NA)
})

test_that("describe_savings_plans_offering_rates", {
  expect_error(svc$describe_savings_plans_offering_rates(), NA)
})

test_that("describe_savings_plans_offerings", {
  expect_error(svc$describe_savings_plans_offerings(), NA)
})
