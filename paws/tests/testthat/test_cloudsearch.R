context("cloudsearch")

svc <- paws::cloudsearch()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("describe_domains", {
  expect_error(svc$describe_domains(), NA)
})

test_that("list_domain_names", {
  expect_error(svc$list_domain_names(), NA)
})

}
