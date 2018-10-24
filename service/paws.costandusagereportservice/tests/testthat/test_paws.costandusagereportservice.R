test_that("describe_report_definitions", {
    expect_error(describe_report_definitions(), NA)
})

test_that("describe_report_definitions", {
    expect_error(describe_report_definitions(MaxResults = 20), NA)
})
