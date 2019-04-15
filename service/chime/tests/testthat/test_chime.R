context("chime")

svc <- paws::chime()

test_that("list_accounts", {
  expect_error(svc$list_accounts(), NA)
})

test_that("list_accounts", {
  expect_error(svc$list_accounts(MaxResults = 20), NA)
})

test_that("list_phone_number_orders", {
  expect_error(svc$list_phone_number_orders(), NA)
})

test_that("list_phone_number_orders", {
  expect_error(svc$list_phone_number_orders(MaxResults = 20), NA)
})

test_that("list_phone_numbers", {
  expect_error(svc$list_phone_numbers(), NA)
})

test_that("list_phone_numbers", {
  expect_error(svc$list_phone_numbers(MaxResults = 20), NA)
})

test_that("list_voice_connectors", {
  expect_error(svc$list_voice_connectors(), NA)
})

test_that("list_voice_connectors", {
  expect_error(svc$list_voice_connectors(MaxResults = 20), NA)
})
