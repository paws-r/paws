context("chime")

svc <- paws::chime()

test_that("list_accounts", {
  expect_error(svc$list_accounts(), NA)
})

test_that("list_accounts", {
  expect_error(svc$list_accounts(MaxResults = 20), NA)
})

test_that("list_app_instances", {
  expect_error(svc$list_app_instances(), NA)
})

test_that("list_app_instances", {
  expect_error(svc$list_app_instances(MaxResults = 20), NA)
})

test_that("list_channel_memberships_for_app_instance_user", {
  expect_error(svc$list_channel_memberships_for_app_instance_user(), NA)
})

test_that("list_channel_memberships_for_app_instance_user", {
  expect_error(svc$list_channel_memberships_for_app_instance_user(MaxResults = 20), NA)
})

test_that("list_channels_moderated_by_app_instance_user", {
  expect_error(svc$list_channels_moderated_by_app_instance_user(), NA)
})

test_that("list_channels_moderated_by_app_instance_user", {
  expect_error(svc$list_channels_moderated_by_app_instance_user(MaxResults = 20), NA)
})

test_that("list_meetings", {
  expect_error(svc$list_meetings(), NA)
})

test_that("list_meetings", {
  expect_error(svc$list_meetings(MaxResults = 20), NA)
})

test_that("list_phone_number_orders", {
  expect_error(svc$list_phone_number_orders(), NA)
})

test_that("list_phone_number_orders", {
  expect_error(svc$list_phone_number_orders(MaxResults = 20), NA)
})

test_that("list_phone_numbers", {
  expect_error(svc$list_phone_numbers(), NA)
})

test_that("list_phone_numbers", {
  expect_error(svc$list_phone_numbers(MaxResults = 20), NA)
})

test_that("list_sip_media_applications", {
  expect_error(svc$list_sip_media_applications(), NA)
})

test_that("list_sip_media_applications", {
  expect_error(svc$list_sip_media_applications(MaxResults = 20), NA)
})

test_that("list_sip_rules", {
  expect_error(svc$list_sip_rules(), NA)
})

test_that("list_sip_rules", {
  expect_error(svc$list_sip_rules(MaxResults = 20), NA)
})

test_that("list_voice_connector_groups", {
  expect_error(svc$list_voice_connector_groups(), NA)
})

test_that("list_voice_connector_groups", {
  expect_error(svc$list_voice_connector_groups(MaxResults = 20), NA)
})

test_that("list_voice_connectors", {
  expect_error(svc$list_voice_connectors(), NA)
})

test_that("list_voice_connectors", {
  expect_error(svc$list_voice_connectors(MaxResults = 20), NA)
})
