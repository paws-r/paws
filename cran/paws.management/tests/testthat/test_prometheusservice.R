svc <- paws::prometheusservice()

test_that("list_scrapers", {
  expect_error(svc$list_scrapers(), NA)
})

test_that("list_workspaces", {
  expect_error(svc$list_workspaces(), NA)
})
