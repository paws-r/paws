context("connect")

svc <- paws::connect()

test_that("list_instances", {
  expect_error(svc$list_instances(), NA)
})

test_that("list_instances", {
  expect_error(svc$list_instances(MaxResults = 20), NA)
})
