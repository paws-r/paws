svc <- paws::guardduty()

test_that("list_detectors", {
  expect_error(svc$list_detectors(), NA)
})

test_that("list_detectors", {
  expect_error(svc$list_detectors(MaxResults = 20), NA)
})

test_that("list_invitations", {
  expect_error(svc$list_invitations(), NA)
})

test_that("list_invitations", {
  expect_error(svc$list_invitations(MaxResults = 20), NA)
})

test_that("list_organization_admin_accounts", {
  expect_error(svc$list_organization_admin_accounts(), NA)
})

test_that("list_organization_admin_accounts", {
  expect_error(svc$list_organization_admin_accounts(MaxResults = 20), NA)
})
