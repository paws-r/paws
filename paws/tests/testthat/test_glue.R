context("glue")

svc <- paws::glue()

test_that("list_crawlers", {
  expect_error(svc$list_crawlers(), NA)
})

test_that("list_crawlers", {
  expect_error(svc$list_crawlers(MaxResults = 20), NA)
})

test_that("list_dev_endpoints", {
  expect_error(svc$list_dev_endpoints(), NA)
})

test_that("list_dev_endpoints", {
  expect_error(svc$list_dev_endpoints(MaxResults = 20), NA)
})

test_that("list_jobs", {
  expect_error(svc$list_jobs(), NA)
})

test_that("list_jobs", {
  expect_error(svc$list_jobs(MaxResults = 20), NA)
})

test_that("list_ml_transforms", {
  expect_error(svc$list_ml_transforms(), NA)
})

test_that("list_ml_transforms", {
  expect_error(svc$list_ml_transforms(MaxResults = 20), NA)
})

test_that("list_registries", {
  expect_error(svc$list_registries(), NA)
})

test_that("list_registries", {
  expect_error(svc$list_registries(MaxResults = 20), NA)
})

test_that("list_schemas", {
  expect_error(svc$list_schemas(), NA)
})

test_that("list_schemas", {
  expect_error(svc$list_schemas(MaxResults = 20), NA)
})

test_that("list_triggers", {
  expect_error(svc$list_triggers(), NA)
})

test_that("list_triggers", {
  expect_error(svc$list_triggers(MaxResults = 20), NA)
})

test_that("list_workflows", {
  expect_error(svc$list_workflows(), NA)
})

test_that("list_workflows", {
  expect_error(svc$list_workflows(MaxResults = 20), NA)
})
