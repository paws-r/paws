svc <- paws::applicationcostprofiler()

test_that("list_report_definitions", {
  expect_error(svc$list_report_definitions(), NA)
})
