test_that("list_organizations", {
    expect_error(list_organizations(), NA)
})

test_that("list_organizations", {
    expect_error(list_organizations(MaxResults = 20), NA)
})
