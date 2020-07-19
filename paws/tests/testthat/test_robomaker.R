context("robomaker")

svc <- paws::robomaker()

test_that("list_deployment_jobs", {
  expect_error(svc$list_deployment_jobs(), NA)
})

test_that("list_fleets", {
  expect_error(svc$list_fleets(), NA)
})

test_that("list_robot_applications", {
  expect_error(svc$list_robot_applications(), NA)
})

test_that("list_robots", {
  expect_error(svc$list_robots(), NA)
})

test_that("list_simulation_applications", {
  expect_error(svc$list_simulation_applications(), NA)
})

test_that("list_simulation_job_batches", {
  expect_error(svc$list_simulation_job_batches(), NA)
})

test_that("list_simulation_jobs", {
  expect_error(svc$list_simulation_jobs(), NA)
})
