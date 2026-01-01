svc <- paws::rds()

test_that("describe_account_attributes", {
  expect_error(svc$describe_account_attributes(), NA)
})

test_that("describe_blue_green_deployments", {
  expect_error(svc$describe_blue_green_deployments(), NA)
})

test_that("describe_certificates", {
  expect_error(svc$describe_certificates(), NA)
})

test_that("describe_db_cluster_automated_backups", {
  expect_error(svc$describe_db_cluster_automated_backups(), NA)
})

test_that("describe_db_cluster_endpoints", {
  expect_error(svc$describe_db_cluster_endpoints(), NA)
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

test_that("describe_db_instance_automated_backups", {
  expect_error(svc$describe_db_instance_automated_backups(), NA)
})

test_that("describe_db_instances", {
  expect_error(svc$describe_db_instances(), NA)
})

test_that("describe_db_major_engine_versions", {
  expect_error(svc$describe_db_major_engine_versions(), NA)
})

test_that("describe_db_parameter_groups", {
  expect_error(svc$describe_db_parameter_groups(), NA)
})

test_that("describe_db_proxies", {
  expect_error(svc$describe_db_proxies(), NA)
})

test_that("describe_db_proxy_endpoints", {
  expect_error(svc$describe_db_proxy_endpoints(), NA)
})

test_that("describe_db_recommendations", {
  expect_error(svc$describe_db_recommendations(), NA)
})

test_that("describe_db_security_groups", {
  expect_error(svc$describe_db_security_groups(), NA)
})

test_that("describe_db_shard_groups", {
  expect_error(svc$describe_db_shard_groups(), NA)
})

test_that("describe_db_snapshot_tenant_databases", {
  expect_error(svc$describe_db_snapshot_tenant_databases(), NA)
})

test_that("describe_db_snapshots", {
  expect_error(svc$describe_db_snapshots(), NA)
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

test_that("describe_export_tasks", {
  expect_error(svc$describe_export_tasks(), NA)
})

test_that("describe_global_clusters", {
  expect_error(svc$describe_global_clusters(), NA)
})

test_that("describe_integrations", {
  expect_error(svc$describe_integrations(), NA)
})

test_that("describe_option_groups", {
  expect_error(svc$describe_option_groups(), NA)
})

test_that("describe_pending_maintenance_actions", {
  expect_error(svc$describe_pending_maintenance_actions(), NA)
})

test_that("describe_reserved_db_instances", {
  expect_error(svc$describe_reserved_db_instances(), NA)
})

test_that("describe_reserved_db_instances_offerings", {
  expect_error(svc$describe_reserved_db_instances_offerings(), NA)
})

test_that("describe_source_regions", {
  expect_error(svc$describe_source_regions(), NA)
})

test_that("describe_tenant_databases", {
  expect_error(svc$describe_tenant_databases(), NA)
})
