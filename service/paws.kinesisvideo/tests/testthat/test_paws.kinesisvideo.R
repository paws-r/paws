test_that("describe_stream", {
    expect_error(describe_stream(), NA)
})

test_that("list_streams", {
    expect_error(list_streams(), NA)
})

test_that("list_streams", {
    expect_error(list_streams(MaxResults = 20), NA)
})

test_that("list_tags_for_stream", {
    expect_error(list_tags_for_stream(), NA)
})
