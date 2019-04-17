context("resourcegroups")

svc <- paws::resourcegroups()

test_that("list_groups", {
  expect_error(svc$list_groups(), NA)
})

test_that("list_groups", {
  expect_error(svc$list_groups(MaxResults = 20), NA)
})
