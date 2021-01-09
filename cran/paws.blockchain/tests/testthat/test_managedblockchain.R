context("managedblockchain")

svc <- paws::managedblockchain()

test_that("list_invitations", {
  expect_error(svc$list_invitations(), NA)
})

test_that("list_invitations", {
  expect_error(svc$list_invitations(MaxResults = 20), NA)
})

test_that("list_networks", {
  expect_error(svc$list_networks(), NA)
})

test_that("list_networks", {
  expect_error(svc$list_networks(MaxResults = 20), NA)
})
