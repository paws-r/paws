svc <- paws::networkfirewall()

test_that("describe_firewall", {
  expect_error(svc$describe_firewall(), NA)
})

test_that("describe_firewall_metadata", {
  expect_error(svc$describe_firewall_metadata(), NA)
})

test_that("describe_firewall_policy", {
  expect_error(svc$describe_firewall_policy(), NA)
})

test_that("describe_logging_configuration", {
  expect_error(svc$describe_logging_configuration(), NA)
})

test_that("describe_proxy", {
  expect_error(svc$describe_proxy(), NA)
})

test_that("describe_proxy_configuration", {
  expect_error(svc$describe_proxy_configuration(), NA)
})

test_that("describe_proxy_rule_group", {
  expect_error(svc$describe_proxy_rule_group(), NA)
})

test_that("describe_rule_group", {
  expect_error(svc$describe_rule_group(), NA)
})

test_that("describe_rule_group_metadata", {
  expect_error(svc$describe_rule_group_metadata(), NA)
})

test_that("describe_rule_group_summary", {
  expect_error(svc$describe_rule_group_summary(), NA)
})

test_that("describe_tls_inspection_configuration", {
  expect_error(svc$describe_tls_inspection_configuration(), NA)
})

test_that("list_analysis_reports", {
  expect_error(svc$list_analysis_reports(), NA)
})

test_that("list_analysis_reports", {
  expect_error(svc$list_analysis_reports(MaxResults = 20), NA)
})

test_that("list_firewall_policies", {
  expect_error(svc$list_firewall_policies(), NA)
})

test_that("list_firewall_policies", {
  expect_error(svc$list_firewall_policies(MaxResults = 20), NA)
})

test_that("list_firewalls", {
  expect_error(svc$list_firewalls(), NA)
})

test_that("list_firewalls", {
  expect_error(svc$list_firewalls(MaxResults = 20), NA)
})

test_that("list_proxies", {
  expect_error(svc$list_proxies(), NA)
})

test_that("list_proxies", {
  expect_error(svc$list_proxies(MaxResults = 20), NA)
})

test_that("list_proxy_configurations", {
  expect_error(svc$list_proxy_configurations(), NA)
})

test_that("list_proxy_configurations", {
  expect_error(svc$list_proxy_configurations(MaxResults = 20), NA)
})

test_that("list_proxy_rule_groups", {
  expect_error(svc$list_proxy_rule_groups(), NA)
})

test_that("list_proxy_rule_groups", {
  expect_error(svc$list_proxy_rule_groups(MaxResults = 20), NA)
})

test_that("list_rule_groups", {
  expect_error(svc$list_rule_groups(), NA)
})

test_that("list_rule_groups", {
  expect_error(svc$list_rule_groups(MaxResults = 20), NA)
})

test_that("list_tls_inspection_configurations", {
  expect_error(svc$list_tls_inspection_configurations(), NA)
})

test_that("list_tls_inspection_configurations", {
  expect_error(svc$list_tls_inspection_configurations(MaxResults = 20), NA)
})

test_that("list_vpc_endpoint_associations", {
  expect_error(svc$list_vpc_endpoint_associations(), NA)
})

test_that("list_vpc_endpoint_associations", {
  expect_error(svc$list_vpc_endpoint_associations(MaxResults = 20), NA)
})
