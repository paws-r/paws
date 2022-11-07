svc <- paws::locationservice()

test_that("list_geofence_collections", {
  expect_error(svc$list_geofence_collections(), NA)
})

test_that("list_geofence_collections", {
  expect_error(svc$list_geofence_collections(MaxResults = 20), NA)
})

test_that("list_maps", {
  expect_error(svc$list_maps(), NA)
})

test_that("list_maps", {
  expect_error(svc$list_maps(MaxResults = 20), NA)
})

test_that("list_place_indexes", {
  expect_error(svc$list_place_indexes(), NA)
})

test_that("list_place_indexes", {
  expect_error(svc$list_place_indexes(MaxResults = 20), NA)
})

test_that("list_route_calculators", {
  expect_error(svc$list_route_calculators(), NA)
})

test_that("list_route_calculators", {
  expect_error(svc$list_route_calculators(MaxResults = 20), NA)
})

test_that("list_trackers", {
  expect_error(svc$list_trackers(), NA)
})

test_that("list_trackers", {
  expect_error(svc$list_trackers(MaxResults = 20), NA)
})
