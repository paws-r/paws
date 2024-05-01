svc <- paws::timestreamquery()

test_that("describe_account_settings", {
  expect_error(svc$describe_account_settings(), NA)
})

test_that("describe_endpoints", {
  expect_error(svc$describe_endpoints(), NA)
})

test_that("list_scheduled_queries", {
  expect_error(svc$list_scheduled_queries(), NA)
})

test_that("list_scheduled_queries", {
  expect_error(svc$list_scheduled_queries(MaxResults = 20), NA)
})
