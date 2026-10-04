svc <- paws.security.identity::pcaconnectorad()

test_that("list_connectors", {
  skip_on_cran()
  expect_error(svc$list_connectors(), NA)
})

test_that("list_connectors", {
  skip_on_cran()
  expect_error(svc$list_connectors(MaxResults = 20), NA)
})

test_that("list_directory_registrations", {
  skip_on_cran()
  expect_error(svc$list_directory_registrations(), NA)
})

test_that("list_directory_registrations", {
  skip_on_cran()
  expect_error(svc$list_directory_registrations(MaxResults = 20), NA)
})
