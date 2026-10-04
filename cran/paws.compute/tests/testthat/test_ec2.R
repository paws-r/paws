svc <- paws.compute::ec2()

test_that("describe_account_attributes", {
  skip_on_cran()
  expect_error(svc$describe_account_attributes(), NA)
})

test_that("describe_account_vpc_encryption_control", {
  skip_on_cran()
  expect_error(svc$describe_account_vpc_encryption_control(), NA)
})

test_that("describe_address_transfers", {
  skip_on_cran()
  expect_error(svc$describe_address_transfers(), NA)
})

test_that("describe_address_transfers", {
  skip_on_cran()
  expect_error(svc$describe_address_transfers(MaxResults = 20), NA)
})

test_that("describe_addresses", {
  skip_on_cran()
  expect_error(svc$describe_addresses(), NA)
})

test_that("describe_addresses_attribute", {
  skip_on_cran()
  expect_error(svc$describe_addresses_attribute(), NA)
})

test_that("describe_addresses_attribute", {
  skip_on_cran()
  expect_error(svc$describe_addresses_attribute(MaxResults = 20), NA)
})

test_that("describe_aggregate_id_format", {
  skip_on_cran()
  expect_error(svc$describe_aggregate_id_format(), NA)
})

test_that("describe_application_status", {
  skip_on_cran()
  expect_error(svc$describe_application_status(), NA)
})

test_that("describe_application_status", {
  skip_on_cran()
  expect_error(svc$describe_application_status(MaxResults = 20), NA)
})

test_that("describe_application_status_check_associations", {
  skip_on_cran()
  expect_error(svc$describe_application_status_check_associations(), NA)
})

test_that("describe_application_status_check_associations", {
  skip_on_cran()
  expect_error(svc$describe_application_status_check_associations(MaxResults = 20), NA)
})

test_that("describe_application_status_checks", {
  skip_on_cran()
  expect_error(svc$describe_application_status_checks(), NA)
})

test_that("describe_application_status_checks", {
  skip_on_cran()
  expect_error(svc$describe_application_status_checks(MaxResults = 20), NA)
})

test_that("describe_availability_zones", {
  skip_on_cran()
  expect_error(svc$describe_availability_zones(), NA)
})

test_that("describe_aws_network_performance_metric_subscriptions", {
  skip_on_cran()
  expect_error(svc$describe_aws_network_performance_metric_subscriptions(), NA)
})

test_that("describe_aws_network_performance_metric_subscriptions", {
  skip_on_cran()
  expect_error(svc$describe_aws_network_performance_metric_subscriptions(MaxResults = 20), NA)
})

test_that("describe_bundle_tasks", {
  skip_on_cran()
  expect_error(svc$describe_bundle_tasks(), NA)
})

test_that("describe_capacity_block_extension_history", {
  skip_on_cran()
  expect_error(svc$describe_capacity_block_extension_history(), NA)
})

test_that("describe_capacity_block_extension_history", {
  skip_on_cran()
  expect_error(svc$describe_capacity_block_extension_history(MaxResults = 20), NA)
})

test_that("describe_capacity_block_status", {
  skip_on_cran()
  expect_error(svc$describe_capacity_block_status(), NA)
})

test_that("describe_capacity_block_status", {
  skip_on_cran()
  expect_error(svc$describe_capacity_block_status(MaxResults = 20), NA)
})

test_that("describe_capacity_blocks", {
  skip_on_cran()
  expect_error(svc$describe_capacity_blocks(), NA)
})

test_that("describe_capacity_blocks", {
  skip_on_cran()
  expect_error(svc$describe_capacity_blocks(MaxResults = 20), NA)
})

test_that("describe_capacity_manager_data_exports", {
  skip_on_cran()
  expect_error(svc$describe_capacity_manager_data_exports(), NA)
})

test_that("describe_capacity_manager_data_exports", {
  skip_on_cran()
  expect_error(svc$describe_capacity_manager_data_exports(MaxResults = 20), NA)
})

test_that("describe_capacity_reservation_cancellation_quotes", {
  skip_on_cran()
  expect_error(svc$describe_capacity_reservation_cancellation_quotes(), NA)
})

test_that("describe_capacity_reservation_cancellation_quotes", {
  skip_on_cran()
  expect_error(svc$describe_capacity_reservation_cancellation_quotes(MaxResults = 20), NA)
})

test_that("describe_capacity_reservation_date_change_quotes", {
  skip_on_cran()
  expect_error(svc$describe_capacity_reservation_date_change_quotes(), NA)
})

test_that("describe_capacity_reservation_date_change_quotes", {
  skip_on_cran()
  expect_error(svc$describe_capacity_reservation_date_change_quotes(MaxResults = 20), NA)
})

test_that("describe_capacity_reservation_fleets", {
  skip_on_cran()
  expect_error(svc$describe_capacity_reservation_fleets(), NA)
})

test_that("describe_capacity_reservation_fleets", {
  skip_on_cran()
  expect_error(svc$describe_capacity_reservation_fleets(MaxResults = 20), NA)
})

test_that("describe_capacity_reservation_topology", {
  skip_on_cran()
  expect_error(svc$describe_capacity_reservation_topology(), NA)
})

test_that("describe_capacity_reservation_topology", {
  skip_on_cran()
  expect_error(svc$describe_capacity_reservation_topology(MaxResults = 20), NA)
})

test_that("describe_capacity_reservations", {
  skip_on_cran()
  expect_error(svc$describe_capacity_reservations(), NA)
})

test_that("describe_capacity_reservations", {
  skip_on_cran()
  expect_error(svc$describe_capacity_reservations(MaxResults = 20), NA)
})

test_that("describe_carrier_gateways", {
  skip_on_cran()
  expect_error(svc$describe_carrier_gateways(), NA)
})

