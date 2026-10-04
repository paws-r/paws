svc <- paws.machine.learning::bedrockagentcorecontrol()

test_that("list_agent_runtimes", {
  skip_on_cran()
  expect_error(svc$list_agent_runtimes(), NA)
})

test_that("list_api_key_credential_providers", {
  skip_on_cran()
  expect_error(svc$list_api_key_credential_providers(), NA)
})

test_that("list_browser_profiles", {
  skip_on_cran()
  expect_error(svc$list_browser_profiles(), NA)
})

test_that("list_browsers", {
  skip_on_cran()
  expect_error(svc$list_browsers(), NA)
})

test_that("list_capacity_providers", {
  skip_on_cran()
  expect_error(svc$list_capacity_providers(), NA)
})

test_that("list_code_interpreters", {
  skip_on_cran()
  expect_error(svc$list_code_interpreters(), NA)
})

test_that("list_configuration_bundles", {
  skip_on_cran()
  expect_error(svc$list_configuration_bundles(), NA)
})

test_that("list_consent_portals", {
  skip_on_cran()
  expect_error(svc$list_consent_portals(), NA)
})

test_that("list_datasets", {
  skip_on_cran()
  expect_error(svc$list_datasets(), NA)
})

test_that("list_evaluators", {
  skip_on_cran()
  expect_error(svc$list_evaluators(), NA)
})

test_that("list_gateways", {
  skip_on_cran()
  expect_error(svc$list_gateways(), NA)
})

test_that("list_harnesses", {
  skip_on_cran()
  expect_error(svc$list_harnesses(), NA)
})

test_that("list_memories", {
  skip_on_cran()
  expect_error(svc$list_memories(), NA)
})

test_that("list_oauth_2_credential_providers", {
  skip_on_cran()
  expect_error(svc$list_oauth_2_credential_providers(), NA)
})

test_that("list_online_evaluation_configs", {
  skip_on_cran()
  expect_error(svc$list_online_evaluation_configs(), NA)
})

test_that("list_payment_credential_providers", {
  skip_on_cran()
  expect_error(svc$list_payment_credential_providers(), NA)
})

test_that("list_payment_managers", {
  skip_on_cran()
  expect_error(svc$list_payment_managers(), NA)
})

test_that("list_policy_engine_summaries", {
  skip_on_cran()
  expect_error(svc$list_policy_engine_summaries(), NA)
})

test_that("list_policy_engines", {
  skip_on_cran()
  expect_error(svc$list_policy_engines(), NA)
})

test_that("list_registries", {
  skip_on_cran()
  expect_error(svc$list_registries(), NA)
})

test_that("list_workload_identities", {
  skip_on_cran()
  expect_error(svc$list_workload_identities(), NA)
})
