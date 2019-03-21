context("directconnect")

svc <- paws::directconnect()

test_that("describe_connections", {
  expect_error(svc$describe_connections(), NA)
})

test_that("describe_direct_connect_gateway_associations", {
  expect_error(svc$describe_direct_connect_gateway_associations(), NA)
})

test_that("describe_direct_connect_gateway_attachments", {
  expect_error(svc$describe_direct_connect_gateway_attachments(), NA)
})

test_that("describe_direct_connect_gateways", {
  expect_error(svc$describe_direct_connect_gateways(), NA)
})

test_that("describe_interconnects", {
  expect_error(svc$describe_interconnects(), NA)
})

test_that("describe_lags", {
  expect_error(svc$describe_lags(), NA)
})

test_that("describe_locations", {
  expect_error(svc$describe_locations(), NA)
})

test_that("describe_virtual_gateways", {
  expect_error(svc$describe_virtual_gateways(), NA)
})

test_that("describe_virtual_interfaces", {
  expect_error(svc$describe_virtual_interfaces(), NA)
})
