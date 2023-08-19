tests_config <- list(
  alexaforbusiness = list(
    skip = list(
      "list_skills" # invalid MaxResults
    )
  ),
  applicationdiscoveryservice = list(
    skip = list(
      "*" # endpoint not found
    )
  ),
  appstream = list(
    skip = list(
      "describe_user_stack_associations"
    )
  ),
  batch = list(
    skip = list(
      "list_jobs"
    )
  ),
  cloudformation = list(
    skip = list(
      "describe_stack_events",
      "describe_stack_resources"
    )
  ),
  cloudhsm = list(
    skip = list(
      "*"
    )
  ),
  codedeploy = list(
    skip = list(
      "list_deployment_targets"
    )
  ),
  costandusagereportservice = list(
    skip = list(
      "describe_report_definitions" # invalid MaxResults
    )
  ),
  databasemigrationservice = list(
    skip = list(
      "describe_replication_task_assessment_results"
    )
  ),
  devicefarm = list(
    skip = list(
      "*" # endpoint not found
    )
  ),
  directconnect = list(
    skip = list(
      "*"
    )
  ),
  ec2 = list(
    skip = list(
      "describe_images",
      "describe_launch_template_versions",
      "describe_public_ipv_4_pools", # invalid MaxResults
      "describe_reserved_instances_listings",
      "describe_spot_datafeed_subscription"
    )
  ),
  ecs = list(
    skip = list(
      "list_container_instances",
      "list_services",
      "list_tasks"
    )
  ),
  elasticache = list(
    skip = list(
      "describe_cache_security_groups",
      "list_allowed_node_type_modifications"
    )
  ),
  elasticbeanstalk = list(
    skip = list(
      "describe_configuration_options",
      "describe_environment_health",
      "describe_environment_managed_action_history",
      "describe_environment_managed_actions",
      "describe_environment_resources",
      "describe_instances_health",
      "describe_platform_version"
    )
  ),
  elbv2 = list(
    skip = list(
      "describe_listeners",
      "describe_rules"
    )
  ),
  emr = list(
    skip = list(
      "describe_job_flows"
    )
  ),
  fms = list(
    skip = list(
      "*"
    )
  ),
  gamelift = list(
    skip = list(
      "describe_game_session_details",
      "describe_game_sessions",
      "describe_player_sessions"
    )
  ),
  globalaccelerator = list(
    skip = list(
      "*" # endpoint not found
    )
  ),
  health = list(
    skip = list(
      "*"
    )
  ),
  iot = list(
    skip = list(
      "describe_default_authorizer",
      "list_audit_findings",
      "list_v2_logging_levels"
    )
  ),
  iot1clickdevicesservice = list(
    skip = list(
      "*" # endpoint not found
    )
  ),
  iotanalytics = list(
    skip = list(
      "describe_logging_options"
    )
  ),
  kinesis = list(
    skip = list(
      "describe_stream_consumer",
      "list_shards"
    )
  ),
  kinesisanalyticsv2 = list(
    skip = list(
      "*" # endpoint not found
    )
  ),
  licensemanager = list(
    skip = list(
      "*" # endpoint not found
    )
  ),
  machinelearning = list(
    skip = list(
      "*"
    )
  ),
  macie = list(
    skip = list(
      "*"
    )
  ),
  mediaconvert = list(
    skip = list(
      "*"
    )
  ),
  mediastore = list(
    skip = list(
      "describe_container"
    )
  ),
  mediastoredata = list(
    skip = list(
      "*" # endpoint not found
    )
  ),
  migrationhub = list(
    skip = list(
      "*" # endpoint not found
    )
  ),
  mturk = list(
    skip = list(
      "*"
    )
  ),
  opsworks = list(
    skip = list(
      "describe_agent_versions",
      "describe_apps",
      "describe_commands",
      "describe_deployments",
      "describe_ecs_clusters",
      "describe_elastic_ips",
      "describe_elastic_load_balancers",
      "describe_instances",
      "describe_layers",
      "describe_permissions",
      "describe_raid_arrays",
      "describe_volumes"
    )
  ),
  opsworkscm = list(
    skip = list(
      "describe_backups", # TODO: maxResults is not supported for this call.
      "describe_servers"
    )
  ),
  organizations = list(
    skip = list(
      "*"
    )
  ),
  pinpointemail = list(
    skip = list(
      "*" # endpoint not found
    )
  ),
  pinpointsmsvoice = list(
    skip = list(
      "*"
    )
  ),
  redshift = list(
    skip = list(
      "describe_cluster_security_groups",
      "describe_table_restore_status"
    )
  ),
  servicecatalog = list(
    skip = list(
      "list_tag_options"
    )
  ),
  shield = list(
    skip = list(
      "describe_drt_access",
      "describe_emergency_contact_settings",
      "describe_protection",
      "describe_subscription",
      "list_protections"
    )
  ),
  ssm = list(
    skip = list(
      "describe_association",
      "describe_maintenance_window_schedule",
      "list_compliance_items",
      "list_compliance_summaries" # invalid MaxResults
    )
  ),
  support = list(
    skip = list(
      "*"
    )
  ),
  waf = list(
    skip = list(
      "list_activated_rules_in_rule_group",
      "list_logging_configurations"
    )
  ),
  wafregional = list(
    skip = list(
      "list_activated_rules_in_rule_group",
      "list_logging_configurations"
    )
  ),
  workdocs = list(
    skip = list(
      "describe_activities",
      "describe_users"
    )
  ),
  workspaces = list(
    skip = list(
      "*"
    )
  )
)
