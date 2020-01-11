context("fsx")

svc <- paws::fsx()

test_that("describe_backups", {
  expect_error(svc$describe_backups(), NA)
})

test_that("describe_backups", {
  expect_error(svc$describe_backups(MaxResults = 20), NA)
})

test_that("describe_data_repository_tasks", {
  expect_error(svc$describe_data_repository_tasks(), NA)
})

test_that("describe_data_repository_tasks", {
  expect_error(svc$describe_data_repository_tasks(MaxResults = 20), NA)
})

test_that("describe_file_systems", {
  expect_error(svc$describe_file_systems(), NA)
})

test_that("describe_file_systems", {
  expect_error(svc$describe_file_systems(MaxResults = 20), NA)
})
