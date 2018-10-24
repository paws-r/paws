test_that("list_items", {
    expect_error(list_items(), NA)
})

test_that("list_items", {
    expect_error(list_items(MaxResults = 20), NA)
})
