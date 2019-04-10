context("datasync")

svc <- paws::datasync()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_agents", {
  expect_error(svc$list_agents(), NA)
})

test_that("list_agents", {
  expect_error(svc$list_agents(MaxResults = 20), NA)
})

test_that("list_locations", {
  expect_error(svc$list_locations(), NA)
})

test_that("list_locations", {
  expect_error(svc$list_locations(MaxResults = 20), NA)
})

test_that("list_task_executions", {
  expect_error(svc$list_task_executions(), NA)
})

test_that("list_task_executions", {
  expect_error(svc$list_task_executions(MaxResults = 20), NA)
})

test_that("list_tasks", {
  expect_error(svc$list_tasks(), NA)
})

test_that("list_tasks", {
  expect_error(svc$list_tasks(MaxResults = 20), NA)
})

}
