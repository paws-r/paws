svc <- paws::ecs()

test_that("describe_capacity_providers", {
  expect_error(svc$describe_capacity_providers(), NA)
})

test_that("describe_clusters", {
  expect_error(svc$describe_clusters(), NA)
})

test_that("list_account_settings", {
  expect_error(svc$list_account_settings(), NA)
})

test_that("list_clusters", {
  expect_error(svc$list_clusters(), NA)
})

test_that("list_task_definition_families", {
  expect_error(svc$list_task_definition_families(), NA)
})

test_that("list_task_definitions", {
  expect_error(svc$list_task_definitions(), NA)
})