test_that("describe_carrier_gateways", {
  skip_on_cran()
  expect_error(svc$describe_carrier_gateways(MaxResults = 20), NA)
})

test_that("describe_classic_link_instances", {
  skip_on_cran()
  expect_error(svc$describe_classic_link_instances(), NA)
})

test_that("describe_classic_link_instances", {
  skip_on_cran()
  expect_error(svc$describe_classic_link_instances(MaxResults = 20), NA)
})

test_that("describe_client_vpn_endpoints", {
  skip_on_cran()
  expect_error(svc$describe_client_vpn_endpoints(), NA)
})

test_that("describe_client_vpn_endpoints", {
  skip_on_cran()
  expect_error(svc$describe_client_vpn_endpoints(MaxResults = 20), NA)
})

test_that("describe_coip_pools", {
  skip_on_cran()
  expect_error(svc$describe_coip_pools(), NA)
})

test_that("describe_coip_pools", {
  skip_on_cran()
  expect_error(svc$describe_coip_pools(MaxResults = 20), NA)
})

test_that("describe_conversion_tasks", {
  skip_on_cran()
  expect_error(svc$describe_conversion_tasks(), NA)
})

test_that("describe_customer_gateways", {
  skip_on_cran()
  expect_error(svc$describe_customer_gateways(), NA)
})

test_that("describe_declarative_policies_reports", {
  skip_on_cran()
  expect_error(svc$describe_declarative_policies_reports(), NA)
})

test_that("describe_declarative_policies_reports", {
  skip_on_cran()
  expect_error(svc$describe_declarative_policies_reports(MaxResults = 20), NA)
})

test_that("describe_dhcp_options", {
  skip_on_cran()
  expect_error(svc$describe_dhcp_options(), NA)
})

test_that("describe_dhcp_options", {
  skip_on_cran()
  expect_error(svc$describe_dhcp_options(MaxResults = 20), NA)
})

test_that("describe_egress_only_internet_gateways", {
  skip_on_cran()
  expect_error(svc$describe_egress_only_internet_gateways(), NA)
})

test_that("describe_egress_only_internet_gateways", {
  skip_on_cran()
  expect_error(svc$describe_egress_only_internet_gateways(MaxResults = 20), NA)
})

test_that("describe_elastic_gpus", {
  skip_on_cran()
  expect_error(svc$describe_elastic_gpus(), NA)
})

test_that("describe_elastic_gpus", {
  skip_on_cran()
  expect_error(svc$describe_elastic_gpus(MaxResults = 20), NA)
})

test_that("describe_export_image_tasks", {
  skip_on_cran()
  expect_error(svc$describe_export_image_tasks(), NA)
})

test_that("describe_export_image_tasks", {
  skip_on_cran()
  expect_error(svc$describe_export_image_tasks(MaxResults = 20), NA)
})

test_that("describe_export_tasks", {
  skip_on_cran()
  expect_error(svc$describe_export_tasks(), NA)
})

test_that("describe_fast_launch_images", {
  skip_on_cran()
  expect_error(svc$describe_fast_launch_images(), NA)
})

test_that("describe_fast_launch_images", {
  skip_on_cran()
  expect_error(svc$describe_fast_launch_images(MaxResults = 20), NA)
})

test_that("describe_fast_snapshot_restores", {
  skip_on_cran()
  expect_error(svc$describe_fast_snapshot_restores(), NA)
})

test_that("describe_fast_snapshot_restores", {
  skip_on_cran()
  expect_error(svc$describe_fast_snapshot_restores(MaxResults = 20), NA)
})

test_that("describe_fleets", {
  skip_on_cran()
  expect_error(svc$describe_fleets(), NA)
})

test_that("describe_fleets", {
  skip_on_cran()
  expect_error(svc$describe_fleets(MaxResults = 20), NA)
})

test_that("describe_flow_logs", {
  skip_on_cran()
  expect_error(svc$describe_flow_logs(), NA)
})

test_that("describe_flow_logs", {
  skip_on_cran()
  expect_error(svc$describe_flow_logs(MaxResults = 20), NA)
})

test_that("describe_fpga_images", {
  skip_on_cran()
  expect_error(svc$describe_fpga_images(), NA)
})

test_that("describe_fpga_images", {
  skip_on_cran()
  expect_error(svc$describe_fpga_images(MaxResults = 20), NA)
})

test_that("describe_host_reservation_offerings", {
  skip_on_cran()
  expect_error(svc$describe_host_reservation_offerings(), NA)
})

test_that("describe_host_reservation_offerings", {
  skip_on_cran()
  expect_error(svc$describe_host_reservation_offerings(MaxResults = 20), NA)
})

test_that("describe_host_reservations", {
  skip_on_cran()
  expect_error(svc$describe_host_reservations(), NA)
})

test_that("describe_host_reservations", {
  skip_on_cran()
  expect_error(svc$describe_host_reservations(MaxResults = 20), NA)
})

test_that("describe_hosts", {
  skip_on_cran()
  expect_error(svc$describe_hosts(), NA)
})

test_that("describe_hosts", {
  skip_on_cran()
  expect_error(svc$describe_hosts(MaxResults = 20), NA)
})

test_that("describe_iam_instance_profile_associations", {
  skip_on_cran()
  expect_error(svc$describe_iam_instance_profile_associations(), NA)
})

test_that("describe_iam_instance_profile_associations", {
  skip_on_cran()
  expect_error(svc$describe_iam_instance_profile_associations(MaxResults = 20), NA)
})

test_that("describe_id_format", {
  skip_on_cran()
  expect_error(svc$describe_id_format(), NA)
})

test_that("describe_image_usage_report_entries", {
  skip_on_cran()
  expect_error(svc$describe_image_usage_report_entries(), NA)
})

