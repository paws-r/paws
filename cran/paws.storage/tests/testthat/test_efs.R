svc <- paws::efs()

test_that("describe_access_points", {
  expect_error(svc$describe_access_points(), NA)
})

test_that("describe_access_points", {
  expect_error(svc$describe_access_points(MaxResults = 20), NA)
})

test_that("describe_account_preferences", {
  expect_error(svc$describe_account_preferences(), NA)
})

test_that("describe_account_preferences", {
  expect_error(svc$describe_account_preferences(MaxResults = 20), NA)
})

test_that("describe_file_systems", {
  expect_error(svc$describe_file_systems(), NA)
})

test_that("describe_mount_targets", {
  expect_error(svc$describe_mount_targets(), NA)
})

test_that("describe_replication_configurations", {
  expect_error(svc$describe_replication_configurations(), NA)
})

test_that("describe_replication_configurations", {
  expect_error(svc$describe_replication_configurations(MaxResults = 20), NA)
})
