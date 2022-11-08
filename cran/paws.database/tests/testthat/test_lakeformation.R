svc <- paws::lakeformation()

test_that("list_data_cells_filter", {
  expect_error(svc$list_data_cells_filter(), NA)
})

test_that("list_data_cells_filter", {
  expect_error(svc$list_data_cells_filter(MaxResults = 20), NA)
})

test_that("list_lf_tags", {
  expect_error(svc$list_lf_tags(), NA)
})

test_that("list_lf_tags", {
  expect_error(svc$list_lf_tags(MaxResults = 20), NA)
})

test_that("list_permissions", {
  expect_error(svc$list_permissions(), NA)
})

test_that("list_permissions", {
  expect_error(svc$list_permissions(MaxResults = 20), NA)
})

test_that("list_resources", {
  expect_error(svc$list_resources(), NA)
})

test_that("list_resources", {
  expect_error(svc$list_resources(MaxResults = 20), NA)
})

test_that("list_transactions", {
  expect_error(svc$list_transactions(), NA)
})

test_that("list_transactions", {
  expect_error(svc$list_transactions(MaxResults = 20), NA)
})
