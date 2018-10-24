test_that("list_brokers", {
    expect_error(list_brokers(), NA)
})

test_that("list_brokers", {
    expect_error(list_brokers(MaxResults = 20), NA)
})

test_that("list_configurations", {
    expect_error(list_configurations(), NA)
})

test_that("list_configurations", {
    expect_error(list_configurations(MaxResults = 20), NA)
})
