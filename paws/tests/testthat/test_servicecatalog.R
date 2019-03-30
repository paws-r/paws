context("servicecatalog")

svc <- paws::servicecatalog()

test_that("list_accepted_portfolio_shares", {
  expect_error(svc$list_accepted_portfolio_shares(), NA)
})

test_that("list_portfolios", {
  expect_error(svc$list_portfolios(), NA)
})

test_that("list_provisioned_product_plans", {
  expect_error(svc$list_provisioned_product_plans(), NA)
})

test_that("list_record_history", {
  expect_error(svc$list_record_history(), NA)
})

test_that("list_service_actions", {
  expect_error(svc$list_service_actions(), NA)
})
