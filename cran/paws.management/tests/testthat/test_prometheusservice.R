svc <- paws.management::prometheusservice()

test_that("list_scrapers", {
  skip_on_cran()
  expect_error(svc$list_scrapers(), NA)
})

test_that("list_workspaces", {
  skip_on_cran()
  expect_error(svc$list_workspaces(), NA)
})
