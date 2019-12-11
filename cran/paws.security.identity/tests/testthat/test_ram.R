context("ram")

svc <- paws::ram()

test_that("list_permissions", {
  expect_error(svc$list_permissions(), NA)
})
