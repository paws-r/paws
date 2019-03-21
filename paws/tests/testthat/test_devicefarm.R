context("devicefarm")

svc <- paws::devicefarm()

test_that("list_device_instances", {
  expect_error(svc$list_device_instances(), NA)
})

test_that("list_devices", {
  expect_error(svc$list_devices(), NA)
})

test_that("list_instance_profiles", {
  expect_error(svc$list_instance_profiles(), NA)
})

test_that("list_offering_promotions", {
  expect_error(svc$list_offering_promotions(), NA)
})

test_that("list_offering_transactions", {
  expect_error(svc$list_offering_transactions(), NA)
})

test_that("list_offerings", {
  expect_error(svc$list_offerings(), NA)
})

test_that("list_projects", {
  expect_error(svc$list_projects(), NA)
})

test_that("list_vpce_configurations", {
  expect_error(svc$list_vpce_configurations(), NA)
})
