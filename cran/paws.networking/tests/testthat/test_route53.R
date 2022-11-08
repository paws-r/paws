svc <- paws::route53()

test_that("list_cidr_collections", {
  expect_error(svc$list_cidr_collections(), NA)
})

test_that("list_cidr_collections", {
  expect_error(svc$list_cidr_collections(MaxResults = 20), NA)
})

test_that("list_geo_locations", {
  expect_error(svc$list_geo_locations(), NA)
})

test_that("list_health_checks", {
  expect_error(svc$list_health_checks(), NA)
})

test_that("list_hosted_zones", {
  expect_error(svc$list_hosted_zones(), NA)
})

test_that("list_hosted_zones_by_name", {
  expect_error(svc$list_hosted_zones_by_name(), NA)
})

test_that("list_query_logging_configs", {
  expect_error(svc$list_query_logging_configs(), NA)
})

test_that("list_query_logging_configs", {
  expect_error(svc$list_query_logging_configs(MaxResults = 20), NA)
})

test_that("list_reusable_delegation_sets", {
  expect_error(svc$list_reusable_delegation_sets(), NA)
})

test_that("list_traffic_policies", {
  expect_error(svc$list_traffic_policies(), NA)
})

test_that("list_traffic_policy_instances", {
  expect_error(svc$list_traffic_policy_instances(), NA)
})
