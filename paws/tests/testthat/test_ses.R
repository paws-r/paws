context("ses")

svc <- paws::ses()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("describe_active_receipt_rule_set", {
  expect_error(svc$describe_active_receipt_rule_set(), NA)
})

test_that("list_configuration_sets", {
  expect_error(svc$list_configuration_sets(), NA)
})

test_that("list_custom_verification_email_templates", {
  expect_error(svc$list_custom_verification_email_templates(), NA)
})

test_that("list_custom_verification_email_templates", {
  expect_error(svc$list_custom_verification_email_templates(MaxResults = 20), NA)
})

test_that("list_identities", {
  expect_error(svc$list_identities(), NA)
})

test_that("list_receipt_filters", {
  expect_error(svc$list_receipt_filters(), NA)
})

test_that("list_receipt_rule_sets", {
  expect_error(svc$list_receipt_rule_sets(), NA)
})

test_that("list_templates", {
  expect_error(svc$list_templates(), NA)
})

test_that("list_verified_email_addresses", {
  expect_error(svc$list_verified_email_addresses(), NA)
})

}
