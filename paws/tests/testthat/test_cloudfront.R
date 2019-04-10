context("cloudfront")

svc <- paws::cloudfront()

if (Sys.getenv("NOT_CRAN") == "true") {

test_that("list_cloud_front_origin_access_identities", {
  expect_error(svc$list_cloud_front_origin_access_identities(), NA)
})

test_that("list_distributions", {
  expect_error(svc$list_distributions(), NA)
})

test_that("list_field_level_encryption_configs", {
  expect_error(svc$list_field_level_encryption_configs(), NA)
})

test_that("list_field_level_encryption_profiles", {
  expect_error(svc$list_field_level_encryption_profiles(), NA)
})

test_that("list_public_keys", {
  expect_error(svc$list_public_keys(), NA)
})

test_that("list_streaming_distributions", {
  expect_error(svc$list_streaming_distributions(), NA)
})

}
