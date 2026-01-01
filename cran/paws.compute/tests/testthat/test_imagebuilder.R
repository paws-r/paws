svc <- paws::imagebuilder()

test_that("list_component_build_versions", {
  expect_error(svc$list_component_build_versions(), NA)
})

test_that("list_components", {
  expect_error(svc$list_components(), NA)
})

test_that("list_container_recipes", {
  expect_error(svc$list_container_recipes(), NA)
})

test_that("list_distribution_configurations", {
  expect_error(svc$list_distribution_configurations(), NA)
})

test_that("list_image_build_versions", {
  expect_error(svc$list_image_build_versions(), NA)
})

test_that("list_image_pipelines", {
  expect_error(svc$list_image_pipelines(), NA)
})

test_that("list_image_recipes", {
  expect_error(svc$list_image_recipes(), NA)
})

test_that("list_image_scan_finding_aggregations", {
  expect_error(svc$list_image_scan_finding_aggregations(), NA)
})

test_that("list_image_scan_findings", {
  expect_error(svc$list_image_scan_findings(), NA)
})

test_that("list_images", {
  expect_error(svc$list_images(), NA)
})

test_that("list_infrastructure_configurations", {
  expect_error(svc$list_infrastructure_configurations(), NA)
})

test_that("list_lifecycle_policies", {
  expect_error(svc$list_lifecycle_policies(), NA)
})

test_that("list_waiting_workflow_steps", {
  expect_error(svc$list_waiting_workflow_steps(), NA)
})

test_that("list_workflow_build_versions", {
  expect_error(svc$list_workflow_build_versions(), NA)
})

test_that("list_workflows", {
  expect_error(svc$list_workflows(), NA)
})
