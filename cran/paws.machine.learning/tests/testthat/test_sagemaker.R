svc <- paws::sagemaker()

test_that("list_actions", {
  expect_error(svc$list_actions(), NA)
})

test_that("list_actions", {
  expect_error(svc$list_actions(MaxResults = 20), NA)
})

test_that("list_algorithms", {
  expect_error(svc$list_algorithms(), NA)
})

test_that("list_algorithms", {
  expect_error(svc$list_algorithms(MaxResults = 20), NA)
})

test_that("list_app_image_configs", {
  expect_error(svc$list_app_image_configs(), NA)
})

test_that("list_app_image_configs", {
  expect_error(svc$list_app_image_configs(MaxResults = 20), NA)
})

test_that("list_apps", {
  expect_error(svc$list_apps(), NA)
})

test_that("list_apps", {
  expect_error(svc$list_apps(MaxResults = 20), NA)
})

test_that("list_artifacts", {
  expect_error(svc$list_artifacts(), NA)
})

test_that("list_artifacts", {
  expect_error(svc$list_artifacts(MaxResults = 20), NA)
})

test_that("list_associations", {
  expect_error(svc$list_associations(), NA)
})

test_that("list_associations", {
  expect_error(svc$list_associations(MaxResults = 20), NA)
})

test_that("list_auto_ml_jobs", {
  expect_error(svc$list_auto_ml_jobs(), NA)
})

test_that("list_auto_ml_jobs", {
  expect_error(svc$list_auto_ml_jobs(MaxResults = 20), NA)
})

test_that("list_cluster_scheduler_configs", {
  expect_error(svc$list_cluster_scheduler_configs(), NA)
})

test_that("list_cluster_scheduler_configs", {
  expect_error(svc$list_cluster_scheduler_configs(MaxResults = 20), NA)
})

test_that("list_clusters", {
  expect_error(svc$list_clusters(), NA)
})

