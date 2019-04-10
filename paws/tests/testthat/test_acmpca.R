context("acmpca")

svc <- paws::acmpca()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_certificate_authorities", {
  expect_error(svc$list_certificate_authorities(), NA)
})

test_that("list_certificate_authorities", {
  expect_error(svc$list_certificate_authorities(MaxResults = 20), NA)
})

}
