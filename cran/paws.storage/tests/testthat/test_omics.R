svc <- paws::omics()

test_that("list_annotation_import_jobs", {
  expect_error(svc$list_annotation_import_jobs(), NA)
})

test_that("list_annotation_stores", {
  expect_error(svc$list_annotation_stores(), NA)
})

test_that("list_reference_stores", {
  expect_error(svc$list_reference_stores(), NA)
})

test_that("list_run_groups", {
  expect_error(svc$list_run_groups(), NA)
})

test_that("list_runs", {
  expect_error(svc$list_runs(), NA)
})

test_that("list_sequence_stores", {
  expect_error(svc$list_sequence_stores(), NA)
})

test_that("list_variant_import_jobs", {
  expect_error(svc$list_variant_import_jobs(), NA)
})

test_that("list_variant_stores", {
  expect_error(svc$list_variant_stores(), NA)
})

test_that("list_workflows", {
  expect_error(svc$list_workflows(), NA)
})
