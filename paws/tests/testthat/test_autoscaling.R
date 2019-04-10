context("autoscaling")

svc <- paws::autoscaling()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("describe_account_limits", {
  expect_error(svc$describe_account_limits(), NA)
})

test_that("describe_adjustment_types", {
  expect_error(svc$describe_adjustment_types(), NA)
})

test_that("describe_auto_scaling_groups", {
  expect_error(svc$describe_auto_scaling_groups(), NA)
})

test_that("describe_auto_scaling_instances", {
  expect_error(svc$describe_auto_scaling_instances(), NA)
})

test_that("describe_auto_scaling_notification_types", {
  expect_error(svc$describe_auto_scaling_notification_types(), NA)
})

test_that("describe_launch_configurations", {
  expect_error(svc$describe_launch_configurations(), NA)
})

test_that("describe_lifecycle_hook_types", {
  expect_error(svc$describe_lifecycle_hook_types(), NA)
})

test_that("describe_metric_collection_types", {
  expect_error(svc$describe_metric_collection_types(), NA)
})

test_that("describe_notification_configurations", {
  expect_error(svc$describe_notification_configurations(), NA)
})

test_that("describe_policies", {
  expect_error(svc$describe_policies(), NA)
})

test_that("describe_scaling_activities", {
  expect_error(svc$describe_scaling_activities(), NA)
})

test_that("describe_scaling_process_types", {
  expect_error(svc$describe_scaling_process_types(), NA)
})

test_that("describe_scheduled_actions", {
  expect_error(svc$describe_scheduled_actions(), NA)
})

test_that("describe_tags", {
  expect_error(svc$describe_tags(), NA)
})

test_that("describe_termination_policy_types", {
  expect_error(svc$describe_termination_policy_types(), NA)
})

}
