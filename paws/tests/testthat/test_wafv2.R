context("wafv2")

svc <- paws::wafv2()

test_that("list_logging_configurations", {
  expect_error(svc$list_logging_configurations(), NA)
})
