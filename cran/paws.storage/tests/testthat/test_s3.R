svc <- paws::s3()

test_that("list_buckets", {
  expect_error(svc$list_buckets(), NA)
})

test_that("list_directory_buckets", {
  expect_error(svc$list_directory_buckets(), NA)
})
