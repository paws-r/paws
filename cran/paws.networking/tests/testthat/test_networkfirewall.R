svc <- paws::networkfirewall()

test_that("describe_firewall", {
  expect_error(svc$describe_firewall(), NA)
})

test_that("describe_firewall_policy", {
  expect_error(svc$describe_firewall_policy(), NA)
})

test_that("describe_logging_configuration", {
  expect_error(svc$describe_logging_configuration(), NA)
})

test_that("describe_rule_group", {
  expect_error(svc$describe_rule_group(), NA)
})

test_that("describe_rule_group_metadata", {
  expect_error(svc$describe_rule_group_metadata(), NA)
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

test_that("list_rule_groups", {
  expect_error(svc$list_rule_groups(), NA)
})

test_that("list_rule_groups", {
  expect_error(svc$list_rule_groups(MaxResults = 20), NA)
})
