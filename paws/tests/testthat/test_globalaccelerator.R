context("globalaccelerator")

svc <- paws::globalaccelerator()

test_that("describe_accelerator_attributes", {
  expect_error(svc$describe_accelerator_attributes(), NA)
})

test_that("list_accelerators", {
  expect_error(svc$list_accelerators(), NA)
})

test_that("list_accelerators", {
  expect_error(svc$list_accelerators(MaxResults = 20), NA)
})
