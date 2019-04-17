context("opsworkscm")

svc <- paws::opsworkscm()

test_that("describe_account_attributes", {
  expect_error(svc$describe_account_attributes(), NA)
})
