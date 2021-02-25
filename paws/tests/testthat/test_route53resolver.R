svc <- paws::route53resolver()

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
