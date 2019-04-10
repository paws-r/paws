context("greengrass")

svc <- paws::greengrass()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_bulk_deployments", {
  expect_error(svc$list_bulk_deployments(), NA)
})

test_that("list_bulk_deployments", {
  expect_error(svc$list_bulk_deployments(MaxResults = 20), NA)
})

test_that("list_connector_definitions", {
  expect_error(svc$list_connector_definitions(), NA)
})

test_that("list_connector_definitions", {
  expect_error(svc$list_connector_definitions(MaxResults = 20), NA)
})

test_that("list_core_definitions", {
  expect_error(svc$list_core_definitions(), NA)
})

test_that("list_core_definitions", {
  expect_error(svc$list_core_definitions(MaxResults = 20), NA)
})

test_that("list_device_definitions", {
  expect_error(svc$list_device_definitions(), NA)
})

test_that("list_device_definitions", {
  expect_error(svc$list_device_definitions(MaxResults = 20), NA)
})

test_that("list_function_definitions", {
  expect_error(svc$list_function_definitions(), NA)
})

test_that("list_function_definitions", {
  expect_error(svc$list_function_definitions(MaxResults = 20), NA)
})

test_that("list_groups", {
  expect_error(svc$list_groups(), NA)
})

test_that("list_groups", {
  expect_error(svc$list_groups(MaxResults = 20), NA)
})

test_that("list_logger_definitions", {
  expect_error(svc$list_logger_definitions(), NA)
})

test_that("list_logger_definitions", {
  expect_error(svc$list_logger_definitions(MaxResults = 20), NA)
})

test_that("list_resource_definitions", {
  expect_error(svc$list_resource_definitions(), NA)
})

test_that("list_resource_definitions", {
  expect_error(svc$list_resource_definitions(MaxResults = 20), NA)
})

test_that("list_subscription_definitions", {
  expect_error(svc$list_subscription_definitions(), NA)
})

test_that("list_subscription_definitions", {
  expect_error(svc$list_subscription_definitions(MaxResults = 20), NA)
})

}
