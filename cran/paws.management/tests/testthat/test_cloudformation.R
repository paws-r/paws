svc <- paws::cloudformation()

test_that("describe_account_limits", {
  expect_error(svc$describe_account_limits(), NA)
})

test_that("describe_events", {
  expect_error(svc$describe_events(), NA)
})

test_that("describe_organizations_access", {
  expect_error(svc$describe_organizations_access(), NA)
})

test_that("describe_publisher", {
  expect_error(svc$describe_publisher(), NA)
})

test_that("describe_stacks", {
  expect_error(svc$describe_stacks(), NA)
})

test_that("describe_type", {
  expect_error(svc$describe_type(), NA)
})

test_that("list_exports", {
  expect_error(svc$list_exports(), NA)
})

test_that("list_generated_templates", {
  expect_error(svc$list_generated_templates(), NA)
})

test_that("list_generated_templates", {
  expect_error(svc$list_generated_templates(MaxResults = 20), NA)
})

test_that("list_hook_results", {
  expect_error(svc$list_hook_results(), NA)
})

test_that("list_resource_scans", {
  expect_error(svc$list_resource_scans(), NA)
})

test_that("list_resource_scans", {
  expect_error(svc$list_resource_scans(MaxResults = 20), NA)
})

test_that("list_stack_refactors", {
  expect_error(svc$list_stack_refactors(), NA)
})

test_that("list_stack_refactors", {
  expect_error(svc$list_stack_refactors(MaxResults = 20), NA)
})

test_that("list_stack_sets", {
  expect_error(svc$list_stack_sets(), NA)
})

test_that("list_stack_sets", {
  expect_error(svc$list_stack_sets(MaxResults = 20), NA)
})

test_that("list_stacks", {
  expect_error(svc$list_stacks(), NA)
})

test_that("list_type_registrations", {
  expect_error(svc$list_type_registrations(), NA)
})

test_that("list_type_registrations", {
  expect_error(svc$list_type_registrations(MaxResults = 20), NA)
})

test_that("list_type_versions", {
  expect_error(svc$list_type_versions(), NA)
})

test_that("list_type_versions", {
  expect_error(svc$list_type_versions(MaxResults = 20), NA)
})

test_that("list_types", {
  expect_error(svc$list_types(), NA)
})

test_that("list_types", {
  expect_error(svc$list_types(MaxResults = 20), NA)
})
