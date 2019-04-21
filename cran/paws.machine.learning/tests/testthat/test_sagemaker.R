context("sagemaker")

svc <- paws::sagemaker()

test_that("list_algorithms", {
  expect_error(svc$list_algorithms(), NA)
})

test_that("list_algorithms", {
  expect_error(svc$list_algorithms(MaxResults = 20), NA)
})

test_that("list_code_repositories", {
  expect_error(svc$list_code_repositories(), NA)
})

test_that("list_code_repositories", {
  expect_error(svc$list_code_repositories(MaxResults = 20), NA)
})

test_that("list_compilation_jobs", {
  expect_error(svc$list_compilation_jobs(), NA)
})

test_that("list_compilation_jobs", {
  expect_error(svc$list_compilation_jobs(MaxResults = 20), NA)
})

test_that("list_endpoint_configs", {
  expect_error(svc$list_endpoint_configs(), NA)
})

test_that("list_endpoint_configs", {
  expect_error(svc$list_endpoint_configs(MaxResults = 20), NA)
})

test_that("list_endpoints", {
  expect_error(svc$list_endpoints(), NA)
})

test_that("list_endpoints", {
  expect_error(svc$list_endpoints(MaxResults = 20), NA)
})

test_that("list_hyper_parameter_tuning_jobs", {
  expect_error(svc$list_hyper_parameter_tuning_jobs(), NA)
})

test_that("list_hyper_parameter_tuning_jobs", {
  expect_error(svc$list_hyper_parameter_tuning_jobs(MaxResults = 20), NA)
})

test_that("list_labeling_jobs", {
  expect_error(svc$list_labeling_jobs(), NA)
})

test_that("list_labeling_jobs", {
  expect_error(svc$list_labeling_jobs(MaxResults = 20), NA)
})

test_that("list_model_packages", {
  expect_error(svc$list_model_packages(), NA)
})

test_that("list_model_packages", {
  expect_error(svc$list_model_packages(MaxResults = 20), NA)
})

test_that("list_models", {
  expect_error(svc$list_models(), NA)
})

test_that("list_models", {
  expect_error(svc$list_models(MaxResults = 20), NA)
})

test_that("list_notebook_instance_lifecycle_configs", {
  expect_error(svc$list_notebook_instance_lifecycle_configs(), NA)
})

test_that("list_notebook_instance_lifecycle_configs", {
  expect_error(svc$list_notebook_instance_lifecycle_configs(MaxResults = 20), NA)
})

test_that("list_notebook_instances", {
  expect_error(svc$list_notebook_instances(), NA)
})

test_that("list_notebook_instances", {
  expect_error(svc$list_notebook_instances(MaxResults = 20), NA)
})

test_that("list_subscribed_workteams", {
  expect_error(svc$list_subscribed_workteams(), NA)
})

test_that("list_subscribed_workteams", {
  expect_error(svc$list_subscribed_workteams(MaxResults = 20), NA)
})

test_that("list_training_jobs", {
  expect_error(svc$list_training_jobs(), NA)
})

test_that("list_training_jobs", {
  expect_error(svc$list_training_jobs(MaxResults = 20), NA)
})

test_that("list_transform_jobs", {
  expect_error(svc$list_transform_jobs(), NA)
})

test_that("list_transform_jobs", {
  expect_error(svc$list_transform_jobs(MaxResults = 20), NA)
})

test_that("list_workteams", {
  expect_error(svc$list_workteams(), NA)
})

test_that("list_workteams", {
  expect_error(svc$list_workteams(MaxResults = 20), NA)
})
