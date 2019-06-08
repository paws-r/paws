context("elasticache")

svc <- paws::elasticache()

test_that("describe_cache_clusters", {
  expect_error(svc$describe_cache_clusters(), NA)
})

test_that("describe_cache_engine_versions", {
  expect_error(svc$describe_cache_engine_versions(), NA)
})

test_that("describe_cache_parameter_groups", {
  expect_error(svc$describe_cache_parameter_groups(), NA)
})

test_that("describe_cache_subnet_groups", {
  expect_error(svc$describe_cache_subnet_groups(), NA)
})

test_that("describe_events", {
  expect_error(svc$describe_events(), NA)
})

test_that("describe_replication_groups", {
  expect_error(svc$describe_replication_groups(), NA)
})

test_that("describe_reserved_cache_nodes", {
  expect_error(svc$describe_reserved_cache_nodes(), NA)
})

test_that("describe_reserved_cache_nodes_offerings", {
  expect_error(svc$describe_reserved_cache_nodes_offerings(), NA)
})

test_that("describe_service_updates", {
  expect_error(svc$describe_service_updates(), NA)
})

test_that("describe_snapshots", {
  expect_error(svc$describe_snapshots(), NA)
})

test_that("describe_update_actions", {
  expect_error(svc$describe_update_actions(), NA)
})
