context("iotwireless")

svc <- paws::iotwireless()

test_that("list_destinations", {
  expect_error(svc$list_destinations(), NA)
})

test_that("list_destinations", {
  expect_error(svc$list_destinations(MaxResults = 20), NA)
})

test_that("list_device_profiles", {
  expect_error(svc$list_device_profiles(), NA)
})

test_that("list_device_profiles", {
  expect_error(svc$list_device_profiles(MaxResults = 20), NA)
})

test_that("list_partner_accounts", {
  expect_error(svc$list_partner_accounts(), NA)
})

test_that("list_partner_accounts", {
  expect_error(svc$list_partner_accounts(MaxResults = 20), NA)
})

test_that("list_service_profiles", {
  expect_error(svc$list_service_profiles(), NA)
})

test_that("list_service_profiles", {
  expect_error(svc$list_service_profiles(MaxResults = 20), NA)
})

test_that("list_wireless_devices", {
  expect_error(svc$list_wireless_devices(), NA)
})

test_that("list_wireless_devices", {
  expect_error(svc$list_wireless_devices(MaxResults = 20), NA)
})

test_that("list_wireless_gateway_task_definitions", {
  expect_error(svc$list_wireless_gateway_task_definitions(), NA)
})

test_that("list_wireless_gateway_task_definitions", {
  expect_error(svc$list_wireless_gateway_task_definitions(MaxResults = 20), NA)
})

test_that("list_wireless_gateways", {
  expect_error(svc$list_wireless_gateways(), NA)
})

test_that("list_wireless_gateways", {
  expect_error(svc$list_wireless_gateways(MaxResults = 20), NA)
})
