context("cloudhsm")

svc <- paws::cloudhsm()

test_that("describe_hsm", {
  expect_error(svc$describe_hsm(), NA)
})

test_that("describe_luna_client", {
  expect_error(svc$describe_luna_client(), NA)
})

test_that("list_available_zones", {
  expect_error(svc$list_available_zones(), NA)
})

test_that("list_hapgs", {
  expect_error(svc$list_hapgs(), NA)
})

test_that("list_hsms", {
  expect_error(svc$list_hsms(), NA)
})

test_that("list_luna_clients", {
  expect_error(svc$list_luna_clients(), NA)
})