test_that("describe_image_usage_report_entries", {
  skip_on_cran()
  expect_error(svc$describe_image_usage_report_entries(MaxResults = 20), NA)
})

test_that("describe_image_usage_reports", {
  skip_on_cran()
  expect_error(svc$describe_image_usage_reports(), NA)
})

test_that("describe_image_usage_reports", {
  skip_on_cran()
  expect_error(svc$describe_image_usage_reports(MaxResults = 20), NA)
})

test_that("describe_import_image_tasks", {
  skip_on_cran()
  expect_error(svc$describe_import_image_tasks(), NA)
})

test_that("describe_import_image_tasks", {
  skip_on_cran()
  expect_error(svc$describe_import_image_tasks(MaxResults = 20), NA)
})

test_that("describe_import_snapshot_tasks", {
  skip_on_cran()
  expect_error(svc$describe_import_snapshot_tasks(), NA)
})

test_that("describe_import_snapshot_tasks", {
  skip_on_cran()
  expect_error(svc$describe_import_snapshot_tasks(MaxResults = 20), NA)
})

test_that("describe_instance_connect_endpoints", {
  skip_on_cran()
  expect_error(svc$describe_instance_connect_endpoints(), NA)
})

test_that("describe_instance_connect_endpoints", {
  skip_on_cran()
  expect_error(svc$describe_instance_connect_endpoints(MaxResults = 20), NA)
})

test_that("describe_instance_credit_specifications", {
  skip_on_cran()
  expect_error(svc$describe_instance_credit_specifications(), NA)
})

test_that("describe_instance_credit_specifications", {
  skip_on_cran()
  expect_error(svc$describe_instance_credit_specifications(MaxResults = 20), NA)
})

test_that("describe_instance_event_notification_attributes", {
  skip_on_cran()
  expect_error(svc$describe_instance_event_notification_attributes(), NA)
})

test_that("describe_instance_event_windows", {
  skip_on_cran()
  expect_error(svc$describe_instance_event_windows(), NA)
})

test_that("describe_instance_event_windows", {
  skip_on_cran()
  expect_error(svc$describe_instance_event_windows(MaxResults = 20), NA)
})

test_that("describe_instance_image_metadata", {
  skip_on_cran()
  expect_error(svc$describe_instance_image_metadata(), NA)
})

test_that("describe_instance_image_metadata", {
  skip_on_cran()
  expect_error(svc$describe_instance_image_metadata(MaxResults = 20), NA)
})

test_that("describe_instance_sql_ha_history_states", {
  skip_on_cran()
  expect_error(svc$describe_instance_sql_ha_history_states(), NA)
})

test_that("describe_instance_sql_ha_history_states", {
  skip_on_cran()
  expect_error(svc$describe_instance_sql_ha_history_states(MaxResults = 20), NA)
})

test_that("describe_instance_sql_ha_states", {
  skip_on_cran()
  expect_error(svc$describe_instance_sql_ha_states(), NA)
})

test_that("describe_instance_sql_ha_states", {
  skip_on_cran()
  expect_error(svc$describe_instance_sql_ha_states(MaxResults = 20), NA)
})

test_that("describe_instance_status", {
  skip_on_cran()
  expect_error(svc$describe_instance_status(), NA)
})

test_that("describe_instance_status", {
  skip_on_cran()
  expect_error(svc$describe_instance_status(MaxResults = 20), NA)
})

test_that("describe_instance_topology", {
  skip_on_cran()
  expect_error(svc$describe_instance_topology(), NA)
})

test_that("describe_instance_topology", {
  skip_on_cran()
  expect_error(svc$describe_instance_topology(MaxResults = 20), NA)
})

test_that("describe_instance_type_offerings", {
  skip_on_cran()
  expect_error(svc$describe_instance_type_offerings(), NA)
})

test_that("describe_instance_type_offerings", {
  skip_on_cran()
  expect_error(svc$describe_instance_type_offerings(MaxResults = 20), NA)
})

test_that("describe_instance_types", {
  skip_on_cran()
  expect_error(svc$describe_instance_types(), NA)
})

test_that("describe_instance_types", {
  skip_on_cran()
  expect_error(svc$describe_instance_types(MaxResults = 20), NA)
})

test_that("describe_instances", {
  skip_on_cran()
  expect_error(svc$describe_instances(), NA)
})

test_that("describe_instances", {
  skip_on_cran()
  expect_error(svc$describe_instances(MaxResults = 20), NA)
})

test_that("describe_internet_gateways", {
  skip_on_cran()
  expect_error(svc$describe_internet_gateways(), NA)
})

test_that("describe_internet_gateways", {
  skip_on_cran()
  expect_error(svc$describe_internet_gateways(MaxResults = 20), NA)
})

test_that("describe_ipam_byoasn", {
  skip_on_cran()
  expect_error(svc$describe_ipam_byoasn(), NA)
})

test_that("describe_ipam_byoasn", {
  skip_on_cran()
  expect_error(svc$describe_ipam_byoasn(MaxResults = 20), NA)
})

test_that("describe_ipam_external_resource_verification_tokens", {
  skip_on_cran()
  expect_error(svc$describe_ipam_external_resource_verification_tokens(), NA)
})

test_that("describe_ipam_external_resource_verification_tokens", {
  skip_on_cran()
  expect_error(svc$describe_ipam_external_resource_verification_tokens(MaxResults = 20), NA)
})

test_that("describe_ipam_internet_registry_associations", {
  skip_on_cran()
  expect_error(svc$describe_ipam_internet_registry_associations(), NA)
})

test_that("describe_ipam_internet_registry_associations", {
  skip_on_cran()
  expect_error(svc$describe_ipam_internet_registry_associations(MaxResults = 20), NA)
})

