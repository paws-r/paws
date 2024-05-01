svc <- paws::entityresolution()

test_that("list_id_mapping_workflows", {
  expect_error(svc$list_id_mapping_workflows(), NA)
})

test_that("list_id_namespaces", {
  expect_error(svc$list_id_namespaces(), NA)
})

test_that("list_matching_workflows", {
  expect_error(svc$list_matching_workflows(), NA)
})

test_that("list_provider_services", {
  expect_error(svc$list_provider_services(), NA)
})

test_that("list_schema_mappings", {
  expect_error(svc$list_schema_mappings(), NA)
})
