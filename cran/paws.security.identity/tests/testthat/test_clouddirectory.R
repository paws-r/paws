svc <- paws::clouddirectory()

test_that("list_development_schema_arns", {
  expect_error(svc$list_development_schema_arns(), NA)
})

test_that("list_development_schema_arns", {
  expect_error(svc$list_development_schema_arns(MaxResults = 20), NA)
})

test_that("list_directories", {
  expect_error(svc$list_directories(), NA)
})

test_that("list_directories", {
  expect_error(svc$list_directories(MaxResults = 20), NA)
})

test_that("list_managed_schema_arns", {
  expect_error(svc$list_managed_schema_arns(), NA)
})

test_that("list_managed_schema_arns", {
  expect_error(svc$list_managed_schema_arns(MaxResults = 20), NA)
})

test_that("list_published_schema_arns", {
  expect_error(svc$list_published_schema_arns(), NA)
})

test_that("list_published_schema_arns", {
  expect_error(svc$list_published_schema_arns(MaxResults = 20), NA)
})
