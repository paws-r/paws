svc <- paws::cloudfront()

test_that("list_anycast_ip_lists", {
  expect_error(svc$list_anycast_ip_lists(), NA)
})

test_that("list_cache_policies", {
  expect_error(svc$list_cache_policies(), NA)
})

test_that("list_cloud_front_origin_access_identities", {
  expect_error(svc$list_cloud_front_origin_access_identities(), NA)
})

test_that("list_connection_functions", {
  expect_error(svc$list_connection_functions(), NA)
})

test_that("list_connection_groups", {
  expect_error(svc$list_connection_groups(), NA)
})

test_that("list_continuous_deployment_policies", {
  expect_error(svc$list_continuous_deployment_policies(), NA)
})

test_that("list_distribution_tenants", {
  expect_error(svc$list_distribution_tenants(), NA)
})

test_that("list_distribution_tenants_by_customization", {
  expect_error(svc$list_distribution_tenants_by_customization(), NA)
})

test_that("list_distributions", {
  expect_error(svc$list_distributions(), NA)
})

test_that("list_distributions_by_realtime_log_config", {
  expect_error(svc$list_distributions_by_realtime_log_config(), NA)
})

test_that("list_field_level_encryption_configs", {
  expect_error(svc$list_field_level_encryption_configs(), NA)
})

test_that("list_field_level_encryption_profiles", {
  expect_error(svc$list_field_level_encryption_profiles(), NA)
})

test_that("list_functions", {
  expect_error(svc$list_functions(), NA)
})

test_that("list_key_groups", {
  expect_error(svc$list_key_groups(), NA)
})

test_that("list_key_value_stores", {
  expect_error(svc$list_key_value_stores(), NA)
})

test_that("list_origin_access_controls", {
  expect_error(svc$list_origin_access_controls(), NA)
})

test_that("list_origin_request_policies", {
  expect_error(svc$list_origin_request_policies(), NA)
})

test_that("list_public_keys", {
  expect_error(svc$list_public_keys(), NA)
})

test_that("list_realtime_log_configs", {
  expect_error(svc$list_realtime_log_configs(), NA)
})

test_that("list_response_headers_policies", {
  expect_error(svc$list_response_headers_policies(), NA)
})

test_that("list_streaming_distributions", {
  expect_error(svc$list_streaming_distributions(), NA)
})

test_that("list_trust_stores", {
  expect_error(svc$list_trust_stores(), NA)
})

test_that("list_vpc_origins", {
  expect_error(svc$list_vpc_origins(), NA)
})
