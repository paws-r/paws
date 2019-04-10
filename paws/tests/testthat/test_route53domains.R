context("route53domains")

svc <- paws::route53domains()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_domains", {
  expect_error(svc$list_domains(), NA)
})

test_that("list_operations", {
  expect_error(svc$list_operations(), NA)
})

}
