svc <- paws::dataexchange()

test_that("list_data_sets", {
  expect_error(svc$list_data_sets(), NA)
})

test_that("list_data_sets", {
  expect_error(svc$list_data_sets(MaxResults = 20), NA)
})

test_that("list_jobs", {
  expect_error(svc$list_jobs(), NA)
})

test_that("list_jobs", {
  expect_error(svc$list_jobs(MaxResults = 20), NA)
})
