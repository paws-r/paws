test_that("list_named_queries", {
    expect_error(list_named_queries(), NA)
})

test_that("list_named_queries", {
    expect_error(list_named_queries(MaxResults = 20), NA)
})

test_that("list_query_executions", {
    expect_error(list_query_executions(), NA)
})

test_that("list_query_executions", {
    expect_error(list_query_executions(MaxResults = 20), NA)
})
