context("imagebuilder")

svc <- paws::imagebuilder()

test_that("list_components", {
  expect_error(svc$list_components(), NA)
})

test_that("list_distribution_configurations", {
  expect_error(svc$list_distribution_configurations(), NA)
})

test_that("list_image_pipeline_images", {
  expect_error(svc$list_image_pipeline_images(), NA)
})

test_that("list_image_pipelines", {
  expect_error(svc$list_image_pipelines(), NA)
})

test_that("list_image_recipes", {
  expect_error(svc$list_image_recipes(), NA)
})

test_that("list_images", {
  expect_error(svc$list_images(), NA)
})

test_that("list_infrastructure_configurations", {
  expect_error(svc$list_infrastructure_configurations(), NA)
})
