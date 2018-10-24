test_that("describe_services", {
    expect_error(describe_services(), NA)
})

test_that("describe_services", {
    expect_error(describe_services(MaxResults = 20), NA)
})
