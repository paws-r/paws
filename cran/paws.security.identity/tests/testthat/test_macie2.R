svc <- paws::macie2()

test_that("describe_buckets", {
  expect_error(svc$describe_buckets(), NA)
})

test_that("describe_organization_configuration", {
  expect_error(svc$describe_organization_configuration(), NA)
})

test_that("list_allow_lists", {
  expect_error(svc$list_allow_lists(), NA)
})

test_that("list_classification_jobs", {
  expect_error(svc$list_classification_jobs(), NA)
})

test_that("list_classification_scopes", {
  expect_error(svc$list_classification_scopes(), NA)
})

test_that("list_custom_data_identifiers", {
  expect_error(svc$list_custom_data_identifiers(), NA)
})

test_that("list_findings", {
  expect_error(svc$list_findings(), NA)
})

test_that("list_findings_filters", {
  expect_error(svc$list_findings_filters(), NA)
})

test_that("list_invitations", {
  expect_error(svc$list_invitations(), NA)
})

test_that("list_managed_data_identifiers", {
  expect_error(svc$list_managed_data_identifiers(), NA)
})

test_that("list_members", {
  expect_error(svc$list_members(), NA)
})

test_that("list_organization_admin_accounts", {
  expect_error(svc$list_organization_admin_accounts(), NA)
})

test_that("list_sensitivity_inspection_templates", {
  expect_error(svc$list_sensitivity_inspection_templates(), NA)
})
