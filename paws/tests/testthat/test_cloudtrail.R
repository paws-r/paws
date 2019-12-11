context("cloudtrail")

svc <- paws::cloudtrail()

test_that("describe_trails", {
  expect_error(svc$describe_trails(), NA)
})

test_that("list_public_keys", {
  expect_error(svc$list_public_keys(), NA)
})

test_that("list_trails", {
  expect_error(svc$list_trails(), NA)
})
