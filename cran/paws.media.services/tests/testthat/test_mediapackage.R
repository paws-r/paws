svc <- paws::mediapackage()

test_that("list_channels", {
  expect_error(svc$list_channels(), NA)
})

test_that("list_channels", {
  expect_error(svc$list_channels(MaxResults = 20), NA)
})

test_that("list_harvest_jobs", {
  expect_error(svc$list_harvest_jobs(), NA)
})

test_that("list_harvest_jobs", {
  expect_error(svc$list_harvest_jobs(MaxResults = 20), NA)
})

test_that("list_origin_endpoints", {
  expect_error(svc$list_origin_endpoints(), NA)
})

test_that("list_origin_endpoints", {
  expect_error(svc$list_origin_endpoints(MaxResults = 20), NA)
})
