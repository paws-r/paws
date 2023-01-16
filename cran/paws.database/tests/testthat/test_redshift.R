svc <- paws::redshift()

test_that("describe_account_attributes", {
  expect_error(svc$describe_account_attributes(), NA)
})

test_that("describe_authentication_profiles", {
  expect_error(svc$describe_authentication_profiles(), NA)
})

test_that("describe_cluster_db_revisions", {
  expect_error(svc$describe_cluster_db_revisions(), NA)
})

test_that("describe_cluster_parameter_groups", {
  expect_error(svc$describe_cluster_parameter_groups(), NA)
})

test_that("describe_cluster_snapshots", {
  expect_error(svc$describe_cluster_snapshots(), NA)
})

test_that("describe_cluster_subnet_groups", {
  expect_error(svc$describe_cluster_subnet_groups(), NA)
})

test_that("describe_cluster_tracks", {
  expect_error(svc$describe_cluster_tracks(), NA)
})

test_that("describe_cluster_versions", {
  expect_error(svc$describe_cluster_versions(), NA)
})

test_that("describe_clusters", {
  expect_error(svc$describe_clusters(), NA)
})

test_that("describe_data_shares", {
  expect_error(svc$describe_data_shares(), NA)
})

test_that("describe_data_shares_for_consumer", {
  expect_error(svc$describe_data_shares_for_consumer(), NA)
})

test_that("describe_data_shares_for_producer", {
  expect_error(svc$describe_data_shares_for_producer(), NA)
})

test_that("describe_endpoint_access", {
  expect_error(svc$describe_endpoint_access(), NA)
})

test_that("describe_endpoint_authorization", {
  expect_error(svc$describe_endpoint_authorization(), NA)
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

test_that("describe_hsm_client_certificates", {
  expect_error(svc$describe_hsm_client_certificates(), NA)
})

test_that("describe_hsm_configurations", {
  expect_error(svc$describe_hsm_configurations(), NA)
})

test_that("describe_orderable_cluster_options", {
  expect_error(svc$describe_orderable_cluster_options(), NA)
})

test_that("describe_reserved_node_exchange_status", {
  expect_error(svc$describe_reserved_node_exchange_status(), NA)
})

test_that("describe_reserved_node_offerings", {
  expect_error(svc$describe_reserved_node_offerings(), NA)
})

test_that("describe_reserved_nodes", {
  expect_error(svc$describe_reserved_nodes(), NA)
})

test_that("describe_scheduled_actions", {
  expect_error(svc$describe_scheduled_actions(), NA)
})

test_that("describe_snapshot_copy_grants", {
  expect_error(svc$describe_snapshot_copy_grants(), NA)
})

test_that("describe_snapshot_schedules", {
  expect_error(svc$describe_snapshot_schedules(), NA)
})

test_that("describe_storage", {
  expect_error(svc$describe_storage(), NA)
})

test_that("describe_tags", {
  expect_error(svc$describe_tags(), NA)
})

test_that("describe_usage_limits", {
  expect_error(svc$describe_usage_limits(), NA)
})
