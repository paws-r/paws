context("applicationdiscoveryservice")

svc <- paws::applicationdiscoveryservice()

test_that("describe_agents", {
  expect_error(svc$describe_agents(), NA)
})

test_that("describe_continuous_exports", {
  expect_error(svc$describe_continuous_exports(), NA)
})

test_that("describe_export_configurations", {
  expect_error(svc$describe_export_configurations(), NA)
})

test_that("describe_export_tasks", {
  expect_error(svc$describe_export_tasks(), NA)
})

test_that("describe_import_tasks", {
  expect_error(svc$describe_import_tasks(), NA)
})

test_that("describe_tags", {
  expect_error(svc$describe_tags(), NA)
})
