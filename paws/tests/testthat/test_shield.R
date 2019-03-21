context("shield")

svc <- paws::shield()

test_that("describe_drt_access", {
  expect_error(svc$describe_drt_access(), NA)
})

test_that("describe_emergency_contact_settings", {
  expect_error(svc$describe_emergency_contact_settings(), NA)
})

test_that("describe_protection", {
  expect_error(svc$describe_protection(), NA)
})

test_that("describe_subscription", {
  expect_error(svc$describe_subscription(), NA)
})

test_that("list_attacks", {
  expect_error(svc$list_attacks(), NA)
})

test_that("list_attacks", {
  expect_error(svc$list_attacks(MaxResults = 20), NA)
})

test_that("list_protections", {
  expect_error(svc$list_protections(), NA)
})

test_that("list_protections", {
  expect_error(svc$list_protections(MaxResults = 20), NA)
})
