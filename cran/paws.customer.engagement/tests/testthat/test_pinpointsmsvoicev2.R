svc <- paws.customer.engagement::pinpointsmsvoicev2()

test_that("describe_account_attributes", {
  skip_on_cran()
  expect_error(svc$describe_account_attributes(), NA)
})

test_that("describe_account_attributes", {
  skip_on_cran()
  expect_error(svc$describe_account_attributes(MaxResults = 20), NA)
})

test_that("describe_account_limits", {
  skip_on_cran()
  expect_error(svc$describe_account_limits(), NA)
})

test_that("describe_account_limits", {
  skip_on_cran()
  expect_error(svc$describe_account_limits(MaxResults = 20), NA)
})

test_that("describe_configuration_sets", {
  skip_on_cran()
  expect_error(svc$describe_configuration_sets(), NA)
})

test_that("describe_configuration_sets", {
  skip_on_cran()
  expect_error(svc$describe_configuration_sets(MaxResults = 20), NA)
})

test_that("describe_notify_configurations", {
  skip_on_cran()
  expect_error(svc$describe_notify_configurations(), NA)
})

test_that("describe_notify_configurations", {
  skip_on_cran()
  expect_error(svc$describe_notify_configurations(MaxResults = 20), NA)
})

test_that("describe_notify_templates", {
  skip_on_cran()
  expect_error(svc$describe_notify_templates(), NA)
})

test_that("describe_notify_templates", {
  skip_on_cran()
  expect_error(svc$describe_notify_templates(MaxResults = 20), NA)
})

test_that("describe_opt_out_lists", {
  skip_on_cran()
  expect_error(svc$describe_opt_out_lists(), NA)
})

test_that("describe_opt_out_lists", {
  skip_on_cran()
  expect_error(svc$describe_opt_out_lists(MaxResults = 20), NA)
})

test_that("describe_phone_numbers", {
  skip_on_cran()
  expect_error(svc$describe_phone_numbers(), NA)
})

test_that("describe_phone_numbers", {
  skip_on_cran()
  expect_error(svc$describe_phone_numbers(MaxResults = 20), NA)
})

test_that("describe_pools", {
  skip_on_cran()
  expect_error(svc$describe_pools(), NA)
})

test_that("describe_pools", {
  skip_on_cran()
  expect_error(svc$describe_pools(MaxResults = 20), NA)
})

test_that("describe_protect_configurations", {
  skip_on_cran()
  expect_error(svc$describe_protect_configurations(), NA)
})

test_that("describe_protect_configurations", {
  skip_on_cran()
  expect_error(svc$describe_protect_configurations(MaxResults = 20), NA)
})

test_that("describe_rcs_agents", {
  skip_on_cran()
  expect_error(svc$describe_rcs_agents(), NA)
})

test_that("describe_rcs_agents", {
  skip_on_cran()
  expect_error(svc$describe_rcs_agents(MaxResults = 20), NA)
})

test_that("describe_registration_attachments", {
  skip_on_cran()
  expect_error(svc$describe_registration_attachments(), NA)
})

test_that("describe_registration_attachments", {
  skip_on_cran()
  expect_error(svc$describe_registration_attachments(MaxResults = 20), NA)
})

test_that("describe_registration_type_definitions", {
  skip_on_cran()
  expect_error(svc$describe_registration_type_definitions(), NA)
})

test_that("describe_registration_type_definitions", {
  skip_on_cran()
  expect_error(svc$describe_registration_type_definitions(MaxResults = 20), NA)
})

test_that("describe_registrations", {
  skip_on_cran()
  expect_error(svc$describe_registrations(), NA)
})

test_that("describe_registrations", {
  skip_on_cran()
  expect_error(svc$describe_registrations(MaxResults = 20), NA)
})

test_that("describe_sender_ids", {
  skip_on_cran()
  expect_error(svc$describe_sender_ids(), NA)
})

test_that("describe_sender_ids", {
  skip_on_cran()
  expect_error(svc$describe_sender_ids(MaxResults = 20), NA)
})

test_that("describe_spend_limits", {
  skip_on_cran()
  expect_error(svc$describe_spend_limits(), NA)
})

test_that("describe_spend_limits", {
  skip_on_cran()
  expect_error(svc$describe_spend_limits(MaxResults = 20), NA)
})

test_that("describe_verified_destination_numbers", {
  skip_on_cran()
  expect_error(svc$describe_verified_destination_numbers(), NA)
})

test_that("describe_verified_destination_numbers", {
  skip_on_cran()
  expect_error(svc$describe_verified_destination_numbers(MaxResults = 20), NA)
})

test_that("list_notify_countries", {
  skip_on_cran()
  expect_error(svc$list_notify_countries(), NA)
})

test_that("list_notify_countries", {
  skip_on_cran()
  expect_error(svc$list_notify_countries(MaxResults = 20), NA)
})
