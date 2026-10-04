svc <- paws.security.identity::wafregional()

test_that("list_byte_match_sets", {
  skip_on_cran()
  expect_error(svc$list_byte_match_sets(), NA)
})

test_that("list_geo_match_sets", {
  skip_on_cran()
  expect_error(svc$list_geo_match_sets(), NA)
})

test_that("list_ip_sets", {
  skip_on_cran()
  expect_error(svc$list_ip_sets(), NA)
})

test_that("list_rate_based_rules", {
  skip_on_cran()
  expect_error(svc$list_rate_based_rules(), NA)
})

test_that("list_regex_match_sets", {
  skip_on_cran()
  expect_error(svc$list_regex_match_sets(), NA)
})

test_that("list_regex_pattern_sets", {
  skip_on_cran()
  expect_error(svc$list_regex_pattern_sets(), NA)
})

test_that("list_rule_groups", {
  skip_on_cran()
  expect_error(svc$list_rule_groups(), NA)
})

test_that("list_rules", {
  skip_on_cran()
  expect_error(svc$list_rules(), NA)
})

test_that("list_size_constraint_sets", {
  skip_on_cran()
  expect_error(svc$list_size_constraint_sets(), NA)
})

test_that("list_sql_injection_match_sets", {
  skip_on_cran()
  expect_error(svc$list_sql_injection_match_sets(), NA)
})

test_that("list_subscribed_rule_groups", {
  skip_on_cran()
  expect_error(svc$list_subscribed_rule_groups(), NA)
})

test_that("list_web_ac_ls", {
  skip_on_cran()
  expect_error(svc$list_web_ac_ls(), NA)
})

test_that("list_xss_match_sets", {
  skip_on_cran()
  expect_error(svc$list_xss_match_sets(), NA)
})
