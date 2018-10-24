test_that("describe_backups", {
    expect_error(describe_backups(), NA)
})

test_that("describe_backups", {
    expect_error(describe_backups(MaxResults = 20), NA)
})

test_that("describe_clusters", {
    expect_error(describe_clusters(), NA)
})

test_that("describe_clusters", {
    expect_error(describe_clusters(MaxResults = 20), NA)
})
