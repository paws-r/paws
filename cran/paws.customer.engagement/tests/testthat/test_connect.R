svc <- paws::connect()

test_that("list_instances", {
  expect_error(svc$list_instances(), NA)
})

test_that("list_instances", {
  expect_error(svc$list_instances(MaxResults = 20), NA)
})

test_that("list_phone_numbers_v2", {
  expect_error(svc$list_phone_numbers_v2(), NA)
})

test_that("list_phone_numbers_v2", {
  expect_error(svc$list_phone_numbers_v2(MaxResults = 20), NA)
})
