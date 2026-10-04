svc <- paws::paymentcryptographycontrolplane()

test_that("list_aliases", {
  skip_on_cran()
  expect_error(svc$list_aliases(), NA)
})

test_that("list_aliases", {
  skip_on_cran()
  expect_error(svc$list_aliases(MaxResults = 20), NA)
})

test_that("list_keys", {
  skip_on_cran()
  expect_error(svc$list_keys(), NA)
})

test_that("list_keys", {
  skip_on_cran()
  expect_error(svc$list_keys(MaxResults = 20), NA)
})
