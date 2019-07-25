context("applicationinsights")

svc <- paws::applicationinsights()

test_that("list_applications", {
  expect_error(svc$list_applications(), NA)
})

test_that("list_applications", {
  expect_error(svc$list_applications(MaxResults = 20), NA)
})

test_that("list_problems", {
  expect_error(svc$list_problems(), NA)
})

test_that("list_problems", {
  expect_error(svc$list_problems(MaxResults = 20), NA)
})
