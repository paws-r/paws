context("acm")

svc <- paws::acm()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_certificates", {
  expect_error(svc$list_certificates(), NA)
})

}
