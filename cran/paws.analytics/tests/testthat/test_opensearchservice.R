svc <- paws::opensearchservice()

test_that("describe_inbound_connections", {
  expect_error(svc$describe_inbound_connections(), NA)
})

test_that("describe_inbound_connections", {
  expect_error(svc$describe_inbound_connections(MaxResults = 20), NA)
})

test_that("describe_outbound_connections", {
  expect_error(svc$describe_outbound_connections(), NA)
})

test_that("describe_outbound_connections", {
  expect_error(svc$describe_outbound_connections(MaxResults = 20), NA)
})

test_that("describe_packages", {
  expect_error(svc$describe_packages(), NA)
})

test_that("describe_packages", {
  expect_error(svc$describe_packages(MaxResults = 20), NA)
})

test_that("describe_reserved_instance_offerings", {
  expect_error(svc$describe_reserved_instance_offerings(), NA)
})

test_that("describe_reserved_instance_offerings", {
  expect_error(svc$describe_reserved_instance_offerings(MaxResults = 20), NA)
})

test_that("describe_reserved_instances", {
  expect_error(svc$describe_reserved_instances(), NA)
})

test_that("describe_reserved_instances", {
  expect_error(svc$describe_reserved_instances(MaxResults = 20), NA)
})

test_that("list_applications", {
  expect_error(svc$list_applications(), NA)
})

test_that("list_direct_query_data_sources", {
  expect_error(svc$list_direct_query_data_sources(), NA)
})

test_that("list_domain_names", {
  expect_error(svc$list_domain_names(), NA)
})

test_that("list_versions", {
  expect_error(svc$list_versions(), NA)
})

test_that("list_versions", {
  expect_error(svc$list_versions(MaxResults = 20), NA)
})

test_that("list_vpc_endpoints", {
  expect_error(svc$list_vpc_endpoints(), NA)
})
