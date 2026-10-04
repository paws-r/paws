svc <- paws.database::timestreamquery()

test_that("describe_account_settings", {
  skip_on_cran()
  expect_error(svc$describe_account_settings(), NA)
})

test_that("describe_endpoints", {
  skip_on_cran()
  expect_error(svc$describe_endpoints(), NA)
})

test_that("list_scheduled_queries", {
  skip_on_cran()
  expect_error(svc$list_scheduled_queries(), NA)
})

test_that("list_scheduled_queries", {
  skip_on_cran()
  expect_error(svc$list_scheduled_queries(MaxResults = 20), NA)
})
