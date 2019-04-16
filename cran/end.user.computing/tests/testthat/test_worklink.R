context("worklink")

svc <- paws::worklink()

test_that("list_fleets", {
  expect_error(svc$list_fleets(), NA)
})

test_that("list_fleets", {
  expect_error(svc$list_fleets(MaxResults = 20), NA)
})
