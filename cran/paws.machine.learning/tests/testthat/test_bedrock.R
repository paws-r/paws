svc <- paws::bedrock()

test_that("list_custom_models", {
  expect_error(svc$list_custom_models(), NA)
})

test_that("list_foundation_models", {
  expect_error(svc$list_foundation_models(), NA)
})

test_that("list_model_customization_jobs", {
  expect_error(svc$list_model_customization_jobs(), NA)
})

test_that("list_provisioned_model_throughputs", {
  expect_error(svc$list_provisioned_model_throughputs(), NA)
})
