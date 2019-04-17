context("workmail")

svc <- paws::workmail()

test_that("list_organizations", {
  expect_error(svc$list_organizations(), NA)
})

test_that("list_organizations", {
  expect_error(svc$list_organizations(MaxResults = 20), NA)
})
