svc <- paws::glue()

test_that("describe_inbound_integrations", {
  expect_error(svc$describe_inbound_integrations(), NA)
})

test_that("describe_integrations", {
  expect_error(svc$describe_integrations(), NA)
})

test_that("list_blueprints", {
  expect_error(svc$list_blueprints(), NA)
})

test_that("list_blueprints", {
  expect_error(svc$list_blueprints(MaxResults = 20), NA)
})

test_that("list_column_statistics_task_runs", {
  expect_error(svc$list_column_statistics_task_runs(), NA)
})

test_that("list_column_statistics_task_runs", {
  expect_error(svc$list_column_statistics_task_runs(MaxResults = 20), NA)
})

test_that("list_connection_types", {
  expect_error(svc$list_connection_types(), NA)
})

test_that("list_connection_types", {
  expect_error(svc$list_connection_types(MaxResults = 20), NA)
})

test_that("list_crawlers", {
  expect_error(svc$list_crawlers(), NA)
})

test_that("list_crawlers", {
  expect_error(svc$list_crawlers(MaxResults = 20), NA)
})

test_that("list_custom_entity_types", {
  expect_error(svc$list_custom_entity_types(), NA)
})

test_that("list_custom_entity_types", {
  expect_error(svc$list_custom_entity_types(MaxResults = 20), NA)
})

test_that("list_data_quality_results", {
  expect_error(svc$list_data_quality_results(), NA)
})

test_that("list_data_quality_results", {
  expect_error(svc$list_data_quality_results(MaxResults = 20), NA)
})

test_that("list_data_quality_rule_recommendation_runs", {
  expect_error(svc$list_data_quality_rule_recommendation_runs(), NA)
})

test_that("list_data_quality_rule_recommendation_runs", {
  expect_error(svc$list_data_quality_rule_recommendation_runs(MaxResults = 20), NA)
})

test_that("list_data_quality_ruleset_evaluation_runs", {
  expect_error(svc$list_data_quality_ruleset_evaluation_runs(), NA)
})

test_that("list_data_quality_ruleset_evaluation_runs", {
  expect_error(svc$list_data_quality_ruleset_evaluation_runs(MaxResults = 20), NA)
})

test_that("list_data_quality_rulesets", {
  expect_error(svc$list_data_quality_rulesets(), NA)
})

test_that("list_data_quality_rulesets", {
  expect_error(svc$list_data_quality_rulesets(MaxResults = 20), NA)
})

test_that("list_data_quality_statistic_annotations", {
  expect_error(svc$list_data_quality_statistic_annotations(), NA)
})

test_that("list_data_quality_statistic_annotations", {
  expect_error(svc$list_data_quality_statistic_annotations(MaxResults = 20), NA)
})

test_that("list_data_quality_statistics", {
  expect_error(svc$list_data_quality_statistics(), NA)
})

test_that("list_data_quality_statistics", {
  expect_error(svc$list_data_quality_statistics(MaxResults = 20), NA)
})

test_that("list_dev_endpoints", {
  expect_error(svc$list_dev_endpoints(), NA)
})

test_that("list_dev_endpoints", {
  expect_error(svc$list_dev_endpoints(MaxResults = 20), NA)
})

test_that("list_entities", {
  expect_error(svc$list_entities(), NA)
})

test_that("list_integration_resource_properties", {
  expect_error(svc$list_integration_resource_properties(), NA)
})

test_that("list_jobs", {
  expect_error(svc$list_jobs(), NA)
})

test_that("list_jobs", {
  expect_error(svc$list_jobs(MaxResults = 20), NA)
})

test_that("list_ml_transforms", {
  expect_error(svc$list_ml_transforms(), NA)
})

test_that("list_ml_transforms", {
  expect_error(svc$list_ml_transforms(MaxResults = 20), NA)
})

test_that("list_registries", {
  expect_error(svc$list_registries(), NA)
})

test_that("list_registries", {
  expect_error(svc$list_registries(MaxResults = 20), NA)
})

test_that("list_schemas", {
  expect_error(svc$list_schemas(), NA)
})

test_that("list_schemas", {
  expect_error(svc$list_schemas(MaxResults = 20), NA)
})

test_that("list_sessions", {
  expect_error(svc$list_sessions(), NA)
})

test_that("list_sessions", {
  expect_error(svc$list_sessions(MaxResults = 20), NA)
})

test_that("list_triggers", {
  expect_error(svc$list_triggers(), NA)
})

test_that("list_triggers", {
  expect_error(svc$list_triggers(MaxResults = 20), NA)
})

test_that("list_usage_profiles", {
  expect_error(svc$list_usage_profiles(), NA)
})

test_that("list_usage_profiles", {
  expect_error(svc$list_usage_profiles(MaxResults = 20), NA)
})

test_that("list_workflows", {
  expect_error(svc$list_workflows(), NA)
})

test_that("list_workflows", {
  expect_error(svc$list_workflows(MaxResults = 20), NA)
})
