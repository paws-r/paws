context("ecs")

svc <- paws::ecs()

test_that("describe_clusters", {
  expect_error(svc$describe_clusters(), NA)
})

test_that("list_account_settings", {
  expect_error(svc$list_account_settings(), NA)
})

test_that("list_clusters", {
  expect_error(svc$list_clusters(), NA)
})

test_that("list_container_instances", {
  expect_error(svc$list_container_instances(), NA)
})

test_that("list_services", {
  expect_error(svc$list_services(), NA)
})

test_that("list_task_definition_families", {
  expect_error(svc$list_task_definition_families(), NA)
})

test_that("list_task_definitions", {
  expect_error(svc$list_task_definitions(), NA)
})

test_that("list_tasks", {
  expect_error(svc$list_tasks(), NA)
})
