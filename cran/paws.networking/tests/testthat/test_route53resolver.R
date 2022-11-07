svc <- paws::route53resolver()

test_that("list_firewall_configs", {
  expect_error(svc$list_firewall_configs(), NA)
})

test_that("list_firewall_configs", {
  expect_error(svc$list_firewall_configs(MaxResults = 20), NA)
})

test_that("list_firewall_domain_lists", {
  expect_error(svc$list_firewall_domain_lists(), NA)
})

test_that("list_firewall_domain_lists", {
  expect_error(svc$list_firewall_domain_lists(MaxResults = 20), NA)
})

test_that("list_firewall_rule_group_associations", {
  expect_error(svc$list_firewall_rule_group_associations(), NA)
})

test_that("list_firewall_rule_group_associations", {
  expect_error(svc$list_firewall_rule_group_associations(MaxResults = 20), NA)
})

test_that("list_firewall_rule_groups", {
  expect_error(svc$list_firewall_rule_groups(), NA)
})

test_that("list_firewall_rule_groups", {
  expect_error(svc$list_firewall_rule_groups(MaxResults = 20), NA)
})

test_that("list_resolver_configs", {
  expect_error(svc$list_resolver_configs(), NA)
})

test_that("list_resolver_configs", {
  expect_error(svc$list_resolver_configs(MaxResults = 20), NA)
})

test_that("list_resolver_dnssec_configs", {
  expect_error(svc$list_resolver_dnssec_configs(), NA)
})

test_that("list_resolver_dnssec_configs", {
  expect_error(svc$list_resolver_dnssec_configs(MaxResults = 20), NA)
})

test_that("list_resolver_endpoints", {
  expect_error(svc$list_resolver_endpoints(), NA)
})

test_that("list_resolver_endpoints", {
  expect_error(svc$list_resolver_endpoints(MaxResults = 20), NA)
})

test_that("list_resolver_query_log_config_associations", {
  expect_error(svc$list_resolver_query_log_config_associations(), NA)
})

test_that("list_resolver_query_log_config_associations", {
  expect_error(svc$list_resolver_query_log_config_associations(MaxResults = 20), NA)
})

test_that("list_resolver_query_log_configs", {
  expect_error(svc$list_resolver_query_log_configs(), NA)
})

test_that("list_resolver_query_log_configs", {
  expect_error(svc$list_resolver_query_log_configs(MaxResults = 20), NA)
})

test_that("list_resolver_rule_associations", {
  expect_error(svc$list_resolver_rule_associations(), NA)
})

test_that("list_resolver_rule_associations", {
  expect_error(svc$list_resolver_rule_associations(MaxResults = 20), NA)
})

test_that("list_resolver_rules", {
  expect_error(svc$list_resolver_rules(), NA)
})

test_that("list_resolver_rules", {
  expect_error(svc$list_resolver_rules(MaxResults = 20), NA)
})
