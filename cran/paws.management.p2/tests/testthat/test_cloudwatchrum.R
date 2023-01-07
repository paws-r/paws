svc <- paws::cloudwatchrum()

test_that("list_app_monitors", {
  expect_error(svc$list_app_monitors(), NA)
})

test_that("list_app_monitors", {
  expect_error(svc$list_app_monitors(MaxResults = 20), NA)
})
