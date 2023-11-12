svc <- paws::opensearchserviceserverless()

test_that("list_collections", {
  expect_error(svc$list_collections(), NA)
})

test_that("list_vpc_endpoints", {
  expect_error(svc$list_vpc_endpoints(), NA)
})
