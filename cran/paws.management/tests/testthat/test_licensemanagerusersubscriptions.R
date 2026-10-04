svc <- paws.management::licensemanagerusersubscriptions()

test_that("list_identity_providers", {
  skip_on_cran()
  expect_error(svc$list_identity_providers(), NA)
})

test_that("list_identity_providers", {
  skip_on_cran()
  expect_error(svc$list_identity_providers(MaxResults = 20), NA)
})

test_that("list_instances", {
  skip_on_cran()
  expect_error(svc$list_instances(), NA)
})

test_that("list_instances", {
  skip_on_cran()
  expect_error(svc$list_instances(MaxResults = 20), NA)
})

test_that("list_license_server_endpoints", {
  skip_on_cran()
  expect_error(svc$list_license_server_endpoints(), NA)
})

test_that("list_license_server_endpoints", {
  skip_on_cran()
  expect_error(svc$list_license_server_endpoints(MaxResults = 20), NA)
})
