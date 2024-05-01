svc <- paws::cloudwatchinternetmonitor()

test_that("list_internet_events", {
  expect_error(svc$list_internet_events(), NA)
})

test_that("list_internet_events", {
  expect_error(svc$list_internet_events(MaxResults = 20), NA)
})

test_that("list_monitors", {
  expect_error(svc$list_monitors(), NA)
})

test_that("list_monitors", {
  expect_error(svc$list_monitors(MaxResults = 20), NA)
})
