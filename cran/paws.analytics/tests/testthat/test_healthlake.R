svc <- paws::healthlake()

test_that("list_fhir_datastores", {
  expect_error(svc$list_fhir_datastores(), NA)
})

test_that("list_fhir_datastores", {
  expect_error(svc$list_fhir_datastores(MaxResults = 20), NA)
})
