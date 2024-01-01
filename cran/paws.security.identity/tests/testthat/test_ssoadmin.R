svc <- paws::ssoadmin()

test_that("list_application_providers", {
  expect_error(svc$list_application_providers(), NA)
})

test_that("list_application_providers", {
  expect_error(svc$list_application_providers(MaxResults = 20), NA)
})

test_that("list_instances", {
  expect_error(svc$list_instances(), NA)
})

test_that("list_instances", {
  expect_error(svc$list_instances(MaxResults = 20), NA)
})
