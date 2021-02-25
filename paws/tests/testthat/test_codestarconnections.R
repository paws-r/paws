svc <- paws::codestarconnections()

test_that("list_connections", {
  expect_error(svc$list_connections(), NA)
})

test_that("list_connections", {
  expect_error(svc$list_connections(MaxResults = 20), NA)
})

test_that("list_hosts", {
  expect_error(svc$list_hosts(), NA)
})

test_that("list_hosts", {
  expect_error(svc$list_hosts(MaxResults = 20), NA)
})
