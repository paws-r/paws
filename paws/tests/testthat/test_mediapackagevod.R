context("mediapackagevod")

svc <- paws::mediapackagevod()

test_that("list_assets", {
  expect_error(svc$list_assets(), NA)
})

test_that("list_assets", {
  expect_error(svc$list_assets(MaxResults = 20), NA)
})

test_that("list_packaging_configurations", {
  expect_error(svc$list_packaging_configurations(), NA)
})

test_that("list_packaging_configurations", {
  expect_error(svc$list_packaging_configurations(MaxResults = 20), NA)
})

test_that("list_packaging_groups", {
  expect_error(svc$list_packaging_groups(), NA)
})

test_that("list_packaging_groups", {
  expect_error(svc$list_packaging_groups(MaxResults = 20), NA)
})
