svc <- paws::shield()

test_that("describe_attack_statistics", {
  expect_error(svc$describe_attack_statistics(), NA)
})

test_that("list_attacks", {
  expect_error(svc$list_attacks(), NA)
})

test_that("list_attacks", {
  expect_error(svc$list_attacks(MaxResults = 20), NA)
})

test_that("list_protection_groups", {
  expect_error(svc$list_protection_groups(), NA)
})

test_that("list_protection_groups", {
  expect_error(svc$list_protection_groups(MaxResults = 20), NA)
})
