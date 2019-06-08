context("securityhub")

svc <- paws::securityhub()

test_that("describe_products", {
  expect_error(svc$describe_products(), NA)
})

test_that("describe_products", {
  expect_error(svc$describe_products(MaxResults = 20), NA)
})

test_that("list_enabled_products_for_import", {
  expect_error(svc$list_enabled_products_for_import(), NA)
})

test_that("list_enabled_products_for_import", {
  expect_error(svc$list_enabled_products_for_import(MaxResults = 20), NA)
})

test_that("list_invitations", {
  expect_error(svc$list_invitations(), NA)
})

test_that("list_invitations", {
  expect_error(svc$list_invitations(MaxResults = 20), NA)
})

test_that("list_members", {
  expect_error(svc$list_members(), NA)
})

test_that("list_members", {
  expect_error(svc$list_members(MaxResults = 20), NA)
})

test_that("list_product_subscribers", {
  expect_error(svc$list_product_subscribers(), NA)
})

test_that("list_product_subscribers", {
  expect_error(svc$list_product_subscribers(MaxResults = 20), NA)
})
