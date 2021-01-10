context("appregistry")

svc <- paws::appregistry()

test_that("list_applications", {
  expect_error(svc$list_applications(), NA)
})

test_that("list_attribute_groups", {
  expect_error(svc$list_attribute_groups(), NA)
})
