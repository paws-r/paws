svc <- paws::resourcegroupstaggingapi()

test_that("describe_report_creation", {
  expect_error(svc$describe_report_creation(), NA)
})

test_that("list_required_tags", {
  expect_error(svc$list_required_tags(), NA)
})

test_that("list_required_tags", {
  expect_error(svc$list_required_tags(MaxResults = 20), NA)
})
