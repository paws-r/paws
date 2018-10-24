test_that("list_action_types", {
    expect_error(list_action_types(), NA)
})

test_that("list_pipelines", {
    expect_error(list_pipelines(), NA)
})

test_that("list_webhooks", {
    expect_error(list_webhooks(), NA)
})

test_that("list_webhooks", {
    expect_error(list_webhooks(MaxResults = 20), NA)
})
