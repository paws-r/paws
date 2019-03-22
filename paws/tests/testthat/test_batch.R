context("batch")

svc <- paws::batch()

test_that("describe_compute_environments", {
  expect_error(svc$describe_compute_environments(), NA)
})

test_that("describe_job_definitions", {
  expect_error(svc$describe_job_definitions(), NA)
})

test_that("describe_job_queues", {
  expect_error(svc$describe_job_queues(), NA)
})

test_that("list_jobs", {
  expect_error(svc$list_jobs(), NA)
})
