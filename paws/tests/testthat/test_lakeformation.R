svc <- paws::lakeformation()

test_that("list_permissions", {
  expect_error(svc$list_permissions(), NA)
})

test_that("list_permissions", {
  expect_error(svc$list_permissions(MaxResults = 20), NA)
})

test_that("list_resources", {
  expect_error(svc$list_resources(), NA)
})

test_that("list_resources", {
  expect_error(svc$list_resources(MaxResults = 20), NA)
})
