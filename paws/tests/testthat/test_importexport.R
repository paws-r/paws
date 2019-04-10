context("importexport")

svc <- paws::importexport()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_jobs", {
  expect_error(svc$list_jobs(), NA)
})

}
