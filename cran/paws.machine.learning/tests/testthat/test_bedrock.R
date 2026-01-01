svc <- paws::bedrock()

test_that("list_automated_reasoning_policies", {
  expect_error(svc$list_automated_reasoning_policies(), NA)
})

test_that("list_custom_model_deployments", {
  expect_error(svc$list_custom_model_deployments(), NA)
})

test_that("list_custom_models", {
  expect_error(svc$list_custom_models(), NA)
})

test_that("list_enforced_guardrails_configuration", {
  expect_error(svc$list_enforced_guardrails_configuration(), NA)
})

test_that("list_evaluation_jobs", {
  expect_error(svc$list_evaluation_jobs(), NA)
})

test_that("list_foundation_models", {
  expect_error(svc$list_foundation_models(), NA)
})

test_that("list_guardrails", {
  expect_error(svc$list_guardrails(), NA)
})

test_that("list_imported_models", {
  expect_error(svc$list_imported_models(), NA)
})

test_that("list_inference_profiles", {
  expect_error(svc$list_inference_profiles(), NA)
})

test_that("list_marketplace_model_endpoints", {
  expect_error(svc$list_marketplace_model_endpoints(), NA)
})

test_that("list_model_copy_jobs", {
  expect_error(svc$list_model_copy_jobs(), NA)
})

test_that("list_model_customization_jobs", {
  expect_error(svc$list_model_customization_jobs(), NA)
})

test_that("list_model_import_jobs", {
  expect_error(svc$list_model_import_jobs(), NA)
})

test_that("list_model_invocation_jobs", {
  expect_error(svc$list_model_invocation_jobs(), NA)
})

test_that("list_prompt_routers", {
  expect_error(svc$list_prompt_routers(), NA)
})

test_that("list_provisioned_model_throughputs", {
  expect_error(svc$list_provisioned_model_throughputs(), NA)
})