test_that("describe_ipam_policies", {
  skip_on_cran()
  expect_error(svc$describe_ipam_policies(), NA)
})

test_that("describe_ipam_policies", {
  skip_on_cran()
  expect_error(svc$describe_ipam_policies(MaxResults = 20), NA)
})

test_that("describe_ipam_pool_allocations", {
  skip_on_cran()
  expect_error(svc$describe_ipam_pool_allocations(), NA)
})

test_that("describe_ipam_pool_allocations", {
  skip_on_cran()
  expect_error(svc$describe_ipam_pool_allocations(MaxResults = 20), NA)
})

test_that("describe_ipam_pools", {
  skip_on_cran()
  expect_error(svc$describe_ipam_pools(), NA)
})

test_that("describe_ipam_pools", {
  skip_on_cran()
  expect_error(svc$describe_ipam_pools(MaxResults = 20), NA)
})

test_that("describe_ipam_prefix_list_resolver_targets", {
  skip_on_cran()
  expect_error(svc$describe_ipam_prefix_list_resolver_targets(), NA)
})

test_that("describe_ipam_prefix_list_resolver_targets", {
  skip_on_cran()
  expect_error(svc$describe_ipam_prefix_list_resolver_targets(MaxResults = 20), NA)
})

test_that("describe_ipam_prefix_list_resolvers", {
  skip_on_cran()
  expect_error(svc$describe_ipam_prefix_list_resolvers(), NA)
})

test_that("describe_ipam_prefix_list_resolvers", {
  skip_on_cran()
  expect_error(svc$describe_ipam_prefix_list_resolvers(MaxResults = 20), NA)
})

test_that("describe_ipam_resource_discoveries", {
  skip_on_cran()
  expect_error(svc$describe_ipam_resource_discoveries(), NA)
})

test_that("describe_ipam_resource_discoveries", {
  skip_on_cran()
  expect_error(svc$describe_ipam_resource_discoveries(MaxResults = 20), NA)
})

test_that("describe_ipam_resource_discovery_associations", {
  skip_on_cran()
  expect_error(svc$describe_ipam_resource_discovery_associations(), NA)
})

test_that("describe_ipam_resource_discovery_associations", {
  skip_on_cran()
  expect_error(svc$describe_ipam_resource_discovery_associations(MaxResults = 20), NA)
})

test_that("describe_ipam_scopes", {
  skip_on_cran()
  expect_error(svc$describe_ipam_scopes(), NA)
})

test_that("describe_ipam_scopes", {
  skip_on_cran()
  expect_error(svc$describe_ipam_scopes(MaxResults = 20), NA)
})

test_that("describe_ipams", {
  skip_on_cran()
  expect_error(svc$describe_ipams(), NA)
})

test_that("describe_ipams", {
  skip_on_cran()
  expect_error(svc$describe_ipams(MaxResults = 20), NA)
})

test_that("describe_ipv_6_pools", {
  skip_on_cran()
  expect_error(svc$describe_ipv_6_pools(), NA)
})

test_that("describe_ipv_6_pools", {
  skip_on_cran()
  expect_error(svc$describe_ipv_6_pools(MaxResults = 20), NA)
})

test_that("describe_key_pairs", {
  skip_on_cran()
  expect_error(svc$describe_key_pairs(), NA)
})

test_that("describe_launch_templates", {
  skip_on_cran()
  expect_error(svc$describe_launch_templates(), NA)
})

test_that("describe_launch_templates", {
  skip_on_cran()
  expect_error(svc$describe_launch_templates(MaxResults = 20), NA)
})

test_that("describe_local_gateway_route_table_virtual_interface_group_associations", {
  skip_on_cran()
  expect_error(svc$describe_local_gateway_route_table_virtual_interface_group_associations(), NA)
})

test_that("describe_local_gateway_route_table_virtual_interface_group_associations", {
  skip_on_cran()
  expect_error(svc$describe_local_gateway_route_table_virtual_interface_group_associations(MaxResults = 20), NA)
})

test_that("describe_local_gateway_route_table_vpc_associations", {
  skip_on_cran()
  expect_error(svc$describe_local_gateway_route_table_vpc_associations(), NA)
})

test_that("describe_local_gateway_route_table_vpc_associations", {
  skip_on_cran()
  expect_error(svc$describe_local_gateway_route_table_vpc_associations(MaxResults = 20), NA)
})

test_that("describe_local_gateway_route_tables", {
  skip_on_cran()
  expect_error(svc$describe_local_gateway_route_tables(), NA)
})

test_that("describe_local_gateway_route_tables", {
  skip_on_cran()
  expect_error(svc$describe_local_gateway_route_tables(MaxResults = 20), NA)
})

test_that("describe_local_gateway_virtual_interface_groups", {
  skip_on_cran()
  expect_error(svc$describe_local_gateway_virtual_interface_groups(), NA)
})

test_that("describe_local_gateway_virtual_interface_groups", {
  skip_on_cran()
  expect_error(svc$describe_local_gateway_virtual_interface_groups(MaxResults = 20), NA)
})

test_that("describe_local_gateway_virtual_interfaces", {
  skip_on_cran()
  expect_error(svc$describe_local_gateway_virtual_interfaces(), NA)
})

test_that("describe_local_gateway_virtual_interfaces", {
  skip_on_cran()
  expect_error(svc$describe_local_gateway_virtual_interfaces(MaxResults = 20), NA)
})

test_that("describe_local_gateways", {
  skip_on_cran()
  expect_error(svc$describe_local_gateways(), NA)
})

test_that("describe_local_gateways", {
  skip_on_cran()
  expect_error(svc$describe_local_gateways(MaxResults = 20), NA)
})

test_that("describe_locked_snapshots", {
  skip_on_cran()
  expect_error(svc$describe_locked_snapshots(), NA)
})

