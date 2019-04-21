context("transfer")

svc <- paws::transfer()

test_that("list_servers", {
  expect_error(svc$list_servers(), NA)
})

test_that("list_servers", {
  expect_error(svc$list_servers(MaxResults = 20), NA)
})
