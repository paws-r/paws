svc <- paws.management::configservice()

test_that("describe_aggregation_authorizations", {
  skip_on_cran()
  expect_error(svc$describe_aggregation_authorizations(), NA)
})

test_that("describe_compliance_by_config_rule", {
  skip_on_cran()
  expect_error(svc$describe_compliance_by_config_rule(), NA)
})

test_that("describe_compliance_by_resource", {
  skip_on_cran()
  expect_error(svc$describe_compliance_by_resource(), NA)
})

test_that("describe_config_rule_evaluation_status", {
  skip_on_cran()
  expect_error(svc$describe_config_rule_evaluation_status(), NA)
})

test_that("describe_config_rules", {
  skip_on_cran()
  expect_error(svc$describe_config_rules(), NA)
})

test_that("describe_configuration_aggregators", {
  skip_on_cran()
  expect_error(svc$describe_configuration_aggregators(), NA)
})

test_that("describe_configuration_recorder_status", {
  skip_on_cran()
  expect_error(svc$describe_configuration_recorder_status(), NA)
})

test_that("describe_configuration_recorders", {
  skip_on_cran()
  expect_error(svc$describe_configuration_recorders(), NA)
})

test_that("describe_conformance_pack_status", {
  skip_on_cran()
  expect_error(svc$describe_conformance_pack_status(), NA)
})

test_that("describe_conformance_packs", {
  skip_on_cran()
  expect_error(svc$describe_conformance_packs(), NA)
})

test_that("describe_delivery_channel_status", {
  skip_on_cran()
  expect_error(svc$describe_delivery_channel_status(), NA)
})

test_that("describe_delivery_channels", {
  skip_on_cran()
  expect_error(svc$describe_delivery_channels(), NA)
})

test_that("describe_organization_config_rule_statuses", {
  skip_on_cran()
  expect_error(svc$describe_organization_config_rule_statuses(), NA)
})

test_that("describe_organization_config_rules", {
  skip_on_cran()
  expect_error(svc$describe_organization_config_rules(), NA)
})

test_that("describe_organization_conformance_pack_statuses", {
  skip_on_cran()
  expect_error(svc$describe_organization_conformance_pack_statuses(), NA)
})

test_that("describe_organization_conformance_packs", {
  skip_on_cran()
  expect_error(svc$describe_organization_conformance_packs(), NA)
})

test_that("describe_pending_aggregation_requests", {
  skip_on_cran()
  expect_error(svc$describe_pending_aggregation_requests(), NA)
})

test_that("describe_retention_configurations", {
  skip_on_cran()
  expect_error(svc$describe_retention_configurations(), NA)
})

test_that("list_configuration_recorders", {
  skip_on_cran()
  expect_error(svc$list_configuration_recorders(), NA)
})

test_that("list_configuration_recorders", {
  skip_on_cran()
  expect_error(svc$list_configuration_recorders(MaxResults = 20), NA)
})

test_that("list_conformance_pack_compliance_scores", {
  skip_on_cran()
  expect_error(svc$list_conformance_pack_compliance_scores(), NA)
})

test_that("list_connectors", {
  skip_on_cran()
  expect_error(svc$list_connectors(), NA)
})

test_that("list_connectors", {
  skip_on_cran()
  expect_error(svc$list_connectors(MaxResults = 20), NA)
})

test_that("list_resource_evaluations", {
  skip_on_cran()
  expect_error(svc$list_resource_evaluations(), NA)
})

test_that("list_stored_queries", {
  skip_on_cran()
  expect_error(svc$list_stored_queries(), NA)
})

test_that("list_stored_queries", {
  skip_on_cran()
  expect_error(svc$list_stored_queries(MaxResults = 20), NA)
})
