svc <- paws::codebuild()

test_that("list_build_batches", {
  expect_error(svc$list_build_batches(), NA)
})

test_that("list_build_batches_for_project", {
  expect_error(svc$list_build_batches_for_project(), NA)
})

test_that("list_builds", {
  expect_error(svc$list_builds(), NA)
})

test_that("list_curated_environment_images", {
  expect_error(svc$list_curated_environment_images(), NA)
})

test_that("list_projects", {
  expect_error(svc$list_projects(), NA)
})

test_that("list_report_groups", {
  expect_error(svc$list_report_groups(), NA)
})

test_that("list_reports", {
  expect_error(svc$list_reports(), NA)
})

test_that("list_shared_projects", {
  expect_error(svc$list_shared_projects(), NA)
})

test_that("list_shared_report_groups", {
  expect_error(svc$list_shared_report_groups(), NA)
})

test_that("list_source_credentials", {
  expect_error(svc$list_source_credentials(), NA)
})
