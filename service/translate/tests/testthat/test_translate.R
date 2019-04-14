context("translate")

svc <- paws::translate()

test_that("list_terminologies", {
  expect_error(svc$list_terminologies(), NA)
})

test_that("list_terminologies", {
  expect_error(svc$list_terminologies(MaxResults = 20), NA)
})
