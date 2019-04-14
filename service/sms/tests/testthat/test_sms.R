context("sms")

svc <- paws::sms()

test_that("list_apps", {
  expect_error(svc$list_apps(), NA)
})
