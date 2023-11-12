svc <- paws::securitylake()

test_that("list_data_lake_exceptions", {
  expect_error(svc$list_data_lake_exceptions(), NA)
})

test_that("list_data_lakes", {
  expect_error(svc$list_data_lakes(), NA)
})

test_that("list_log_sources", {
  expect_error(svc$list_log_sources(), NA)
})

test_that("list_subscribers", {
  expect_error(svc$list_subscribers(), NA)
})
