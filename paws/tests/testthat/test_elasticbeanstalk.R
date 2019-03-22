context("elasticbeanstalk")

svc <- paws::elasticbeanstalk()

test_that("describe_account_attributes", {
  expect_error(svc$describe_account_attributes(), NA)
})

test_that("describe_application_versions", {
  expect_error(svc$describe_application_versions(), NA)
})

test_that("describe_applications", {
  expect_error(svc$describe_applications(), NA)
})

test_that("describe_configuration_options", {
  expect_error(svc$describe_configuration_options(), NA)
})

test_that("describe_environment_health", {
  expect_error(svc$describe_environment_health(), NA)
})

test_that("describe_environment_managed_action_history", {
  expect_error(svc$describe_environment_managed_action_history(), NA)
})

test_that("describe_environment_managed_actions", {
  expect_error(svc$describe_environment_managed_actions(), NA)
})

test_that("describe_environment_resources", {
  expect_error(svc$describe_environment_resources(), NA)
})

test_that("describe_environments", {
  expect_error(svc$describe_environments(), NA)
})

test_that("describe_events", {
  expect_error(svc$describe_events(), NA)
})

test_that("describe_instances_health", {
  expect_error(svc$describe_instances_health(), NA)
})

test_that("describe_platform_version", {
  expect_error(svc$describe_platform_version(), NA)
})

test_that("list_available_solution_stacks", {
  expect_error(svc$list_available_solution_stacks(), NA)
})

test_that("list_platform_versions", {
  expect_error(svc$list_platform_versions(), NA)
})
