svc <- paws::ivsrealtime()

test_that("list_compositions", {
  expect_error(svc$list_compositions(), NA)
})

test_that("list_encoder_configurations", {
  expect_error(svc$list_encoder_configurations(), NA)
})

test_that("list_ingest_configurations", {
  expect_error(svc$list_ingest_configurations(), NA)
})

test_that("list_public_keys", {
  expect_error(svc$list_public_keys(), NA)
})

test_that("list_stages", {
  expect_error(svc$list_stages(), NA)
})

test_that("list_storage_configurations", {
  expect_error(svc$list_storage_configurations(), NA)
})
