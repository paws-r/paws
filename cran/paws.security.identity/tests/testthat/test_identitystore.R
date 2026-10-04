svc <- paws.security.identity::identitystore()

test_that("list_identity_stores", {
  skip_on_cran()
  expect_error(svc$list_identity_stores(), NA)
})

test_that("list_identity_stores", {
  skip_on_cran()
  expect_error(svc$list_identity_stores(MaxResults = 20), NA)
})
