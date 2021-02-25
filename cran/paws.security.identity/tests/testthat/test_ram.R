svc <- paws::ram()

test_that("list_permissions", {
  expect_error(svc$list_permissions(), NA)
})

test_that("list_resource_types", {
  expect_error(svc$list_resource_types(), NA)
})
