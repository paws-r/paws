svc <- paws::inspector2()

test_that("describe_organization_configuration", {
  expect_error(svc$describe_organization_configuration(), NA)
})

test_that("list_account_permissions", {
  expect_error(svc$list_account_permissions(), NA)
})

test_that("list_cis_scan_configurations", {
  expect_error(svc$list_cis_scan_configurations(), NA)
})

test_that("list_cis_scans", {
  expect_error(svc$list_cis_scans(), NA)
})

test_that("list_code_security_integrations", {
  expect_error(svc$list_code_security_integrations(), NA)
})

test_that("list_code_security_scan_configurations", {
  expect_error(svc$list_code_security_scan_configurations(), NA)
})

test_that("list_coverage", {
  expect_error(svc$list_coverage(), NA)
})

test_that("list_coverage_statistics", {
  expect_error(svc$list_coverage_statistics(), NA)
})

test_that("list_delegated_admin_accounts", {
  expect_error(svc$list_delegated_admin_accounts(), NA)
})

test_that("list_filters", {
  expect_error(svc$list_filters(), NA)
})

test_that("list_findings", {
  expect_error(svc$list_findings(), NA)
})

test_that("list_members", {
  expect_error(svc$list_members(), NA)
})

test_that("list_usage_totals", {
  expect_error(svc$list_usage_totals(), NA)
})
