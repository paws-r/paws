context("costexplorer")

svc <- paws::costexplorer()

test_that("list_cost_category_definitions", {
  expect_error(svc$list_cost_category_definitions(), NA)
})

test_that("list_cost_category_definitions", {
  expect_error(svc$list_cost_category_definitions(MaxResults = 20), NA)
})
