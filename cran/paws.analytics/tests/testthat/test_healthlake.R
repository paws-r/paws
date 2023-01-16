svc <- paws::healthlake()

test_that("describe_fhir_datastore", {
  expect_error(svc$describe_fhir_datastore(), NA)
})

test_that("list_fhir_datastores", {
  expect_error(svc$list_fhir_datastores(), NA)
})

test_that("list_fhir_datastores", {
  expect_error(svc$list_fhir_datastores(MaxResults = 20), NA)
})
