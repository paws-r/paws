svc <- paws::pinpointsmsvoicev2()

test_that("describe_account_attributes", {
  expect_error(svc$describe_account_attributes(), NA)
})

test_that("describe_account_attributes", {
  expect_error(svc$describe_account_attributes(MaxResults = 20), NA)
})

test_that("describe_account_limits", {
  expect_error(svc$describe_account_limits(), NA)
})

test_that("describe_account_limits", {
  expect_error(svc$describe_account_limits(MaxResults = 20), NA)
})

test_that("describe_configuration_sets", {
  expect_error(svc$describe_configuration_sets(), NA)
})

test_that("describe_configuration_sets", {
  expect_error(svc$describe_configuration_sets(MaxResults = 20), NA)
})

test_that("describe_opt_out_lists", {
  expect_error(svc$describe_opt_out_lists(), NA)
})

test_that("describe_opt_out_lists", {
  expect_error(svc$describe_opt_out_lists(MaxResults = 20), NA)
})

test_that("describe_phone_numbers", {
  expect_error(svc$describe_phone_numbers(), NA)
})

test_that("describe_phone_numbers", {
  expect_error(svc$describe_phone_numbers(MaxResults = 20), NA)
})

test_that("describe_pools", {
  expect_error(svc$describe_pools(), NA)
})

test_that("describe_pools", {
  expect_error(svc$describe_pools(MaxResults = 20), NA)
})

test_that("describe_registration_attachments", {
  expect_error(svc$describe_registration_attachments(), NA)
})

test_that("describe_registration_attachments", {
  expect_error(svc$describe_registration_attachments(MaxResults = 20), NA)
})

test_that("describe_registration_type_definitions", {
  expect_error(svc$describe_registration_type_definitions(), NA)
})

test_that("describe_registration_type_definitions", {
  expect_error(svc$describe_registration_type_definitions(MaxResults = 20), NA)
})

test_that("describe_registrations", {
  expect_error(svc$describe_registrations(), NA)
})

test_that("describe_registrations", {
  expect_error(svc$describe_registrations(MaxResults = 20), NA)
})

test_that("describe_sender_ids", {
  expect_error(svc$describe_sender_ids(), NA)
})

test_that("describe_sender_ids", {
  expect_error(svc$describe_sender_ids(MaxResults = 20), NA)
})

test_that("describe_spend_limits", {
  expect_error(svc$describe_spend_limits(), NA)
})

test_that("describe_spend_limits", {
  expect_error(svc$describe_spend_limits(MaxResults = 20), NA)
})

test_that("describe_verified_destination_numbers", {
  expect_error(svc$describe_verified_destination_numbers(), NA)
})

test_that("describe_verified_destination_numbers", {
  expect_error(svc$describe_verified_destination_numbers(MaxResults = 20), NA)
})
