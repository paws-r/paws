svc <- paws::networkfirewall()

test_that("describe_container_association", {
  skip_on_cran()
  expect_error(svc$describe_container_association(), NA)
})

test_that("describe_firewall", {
  skip_on_cran()
  expect_error(svc$describe_firewall(), NA)
})

test_that("describe_firewall_metadata", {
  skip_on_cran()
  expect_error(svc$describe_firewall_metadata(), NA)
})

test_that("describe_firewall_policy", {
  skip_on_cran()
  expect_error(svc$describe_firewall_policy(), NA)
})

test_that("describe_logging_configuration", {
  skip_on_cran()
  expect_error(svc$describe_logging_configuration(), NA)
})

test_that("describe_proxy", {
  skip_on_cran()
  expect_error(svc$describe_proxy(), NA)
})

test_that("describe_proxy_configuration", {
  skip_on_cran()
  expect_error(svc$describe_proxy_configuration(), NA)
})

test_that("describe_proxy_rule_group", {
  skip_on_cran()
  expect_error(svc$describe_proxy_rule_group(), NA)
})

test_that("describe_rule_group", {
  skip_on_cran()
  expect_error(svc$describe_rule_group(), NA)
})

test_that("describe_rule_group_metadata", {
  skip_on_cran()
  expect_error(svc$describe_rule_group_metadata(), NA)
})

test_that("describe_rule_group_summary", {
  skip_on_cran()
  expect_error(svc$describe_rule_group_summary(), NA)
})

test_that("describe_tls_inspection_configuration", {
  skip_on_cran()
  expect_error(svc$describe_tls_inspection_configuration(), NA)
})

test_that("list_analysis_reports", {
  skip_on_cran()
  expect_error(svc$list_analysis_reports(), NA)
})

test_that("list_analysis_reports", {
  skip_on_cran()
  expect_error(svc$list_analysis_reports(MaxResults = 20), NA)
})

test_that("list_container_associations", {
  skip_on_cran()
  expect_error(svc$list_container_associations(), NA)
})

test_that("list_container_associations", {
  skip_on_cran()
  expect_error(svc$list_container_associations(MaxResults = 20), NA)
})

test_that("list_firewall_policies", {
  skip_on_cran()
  expect_error(svc$list_firewall_policies(), NA)
})

test_that("list_firewall_policies", {
  skip_on_cran()
  expect_error(svc$list_firewall_policies(MaxResults = 20), NA)
})

test_that("list_firewalls", {
  skip_on_cran()
  expect_error(svc$list_firewalls(), NA)
})

test_that("list_firewalls", {
  skip_on_cran()
  expect_error(svc$list_firewalls(MaxResults = 20), NA)
})

test_that("list_proxies", {
  skip_on_cran()
  expect_error(svc$list_proxies(), NA)
})

test_that("list_proxies", {
  skip_on_cran()
  expect_error(svc$list_proxies(MaxResults = 20), NA)
})

test_that("list_proxy_configurations", {
  skip_on_cran()
  expect_error(svc$list_proxy_configurations(), NA)
})

test_that("list_proxy_configurations", {
  skip_on_cran()
  expect_error(svc$list_proxy_configurations(MaxResults = 20), NA)
})

test_that("list_proxy_rule_groups", {
  skip_on_cran()
  expect_error(svc$list_proxy_rule_groups(), NA)
})

test_that("list_proxy_rule_groups", {
  skip_on_cran()
  expect_error(svc$list_proxy_rule_groups(MaxResults = 20), NA)
})

test_that("list_rule_groups", {
  skip_on_cran()
  expect_error(svc$list_rule_groups(), NA)
})

test_that("list_rule_groups", {
  skip_on_cran()
  expect_error(svc$list_rule_groups(MaxResults = 20), NA)
})

test_that("list_tls_inspection_configurations", {
  skip_on_cran()
  expect_error(svc$list_tls_inspection_configurations(), NA)
})

test_that("list_tls_inspection_configurations", {
  skip_on_cran()
  expect_error(svc$list_tls_inspection_configurations(MaxResults = 20), NA)
})

test_that("list_vpc_endpoint_associations", {
  skip_on_cran()
  expect_error(svc$list_vpc_endpoint_associations(), NA)
})

test_that("list_vpc_endpoint_associations", {
  skip_on_cran()
  expect_error(svc$list_vpc_endpoint_associations(MaxResults = 20), NA)
})
