context("chime")

svc <- paws::chime()

test_that("list_accounts", {
  expect_error(svc$list_accounts(), NA)
})

test_that("list_accounts", {
  expect_error(svc$list_accounts(MaxResults = 20), NA)
})
