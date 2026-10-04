svc <- paws.analytics::opensearchingestion()

test_that("list_pipeline_blueprints", {
  skip_on_cran()
  expect_error(svc$list_pipeline_blueprints(), NA)
})

test_that("list_pipeline_endpoint_connections", {
  skip_on_cran()
  expect_error(svc$list_pipeline_endpoint_connections(), NA)
})

test_that("list_pipeline_endpoint_connections", {
  skip_on_cran()
  expect_error(svc$list_pipeline_endpoint_connections(MaxResults = 20), NA)
})

test_that("list_pipeline_endpoints", {
  skip_on_cran()
  expect_error(svc$list_pipeline_endpoints(), NA)
})

test_that("list_pipeline_endpoints", {
  skip_on_cran()
  expect_error(svc$list_pipeline_endpoints(MaxResults = 20), NA)
})

test_that("list_pipelines", {
  skip_on_cran()
  expect_error(svc$list_pipelines(), NA)
})

test_that("list_pipelines", {
  skip_on_cran()
  expect_error(svc$list_pipelines(MaxResults = 20), NA)
})
