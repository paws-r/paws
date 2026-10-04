svc <- paws::redshiftserverless()

test_that("list_custom_domain_associations", {
  skip_on_cran()
  expect_error(svc$list_custom_domain_associations(), NA)
})

test_that("list_endpoint_access", {
  skip_on_cran()
  expect_error(svc$list_endpoint_access(), NA)
})

test_that("list_managed_workgroups", {
  skip_on_cran()
  expect_error(svc$list_managed_workgroups(), NA)
})

test_that("list_namespaces", {
  skip_on_cran()
  expect_error(svc$list_namespaces(), NA)
})

test_that("list_recovery_points", {
  skip_on_cran()
  expect_error(svc$list_recovery_points(), NA)
})

test_that("list_reservation_offerings", {
  skip_on_cran()
  expect_error(svc$list_reservation_offerings(), NA)
})

test_that("list_reservations", {
  skip_on_cran()
  expect_error(svc$list_reservations(), NA)
})

test_that("list_scheduled_actions", {
  skip_on_cran()
  expect_error(svc$list_scheduled_actions(), NA)
})

test_that("list_snapshot_copy_configurations", {
  skip_on_cran()
  expect_error(svc$list_snapshot_copy_configurations(), NA)
})

test_that("list_snapshots", {
  skip_on_cran()
  expect_error(svc$list_snapshots(), NA)
})

test_that("list_table_restore_status", {
  skip_on_cran()
  expect_error(svc$list_table_restore_status(), NA)
})

test_that("list_tracks", {
  skip_on_cran()
  expect_error(svc$list_tracks(), NA)
})

test_that("list_usage_limits", {
  skip_on_cran()
  expect_error(svc$list_usage_limits(), NA)
})

test_that("list_workgroups", {
  skip_on_cran()
  expect_error(svc$list_workgroups(), NA)
})
