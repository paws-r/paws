svc <- paws::s3tables()

test_that("list_table_buckets", {
  expect_error(svc$list_table_buckets(), NA)
})
