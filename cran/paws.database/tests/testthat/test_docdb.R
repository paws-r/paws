svc <- paws::docdb()

test_that("describe_certificates", {
  expect_error(svc$describe_certificates(), NA)
})

test_that("describe_db_cluster_parameter_groups", {
  expect_error(svc$describe_db_cluster_parameter_groups(), NA)
})

test_that("describe_db_cluster_snapshots", {
  expect_error(svc$describe_db_cluster_snapshots(), NA)
})

test_that("describe_db_clusters", {
  expect_error(svc$describe_db_clusters(), NA)
})

test_that("describe_db_engine_versions", {
  expect_error(svc$describe_db_engine_versions(), NA)
})

test_that("describe_db_instances", {
  expect_error(svc$describe_db_instances(), NA)
})

test_that("describe_db_subnet_groups", {
  expect_error(svc$describe_db_subnet_groups(), NA)
})

test_that("describe_event_categories", {
  expect_error(svc$describe_event_categories(), NA)
})

test_that("describe_event_subscriptions", {
  expect_error(svc$describe_event_subscriptions(), NA)
})

test_that("describe_events", {
  expect_error(svc$describe_events(), NA)
})

test_that("describe_global_clusters", {
  expect_error(svc$describe_global_clusters(), NA)
})

test_that("describe_pending_maintenance_actions", {
  expect_error(svc$describe_pending_maintenance_actions(), NA)
})
