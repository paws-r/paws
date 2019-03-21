context("mediastoredata")

svc <- paws::mediastoredata()

test_that("list_items", {
  expect_error(svc$list_items(), NA)
})

test_that("list_items", {
  expect_error(svc$list_items(MaxResults = 20), NA)
})
