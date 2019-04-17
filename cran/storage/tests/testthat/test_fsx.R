context("fsx")

svc <- paws::fsx()

test_that("describe_backups", {
  expect_error(svc$describe_backups(), NA)
})

test_that("describe_backups", {
  expect_error(svc$describe_backups(MaxResults = 20), NA)
})

test_that("describe_file_systems", {
  expect_error(svc$describe_file_systems(), NA)
})

test_that("describe_file_systems", {
  expect_error(svc$describe_file_systems(MaxResults = 20), NA)
})