test_that("describe_locked_snapshots", {
  skip_on_cran()
  expect_error(svc$describe_locked_snapshots(MaxResults = 20), NA)
})

test_that("describe_mac_hosts", {
  skip_on_cran()
  expect_error(svc$describe_mac_hosts(), NA)
})

test_that("describe_mac_hosts", {
  skip_on_cran()
  expect_error(svc$describe_mac_hosts(MaxResults = 20), NA)
})

test_that("describe_mac_modification_tasks", {
  skip_on_cran()
  expect_error(svc$describe_mac_modification_tasks(), NA)
})

test_that("describe_mac_modification_tasks", {
  skip_on_cran()
  expect_error(svc$describe_mac_modification_tasks(MaxResults = 20), NA)
})

test_that("describe_managed_prefix_lists", {
  skip_on_cran()
  expect_error(svc$describe_managed_prefix_lists(), NA)
})

test_that("describe_managed_prefix_lists", {
  skip_on_cran()
  expect_error(svc$describe_managed_prefix_lists(MaxResults = 20), NA)
})

test_that("describe_moving_addresses", {
  skip_on_cran()
  expect_error(svc$describe_moving_addresses(), NA)
})

test_that("describe_moving_addresses", {
  skip_on_cran()
  expect_error(svc$describe_moving_addresses(MaxResults = 20), NA)
})

test_that("describe_nat_gateways", {
  skip_on_cran()
  expect_error(svc$describe_nat_gateways(), NA)
})

test_that("describe_nat_gateways", {
  skip_on_cran()
  expect_error(svc$describe_nat_gateways(MaxResults = 20), NA)
})

test_that("describe_network_acls", {
  skip_on_cran()
  expect_error(svc$describe_network_acls(), NA)
})

test_that("describe_network_acls", {
  skip_on_cran()
  expect_error(svc$describe_network_acls(MaxResults = 20), NA)
})

test_that("describe_network_insights_access_scope_analyses", {
  skip_on_cran()
  expect_error(svc$describe_network_insights_access_scope_analyses(), NA)
})

test_that("describe_network_insights_access_scope_analyses", {
  skip_on_cran()
  expect_error(svc$describe_network_insights_access_scope_analyses(MaxResults = 20), NA)
})

test_that("describe_network_insights_access_scopes", {
  skip_on_cran()
  expect_error(svc$describe_network_insights_access_scopes(), NA)
})

test_that("describe_network_insights_access_scopes", {
  skip_on_cran()
  expect_error(svc$describe_network_insights_access_scopes(MaxResults = 20), NA)
})

test_that("describe_network_insights_analyses", {
  skip_on_cran()
  expect_error(svc$describe_network_insights_analyses(), NA)
})

test_that("describe_network_insights_analyses", {
  skip_on_cran()
  expect_error(svc$describe_network_insights_analyses(MaxResults = 20), NA)
})

test_that("describe_network_insights_paths", {
  skip_on_cran()
  expect_error(svc$describe_network_insights_paths(), NA)
})

test_that("describe_network_insights_paths", {
  skip_on_cran()
  expect_error(svc$describe_network_insights_paths(MaxResults = 20), NA)
})

test_that("describe_network_interface_permissions", {
  skip_on_cran()
  expect_error(svc$describe_network_interface_permissions(), NA)
})

test_that("describe_network_interface_permissions", {
  skip_on_cran()
  expect_error(svc$describe_network_interface_permissions(MaxResults = 20), NA)
})

test_that("describe_network_interfaces", {
  skip_on_cran()
  expect_error(svc$describe_network_interfaces(), NA)
})

test_that("describe_network_interfaces", {
  skip_on_cran()
  expect_error(svc$describe_network_interfaces(MaxResults = 20), NA)
})

test_that("describe_outpost_lags", {
  skip_on_cran()
  expect_error(svc$describe_outpost_lags(), NA)
})

test_that("describe_outpost_lags", {
  skip_on_cran()
  expect_error(svc$describe_outpost_lags(MaxResults = 20), NA)
})

test_that("describe_placement_groups", {
  skip_on_cran()
  expect_error(svc$describe_placement_groups(), NA)
})

test_that("describe_prefix_lists", {
  skip_on_cran()
  expect_error(svc$describe_prefix_lists(), NA)
})

test_that("describe_prefix_lists", {
  skip_on_cran()
  expect_error(svc$describe_prefix_lists(MaxResults = 20), NA)
})

test_that("describe_principal_id_format", {
  skip_on_cran()
  expect_error(svc$describe_principal_id_format(), NA)
})

test_that("describe_principal_id_format", {
  skip_on_cran()
  expect_error(svc$describe_principal_id_format(MaxResults = 20), NA)
})

test_that("describe_regions", {
  skip_on_cran()
  expect_error(svc$describe_regions(), NA)
})

test_that("describe_replace_root_volume_tasks", {
  skip_on_cran()
  expect_error(svc$describe_replace_root_volume_tasks(), NA)
})

test_that("describe_replace_root_volume_tasks", {
  skip_on_cran()
  expect_error(svc$describe_replace_root_volume_tasks(MaxResults = 20), NA)
})

test_that("describe_reserved_instances", {
  skip_on_cran()
  expect_error(svc$describe_reserved_instances(), NA)
})

test_that("describe_reserved_instances_modifications", {
  skip_on_cran()
  expect_error(svc$describe_reserved_instances_modifications(), NA)
})

test_that("describe_reserved_instances_offerings", {
  skip_on_cran()
  expect_error(svc$describe_reserved_instances_offerings(), NA)
})

test_that("describe_reserved_instances_offerings", {
  skip_on_cran()
  expect_error(svc$describe_reserved_instances_offerings(MaxResults = 20), NA)
})

