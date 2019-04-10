context("s3")

svc <- paws::s3()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_buckets", {
  expect_error(svc$list_buckets(), NA)
})

}
