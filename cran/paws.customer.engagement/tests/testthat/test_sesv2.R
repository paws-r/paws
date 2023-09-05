svc <- paws::sesv2()

test_that("list_configuration_sets", {
  expect_error(svc$list_configuration_sets(), NA)
})

test_that("list_contact_lists", {
  expect_error(svc$list_contact_lists(), NA)
})

test_that("list_custom_verification_email_templates", {
  expect_error(svc$list_custom_verification_email_templates(), NA)
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

test_that("list_email_templates", {
  expect_error(svc$list_email_templates(), NA)
})

test_that("list_export_jobs", {
  expect_error(svc$list_export_jobs(), NA)
})

test_that("list_import_jobs", {
  expect_error(svc$list_import_jobs(), NA)
})

test_that("list_recommendations", {
  expect_error(svc$list_recommendations(), NA)
})

test_that("list_suppressed_destinations", {
  expect_error(svc$list_suppressed_destinations(), NA)
})
