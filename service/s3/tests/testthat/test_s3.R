context("s3")

svc <- paws::s3()

test_that("list_buckets", {
  expect_error(svc$list_buckets(), NA)
})
