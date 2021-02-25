svc <- paws::groundstation()

test_that("list_configs", {
  expect_error(svc$list_configs(), NA)
})

test_that("list_dataflow_endpoint_groups", {
  expect_error(svc$list_dataflow_endpoint_groups(), NA)
})

test_that("list_ground_stations", {
  expect_error(svc$list_ground_stations(), NA)
})

test_that("list_mission_profiles", {
  expect_error(svc$list_mission_profiles(), NA)
})

test_that("list_satellites", {
  expect_error(svc$list_satellites(), NA)
})
