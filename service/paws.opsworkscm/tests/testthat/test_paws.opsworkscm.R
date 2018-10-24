test_that("describe_account_attributes", {
    expect_error(describe_account_attributes(), NA)
})

test_that("describe_backups", {
    expect_error(describe_backups(), NA)
})

test_that("describe_backups", {
    expect_error(describe_backups(MaxResults = 20), NA)
})

test_that("describe_servers", {
    expect_error(describe_servers(), NA)
})

test_that("describe_servers", {
    expect_error(describe_servers(MaxResults = 20), NA)
})