test_that("list_clusters", {
  expect_error(svc$list_clusters(MaxResults = 20), NA)
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

test_that("list_compute_quotas", {
  expect_error(svc$list_compute_quotas(), NA)
})

test_that("list_compute_quotas", {
  expect_error(svc$list_compute_quotas(MaxResults = 20), NA)
})

test_that("list_contexts", {
  expect_error(svc$list_contexts(), NA)
})

test_that("list_contexts", {
  expect_error(svc$list_contexts(MaxResults = 20), NA)
})

test_that("list_data_quality_job_definitions", {
  expect_error(svc$list_data_quality_job_definitions(), NA)
})

test_that("list_data_quality_job_definitions", {
  expect_error(svc$list_data_quality_job_definitions(MaxResults = 20), NA)
})

test_that("list_device_fleets", {
  expect_error(svc$list_device_fleets(), NA)
})

test_that("list_device_fleets", {
  expect_error(svc$list_device_fleets(MaxResults = 20), NA)
})

test_that("list_devices", {
  expect_error(svc$list_devices(), NA)
})

test_that("list_devices", {
  expect_error(svc$list_devices(MaxResults = 20), NA)
})

test_that("list_domains", {
  expect_error(svc$list_domains(), NA)
})

test_that("list_domains", {
  expect_error(svc$list_domains(MaxResults = 20), NA)
})

test_that("list_edge_deployment_plans", {
  expect_error(svc$list_edge_deployment_plans(), NA)
})

test_that("list_edge_deployment_plans", {
  expect_error(svc$list_edge_deployment_plans(MaxResults = 20), NA)
})

test_that("list_edge_packaging_jobs", {
  expect_error(svc$list_edge_packaging_jobs(), NA)
})

test_that("list_edge_packaging_jobs", {
  expect_error(svc$list_edge_packaging_jobs(MaxResults = 20), NA)
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

test_that("list_experiments", {
  expect_error(svc$list_experiments(), NA)
})

test_that("list_experiments", {
  expect_error(svc$list_experiments(MaxResults = 20), NA)
})

test_that("list_feature_groups", {
  expect_error(svc$list_feature_groups(), NA)
})

test_that("list_feature_groups", {
  expect_error(svc$list_feature_groups(MaxResults = 20), NA)
})

test_that("list_flow_definitions", {
  expect_error(svc$list_flow_definitions(), NA)
})

test_that("list_flow_definitions", {
  expect_error(svc$list_flow_definitions(MaxResults = 20), NA)
})

test_that("list_hubs", {
  expect_error(svc$list_hubs(), NA)
})

test_that("list_hubs", {
  expect_error(svc$list_hubs(MaxResults = 20), NA)
})

test_that("list_human_task_uis", {
  expect_error(svc$list_human_task_uis(), NA)
})

test_that("list_human_task_uis", {
  expect_error(svc$list_human_task_uis(MaxResults = 20), NA)
})

test_that("list_hyper_parameter_tuning_jobs", {
  expect_error(svc$list_hyper_parameter_tuning_jobs(), NA)
})

test_that("list_hyper_parameter_tuning_jobs", {
  expect_error(svc$list_hyper_parameter_tuning_jobs(MaxResults = 20), NA)
})

test_that("list_images", {
  expect_error(svc$list_images(), NA)
})

test_that("list_images", {
  expect_error(svc$list_images(MaxResults = 20), NA)
})

test_that("list_inference_components", {
  expect_error(svc$list_inference_components(), NA)
})

test_that("list_inference_components", {
  expect_error(svc$list_inference_components(MaxResults = 20), NA)
})

test_that("list_inference_experiments", {
  expect_error(svc$list_inference_experiments(), NA)
})

test_that("list_inference_experiments", {
  expect_error(svc$list_inference_experiments(MaxResults = 20), NA)
})

test_that("list_inference_recommendations_jobs", {
  expect_error(svc$list_inference_recommendations_jobs(), NA)
})

test_that("list_inference_recommendations_jobs", {
  expect_error(svc$list_inference_recommendations_jobs(MaxResults = 20), NA)
})

test_that("list_labeling_jobs", {
  expect_error(svc$list_labeling_jobs(), NA)
})

test_that("list_labeling_jobs", {
  expect_error(svc$list_labeling_jobs(MaxResults = 20), NA)
})

test_that("list_lineage_groups", {
  expect_error(svc$list_lineage_groups(), NA)
})

test_that("list_lineage_groups", {
  expect_error(svc$list_lineage_groups(MaxResults = 20), NA)
})

test_that("list_mlflow_apps", {
  expect_error(svc$list_mlflow_apps(), NA)
})

test_that("list_mlflow_apps", {
  expect_error(svc$list_mlflow_apps(MaxResults = 20), NA)
})

test_that("list_mlflow_tracking_servers", {
  expect_error(svc$list_mlflow_tracking_servers(), NA)
})

test_that("list_mlflow_tracking_servers", {
  expect_error(svc$list_mlflow_tracking_servers(MaxResults = 20), NA)
})

test_that("list_model_bias_job_definitions", {
  expect_error(svc$list_model_bias_job_definitions(), NA)
})

test_that("list_model_bias_job_definitions", {
  expect_error(svc$list_model_bias_job_definitions(MaxResults = 20), NA)
})

test_that("list_model_cards", {
  expect_error(svc$list_model_cards(), NA)
})

test_that("list_model_cards", {
  expect_error(svc$list_model_cards(MaxResults = 20), NA)
})

test_that("list_model_explainability_job_definitions", {
  expect_error(svc$list_model_explainability_job_definitions(), NA)
})

test_that("list_model_explainability_job_definitions", {
  expect_error(svc$list_model_explainability_job_definitions(MaxResults = 20), NA)
})

test_that("list_model_metadata", {
  expect_error(svc$list_model_metadata(), NA)
})

test_that("list_model_metadata", {
  expect_error(svc$list_model_metadata(MaxResults = 20), NA)
})

test_that("list_model_package_groups", {
  expect_error(svc$list_model_package_groups(), NA)
})

test_that("list_model_package_groups", {
  expect_error(svc$list_model_package_groups(MaxResults = 20), NA)
})

test_that("list_model_packages", {
  expect_error(svc$list_model_packages(), NA)
})

test_that("list_model_packages", {
  expect_error(svc$list_model_packages(MaxResults = 20), NA)
})

test_that("list_model_quality_job_definitions", {
  expect_error(svc$list_model_quality_job_definitions(), NA)
})

test_that("list_model_quality_job_definitions", {
  expect_error(svc$list_model_quality_job_definitions(MaxResults = 20), NA)
})

test_that("list_models", {
  expect_error(svc$list_models(), NA)
})

test_that("list_models", {
  expect_error(svc$list_models(MaxResults = 20), NA)
})

test_that("list_monitoring_alert_history", {
  expect_error(svc$list_monitoring_alert_history(), NA)
})

test_that("list_monitoring_alert_history", {
  expect_error(svc$list_monitoring_alert_history(MaxResults = 20), NA)
})

test_that("list_monitoring_executions", {
  expect_error(svc$list_monitoring_executions(), NA)
})

test_that("list_monitoring_executions", {
  expect_error(svc$list_monitoring_executions(MaxResults = 20), NA)
})

test_that("list_monitoring_schedules", {
  expect_error(svc$list_monitoring_schedules(), NA)
})

test_that("list_monitoring_schedules", {
  expect_error(svc$list_monitoring_schedules(MaxResults = 20), NA)
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

test_that("list_optimization_jobs", {
  expect_error(svc$list_optimization_jobs(), NA)
})

test_that("list_optimization_jobs", {
  expect_error(svc$list_optimization_jobs(MaxResults = 20), NA)
})

test_that("list_partner_apps", {
  expect_error(svc$list_partner_apps(), NA)
})

test_that("list_partner_apps", {
  expect_error(svc$list_partner_apps(MaxResults = 20), NA)
})

test_that("list_pipeline_execution_steps", {
  expect_error(svc$list_pipeline_execution_steps(), NA)
})

test_that("list_pipeline_execution_steps", {
  expect_error(svc$list_pipeline_execution_steps(MaxResults = 20), NA)
})

test_that("list_pipelines", {
  expect_error(svc$list_pipelines(), NA)
})

test_that("list_pipelines", {
  expect_error(svc$list_pipelines(MaxResults = 20), NA)
})

test_that("list_processing_jobs", {
  expect_error(svc$list_processing_jobs(), NA)
})

test_that("list_processing_jobs", {
  expect_error(svc$list_processing_jobs(MaxResults = 20), NA)
})

test_that("list_projects", {
  expect_error(svc$list_projects(), NA)
})

test_that("list_projects", {
  expect_error(svc$list_projects(MaxResults = 20), NA)
})

test_that("list_resource_catalogs", {
  expect_error(svc$list_resource_catalogs(), NA)
})

test_that("list_resource_catalogs", {
  expect_error(svc$list_resource_catalogs(MaxResults = 20), NA)
})

test_that("list_spaces", {
  expect_error(svc$list_spaces(), NA)
})

test_that("list_spaces", {
  expect_error(svc$list_spaces(MaxResults = 20), NA)
})

test_that("list_studio_lifecycle_configs", {
  expect_error(svc$list_studio_lifecycle_configs(), NA)
})

test_that("list_studio_lifecycle_configs", {
  expect_error(svc$list_studio_lifecycle_configs(MaxResults = 20), NA)
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

test_that("list_training_plans", {
  expect_error(svc$list_training_plans(), NA)
})

test_that("list_training_plans", {
  expect_error(svc$list_training_plans(MaxResults = 20), NA)
})

test_that("list_transform_jobs", {
  expect_error(svc$list_transform_jobs(), NA)
})

test_that("list_transform_jobs", {
  expect_error(svc$list_transform_jobs(MaxResults = 20), NA)
})

test_that("list_trial_components", {
  expect_error(svc$list_trial_components(), NA)
})

test_that("list_trial_components", {
  expect_error(svc$list_trial_components(MaxResults = 20), NA)
})

test_that("list_trials", {
  expect_error(svc$list_trials(), NA)
})

test_that("list_trials", {
  expect_error(svc$list_trials(MaxResults = 20), NA)
})

test_that("list_user_profiles", {
  expect_error(svc$list_user_profiles(), NA)
})

test_that("list_user_profiles", {
  expect_error(svc$list_user_profiles(MaxResults = 20), NA)
})

test_that("list_workforces", {
  expect_error(svc$list_workforces(), NA)
})

test_that("list_workforces", {
  expect_error(svc$list_workforces(MaxResults = 20), NA)
})

test_that("list_workteams", {
  expect_error(svc$list_workteams(), NA)
})

test_that("list_workteams", {
  expect_error(svc$list_workteams(MaxResults = 20), NA)
})
