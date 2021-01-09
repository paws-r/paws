context("timestreamwrite")

svc <- paws::timestreamwrite()

test_that("describe_endpoints", {
  expect_error(svc$describe_endpoints(), NA)
})

test_that("list_databases", {
  expect_error(svc$list_databases(), NA)
})

test_that("list_databases", {
  expect_error(svc$list_databases(MaxResults = 20), NA)
})

test_that("list_tables", {
  expect_error(svc$list_tables(), NA)
})

test_that("list_tables", {
  expect_error(svc$list_tables(MaxResults = 20), NA)
})
