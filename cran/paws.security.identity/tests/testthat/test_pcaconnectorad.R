svc <- paws::pcaconnectorad()

test_that("list_connectors", {
  expect_error(svc$list_connectors(), NA)
})

test_that("list_connectors", {
  expect_error(svc$list_connectors(MaxResults = 20), NA)
})

test_that("list_directory_registrations", {
  expect_error(svc$list_directory_registrations(), NA)
})

test_that("list_directory_registrations", {
  expect_error(svc$list_directory_registrations(MaxResults = 20), NA)
})
