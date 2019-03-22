context("support")

svc <- paws::support()

test_that("describe_cases", {
  expect_error(svc$describe_cases(), NA)
})

test_that("describe_services", {
  expect_error(svc$describe_services(), NA)
})

test_that("describe_severity_levels", {
  expect_error(svc$describe_severity_levels(), NA)
})