test_that("describe_route_server_endpoints", {
  skip_on_cran()
  expect_error(svc$describe_route_server_endpoints(), NA)
})

test_that("describe_route_server_endpoints", {
  skip_on_cran()
  expect_error(svc$describe_route_server_endpoints(MaxResults = 20), NA)
})

test_that("describe_route_server_peers", {
  skip_on_cran()
  expect_error(svc$describe_route_server_peers(), NA)
})

test_that("describe_route_server_peers", {
  skip_on_cran()
  expect_error(svc$describe_route_server_peers(MaxResults = 20), NA)
})

test_that("describe_route_servers", {
  skip_on_cran()
  expect_error(svc$describe_route_servers(), NA)
})

test_that("describe_route_servers", {
  skip_on_cran()
  expect_error(svc$describe_route_servers(MaxResults = 20), NA)
})

test_that("describe_route_tables", {
  skip_on_cran()
  expect_error(svc$describe_route_tables(), NA)
})

test_that("describe_route_tables", {
  skip_on_cran()
  expect_error(svc$describe_route_tables(MaxResults = 20), NA)
})

test_that("describe_scheduled_instances", {
  skip_on_cran()
  expect_error(svc$describe_scheduled_instances(), NA)
})

test_that("describe_scheduled_instances", {
  skip_on_cran()
  expect_error(svc$describe_scheduled_instances(MaxResults = 20), NA)
})

test_that("describe_secondary_interfaces", {
  skip_on_cran()
  expect_error(svc$describe_secondary_interfaces(), NA)
})

test_that("describe_secondary_interfaces", {
  skip_on_cran()
  expect_error(svc$describe_secondary_interfaces(MaxResults = 20), NA)
})

test_that("describe_secondary_networks", {
  skip_on_cran()
  expect_error(svc$describe_secondary_networks(), NA)
})

test_that("describe_secondary_networks", {
  skip_on_cran()
  expect_error(svc$describe_secondary_networks(MaxResults = 20), NA)
})

test_that("describe_secondary_subnets", {
  skip_on_cran()
  expect_error(svc$describe_secondary_subnets(), NA)
})

test_that("describe_secondary_subnets", {
  skip_on_cran()
  expect_error(svc$describe_secondary_subnets(MaxResults = 20), NA)
})

test_that("describe_security_group_rules", {
  skip_on_cran()
  expect_error(svc$describe_security_group_rules(), NA)
})

test_that("describe_security_group_rules", {
  skip_on_cran()
  expect_error(svc$describe_security_group_rules(MaxResults = 20), NA)
})

test_that("describe_security_group_vpc_associations", {
  skip_on_cran()
  expect_error(svc$describe_security_group_vpc_associations(), NA)
})

test_that("describe_security_group_vpc_associations", {
  skip_on_cran()
  expect_error(svc$describe_security_group_vpc_associations(MaxResults = 20), NA)
})

test_that("describe_security_groups", {
  skip_on_cran()
  expect_error(svc$describe_security_groups(), NA)
})

test_that("describe_security_groups", {
  skip_on_cran()
  expect_error(svc$describe_security_groups(MaxResults = 20), NA)
})

test_that("describe_service_link_virtual_interfaces", {
  skip_on_cran()
  expect_error(svc$describe_service_link_virtual_interfaces(), NA)
})

test_that("describe_service_link_virtual_interfaces", {
  skip_on_cran()
  expect_error(svc$describe_service_link_virtual_interfaces(MaxResults = 20), NA)
})

test_that("describe_snapshot_tier_status", {
  skip_on_cran()
  expect_error(svc$describe_snapshot_tier_status(), NA)
})

test_that("describe_snapshot_tier_status", {
  skip_on_cran()
  expect_error(svc$describe_snapshot_tier_status(MaxResults = 20), NA)
})

test_that("describe_snapshots", {
  skip_on_cran()
  expect_error(svc$describe_snapshots(), NA)
})

test_that("describe_snapshots", {
  skip_on_cran()
  expect_error(svc$describe_snapshots(MaxResults = 20), NA)
})

test_that("describe_spot_fleet_requests", {
  skip_on_cran()
  expect_error(svc$describe_spot_fleet_requests(), NA)
})

test_that("describe_spot_fleet_requests", {
  skip_on_cran()
  expect_error(svc$describe_spot_fleet_requests(MaxResults = 20), NA)
})

test_that("describe_spot_instance_requests", {
  skip_on_cran()
  expect_error(svc$describe_spot_instance_requests(), NA)
})

test_that("describe_spot_instance_requests", {
  skip_on_cran()
  expect_error(svc$describe_spot_instance_requests(MaxResults = 20), NA)
})

test_that("describe_spot_price_history", {
  skip_on_cran()
  expect_error(svc$describe_spot_price_history(), NA)
})

test_that("describe_spot_price_history", {
  skip_on_cran()
  expect_error(svc$describe_spot_price_history(MaxResults = 20), NA)
})

test_that("describe_store_image_tasks", {
  skip_on_cran()
  expect_error(svc$describe_store_image_tasks(), NA)
})

test_that("describe_store_image_tasks", {
  skip_on_cran()
  expect_error(svc$describe_store_image_tasks(MaxResults = 20), NA)
})

test_that("describe_subnets", {
  skip_on_cran()
  expect_error(svc$describe_subnets(), NA)
})

test_that("describe_subnets", {
  skip_on_cran()
  expect_error(svc$describe_subnets(MaxResults = 20), NA)
})

test_that("describe_tags", {
  skip_on_cran()
  expect_error(svc$describe_tags(), NA)
})

test_that("describe_tags", {
  skip_on_cran()
  expect_error(svc$describe_tags(MaxResults = 20), NA)
})

test_that("describe_traffic_mirror_filter_rules", {
  skip_on_cran()
  expect_error(svc$describe_traffic_mirror_filter_rules(), NA)
})

