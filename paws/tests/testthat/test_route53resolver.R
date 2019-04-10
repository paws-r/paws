context("route53resolver")

svc <- paws::route53resolver()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_resolver_endpoints", {
  expect_error(svc$list_resolver_endpoints(), NA)
})

test_that("list_resolver_endpoints", {
  expect_error(svc$list_resolver_endpoints(MaxResults = 20), NA)
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

}
