svc <- paws::vpclattice()

test_that("list_domain_verifications", {
  skip_on_cran()
  expect_error(svc$list_domain_verifications(), NA)
})

test_that("list_resource_configurations", {
  skip_on_cran()
  expect_error(svc$list_resource_configurations(), NA)
})

test_that("list_resource_gateways", {
  skip_on_cran()
  expect_error(svc$list_resource_gateways(), NA)
})

test_that("list_service_network_resource_associations", {
  skip_on_cran()
  expect_error(svc$list_service_network_resource_associations(), NA)
})

test_that("list_service_network_service_associations", {
  skip_on_cran()
  expect_error(svc$list_service_network_service_associations(), NA)
})

test_that("list_service_network_vpc_associations", {
  skip_on_cran()
  expect_error(svc$list_service_network_vpc_associations(), NA)
})

test_that("list_service_networks", {
  skip_on_cran()
  expect_error(svc$list_service_networks(), NA)
})

test_that("list_services", {
  skip_on_cran()
  expect_error(svc$list_services(), NA)
})

test_that("list_target_groups", {
  skip_on_cran()
  expect_error(svc$list_target_groups(), NA)
})
