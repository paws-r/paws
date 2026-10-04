svc <- paws::costexplorer()

test_that("list_commitment_purchase_analyses", {
  skip_on_cran()
  expect_error(svc$list_commitment_purchase_analyses(), NA)
})

test_that("list_cost_allocation_tag_backfill_history", {
  skip_on_cran()
  expect_error(svc$list_cost_allocation_tag_backfill_history(), NA)
})

test_that("list_cost_allocation_tag_backfill_history", {
  skip_on_cran()
  expect_error(svc$list_cost_allocation_tag_backfill_history(MaxResults = 20), NA)
})

test_that("list_cost_allocation_tags", {
  skip_on_cran()
  expect_error(svc$list_cost_allocation_tags(), NA)
})

test_that("list_cost_allocation_tags", {
  skip_on_cran()
  expect_error(svc$list_cost_allocation_tags(MaxResults = 20), NA)
})

test_that("list_cost_category_definitions", {
  skip_on_cran()
  expect_error(svc$list_cost_category_definitions(), NA)
})

test_that("list_cost_category_definitions", {
  skip_on_cran()
  expect_error(svc$list_cost_category_definitions(MaxResults = 20), NA)
})

test_that("list_cost_category_resource_associations", {
  skip_on_cran()
  expect_error(svc$list_cost_category_resource_associations(), NA)
})

test_that("list_cost_category_resource_associations", {
  skip_on_cran()
  expect_error(svc$list_cost_category_resource_associations(MaxResults = 20), NA)
})

test_that("list_savings_plans_purchase_recommendation_generation", {
  skip_on_cran()
  expect_error(svc$list_savings_plans_purchase_recommendation_generation(), NA)
})
