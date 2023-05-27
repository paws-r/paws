svc <- paws::apprunner()

test_that("list_auto_scaling_configurations", {
  expect_error(svc$list_auto_scaling_configurations(), NA)
})

test_that("list_auto_scaling_configurations", {
  expect_error(svc$list_auto_scaling_configurations(MaxResults = 20), NA)
})

test_that("list_connections", {
  expect_error(svc$list_connections(), NA)
})

test_that("list_connections", {
  expect_error(svc$list_connections(MaxResults = 20), NA)
})

test_that("list_observability_configurations", {
  expect_error(svc$list_observability_configurations(), NA)
})

test_that("list_observability_configurations", {
  expect_error(svc$list_observability_configurations(MaxResults = 20), NA)
})

test_that("list_services", {
  expect_error(svc$list_services(), NA)
})

test_that("list_services", {
  expect_error(svc$list_services(MaxResults = 20), NA)
})

test_that("list_vpc_connectors", {
  expect_error(svc$list_vpc_connectors(), NA)
})

test_that("list_vpc_connectors", {
  expect_error(svc$list_vpc_connectors(MaxResults = 20), NA)
})

test_that("list_vpc_ingress_connections", {
  expect_error(svc$list_vpc_ingress_connections(), NA)
})

test_that("list_vpc_ingress_connections", {
  expect_error(svc$list_vpc_ingress_connections(MaxResults = 20), NA)
})
