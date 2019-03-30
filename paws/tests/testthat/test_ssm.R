context("ssm")

svc <- paws::ssm()

test_that("describe_activations", {
  expect_error(svc$describe_activations(), NA)
})

test_that("describe_activations", {
  expect_error(svc$describe_activations(MaxResults = 20), NA)
})

test_that("describe_automation_executions", {
  expect_error(svc$describe_automation_executions(), NA)
})

test_that("describe_automation_executions", {
  expect_error(svc$describe_automation_executions(MaxResults = 20), NA)
})

test_that("describe_available_patches", {
  expect_error(svc$describe_available_patches(), NA)
})

test_that("describe_available_patches", {
  expect_error(svc$describe_available_patches(MaxResults = 20), NA)
})

test_that("describe_instance_information", {
  expect_error(svc$describe_instance_information(), NA)
})

test_that("describe_instance_information", {
  expect_error(svc$describe_instance_information(MaxResults = 20), NA)
})

test_that("describe_inventory_deletions", {
  expect_error(svc$describe_inventory_deletions(), NA)
})

test_that("describe_inventory_deletions", {
  expect_error(svc$describe_inventory_deletions(MaxResults = 20), NA)
})

test_that("describe_maintenance_windows", {
  expect_error(svc$describe_maintenance_windows(), NA)
})

test_that("describe_maintenance_windows", {
  expect_error(svc$describe_maintenance_windows(MaxResults = 20), NA)
})

test_that("describe_parameters", {
  expect_error(svc$describe_parameters(), NA)
})

test_that("describe_parameters", {
  expect_error(svc$describe_parameters(MaxResults = 20), NA)
})

test_that("describe_patch_baselines", {
  expect_error(svc$describe_patch_baselines(), NA)
})

test_that("describe_patch_baselines", {
  expect_error(svc$describe_patch_baselines(MaxResults = 20), NA)
})

test_that("describe_patch_groups", {
  expect_error(svc$describe_patch_groups(), NA)
})

test_that("describe_patch_groups", {
  expect_error(svc$describe_patch_groups(MaxResults = 20), NA)
})

test_that("list_associations", {
  expect_error(svc$list_associations(), NA)
})

test_that("list_associations", {
  expect_error(svc$list_associations(MaxResults = 20), NA)
})

test_that("list_command_invocations", {
  expect_error(svc$list_command_invocations(), NA)
})

test_that("list_command_invocations", {
  expect_error(svc$list_command_invocations(MaxResults = 20), NA)
})

test_that("list_commands", {
  expect_error(svc$list_commands(), NA)
})

test_that("list_commands", {
  expect_error(svc$list_commands(MaxResults = 20), NA)
})

test_that("list_documents", {
  expect_error(svc$list_documents(), NA)
})

test_that("list_documents", {
  expect_error(svc$list_documents(MaxResults = 20), NA)
})

test_that("list_resource_compliance_summaries", {
  expect_error(svc$list_resource_compliance_summaries(), NA)
})

test_that("list_resource_compliance_summaries", {
  expect_error(svc$list_resource_compliance_summaries(MaxResults = 20), NA)
})

test_that("list_resource_data_sync", {
  expect_error(svc$list_resource_data_sync(), NA)
})

test_that("list_resource_data_sync", {
  expect_error(svc$list_resource_data_sync(MaxResults = 20), NA)
})