test_that("describe_traffic_mirror_filter_rules", {
  skip_on_cran()
  expect_error(svc$describe_traffic_mirror_filter_rules(MaxResults = 20), NA)
})

test_that("describe_traffic_mirror_filters", {
  skip_on_cran()
  expect_error(svc$describe_traffic_mirror_filters(), NA)
})

test_that("describe_traffic_mirror_filters", {
  skip_on_cran()
  expect_error(svc$describe_traffic_mirror_filters(MaxResults = 20), NA)
})

test_that("describe_traffic_mirror_sessions", {
  skip_on_cran()
  expect_error(svc$describe_traffic_mirror_sessions(), NA)
})

test_that("describe_traffic_mirror_sessions", {
  skip_on_cran()
  expect_error(svc$describe_traffic_mirror_sessions(MaxResults = 20), NA)
})

test_that("describe_traffic_mirror_targets", {
  skip_on_cran()
  expect_error(svc$describe_traffic_mirror_targets(), NA)
})

test_that("describe_traffic_mirror_targets", {
  skip_on_cran()
  expect_error(svc$describe_traffic_mirror_targets(MaxResults = 20), NA)
})

test_that("describe_transit_gateway_attachments", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_attachments(), NA)
})

test_that("describe_transit_gateway_attachments", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_attachments(MaxResults = 20), NA)
})

test_that("describe_transit_gateway_connect_peers", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_connect_peers(), NA)
})

test_that("describe_transit_gateway_connect_peers", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_connect_peers(MaxResults = 20), NA)
})

test_that("describe_transit_gateway_connects", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_connects(), NA)
})

test_that("describe_transit_gateway_connects", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_connects(MaxResults = 20), NA)
})

test_that("describe_transit_gateway_metering_policies", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_metering_policies(), NA)
})

test_that("describe_transit_gateway_metering_policies", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_metering_policies(MaxResults = 20), NA)
})

test_that("describe_transit_gateway_multicast_domains", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_multicast_domains(), NA)
})

test_that("describe_transit_gateway_multicast_domains", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_multicast_domains(MaxResults = 20), NA)
})

test_that("describe_transit_gateway_peering_attachments", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_peering_attachments(), NA)
})

test_that("describe_transit_gateway_peering_attachments", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_peering_attachments(MaxResults = 20), NA)
})

test_that("describe_transit_gateway_policy_tables", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_policy_tables(), NA)
})

test_that("describe_transit_gateway_policy_tables", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_policy_tables(MaxResults = 20), NA)
})

test_that("describe_transit_gateway_route_table_announcements", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_route_table_announcements(), NA)
})

test_that("describe_transit_gateway_route_table_announcements", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_route_table_announcements(MaxResults = 20), NA)
})

test_that("describe_transit_gateway_route_tables", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_route_tables(), NA)
})

test_that("describe_transit_gateway_route_tables", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_route_tables(MaxResults = 20), NA)
})

test_that("describe_transit_gateway_vpc_attachments", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_vpc_attachments(), NA)
})

test_that("describe_transit_gateway_vpc_attachments", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateway_vpc_attachments(MaxResults = 20), NA)
})

test_that("describe_transit_gateways", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateways(), NA)
})

test_that("describe_transit_gateways", {
  skip_on_cran()
  expect_error(svc$describe_transit_gateways(MaxResults = 20), NA)
})

test_that("describe_trunk_interface_associations", {
  skip_on_cran()
  expect_error(svc$describe_trunk_interface_associations(), NA)
})

test_that("describe_trunk_interface_associations", {
  skip_on_cran()
  expect_error(svc$describe_trunk_interface_associations(MaxResults = 20), NA)
})

test_that("describe_verified_access_endpoints", {
  skip_on_cran()
  expect_error(svc$describe_verified_access_endpoints(), NA)
})

test_that("describe_verified_access_endpoints", {
  skip_on_cran()
  expect_error(svc$describe_verified_access_endpoints(MaxResults = 20), NA)
})

test_that("describe_verified_access_groups", {
  skip_on_cran()
  expect_error(svc$describe_verified_access_groups(), NA)
})

test_that("describe_verified_access_groups", {
  skip_on_cran()
  expect_error(svc$describe_verified_access_groups(MaxResults = 20), NA)
})

test_that("describe_verified_access_instance_logging_configurations", {
  skip_on_cran()
  expect_error(svc$describe_verified_access_instance_logging_configurations(), NA)
})

test_that("describe_verified_access_instance_logging_configurations", {
  skip_on_cran()
  expect_error(svc$describe_verified_access_instance_logging_configurations(MaxResults = 20), NA)
})

test_that("describe_verified_access_instances", {
  skip_on_cran()
  expect_error(svc$describe_verified_access_instances(), NA)
})

test_that("describe_verified_access_instances", {
  skip_on_cran()
  expect_error(svc$describe_verified_access_instances(MaxResults = 20), NA)
})

test_that("describe_verified_access_trust_providers", {
  skip_on_cran()
  expect_error(svc$describe_verified_access_trust_providers(), NA)
})

test_that("describe_verified_access_trust_providers", {
  skip_on_cran()
  expect_error(svc$describe_verified_access_trust_providers(MaxResults = 20), NA)
})

test_that("describe_volume_status", {
  skip_on_cran()
  expect_error(svc$describe_volume_status(), NA)
})

test_that("describe_volume_status", {
  skip_on_cran()
  expect_error(svc$describe_volume_status(MaxResults = 20), NA)
})

test_that("describe_volumes", {
  skip_on_cran()
  expect_error(svc$describe_volumes(), NA)
})

test_that("describe_volumes", {
  skip_on_cran()
  expect_error(svc$describe_volumes(MaxResults = 20), NA)
})

