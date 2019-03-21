context("licensemanager")

svc <- paws::licensemanager()

test_that("list_license_configurations", {
  expect_error(svc$list_license_configurations(), NA)
})

test_that("list_license_configurations", {
  expect_error(svc$list_license_configurations(MaxResults = 20), NA)
})

test_that("list_resource_inventory", {
  expect_error(svc$list_resource_inventory(), NA)
})

test_that("list_resource_inventory", {
  expect_error(svc$list_resource_inventory(MaxResults = 20), NA)
})
