context("codebuild")

svc <- paws::codebuild()

test_that("list_builds", {
  expect_error(svc$list_builds(), NA)
})

test_that("list_curated_environment_images", {
  expect_error(svc$list_curated_environment_images(), NA)
})

test_that("list_projects", {
  expect_error(svc$list_projects(), NA)
})

test_that("list_source_credentials", {
  expect_error(svc$list_source_credentials(), NA)
})
