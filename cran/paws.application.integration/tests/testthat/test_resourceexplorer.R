svc <- paws::resourceexplorer()

test_that("list_indexes", {
  expect_error(svc$list_indexes(), NA)
})

test_that("list_indexes", {
  expect_error(svc$list_indexes(MaxResults = 20), NA)
})

test_that("list_managed_views", {
  expect_error(svc$list_managed_views(), NA)
})

test_that("list_managed_views", {
  expect_error(svc$list_managed_views(MaxResults = 20), NA)
})

test_that("list_resources", {
  expect_error(svc$list_resources(), NA)
})

test_that("list_resources", {
  expect_error(svc$list_resources(MaxResults = 20), NA)
})

test_that("list_supported_resource_types", {
  expect_error(svc$list_supported_resource_types(), NA)
})

test_that("list_supported_resource_types", {
  expect_error(svc$list_supported_resource_types(MaxResults = 20), NA)
})

test_that("list_views", {
  expect_error(svc$list_views(), NA)
})

test_that("list_views", {
  expect_error(svc$list_views(MaxResults = 20), NA)
})
