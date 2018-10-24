test_that("list_groups", {
    expect_error(list_groups(), NA)
})

test_that("list_groups", {
    expect_error(list_groups(MaxResults = 20), NA)
})
