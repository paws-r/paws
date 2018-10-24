test_that("list_channels", {
    expect_error(list_channels(), NA)
})

test_that("list_channels", {
    expect_error(list_channels(MaxResults = 20), NA)
})

test_that("list_origin_endpoints", {
    expect_error(list_origin_endpoints(), NA)
})

test_that("list_origin_endpoints", {
    expect_error(list_origin_endpoints(MaxResults = 20), NA)
})
