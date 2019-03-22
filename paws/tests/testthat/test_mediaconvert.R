context("mediaconvert")

svc <- paws::mediaconvert()

test_that("describe_endpoints", {
  expect_error(svc$describe_endpoints(), NA)
})

test_that("describe_endpoints", {
  expect_error(svc$describe_endpoints(MaxResults = 20), NA)
})

test_that("list_job_templates", {
  expect_error(svc$list_job_templates(), NA)
})

test_that("list_job_templates", {
  expect_error(svc$list_job_templates(MaxResults = 20), NA)
})

test_that("list_jobs", {
  expect_error(svc$list_jobs(), NA)
})

test_that("list_jobs", {
  expect_error(svc$list_jobs(MaxResults = 20), NA)
})

test_that("list_presets", {
  expect_error(svc$list_presets(), NA)
})

test_that("list_presets", {
  expect_error(svc$list_presets(MaxResults = 20), NA)
})

test_that("list_queues", {
  expect_error(svc$list_queues(), NA)
})

test_that("list_queues", {
  expect_error(svc$list_queues(MaxResults = 20), NA)
})
