svc <- paws::timestreamwrite()

test_that("describe_endpoints", {
  skip_on_cran()
  expect_error(svc$describe_endpoints(), NA)
})

test_that("list_batch_load_tasks", {
  skip_on_cran()
  expect_error(svc$list_batch_load_tasks(), NA)
})

test_that("list_batch_load_tasks", {
  skip_on_cran()
  expect_error(svc$list_batch_load_tasks(MaxResults = 20), NA)
})

test_that("list_databases", {
  skip_on_cran()
  expect_error(svc$list_databases(), NA)
})

test_that("list_databases", {
  skip_on_cran()
  expect_error(svc$list_databases(MaxResults = 20), NA)
})

test_that("list_tables", {
  skip_on_cran()
  expect_error(svc$list_tables(), NA)
})

test_that("list_tables", {
  skip_on_cran()
  expect_error(svc$list_tables(MaxResults = 20), NA)
})
