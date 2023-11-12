svc <- paws::paymentcryptographycontrolplane()

test_that("list_aliases", {
  expect_error(svc$list_aliases(), NA)
})

test_that("list_aliases", {
  expect_error(svc$list_aliases(MaxResults = 20), NA)
})

test_that("list_keys", {
  expect_error(svc$list_keys(), NA)
})

test_that("list_keys", {
  expect_error(svc$list_keys(MaxResults = 20), NA)
})
