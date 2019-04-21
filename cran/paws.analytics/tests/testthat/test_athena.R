context("athena")

svc <- paws::athena()

test_that("list_named_queries", {
  expect_error(svc$list_named_queries(), NA)
})

test_that("list_named_queries", {
  expect_error(svc$list_named_queries(MaxResults = 20), NA)
})

test_that("list_query_executions", {
  expect_error(svc$list_query_executions(), NA)
})

test_that("list_query_executions", {
  expect_error(svc$list_query_executions(MaxResults = 20), NA)
})

test_that("list_work_groups", {
  expect_error(svc$list_work_groups(), NA)
})

test_that("list_work_groups", {
  expect_error(svc$list_work_groups(MaxResults = 20), NA)
})
