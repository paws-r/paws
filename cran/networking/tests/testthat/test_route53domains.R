context("route53domains")

svc <- paws::route53domains()

test_that("list_domains", {
  expect_error(svc$list_domains(), NA)
})

test_that("list_operations", {
  expect_error(svc$list_operations(), NA)
})
