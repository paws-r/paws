svc <- paws::elasticsearchservice()

test_that("describe_inbound_cross_cluster_search_connections", {
  skip_on_cran()
  expect_error(svc$describe_inbound_cross_cluster_search_connections(), NA)
})

test_that("describe_inbound_cross_cluster_search_connections", {
  skip_on_cran()
  expect_error(svc$describe_inbound_cross_cluster_search_connections(MaxResults = 20), NA)
})

test_that("describe_outbound_cross_cluster_search_connections", {
  skip_on_cran()
  expect_error(svc$describe_outbound_cross_cluster_search_connections(), NA)
})

test_that("describe_outbound_cross_cluster_search_connections", {
  skip_on_cran()
  expect_error(svc$describe_outbound_cross_cluster_search_connections(MaxResults = 20), NA)
})

test_that("describe_packages", {
  skip_on_cran()
  expect_error(svc$describe_packages(), NA)
})

test_that("describe_packages", {
  skip_on_cran()
  expect_error(svc$describe_packages(MaxResults = 20), NA)
})

test_that("describe_reserved_elasticsearch_instance_offerings", {
  skip_on_cran()
  expect_error(svc$describe_reserved_elasticsearch_instance_offerings(), NA)
})

test_that("describe_reserved_elasticsearch_instance_offerings", {
  skip_on_cran()
  expect_error(svc$describe_reserved_elasticsearch_instance_offerings(MaxResults = 20), NA)
})

test_that("describe_reserved_elasticsearch_instances", {
  skip_on_cran()
  expect_error(svc$describe_reserved_elasticsearch_instances(), NA)
})

test_that("describe_reserved_elasticsearch_instances", {
  skip_on_cran()
  expect_error(svc$describe_reserved_elasticsearch_instances(MaxResults = 20), NA)
})

test_that("list_domain_names", {
  skip_on_cran()
  expect_error(svc$list_domain_names(), NA)
})

test_that("list_elasticsearch_versions", {
  skip_on_cran()
  expect_error(svc$list_elasticsearch_versions(), NA)
})

test_that("list_elasticsearch_versions", {
  skip_on_cran()
  expect_error(svc$list_elasticsearch_versions(MaxResults = 20), NA)
})

test_that("list_vpc_endpoints", {
  skip_on_cran()
  expect_error(svc$list_vpc_endpoints(), NA)
})
