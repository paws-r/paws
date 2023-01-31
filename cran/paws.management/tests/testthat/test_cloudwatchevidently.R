svc <- paws::cloudwatchevidently()

test_that("list_projects", {
  expect_error(svc$list_projects(), NA)
})

test_that("list_segments", {
  expect_error(svc$list_segments(), NA)
})
