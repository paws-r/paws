svc <- paws::sagemakergeospatialcapabilities()

test_that("list_earth_observation_jobs", {
  expect_error(svc$list_earth_observation_jobs(), NA)
})

test_that("list_earth_observation_jobs", {
  expect_error(svc$list_earth_observation_jobs(MaxResults = 20), NA)
})

test_that("list_raster_data_collections", {
  expect_error(svc$list_raster_data_collections(), NA)
})

test_that("list_raster_data_collections", {
  expect_error(svc$list_raster_data_collections(MaxResults = 20), NA)
})

test_that("list_vector_enrichment_jobs", {
  expect_error(svc$list_vector_enrichment_jobs(), NA)
})

test_that("list_vector_enrichment_jobs", {
  expect_error(svc$list_vector_enrichment_jobs(MaxResults = 20), NA)
})
