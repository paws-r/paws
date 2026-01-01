svc <- paws::iam()

test_that("list_access_keys", {
  expect_error(svc$list_access_keys(), NA)
})

test_that("list_account_aliases", {
  expect_error(svc$list_account_aliases(), NA)
})

test_that("list_delegation_requests", {
  expect_error(svc$list_delegation_requests(), NA)
})

test_that("list_groups", {
  expect_error(svc$list_groups(), NA)
})

test_that("list_instance_profiles", {
  expect_error(svc$list_instance_profiles(), NA)
})

test_that("list_mfa_devices", {
  expect_error(svc$list_mfa_devices(), NA)
})

test_that("list_open_id_connect_providers", {
  expect_error(svc$list_open_id_connect_providers(), NA)
})

test_that("list_organizations_features", {
  expect_error(svc$list_organizations_features(), NA)
})

test_that("list_policies", {
  expect_error(svc$list_policies(), NA)
})

test_that("list_roles", {
  expect_error(svc$list_roles(), NA)
})

test_that("list_saml_providers", {
  expect_error(svc$list_saml_providers(), NA)
})

test_that("list_ssh_public_keys", {
  expect_error(svc$list_ssh_public_keys(), NA)
})

test_that("list_server_certificates", {
  expect_error(svc$list_server_certificates(), NA)
})

test_that("list_service_specific_credentials", {
  expect_error(svc$list_service_specific_credentials(), NA)
})

test_that("list_signing_certificates", {
  expect_error(svc$list_signing_certificates(), NA)
})

test_that("list_users", {
  expect_error(svc$list_users(), NA)
})

test_that("list_virtual_mfa_devices", {
  expect_error(svc$list_virtual_mfa_devices(), NA)
})
