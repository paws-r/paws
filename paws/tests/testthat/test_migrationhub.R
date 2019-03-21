context("migrationhub")

svc <- paws::migrationhub()

test_that("list_migration_tasks", {
  expect_error(svc$list_migration_tasks(), NA)
})

test_that("list_migration_tasks", {
  expect_error(svc$list_migration_tasks(MaxResults = 20), NA)
})

test_that("list_progress_update_streams", {
  expect_error(svc$list_progress_update_streams(), NA)
})

test_that("list_progress_update_streams", {
  expect_error(svc$list_progress_update_streams(MaxResults = 20), NA)
})
