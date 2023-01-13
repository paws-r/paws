svc <- paws::resourcegroupstaggingapi()

test_that("describe_report_creation", {
  expect_error(svc$describe_report_creation(), NA)
})
