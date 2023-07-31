svc <- paws::managedgrafana()

test_that("list_versions", {
  expect_error(svc$list_versions(), NA)
})

test_that("list_workspaces", {
  expect_error(svc$list_workspaces(), NA)
})
