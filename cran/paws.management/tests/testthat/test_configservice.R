context("configservice")

svc <- paws::configservice()

test_that("describe_aggregation_authorizations", {
  expect_error(svc$describe_aggregation_authorizations(), NA)
})

test_that("describe_compliance_by_config_rule", {
  expect_error(svc$describe_compliance_by_config_rule(), NA)
})

test_that("describe_compliance_by_resource", {
  expect_error(svc$describe_compliance_by_resource(), NA)
})

test_that("describe_config_rule_evaluation_status", {
  expect_error(svc$describe_config_rule_evaluation_status(), NA)
})

test_that("describe_config_rules", {
  expect_error(svc$describe_config_rules(), NA)
})

test_that("describe_configuration_aggregators", {
  expect_error(svc$describe_configuration_aggregators(), NA)
})

test_that("describe_configuration_recorder_status", {
  expect_error(svc$describe_configuration_recorder_status(), NA)
})

test_that("describe_configuration_recorders", {
  expect_error(svc$describe_configuration_recorders(), NA)
})

test_that("describe_conformance_pack_status", {
  expect_error(svc$describe_conformance_pack_status(), NA)
})

test_that("describe_conformance_packs", {
  expect_error(svc$describe_conformance_packs(), NA)
})

test_that("describe_delivery_channel_status", {
  expect_error(svc$describe_delivery_channel_status(), NA)
})

test_that("describe_delivery_channels", {
  expect_error(svc$describe_delivery_channels(), NA)
})

test_that("describe_organization_config_rule_statuses", {
  expect_error(svc$describe_organization_config_rule_statuses(), NA)
})

test_that("describe_organization_config_rules", {
  expect_error(svc$describe_organization_config_rules(), NA)
})

test_that("describe_organization_conformance_pack_statuses", {
  expect_error(svc$describe_organization_conformance_pack_statuses(), NA)
})

test_that("describe_organization_conformance_packs", {
  expect_error(svc$describe_organization_conformance_packs(), NA)
})

test_that("describe_pending_aggregation_requests", {
  expect_error(svc$describe_pending_aggregation_requests(), NA)
})

test_that("describe_retention_configurations", {
  expect_error(svc$describe_retention_configurations(), NA)
})

test_that("list_stored_queries", {
  expect_error(svc$list_stored_queries(), NA)
})

test_that("list_stored_queries", {
  expect_error(svc$list_stored_queries(MaxResults = 20), NA)
})
