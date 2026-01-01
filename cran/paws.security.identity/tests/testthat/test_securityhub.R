svc <- paws::securityhub()

test_that("describe_action_targets", {
  expect_error(svc$describe_action_targets(), NA)
})

test_that("describe_action_targets", {
  expect_error(svc$describe_action_targets(MaxResults = 20), NA)
})

test_that("describe_hub", {
  expect_error(svc$describe_hub(), NA)
})

test_that("describe_organization_configuration", {
  expect_error(svc$describe_organization_configuration(), NA)
})

test_that("describe_products", {
  expect_error(svc$describe_products(), NA)
})

test_that("describe_products", {
  expect_error(svc$describe_products(MaxResults = 20), NA)
})

test_that("describe_products_v2", {
  expect_error(svc$describe_products_v2(), NA)
})

test_that("describe_products_v2", {
  expect_error(svc$describe_products_v2(MaxResults = 20), NA)
})

test_that("describe_security_hub_v2", {
  expect_error(svc$describe_security_hub_v2(), NA)
})

test_that("describe_standards", {
  expect_error(svc$describe_standards(), NA)
})

test_that("describe_standards", {
  expect_error(svc$describe_standards(MaxResults = 20), NA)
})

test_that("list_aggregators_v2", {
  expect_error(svc$list_aggregators_v2(), NA)
})

test_that("list_aggregators_v2", {
  expect_error(svc$list_aggregators_v2(MaxResults = 20), NA)
})

test_that("list_automation_rules", {
  expect_error(svc$list_automation_rules(), NA)
})

test_that("list_automation_rules", {
  expect_error(svc$list_automation_rules(MaxResults = 20), NA)
})

test_that("list_automation_rules_v2", {
  expect_error(svc$list_automation_rules_v2(), NA)
})

test_that("list_automation_rules_v2", {
  expect_error(svc$list_automation_rules_v2(MaxResults = 20), NA)
})

test_that("list_configuration_policies", {
  expect_error(svc$list_configuration_policies(), NA)
})

test_that("list_configuration_policies", {
  expect_error(svc$list_configuration_policies(MaxResults = 20), NA)
})

test_that("list_configuration_policy_associations", {
  expect_error(svc$list_configuration_policy_associations(), NA)
})

test_that("list_configuration_policy_associations", {
  expect_error(svc$list_configuration_policy_associations(MaxResults = 20), NA)
})

test_that("list_connectors_v2", {
  expect_error(svc$list_connectors_v2(), NA)
})

test_that("list_connectors_v2", {
  expect_error(svc$list_connectors_v2(MaxResults = 20), NA)
})

test_that("list_enabled_products_for_import", {
  expect_error(svc$list_enabled_products_for_import(), NA)
})

test_that("list_enabled_products_for_import", {
  expect_error(svc$list_enabled_products_for_import(MaxResults = 20), NA)
})

test_that("list_finding_aggregators", {
  expect_error(svc$list_finding_aggregators(), NA)
})

test_that("list_finding_aggregators", {
  expect_error(svc$list_finding_aggregators(MaxResults = 20), NA)
})

test_that("list_invitations", {
  expect_error(svc$list_invitations(), NA)
})

test_that("list_invitations", {
  expect_error(svc$list_invitations(MaxResults = 20), NA)
})

test_that("list_members", {
  expect_error(svc$list_members(), NA)
})

test_that("list_members", {
  expect_error(svc$list_members(MaxResults = 20), NA)
})

test_that("list_organization_admin_accounts", {
  expect_error(svc$list_organization_admin_accounts(), NA)
})

test_that("list_organization_admin_accounts", {
  expect_error(svc$list_organization_admin_accounts(MaxResults = 20), NA)
})

test_that("list_security_control_definitions", {
  expect_error(svc$list_security_control_definitions(), NA)
})

test_that("list_security_control_definitions", {
  expect_error(svc$list_security_control_definitions(MaxResults = 20), NA)
})
