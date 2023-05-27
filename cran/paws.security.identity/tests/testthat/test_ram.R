svc <- paws::ram()

test_that("list_permission_associations", {
  expect_error(svc$list_permission_associations(), NA)
})

test_that("list_permissions", {
  expect_error(svc$list_permissions(), NA)
})

test_that("list_replace_permission_associations_work", {
  expect_error(svc$list_replace_permission_associations_work(), NA)
})

test_that("list_resource_types", {
  expect_error(svc$list_resource_types(), NA)
})
