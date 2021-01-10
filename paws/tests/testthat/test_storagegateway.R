context("storagegateway")

svc <- paws::storagegateway()

test_that("describe_tape_archives", {
  expect_error(svc$describe_tape_archives(), NA)
})

test_that("list_automatic_tape_creation_policies", {
  expect_error(svc$list_automatic_tape_creation_policies(), NA)
})

test_that("list_file_shares", {
  expect_error(svc$list_file_shares(), NA)
})

test_that("list_gateways", {
  expect_error(svc$list_gateways(), NA)
})

test_that("list_tape_pools", {
  expect_error(svc$list_tape_pools(), NA)
})

test_that("list_tapes", {
  expect_error(svc$list_tapes(), NA)
})

test_that("list_volumes", {
  expect_error(svc$list_volumes(), NA)
})
