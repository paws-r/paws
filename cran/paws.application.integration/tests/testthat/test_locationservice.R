svc <- paws.application.integration::locationservice()

test_that("list_geofence_collections", {
  skip_on_cran()
  expect_error(svc$list_geofence_collections(), NA)
})

test_that("list_geofence_collections", {
  skip_on_cran()
  expect_error(svc$list_geofence_collections(MaxResults = 20), NA)
})

test_that("list_jobs", {
  skip_on_cran()
  expect_error(svc$list_jobs(), NA)
})

test_that("list_jobs", {
  skip_on_cran()
  expect_error(svc$list_jobs(MaxResults = 20), NA)
})

test_that("list_keys", {
  skip_on_cran()
  expect_error(svc$list_keys(), NA)
})

test_that("list_keys", {
  skip_on_cran()
  expect_error(svc$list_keys(MaxResults = 20), NA)
})

test_that("list_maps", {
  skip_on_cran()
  expect_error(svc$list_maps(), NA)
})

test_that("list_maps", {
  skip_on_cran()
  expect_error(svc$list_maps(MaxResults = 20), NA)
})

test_that("list_place_indexes", {
  skip_on_cran()
  expect_error(svc$list_place_indexes(), NA)
})

test_that("list_place_indexes", {
  skip_on_cran()
  expect_error(svc$list_place_indexes(MaxResults = 20), NA)
})

test_that("list_route_calculators", {
  skip_on_cran()
  expect_error(svc$list_route_calculators(), NA)
})

test_that("list_route_calculators", {
  skip_on_cran()
  expect_error(svc$list_route_calculators(MaxResults = 20), NA)
})

test_that("list_trackers", {
  skip_on_cran()
  expect_error(svc$list_trackers(), NA)
})

test_that("list_trackers", {
  skip_on_cran()
  expect_error(svc$list_trackers(MaxResults = 20), NA)
})
