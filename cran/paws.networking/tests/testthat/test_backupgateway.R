svc <- paws::backupgateway()

test_that("list_gateways", {
  expect_error(svc$list_gateways(), NA)
})

test_that("list_gateways", {
  expect_error(svc$list_gateways(MaxResults = 20), NA)
})

test_that("list_hypervisors", {
  expect_error(svc$list_hypervisors(), NA)
})

test_that("list_hypervisors", {
  expect_error(svc$list_hypervisors(MaxResults = 20), NA)
})

test_that("list_virtual_machines", {
  expect_error(svc$list_virtual_machines(), NA)
})

test_that("list_virtual_machines", {
  expect_error(svc$list_virtual_machines(MaxResults = 20), NA)
})
