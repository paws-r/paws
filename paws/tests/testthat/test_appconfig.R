context("appconfig")

svc <- paws::appconfig()

test_that("list_applications", {
  expect_error(svc$list_applications(), NA)
})

test_that("list_applications", {
  expect_error(svc$list_applications(MaxResults = 20), NA)
})

test_that("list_deployment_strategies", {
  expect_error(svc$list_deployment_strategies(), NA)
})

test_that("list_deployment_strategies", {
  expect_error(svc$list_deployment_strategies(MaxResults = 20), NA)
})
