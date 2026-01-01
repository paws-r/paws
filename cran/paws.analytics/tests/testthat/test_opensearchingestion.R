svc <- paws::opensearchingestion()

test_that("list_pipeline_blueprints", {
  expect_error(svc$list_pipeline_blueprints(), NA)
})

test_that("list_pipeline_endpoint_connections", {
  expect_error(svc$list_pipeline_endpoint_connections(), NA)
})

test_that("list_pipeline_endpoint_connections", {
  expect_error(svc$list_pipeline_endpoint_connections(MaxResults = 20), NA)
})

test_that("list_pipeline_endpoints", {
  expect_error(svc$list_pipeline_endpoints(), NA)
})

test_that("list_pipeline_endpoints", {
  expect_error(svc$list_pipeline_endpoints(MaxResults = 20), NA)
})

test_that("list_pipelines", {
  expect_error(svc$list_pipelines(), NA)
})

test_that("list_pipelines", {
  expect_error(svc$list_pipelines(MaxResults = 20), NA)
})
