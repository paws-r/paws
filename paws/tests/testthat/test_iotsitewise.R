context("iotsitewise")

svc <- paws::iotsitewise()

test_that("describe_logging_options", {
  expect_error(svc$describe_logging_options(), NA)
})

test_that("list_access_policies", {
  expect_error(svc$list_access_policies(), NA)
})

test_that("list_asset_models", {
  expect_error(svc$list_asset_models(), NA)
})

test_that("list_assets", {
  expect_error(svc$list_assets(), NA)
})

test_that("list_gateways", {
  expect_error(svc$list_gateways(), NA)
})

test_that("list_portals", {
  expect_error(svc$list_portals(), NA)
})
