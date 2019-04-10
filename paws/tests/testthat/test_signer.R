context("signer")

svc <- paws::signer()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_signing_jobs", {
  expect_error(svc$list_signing_jobs(), NA)
})

test_that("list_signing_platforms", {
  expect_error(svc$list_signing_platforms(), NA)
})

test_that("list_signing_profiles", {
  expect_error(svc$list_signing_profiles(), NA)
})

}
