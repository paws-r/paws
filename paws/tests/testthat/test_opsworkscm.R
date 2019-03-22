context("opsworkscm")

svc <- paws::opsworkscm()

test_that("describe_account_attributes", {
  expect_error(svc$describe_account_attributes(), NA)
})

test_that("describe_backups", {
  expect_error(svc$describe_backups(), NA)
})

test_that("describe_backups", {
  expect_error(svc$describe_backups(MaxResults = 20), NA)
})

test_that("describe_servers", {
  expect_error(svc$describe_servers(), NA)
})

test_that("describe_servers", {
  expect_error(svc$describe_servers(MaxResults = 20), NA)
})
