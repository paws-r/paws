svc <- paws::licensemanagerusersubscriptions()

test_that("list_identity_providers", {
  expect_error(svc$list_identity_providers(), NA)
})

test_that("list_identity_providers", {
  expect_error(svc$list_identity_providers(MaxResults = 20), NA)
})

test_that("list_instances", {
  expect_error(svc$list_instances(), NA)
})

test_that("list_instances", {
  expect_error(svc$list_instances(MaxResults = 20), NA)
})
