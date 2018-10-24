test_that("list_secrets", {
    expect_error(list_secrets(), NA)
})

test_that("list_secrets", {
    expect_error(list_secrets(MaxResults = 20), NA)
})
