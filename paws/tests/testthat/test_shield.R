context("shield")

svc <- paws::shield()

test_that("list_attacks", {
  expect_error(svc$list_attacks(), NA)
})

test_that("list_attacks", {
  expect_error(svc$list_attacks(MaxResults = 20), NA)
})
