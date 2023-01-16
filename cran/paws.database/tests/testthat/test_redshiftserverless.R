svc <- paws::redshiftserverless()

test_that("list_endpoint_access", {
  expect_error(svc$list_endpoint_access(), NA)
})

test_that("list_namespaces", {
  expect_error(svc$list_namespaces(), NA)
})

test_that("list_recovery_points", {
  expect_error(svc$list_recovery_points(), NA)
})

test_that("list_snapshots", {
  expect_error(svc$list_snapshots(), NA)
})

test_that("list_usage_limits", {
  expect_error(svc$list_usage_limits(), NA)
})

test_that("list_workgroups", {
  expect_error(svc$list_workgroups(), NA)
})
