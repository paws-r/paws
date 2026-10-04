svc <- paws::managedgrafana()

test_that("list_versions", {
  skip_on_cran()
  expect_error(svc$list_versions(), NA)
})

test_that("list_workspaces", {
  skip_on_cran()
  expect_error(svc$list_workspaces(), NA)
})
