svc <- paws::drs()

test_that("describe_jobs", {
  expect_error(svc$describe_jobs(), NA)
})

test_that("describe_launch_configuration_templates", {
  expect_error(svc$describe_launch_configuration_templates(), NA)
})

test_that("describe_recovery_instances", {
  expect_error(svc$describe_recovery_instances(), NA)
})

test_that("describe_replication_configuration_templates", {
  expect_error(svc$describe_replication_configuration_templates(), NA)
})

test_that("describe_source_networks", {
  expect_error(svc$describe_source_networks(), NA)
})

test_that("describe_source_servers", {
  expect_error(svc$describe_source_servers(), NA)
})

test_that("list_staging_accounts", {
  expect_error(svc$list_staging_accounts(), NA)
})
