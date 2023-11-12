svc <- paws::cloudwatchobservabilityaccessmanager()

test_that("list_links", {
  expect_error(svc$list_links(), NA)
})

test_that("list_links", {
  expect_error(svc$list_links(MaxResults = 20), NA)
})

test_that("list_sinks", {
  expect_error(svc$list_sinks(), NA)
})

test_that("list_sinks", {
  expect_error(svc$list_sinks(MaxResults = 20), NA)
})
