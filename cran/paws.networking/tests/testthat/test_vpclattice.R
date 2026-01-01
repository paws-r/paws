svc <- paws::vpclattice()

test_that("list_domain_verifications", {
  expect_error(svc$list_domain_verifications(), NA)
})

test_that("list_resource_configurations", {
  expect_error(svc$list_resource_configurations(), NA)
})

test_that("list_resource_gateways", {
  expect_error(svc$list_resource_gateways(), NA)
})

test_that("list_service_network_resource_associations", {
  expect_error(svc$list_service_network_resource_associations(), NA)
})

test_that("list_service_network_service_associations", {
  expect_error(svc$list_service_network_service_associations(), NA)
})

test_that("list_service_network_vpc_associations", {
  expect_error(svc$list_service_network_vpc_associations(), NA)
})

test_that("list_service_networks", {
  expect_error(svc$list_service_networks(), NA)
})

test_that("list_services", {
  expect_error(svc$list_services(), NA)
})

test_that("list_target_groups", {
  expect_error(svc$list_target_groups(), NA)
})
