test_that("list_core_definitions", {
    expect_error(list_core_definitions(), NA)
})

test_that("list_core_definitions", {
    expect_error(list_core_definitions(MaxResults = 20), NA)
})

test_that("list_device_definitions", {
    expect_error(list_device_definitions(), NA)
})

test_that("list_device_definitions", {
    expect_error(list_device_definitions(MaxResults = 20), NA)
})

test_that("list_function_definitions", {
    expect_error(list_function_definitions(), NA)
})

test_that("list_function_definitions", {
    expect_error(list_function_definitions(MaxResults = 20), NA)
})

test_that("list_groups", {
    expect_error(list_groups(), NA)
})

test_that("list_groups", {
    expect_error(list_groups(MaxResults = 20), NA)
})

test_that("list_logger_definitions", {
    expect_error(list_logger_definitions(), NA)
})

test_that("list_logger_definitions", {
    expect_error(list_logger_definitions(MaxResults = 20), NA)
})

test_that("list_resource_definitions", {
    expect_error(list_resource_definitions(), NA)
})

test_that("list_resource_definitions", {
    expect_error(list_resource_definitions(MaxResults = 20), NA)
})

test_that("list_subscription_definitions", {
    expect_error(list_subscription_definitions(), NA)
})

test_that("list_subscription_definitions", {
    expect_error(list_subscription_definitions(MaxResults = 20), NA)
})
