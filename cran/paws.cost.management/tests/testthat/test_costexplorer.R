svc <- paws::costexplorer()

test_that("list_cost_allocation_tags", {
  expect_error(svc$list_cost_allocation_tags(), NA)
})

test_that("list_cost_allocation_tags", {
  expect_error(svc$list_cost_allocation_tags(MaxResults = 20), NA)
})

test_that("list_cost_category_definitions", {
  expect_error(svc$list_cost_category_definitions(), NA)
})

test_that("list_cost_category_definitions", {
  expect_error(svc$list_cost_category_definitions(MaxResults = 20), NA)
})
