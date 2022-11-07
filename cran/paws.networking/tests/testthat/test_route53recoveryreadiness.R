svc <- paws::route53recoveryreadiness()

test_that("list_cells", {
  expect_error(svc$list_cells(), NA)
})

test_that("list_cells", {
  expect_error(svc$list_cells(MaxResults = 20), NA)
})

test_that("list_cross_account_authorizations", {
  expect_error(svc$list_cross_account_authorizations(), NA)
})

test_that("list_cross_account_authorizations", {
  expect_error(svc$list_cross_account_authorizations(MaxResults = 20), NA)
})

test_that("list_readiness_checks", {
  expect_error(svc$list_readiness_checks(), NA)
})

test_that("list_readiness_checks", {
  expect_error(svc$list_readiness_checks(MaxResults = 20), NA)
})

test_that("list_recovery_groups", {
  expect_error(svc$list_recovery_groups(), NA)
})

test_that("list_recovery_groups", {
  expect_error(svc$list_recovery_groups(MaxResults = 20), NA)
})

test_that("list_resource_sets", {
  expect_error(svc$list_resource_sets(), NA)
})

test_that("list_resource_sets", {
  expect_error(svc$list_resource_sets(MaxResults = 20), NA)
})

test_that("list_rules", {
  expect_error(svc$list_rules(), NA)
})

test_that("list_rules", {
  expect_error(svc$list_rules(MaxResults = 20), NA)
})
