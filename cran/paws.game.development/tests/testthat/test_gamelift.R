context("gamelift")

svc <- paws::gamelift()

test_that("describe_ec2_instance_limits", {
  expect_error(svc$describe_ec2_instance_limits(), NA)
})

test_that("describe_fleet_attributes", {
  expect_error(svc$describe_fleet_attributes(), NA)
})

test_that("describe_fleet_capacity", {
  expect_error(svc$describe_fleet_capacity(), NA)
})

test_that("describe_fleet_utilization", {
  expect_error(svc$describe_fleet_utilization(), NA)
})

test_that("describe_game_session_queues", {
  expect_error(svc$describe_game_session_queues(), NA)
})

test_that("describe_matchmaking_configurations", {
  expect_error(svc$describe_matchmaking_configurations(), NA)
})

test_that("describe_matchmaking_rule_sets", {
  expect_error(svc$describe_matchmaking_rule_sets(), NA)
})

test_that("describe_vpc_peering_authorizations", {
  expect_error(svc$describe_vpc_peering_authorizations(), NA)
})

test_that("describe_vpc_peering_connections", {
  expect_error(svc$describe_vpc_peering_connections(), NA)
})

test_that("list_aliases", {
  expect_error(svc$list_aliases(), NA)
})

test_that("list_builds", {
  expect_error(svc$list_builds(), NA)
})

test_that("list_fleets", {
  expect_error(svc$list_fleets(), NA)
})

test_that("list_scripts", {
  expect_error(svc$list_scripts(), NA)
})
