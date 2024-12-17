svc <- paws::redshiftserverless()

test_that("list_custom_domain_associations", {
  expect_error(svc$list_custom_domain_associations(), NA)
})

test_that("list_endpoint_access", {
  expect_error(svc$list_endpoint_access(), NA)
})

test_that("list_managed_workgroups", {
  expect_error(svc$list_managed_workgroups(), NA)
})

test_that("list_namespaces", {
  expect_error(svc$list_namespaces(), NA)
})

test_that("list_recovery_points", {
  expect_error(svc$list_recovery_points(), NA)
})

test_that("list_scheduled_actions", {
  expect_error(svc$list_scheduled_actions(), NA)
})

test_that("list_snapshot_copy_configurations", {
  expect_error(svc$list_snapshot_copy_configurations(), NA)
})

test_that("list_snapshots", {
  expect_error(svc$list_snapshots(), NA)
})

test_that("list_table_restore_status", {
  expect_error(svc$list_table_restore_status(), NA)
})

test_that("list_usage_limits", {
  expect_error(svc$list_usage_limits(), NA)
})

test_that("list_workgroups", {
  expect_error(svc$list_workgroups(), NA)
})
