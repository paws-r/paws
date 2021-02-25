svc <- paws::greengrassv2()

test_that("list_components", {
  expect_error(svc$list_components(), NA)
})

test_that("list_core_devices", {
  expect_error(svc$list_core_devices(), NA)
})

test_that("list_deployments", {
  expect_error(svc$list_deployments(), NA)
})
