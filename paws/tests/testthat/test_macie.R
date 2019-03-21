context("macie")

svc <- paws::macie()

test_that("list_member_accounts", {
  expect_error(svc$list_member_accounts(), NA)
})

test_that("list_s3_resources", {
  expect_error(svc$list_s3_resources(), NA)
})