test_that("describe_volumes_modifications", {
  skip_on_cran()
  expect_error(svc$describe_volumes_modifications(), NA)
})

test_that("describe_volumes_modifications", {
  skip_on_cran()
  expect_error(svc$describe_volumes_modifications(MaxResults = 20), NA)
})

test_that("describe_vpc_block_public_access_exclusions", {
  skip_on_cran()
  expect_error(svc$describe_vpc_block_public_access_exclusions(), NA)
})

test_that("describe_vpc_block_public_access_exclusions", {
  skip_on_cran()
  expect_error(svc$describe_vpc_block_public_access_exclusions(MaxResults = 20), NA)
})

test_that("describe_vpc_block_public_access_options", {
  skip_on_cran()
  expect_error(svc$describe_vpc_block_public_access_options(), NA)
})

test_that("describe_vpc_classic_link", {
  skip_on_cran()
  expect_error(svc$describe_vpc_classic_link(), NA)
})

test_that("describe_vpc_classic_link_dns_support", {
  skip_on_cran()
  expect_error(svc$describe_vpc_classic_link_dns_support(), NA)
})

test_that("describe_vpc_classic_link_dns_support", {
  skip_on_cran()
  expect_error(svc$describe_vpc_classic_link_dns_support(MaxResults = 20), NA)
})

test_that("describe_vpc_encryption_controls", {
  skip_on_cran()
  expect_error(svc$describe_vpc_encryption_controls(), NA)
})

test_that("describe_vpc_encryption_controls", {
  skip_on_cran()
  expect_error(svc$describe_vpc_encryption_controls(MaxResults = 20), NA)
})

test_that("describe_vpc_endpoint_associations", {
  skip_on_cran()
  expect_error(svc$describe_vpc_endpoint_associations(), NA)
})

test_that("describe_vpc_endpoint_associations", {
  skip_on_cran()
  expect_error(svc$describe_vpc_endpoint_associations(MaxResults = 20), NA)
})

test_that("describe_vpc_endpoint_connection_notifications", {
  skip_on_cran()
  expect_error(svc$describe_vpc_endpoint_connection_notifications(), NA)
})

test_that("describe_vpc_endpoint_connection_notifications", {
  skip_on_cran()
  expect_error(svc$describe_vpc_endpoint_connection_notifications(MaxResults = 20), NA)
})

test_that("describe_vpc_endpoint_connections", {
  skip_on_cran()
  expect_error(svc$describe_vpc_endpoint_connections(), NA)
})

test_that("describe_vpc_endpoint_connections", {
  skip_on_cran()
  expect_error(svc$describe_vpc_endpoint_connections(MaxResults = 20), NA)
})

test_that("describe_vpc_endpoint_service_configurations", {
  skip_on_cran()
  expect_error(svc$describe_vpc_endpoint_service_configurations(), NA)
})

test_that("describe_vpc_endpoint_service_configurations", {
  skip_on_cran()
  expect_error(svc$describe_vpc_endpoint_service_configurations(MaxResults = 20), NA)
})

test_that("describe_vpc_endpoint_services", {
  skip_on_cran()
  expect_error(svc$describe_vpc_endpoint_services(), NA)
})

test_that("describe_vpc_endpoint_services", {
  skip_on_cran()
  expect_error(svc$describe_vpc_endpoint_services(MaxResults = 20), NA)
})

test_that("describe_vpc_endpoints", {
  skip_on_cran()
  expect_error(svc$describe_vpc_endpoints(), NA)
})

test_that("describe_vpc_endpoints", {
  skip_on_cran()
  expect_error(svc$describe_vpc_endpoints(MaxResults = 20), NA)
})

test_that("describe_vpc_peering_connections", {
  skip_on_cran()
  expect_error(svc$describe_vpc_peering_connections(), NA)
})

test_that("describe_vpc_peering_connections", {
  skip_on_cran()
  expect_error(svc$describe_vpc_peering_connections(MaxResults = 20), NA)
})

test_that("describe_vpcs", {
  skip_on_cran()
  expect_error(svc$describe_vpcs(), NA)
})

test_that("describe_vpcs", {
  skip_on_cran()
  expect_error(svc$describe_vpcs(MaxResults = 20), NA)
})

test_that("describe_vpn_concentrators", {
  skip_on_cran()
  expect_error(svc$describe_vpn_concentrators(), NA)
})

test_that("describe_vpn_concentrators", {
  skip_on_cran()
  expect_error(svc$describe_vpn_concentrators(MaxResults = 20), NA)
})

test_that("describe_vpn_connections", {
  skip_on_cran()
  expect_error(svc$describe_vpn_connections(), NA)
})

test_that("describe_vpn_gateways", {
  skip_on_cran()
  expect_error(svc$describe_vpn_gateways(), NA)
})

test_that("list_images_in_recycle_bin", {
  skip_on_cran()
  expect_error(svc$list_images_in_recycle_bin(), NA)
})

test_that("list_images_in_recycle_bin", {
  skip_on_cran()
  expect_error(svc$list_images_in_recycle_bin(MaxResults = 20), NA)
})

test_that("list_snapshots_in_recycle_bin", {
  skip_on_cran()
  expect_error(svc$list_snapshots_in_recycle_bin(), NA)
})

test_that("list_snapshots_in_recycle_bin", {
  skip_on_cran()
  expect_error(svc$list_snapshots_in_recycle_bin(MaxResults = 20), NA)
})

test_that("list_volumes_in_recycle_bin", {
  skip_on_cran()
  expect_error(svc$list_volumes_in_recycle_bin(), NA)
})

test_that("list_volumes_in_recycle_bin", {
  skip_on_cran()
  expect_error(svc$list_volumes_in_recycle_bin(MaxResults = 20), NA)
})
