context("opsworks")

svc <- paws::opsworks()

test_that("describe_agent_versions", {
  expect_error(svc$describe_agent_versions(), NA)
})

test_that("describe_apps", {
  expect_error(svc$describe_apps(), NA)
})

test_that("describe_commands", {
  expect_error(svc$describe_commands(), NA)
})

test_that("describe_deployments", {
  expect_error(svc$describe_deployments(), NA)
})

test_that("describe_ecs_clusters", {
  expect_error(svc$describe_ecs_clusters(), NA)
})

test_that("describe_ecs_clusters", {
  expect_error(svc$describe_ecs_clusters(MaxResults = 20), NA)
})

test_that("describe_elastic_ips", {
  expect_error(svc$describe_elastic_ips(), NA)
})

test_that("describe_elastic_load_balancers", {
  expect_error(svc$describe_elastic_load_balancers(), NA)
})

test_that("describe_instances", {
  expect_error(svc$describe_instances(), NA)
})

test_that("describe_layers", {
  expect_error(svc$describe_layers(), NA)
})

test_that("describe_my_user_profile", {
  expect_error(svc$describe_my_user_profile(), NA)
})

test_that("describe_operating_systems", {
  expect_error(svc$describe_operating_systems(), NA)
})

test_that("describe_permissions", {
  expect_error(svc$describe_permissions(), NA)
})

test_that("describe_raid_arrays", {
  expect_error(svc$describe_raid_arrays(), NA)
})

test_that("describe_service_errors", {
  expect_error(svc$describe_service_errors(), NA)
})

test_that("describe_stacks", {
  expect_error(svc$describe_stacks(), NA)
})

test_that("describe_user_profiles", {
  expect_error(svc$describe_user_profiles(), NA)
})

test_that("describe_volumes", {
  expect_error(svc$describe_volumes(), NA)
})
