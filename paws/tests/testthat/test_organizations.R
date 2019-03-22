context("organizations")

svc <- paws::organizations()

test_that("describe_organization", {
  expect_error(svc$describe_organization(), NA)
})

test_that("list_aws_service_access_for_organization", {
  expect_error(svc$list_aws_service_access_for_organization(), NA)
})

test_that("list_aws_service_access_for_organization", {
  expect_error(svc$list_aws_service_access_for_organization(MaxResults = 20), NA)
})

test_that("list_accounts", {
  expect_error(svc$list_accounts(), NA)
})

test_that("list_accounts", {
  expect_error(svc$list_accounts(MaxResults = 20), NA)
})

test_that("list_create_account_status", {
  expect_error(svc$list_create_account_status(), NA)
})

test_that("list_create_account_status", {
  expect_error(svc$list_create_account_status(MaxResults = 20), NA)
})

test_that("list_handshakes_for_account", {
  expect_error(svc$list_handshakes_for_account(), NA)
})

test_that("list_handshakes_for_account", {
  expect_error(svc$list_handshakes_for_account(MaxResults = 20), NA)
})

test_that("list_handshakes_for_organization", {
  expect_error(svc$list_handshakes_for_organization(), NA)
})

test_that("list_handshakes_for_organization", {
  expect_error(svc$list_handshakes_for_organization(MaxResults = 20), NA)
})

test_that("list_roots", {
  expect_error(svc$list_roots(), NA)
})

test_that("list_roots", {
  expect_error(svc$list_roots(MaxResults = 20), NA)
})
