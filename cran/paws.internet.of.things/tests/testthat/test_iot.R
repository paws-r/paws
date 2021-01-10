context("iot")

svc <- paws::iot()

test_that("describe_account_audit_configuration", {
  expect_error(svc$describe_account_audit_configuration(), NA)
})

test_that("describe_endpoint", {
  expect_error(svc$describe_endpoint(), NA)
})

test_that("describe_event_configurations", {
  expect_error(svc$describe_event_configurations(), NA)
})

test_that("list_active_violations", {
  expect_error(svc$list_active_violations(), NA)
})

test_that("list_audit_suppressions", {
  expect_error(svc$list_audit_suppressions(), NA)
})

test_that("list_authorizers", {
  expect_error(svc$list_authorizers(), NA)
})

test_that("list_billing_groups", {
  expect_error(svc$list_billing_groups(), NA)
})

test_that("list_ca_certificates", {
  expect_error(svc$list_ca_certificates(), NA)
})

test_that("list_certificates", {
  expect_error(svc$list_certificates(), NA)
})

test_that("list_custom_metrics", {
  expect_error(svc$list_custom_metrics(), NA)
})

test_that("list_detect_mitigation_actions_executions", {
  expect_error(svc$list_detect_mitigation_actions_executions(), NA)
})

test_that("list_dimensions", {
  expect_error(svc$list_dimensions(), NA)
})

test_that("list_domain_configurations", {
  expect_error(svc$list_domain_configurations(), NA)
})

test_that("list_indices", {
  expect_error(svc$list_indices(), NA)
})

test_that("list_jobs", {
  expect_error(svc$list_jobs(), NA)
})

test_that("list_mitigation_actions", {
  expect_error(svc$list_mitigation_actions(), NA)
})

test_that("list_ota_updates", {
  expect_error(svc$list_ota_updates(), NA)
})

test_that("list_outgoing_certificates", {
  expect_error(svc$list_outgoing_certificates(), NA)
})

test_that("list_policies", {
  expect_error(svc$list_policies(), NA)
})

test_that("list_provisioning_templates", {
  expect_error(svc$list_provisioning_templates(), NA)
})

test_that("list_role_aliases", {
  expect_error(svc$list_role_aliases(), NA)
})

test_that("list_scheduled_audits", {
  expect_error(svc$list_scheduled_audits(), NA)
})

test_that("list_security_profiles", {
  expect_error(svc$list_security_profiles(), NA)
})

test_that("list_streams", {
  expect_error(svc$list_streams(), NA)
})

test_that("list_thing_groups", {
  expect_error(svc$list_thing_groups(), NA)
})

test_that("list_thing_registration_tasks", {
  expect_error(svc$list_thing_registration_tasks(), NA)
})

test_that("list_thing_types", {
  expect_error(svc$list_thing_types(), NA)
})

test_that("list_things", {
  expect_error(svc$list_things(), NA)
})

test_that("list_topic_rule_destinations", {
  expect_error(svc$list_topic_rule_destinations(), NA)
})

test_that("list_topic_rules", {
  expect_error(svc$list_topic_rules(), NA)
})
