svc <- paws::opensearchserviceserverless()

test_that("list_collection_groups", {
  skip_on_cran()
  expect_error(svc$list_collection_groups(), NA)
})

test_that("list_collections", {
  skip_on_cran()
  expect_error(svc$list_collections(), NA)
})

test_that("list_vpc_endpoints", {
  skip_on_cran()
  expect_error(svc$list_vpc_endpoints(), NA)
})
