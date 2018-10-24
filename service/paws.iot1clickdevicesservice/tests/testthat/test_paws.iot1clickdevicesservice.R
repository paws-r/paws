test_that("list_devices", {
    expect_error(list_devices(), NA)
})

test_that("list_devices", {
    expect_error(list_devices(MaxResults = 20), NA)
})
