svc <- paws::ssmsap()

test_that("list_applications", {
  expect_error(svc$list_applications(), NA)
})

test_that("list_applications", {
  expect_error(svc$list_applications(MaxResults = 20), NA)
})

test_that("list_components", {
  expect_error(svc$list_components(), NA)
})

test_that("list_components", {
  expect_error(svc$list_components(MaxResults = 20), NA)
})

test_that("list_configuration_check_definitions", {
  expect_error(svc$list_configuration_check_definitions(), NA)
})

test_that("list_configuration_check_definitions", {
  expect_error(svc$list_configuration_check_definitions(MaxResults = 20), NA)
})

test_that("list_databases", {
  expect_error(svc$list_databases(), NA)
})

test_that("list_databases", {
  expect_error(svc$list_databases(MaxResults = 20), NA)
})
