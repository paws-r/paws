svc <- paws::bedrockagentcorecontrol()

test_that("list_agent_runtimes", {
  expect_error(svc$list_agent_runtimes(), NA)
})

test_that("list_api_key_credential_providers", {
  expect_error(svc$list_api_key_credential_providers(), NA)
})

test_that("list_browser_profiles", {
  expect_error(svc$list_browser_profiles(), NA)
})

test_that("list_browsers", {
  expect_error(svc$list_browsers(), NA)
})

test_that("list_code_interpreters", {
  expect_error(svc$list_code_interpreters(), NA)
})

test_that("list_configuration_bundles", {
  expect_error(svc$list_configuration_bundles(), NA)
})

test_that("list_evaluators", {
  expect_error(svc$list_evaluators(), NA)
})

test_that("list_gateways", {
  expect_error(svc$list_gateways(), NA)
})

test_that("list_harnesses", {
  expect_error(svc$list_harnesses(), NA)
})

test_that("list_memories", {
  expect_error(svc$list_memories(), NA)
})

test_that("list_oauth_2_credential_providers", {
  expect_error(svc$list_oauth_2_credential_providers(), NA)
})

test_that("list_online_evaluation_configs", {
  expect_error(svc$list_online_evaluation_configs(), NA)
})

test_that("list_payment_credential_providers", {
  expect_error(svc$list_payment_credential_providers(), NA)
})

test_that("list_payment_managers", {
  expect_error(svc$list_payment_managers(), NA)
})

test_that("list_policy_engines", {
  expect_error(svc$list_policy_engines(), NA)
})

test_that("list_registries", {
  expect_error(svc$list_registries(), NA)
})

test_that("list_workload_identities", {
  expect_error(svc$list_workload_identities(), NA)
})
