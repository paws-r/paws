svc <- paws::healthlake()

test_that("list_data_transformation_jobs", {
  expect_error(svc$list_data_transformation_jobs(), NA)
})

test_that("list_data_transformation_jobs", {
  expect_error(svc$list_data_transformation_jobs(MaxResults = 20), NA)
})

test_that("list_fhir_datastores", {
  expect_error(svc$list_fhir_datastores(), NA)
})

test_that("list_fhir_datastores", {
  expect_error(svc$list_fhir_datastores(MaxResults = 20), NA)
})
