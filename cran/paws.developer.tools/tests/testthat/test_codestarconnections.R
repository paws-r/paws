svc <- paws.developer.tools::codestarconnections()

test_that("list_connections", {
  skip_on_cran()
  expect_error(svc$list_connections(), NA)
})

test_that("list_connections", {
  skip_on_cran()
  expect_error(svc$list_connections(MaxResults = 20), NA)
})

test_that("list_hosts", {
  skip_on_cran()
  expect_error(svc$list_hosts(), NA)
})

test_that("list_hosts", {
  skip_on_cran()
  expect_error(svc$list_hosts(MaxResults = 20), NA)
})

test_that("list_repository_links", {
  skip_on_cran()
  expect_error(svc$list_repository_links(), NA)
})

test_that("list_repository_links", {
  skip_on_cran()
  expect_error(svc$list_repository_links(MaxResults = 20), NA)
})
