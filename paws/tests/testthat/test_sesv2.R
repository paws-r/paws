context("sesv2")

svc <- paws::sesv2()

test_that("list_configuration_sets", {
  expect_error(svc$list_configuration_sets(), NA)
})

test_that("list_dedicated_ip_pools", {
  expect_error(svc$list_dedicated_ip_pools(), NA)
})

test_that("list_deliverability_test_reports", {
  expect_error(svc$list_deliverability_test_reports(), NA)
})

test_that("list_email_identities", {
  expect_error(svc$list_email_identities(), NA)
})

test_that("list_suppressed_destinations", {
  expect_error(svc$list_suppressed_destinations(), NA)
})
