test_that("list_member_accounts", {
    expect_error(list_member_accounts(), NA)
})

test_that("list_member_accounts", {
    expect_error(list_member_accounts(MaxResults = 20), NA)
})

test_that("list_policies", {
    expect_error(list_policies(), NA)
})

test_that("list_policies", {
    expect_error(list_policies(MaxResults = 20), NA)
})
