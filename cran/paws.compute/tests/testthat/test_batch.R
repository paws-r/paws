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

test_that("describe_service_environments", {
  expect_error(svc$describe_service_environments(), NA)
})

test_that("list_consumable_resources", {
  expect_error(svc$list_consumable_resources(), NA)
})

test_that("list_scheduling_policies", {
  expect_error(svc$list_scheduling_policies(), NA)
})

test_that("list_service_jobs", {
  expect_error(svc$list_service_jobs(), NA)
})
