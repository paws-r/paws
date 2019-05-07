#' AWS Batch
#'
#' @description
#' AWS Batch enables you to run batch computing workloads on the AWS Cloud.
#' Batch computing is a common way for developers, scientists, and
#' engineers to access large amounts of compute resources, and AWS Batch
#' removes the undifferentiated heavy lifting of configuring and managing
#' the required infrastructure. AWS Batch will be familiar to users of
#' traditional batch computing software. This service can efficiently
#' provision resources in response to jobs submitted in order to eliminate
#' capacity constraints, reduce compute costs, and deliver results quickly.
#' 
#' As a fully managed service, AWS Batch enables developers, scientists,
#' and engineers to run batch computing workloads of any scale. AWS Batch
#' automatically provisions compute resources and optimizes the workload
#' distribution based on the quantity and scale of the workloads. With AWS
#' Batch, there is no need to install or manage batch computing software,
#' which allows you to focus on analyzing results and solving problems. AWS
#' Batch reduces operational complexities, saves time, and reduces costs,
#' which makes it easy for developers, scientists, and engineers to run
#' their batch jobs in the AWS Cloud.
#'
#' @examples
#' # This example cancels a job with the specified job ID.
#' \donttest{svc <- batch()
#' svc$cancel_job(
#'   jobId = "1d828f65-7a4d-42e8-996d-3b900ed59dc4",
#'   reason = "Cancelling job."
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=batch_cancel_job]{cancel_job} \tab Cancels a job in an AWS Batch job queue \cr
#'  \link[=batch_create_compute_environment]{create_compute_environment} \tab Creates an AWS Batch compute environment \cr
#'  \link[=batch_create_job_queue]{create_job_queue} \tab Creates an AWS Batch job queue \cr
#'  \link[=batch_delete_compute_environment]{delete_compute_environment} \tab Deletes an AWS Batch compute environment \cr
#'  \link[=batch_delete_job_queue]{delete_job_queue} \tab Deletes the specified job queue \cr
#'  \link[=batch_deregister_job_definition]{deregister_job_definition} \tab Deregisters an AWS Batch job definition \cr
#'  \link[=batch_describe_compute_environments]{describe_compute_environments} \tab Describes one or more of your compute environments\cr
#'  \link[=batch_describe_job_definitions]{describe_job_definitions} \tab Describes a list of job definitions \cr
#'  \link[=batch_describe_job_queues]{describe_job_queues} \tab Describes one or more of your job queues \cr
#'  \link[=batch_describe_jobs]{describe_jobs} \tab Describes a list of AWS Batch jobs \cr
#'  \link[=batch_list_jobs]{list_jobs} \tab Returns a list of AWS Batch jobs \cr
#'  \link[=batch_register_job_definition]{register_job_definition} \tab Registers an AWS Batch job definition \cr
#'  \link[=batch_submit_job]{submit_job} \tab Submits an AWS Batch job from a job definition \cr
#'  \link[=batch_terminate_job]{terminate_job} \tab Terminates a job in a job queue \cr
#'  \link[=batch_update_compute_environment]{update_compute_environment} \tab Updates an AWS Batch compute environment \cr
#'  \link[=batch_update_job_queue]{update_job_queue} \tab Updates a job queue 
#' }
#'
#' @rdname batch
#' @export
batch <- function() {
  paws.compute::batch()
}

#' Amazon Elastic Compute Cloud
#'
#' @description
#' Amazon Elastic Compute Cloud (Amazon EC2) provides secure and resizable
#' computing capacity in the AWS cloud. Using Amazon EC2 eliminates the
#' need to invest in hardware up front, so you can develop and deploy
#' applications faster.
#' 
#' To learn more about Amazon EC2, Amazon EBS, and Amazon VPC, see the
#' following resources:
#' 
#' -   [Amazon EC2 product page](http://aws.amazon.com/ec2)
#' 
#' -   [Amazon EC2 documentation](http://aws.amazon.com/documentation/ec2)
#' 
#' -   [Amazon EBS product page](http://aws.amazon.com/ebs)
#' 
#' -   [Amazon VPC product page](http://aws.amazon.com/vpc)
#' 
#' -   [Amazon VPC documentation](http://aws.amazon.com/documentation/vpc)
#'
#' @examples
#' # This example allocates an Elastic IP address to use with an instance in
#' # a VPC.
#' \donttest{svc <- ec2()
#' svc$allocate_address(
#'   Domain = "vpc"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=ec2_accept_reserved_instances_exchange_quote]{accept_reserved_instances_exchange_quote} \tab Accepts the Convertible Reserved Instance exchange quote described in the GetReservedInstancesExchangeQuote call \cr
#'  \link[=ec2_accept_transit_gateway_vpc_attachment]{accept_transit_gateway_vpc_attachment} \tab Accepts a request to attach a VPC to a transit gateway \cr
#'  \link[=ec2_accept_vpc_endpoint_connections]{accept_vpc_endpoint_connections} \tab Accepts one or more interface VPC endpoint connection requests to your VPC endpoint service \cr
#'  \link[=ec2_accept_vpc_peering_connection]{accept_vpc_peering_connection} \tab Accept a VPC peering connection request \cr
#'  \link[=ec2_advertise_byoip_cidr]{advertise_byoip_cidr} \tab Advertises an IPv4 address range that is provisioned for use with your AWS resources through bring your own IP addresses (BYOIP) \cr
#'  \link[=ec2_allocate_address]{allocate_address} \tab Allocates an Elastic IP address to your AWS account \cr
#'  \link[=ec2_allocate_hosts]{allocate_hosts} \tab Allocates a Dedicated Host to your account \cr
#'  \link[=ec2_apply_security_groups_to_client_vpn_target_network]{apply_security_groups_to_client_vpn_target_network} \tab Applies a security group to the association between the target network and the Client VPN endpoint \cr
#'  \link[=ec2_assign_ipv_6_addresses]{assign_ipv_6_addresses} \tab Assigns one or more IPv6 addresses to the specified network interface \cr
#'  \link[=ec2_assign_private_ip_addresses]{assign_private_ip_addresses} \tab Assigns one or more secondary private IP addresses to the specified network interface \cr
#'  \link[=ec2_associate_address]{associate_address} \tab Associates an Elastic IP address with an instance or a network interface \cr
#'  \link[=ec2_associate_client_vpn_target_network]{associate_client_vpn_target_network} \tab Associates a target network with a Client VPN endpoint \cr
#'  \link[=ec2_associate_dhcp_options]{associate_dhcp_options} \tab Associates a set of DHCP options (that you've previously created) with the specified VPC, or associates no DHCP options with the VPC \cr
#'  \link[=ec2_associate_iam_instance_profile]{associate_iam_instance_profile} \tab Associates an IAM instance profile with a running or stopped instance \cr
#'  \link[=ec2_associate_route_table]{associate_route_table} \tab Associates a subnet with a route table \cr
#'  \link[=ec2_associate_subnet_cidr_block]{associate_subnet_cidr_block} \tab Associates a CIDR block with your subnet \cr
#'  \link[=ec2_associate_transit_gateway_route_table]{associate_transit_gateway_route_table} \tab Associates the specified attachment with the specified transit gateway route table \cr
#'  \link[=ec2_associate_vpc_cidr_block]{associate_vpc_cidr_block} \tab Associates a CIDR block with your VPC \cr
#'  \link[=ec2_attach_classic_link_vpc]{attach_classic_link_vpc} \tab Links an EC2-Classic instance to a ClassicLink-enabled VPC through one or more of the VPC's security groups \cr
#'  \link[=ec2_attach_internet_gateway]{attach_internet_gateway} \tab Attaches an internet gateway to a VPC, enabling connectivity between the internet and the VPC \cr
#'  \link[=ec2_attach_network_interface]{attach_network_interface} \tab Attaches a network interface to an instance \cr
#'  \link[=ec2_attach_volume]{attach_volume} \tab Attaches an EBS volume to a running or stopped instance and exposes it to the instance with the specified device name \cr
#'  \link[=ec2_attach_vpn_gateway]{attach_vpn_gateway} \tab Attaches a virtual private gateway to a VPC \cr
#'  \link[=ec2_authorize_client_vpn_ingress]{authorize_client_vpn_ingress} \tab Adds an ingress authorization rule to a Client VPN endpoint \cr
#'  \link[=ec2_authorize_security_group_egress]{authorize_security_group_egress} \tab &#91;EC2-VPC only&#93; Adds one or more egress rules to a security group for use with a VPC \cr
#'  \link[=ec2_authorize_security_group_ingress]{authorize_security_group_ingress} \tab Adds one or more ingress rules to a security group \cr
#'  \link[=ec2_bundle_instance]{bundle_instance} \tab Bundles an Amazon instance store-backed Windows instance \cr
#'  \link[=ec2_cancel_bundle_task]{cancel_bundle_task} \tab Cancels a bundling operation for an instance store-backed Windows instance \cr
#'  \link[=ec2_cancel_capacity_reservation]{cancel_capacity_reservation} \tab Cancels the specified Capacity Reservation, releases the reserved capacity, and changes the Capacity Reservation's state to cancelled \cr
#'  \link[=ec2_cancel_conversion_task]{cancel_conversion_task} \tab Cancels an active conversion task \cr
#'  \link[=ec2_cancel_export_task]{cancel_export_task} \tab Cancels an active export task \cr
#'  \link[=ec2_cancel_import_task]{cancel_import_task} \tab Cancels an in-process import virtual machine or import snapshot task \cr
#'  \link[=ec2_cancel_reserved_instances_listing]{cancel_reserved_instances_listing} \tab Cancels the specified Reserved Instance listing in the Reserved Instance Marketplace \cr
#'  \link[=ec2_cancel_spot_fleet_requests]{cancel_spot_fleet_requests} \tab Cancels the specified Spot Fleet requests \cr
#'  \link[=ec2_cancel_spot_instance_requests]{cancel_spot_instance_requests} \tab Cancels one or more Spot Instance requests \cr
#'  \link[=ec2_confirm_product_instance]{confirm_product_instance} \tab Determines whether a product code is associated with an instance \cr
#'  \link[=ec2_copy_fpga_image]{copy_fpga_image} \tab Copies the specified Amazon FPGA Image (AFI) to the current region \cr
#'  \link[=ec2_copy_image]{copy_image} \tab Initiates the copy of an AMI from the specified source region to the current region \cr
#'  \link[=ec2_copy_snapshot]{copy_snapshot} \tab Copies a point-in-time snapshot of an EBS volume and stores it in Amazon S3 \cr
#'  \link[=ec2_create_capacity_reservation]{create_capacity_reservation} \tab Creates a new Capacity Reservation with the specified attributes \cr
#'  \link[=ec2_create_client_vpn_endpoint]{create_client_vpn_endpoint} \tab Creates a Client VPN endpoint \cr
#'  \link[=ec2_create_client_vpn_route]{create_client_vpn_route} \tab Adds a route to a network to a Client VPN endpoint \cr
#'  \link[=ec2_create_customer_gateway]{create_customer_gateway} \tab Provides information to AWS about your VPN customer gateway device \cr
#'  \link[=ec2_create_default_subnet]{create_default_subnet} \tab Creates a default subnet with a size /20 IPv4 CIDR block in the specified Availability Zone in your default VPC \cr
#'  \link[=ec2_create_default_vpc]{create_default_vpc} \tab Creates a default VPC with a size /16 IPv4 CIDR block and a default subnet in each Availability Zone \cr
#'  \link[=ec2_create_dhcp_options]{create_dhcp_options} \tab Creates a set of DHCP options for your VPC \cr
#'  \link[=ec2_create_egress_only_internet_gateway]{create_egress_only_internet_gateway} \tab &#91;IPv6 only&#93; Creates an egress-only internet gateway for your VPC \cr
#'  \link[=ec2_create_fleet]{create_fleet} \tab Launches an EC2 Fleet \cr
#'  \link[=ec2_create_flow_logs]{create_flow_logs} \tab Creates one or more flow logs to capture information about IP traffic for a specific network interface, subnet, or VPC \cr
#'  \link[=ec2_create_fpga_image]{create_fpga_image} \tab Creates an Amazon FPGA Image (AFI) from the specified design checkpoint (DCP) \cr
#'  \link[=ec2_create_image]{create_image} \tab Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance that is either running or stopped \cr
#'  \link[=ec2_create_instance_export_task]{create_instance_export_task} \tab Exports a running or stopped instance to an S3 bucket \cr
#'  \link[=ec2_create_internet_gateway]{create_internet_gateway} \tab Creates an internet gateway for use with a VPC \cr
#'  \link[=ec2_create_key_pair]{create_key_pair} \tab Creates a 2048-bit RSA key pair with the specified name \cr
#'  \link[=ec2_create_launch_template]{create_launch_template} \tab Creates a launch template \cr
#'  \link[=ec2_create_launch_template_version]{create_launch_template_version} \tab Creates a new version for a launch template \cr
#'  \link[=ec2_create_nat_gateway]{create_nat_gateway} \tab Creates a NAT gateway in the specified public subnet \cr
#'  \link[=ec2_create_network_acl]{create_network_acl} \tab Creates a network ACL in a VPC \cr
#'  \link[=ec2_create_network_acl_entry]{create_network_acl_entry} \tab Creates an entry (a rule) in a network ACL with the specified rule number \cr
#'  \link[=ec2_create_network_interface]{create_network_interface} \tab Creates a network interface in the specified subnet \cr
#'  \link[=ec2_create_network_interface_permission]{create_network_interface_permission} \tab Grants an AWS-authorized account permission to attach the specified network interface to an instance in their account \cr
#'  \link[=ec2_create_placement_group]{create_placement_group} \tab Creates a placement group in which to launch instances \cr
#'  \link[=ec2_create_reserved_instances_listing]{create_reserved_instances_listing} \tab Creates a listing for Amazon EC2 Standard Reserved Instances to be sold in the Reserved Instance Marketplace \cr
#'  \link[=ec2_create_route]{create_route} \tab Creates a route in a route table within a VPC \cr
#'  \link[=ec2_create_route_table]{create_route_table} \tab Creates a route table for the specified VPC \cr
#'  \link[=ec2_create_security_group]{create_security_group} \tab Creates a security group \cr
#'  \link[=ec2_create_snapshot]{create_snapshot} \tab Creates a snapshot of an EBS volume and stores it in Amazon S3 \cr
#'  \link[=ec2_create_spot_datafeed_subscription]{create_spot_datafeed_subscription} \tab Creates a data feed for Spot Instances, enabling you to view Spot Instance usage logs \cr
#'  \link[=ec2_create_subnet]{create_subnet} \tab Creates a subnet in an existing VPC \cr
#'  \link[=ec2_create_tags]{create_tags} \tab Adds or overwrites one or more tags for the specified Amazon EC2 resource or resources \cr
#'  \link[=ec2_create_transit_gateway]{create_transit_gateway} \tab Creates a transit gateway \cr
#'  \link[=ec2_create_transit_gateway_route]{create_transit_gateway_route} \tab Creates a static route for the specified transit gateway route table \cr
#'  \link[=ec2_create_transit_gateway_route_table]{create_transit_gateway_route_table} \tab Creates a route table for the specified transit gateway \cr
#'  \link[=ec2_create_transit_gateway_vpc_attachment]{create_transit_gateway_vpc_attachment} \tab Attaches the specified VPC to the specified transit gateway \cr
#'  \link[=ec2_create_volume]{create_volume} \tab Creates an EBS volume that can be attached to an instance in the same Availability Zone \cr
#'  \link[=ec2_create_vpc]{create_vpc} \tab Creates a VPC with the specified IPv4 CIDR block \cr
#'  \link[=ec2_create_vpc_endpoint]{create_vpc_endpoint} \tab Creates a VPC endpoint for a specified service \cr
#'  \link[=ec2_create_vpc_endpoint_connection_notification]{create_vpc_endpoint_connection_notification} \tab Creates a connection notification for a specified VPC endpoint or VPC endpoint service \cr
#'  \link[=ec2_create_vpc_endpoint_service_configuration]{create_vpc_endpoint_service_configuration} \tab Creates a VPC endpoint service configuration to which service consumers (AWS accounts, IAM users, and IAM roles) can connect \cr
#'  \link[=ec2_create_vpc_peering_connection]{create_vpc_peering_connection} \tab Requests a VPC peering connection between two VPCs: a requester VPC that you own and an accepter VPC with which to create the connection \cr
#'  \link[=ec2_create_vpn_connection]{create_vpn_connection} \tab Creates a VPN connection between an existing virtual private gateway and a VPN customer gateway \cr
#'  \link[=ec2_create_vpn_connection_route]{create_vpn_connection_route} \tab Creates a static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway \cr
#'  \link[=ec2_create_vpn_gateway]{create_vpn_gateway} \tab Creates a virtual private gateway \cr
#'  \link[=ec2_delete_client_vpn_endpoint]{delete_client_vpn_endpoint} \tab Deletes the specified Client VPN endpoint \cr
#'  \link[=ec2_delete_client_vpn_route]{delete_client_vpn_route} \tab Deletes a route from a Client VPN endpoint \cr
#'  \link[=ec2_delete_customer_gateway]{delete_customer_gateway} \tab Deletes the specified customer gateway \cr
#'  \link[=ec2_delete_dhcp_options]{delete_dhcp_options} \tab Deletes the specified set of DHCP options \cr
#'  \link[=ec2_delete_egress_only_internet_gateway]{delete_egress_only_internet_gateway} \tab Deletes an egress-only internet gateway \cr
#'  \link[=ec2_delete_fleets]{delete_fleets} \tab Deletes the specified EC2 Fleet \cr
#'  \link[=ec2_delete_flow_logs]{delete_flow_logs} \tab Deletes one or more flow logs \cr
#'  \link[=ec2_delete_fpga_image]{delete_fpga_image} \tab Deletes the specified Amazon FPGA Image (AFI) \cr
#'  \link[=ec2_delete_internet_gateway]{delete_internet_gateway} \tab Deletes the specified internet gateway \cr
#'  \link[=ec2_delete_key_pair]{delete_key_pair} \tab Deletes the specified key pair, by removing the public key from Amazon EC2 \cr
#'  \link[=ec2_delete_launch_template]{delete_launch_template} \tab Deletes a launch template \cr
#'  \link[=ec2_delete_launch_template_versions]{delete_launch_template_versions} \tab Deletes one or more versions of a launch template \cr
#'  \link[=ec2_delete_nat_gateway]{delete_nat_gateway} \tab Deletes the specified NAT gateway \cr
#'  \link[=ec2_delete_network_acl]{delete_network_acl} \tab Deletes the specified network ACL \cr
#'  \link[=ec2_delete_network_acl_entry]{delete_network_acl_entry} \tab Deletes the specified ingress or egress entry (rule) from the specified network ACL \cr
#'  \link[=ec2_delete_network_interface]{delete_network_interface} \tab Deletes the specified network interface \cr
#'  \link[=ec2_delete_network_interface_permission]{delete_network_interface_permission} \tab Deletes a permission for a network interface \cr
#'  \link[=ec2_delete_placement_group]{delete_placement_group} \tab Deletes the specified placement group \cr
#'  \link[=ec2_delete_route]{delete_route} \tab Deletes the specified route from the specified route table \cr
#'  \link[=ec2_delete_route_table]{delete_route_table} \tab Deletes the specified route table \cr
#'  \link[=ec2_delete_security_group]{delete_security_group} \tab Deletes a security group \cr
#'  \link[=ec2_delete_snapshot]{delete_snapshot} \tab Deletes the specified snapshot \cr
#'  \link[=ec2_delete_spot_datafeed_subscription]{delete_spot_datafeed_subscription} \tab Deletes the data feed for Spot Instances \cr
#'  \link[=ec2_delete_subnet]{delete_subnet} \tab Deletes the specified subnet \cr
#'  \link[=ec2_delete_tags]{delete_tags} \tab Deletes the specified set of tags from the specified set of resources \cr
#'  \link[=ec2_delete_transit_gateway]{delete_transit_gateway} \tab Deletes the specified transit gateway \cr
#'  \link[=ec2_delete_transit_gateway_route]{delete_transit_gateway_route} \tab Deletes the specified route from the specified transit gateway route table \cr
#'  \link[=ec2_delete_transit_gateway_route_table]{delete_transit_gateway_route_table} \tab Deletes the specified transit gateway route table \cr
#'  \link[=ec2_delete_transit_gateway_vpc_attachment]{delete_transit_gateway_vpc_attachment} \tab Deletes the specified VPC attachment \cr
#'  \link[=ec2_delete_volume]{delete_volume} \tab Deletes the specified EBS volume \cr
#'  \link[=ec2_delete_vpc]{delete_vpc} \tab Deletes the specified VPC \cr
#'  \link[=ec2_delete_vpc_endpoint_connection_notifications]{delete_vpc_endpoint_connection_notifications} \tab Deletes one or more VPC endpoint connection notifications \cr
#'  \link[=ec2_delete_vpc_endpoint_service_configurations]{delete_vpc_endpoint_service_configurations} \tab Deletes one or more VPC endpoint service configurations in your account \cr
#'  \link[=ec2_delete_vpc_endpoints]{delete_vpc_endpoints} \tab Deletes one or more specified VPC endpoints \cr
#'  \link[=ec2_delete_vpc_peering_connection]{delete_vpc_peering_connection} \tab Deletes a VPC peering connection \cr
#'  \link[=ec2_delete_vpn_connection]{delete_vpn_connection} \tab Deletes the specified VPN connection \cr
#'  \link[=ec2_delete_vpn_connection_route]{delete_vpn_connection_route} \tab Deletes the specified static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway \cr
#'  \link[=ec2_delete_vpn_gateway]{delete_vpn_gateway} \tab Deletes the specified virtual private gateway \cr
#'  \link[=ec2_deprovision_byoip_cidr]{deprovision_byoip_cidr} \tab Releases the specified address range that you provisioned for use with your AWS resources through bring your own IP addresses (BYOIP) and deletes the corresponding address pool\cr
#'  \link[=ec2_deregister_image]{deregister_image} \tab Deregisters the specified AMI \cr
#'  \link[=ec2_describe_account_attributes]{describe_account_attributes} \tab Describes attributes of your AWS account \cr
#'  \link[=ec2_describe_addresses]{describe_addresses} \tab Describes one or more of your Elastic IP addresses \cr
#'  \link[=ec2_describe_aggregate_id_format]{describe_aggregate_id_format} \tab Describes the longer ID format settings for all resource types in a specific region \cr
#'  \link[=ec2_describe_availability_zones]{describe_availability_zones} \tab Describes one or more of the Availability Zones that are available to you \cr
#'  \link[=ec2_describe_bundle_tasks]{describe_bundle_tasks} \tab Describes one or more of your bundling tasks \cr
#'  \link[=ec2_describe_byoip_cidrs]{describe_byoip_cidrs} \tab Describes the IP address ranges that were specified in calls to ProvisionByoipCidr \cr
#'  \link[=ec2_describe_capacity_reservations]{describe_capacity_reservations} \tab Describes one or more of your Capacity Reservations \cr
#'  \link[=ec2_describe_classic_link_instances]{describe_classic_link_instances} \tab Describes one or more of your linked EC2-Classic instances \cr
#'  \link[=ec2_describe_client_vpn_authorization_rules]{describe_client_vpn_authorization_rules} \tab Describes the authorization rules for a specified Client VPN endpoint \cr
#'  \link[=ec2_describe_client_vpn_connections]{describe_client_vpn_connections} \tab Describes active client connections and connections that have been terminated within the last 60 minutes for the specified Client VPN endpoint \cr
#'  \link[=ec2_describe_client_vpn_endpoints]{describe_client_vpn_endpoints} \tab Describes one or more Client VPN endpoints in the account \cr
#'  \link[=ec2_describe_client_vpn_routes]{describe_client_vpn_routes} \tab Describes the routes for the specified Client VPN endpoint \cr
#'  \link[=ec2_describe_client_vpn_target_networks]{describe_client_vpn_target_networks} \tab Describes the target networks associated with the specified Client VPN endpoint \cr
#'  \link[=ec2_describe_conversion_tasks]{describe_conversion_tasks} \tab Describes one or more of your conversion tasks \cr
#'  \link[=ec2_describe_customer_gateways]{describe_customer_gateways} \tab Describes one or more of your VPN customer gateways \cr
#'  \link[=ec2_describe_dhcp_options]{describe_dhcp_options} \tab Describes one or more of your DHCP options sets \cr
#'  \link[=ec2_describe_egress_only_internet_gateways]{describe_egress_only_internet_gateways} \tab Describes one or more of your egress-only internet gateways \cr
#'  \link[=ec2_describe_elastic_gpus]{describe_elastic_gpus} \tab Describes the Elastic Graphics accelerator associated with your instances \cr
#'  \link[=ec2_describe_export_tasks]{describe_export_tasks} \tab Describes one or more of your export tasks \cr
#'  \link[=ec2_describe_fleet_history]{describe_fleet_history} \tab Describes the events for the specified EC2 Fleet during the specified time \cr
#'  \link[=ec2_describe_fleet_instances]{describe_fleet_instances} \tab Describes the running instances for the specified EC2 Fleet \cr
#'  \link[=ec2_describe_fleets]{describe_fleets} \tab Describes one or more of your EC2 Fleets \cr
#'  \link[=ec2_describe_flow_logs]{describe_flow_logs} \tab Describes one or more flow logs \cr
#'  \link[=ec2_describe_fpga_image_attribute]{describe_fpga_image_attribute} \tab Describes the specified attribute of the specified Amazon FPGA Image (AFI) \cr
#'  \link[=ec2_describe_fpga_images]{describe_fpga_images} \tab Describes one or more available Amazon FPGA Images (AFIs) \cr
#'  \link[=ec2_describe_host_reservation_offerings]{describe_host_reservation_offerings} \tab Describes the Dedicated Host reservations that are available to purchase \cr
#'  \link[=ec2_describe_host_reservations]{describe_host_reservations} \tab Describes reservations that are associated with Dedicated Hosts in your account \cr
#'  \link[=ec2_describe_hosts]{describe_hosts} \tab Describes one or more of your Dedicated Hosts \cr
#'  \link[=ec2_describe_iam_instance_profile_associations]{describe_iam_instance_profile_associations} \tab Describes your IAM instance profile associations \cr
#'  \link[=ec2_describe_id_format]{describe_id_format} \tab Describes the ID format settings for your resources on a per-region basis, for example, to view which resource types are enabled for longer IDs \cr
#'  \link[=ec2_describe_identity_id_format]{describe_identity_id_format} \tab Describes the ID format settings for resources for the specified IAM user, IAM role, or root user \cr
#'  \link[=ec2_describe_image_attribute]{describe_image_attribute} \tab Describes the specified attribute of the specified AMI \cr
#'  \link[=ec2_describe_images]{describe_images} \tab Describes one or more of the images (AMIs, AKIs, and ARIs) available to you \cr
#'  \link[=ec2_describe_import_image_tasks]{describe_import_image_tasks} \tab Displays details about an import virtual machine or import snapshot tasks that are already created \cr
#'  \link[=ec2_describe_import_snapshot_tasks]{describe_import_snapshot_tasks} \tab Describes your import snapshot tasks \cr
#'  \link[=ec2_describe_instance_attribute]{describe_instance_attribute} \tab Describes the specified attribute of the specified instance \cr
#'  \link[=ec2_describe_instance_credit_specifications]{describe_instance_credit_specifications} \tab Describes the credit option for CPU usage of one or more of your T2 or T3 instances \cr
#'  \link[=ec2_describe_instance_status]{describe_instance_status} \tab Describes the status of one or more instances \cr
#'  \link[=ec2_describe_instances]{describe_instances} \tab Describes one or more of your instances \cr
#'  \link[=ec2_describe_internet_gateways]{describe_internet_gateways} \tab Describes one or more of your internet gateways \cr
#'  \link[=ec2_describe_key_pairs]{describe_key_pairs} \tab Describes one or more of your key pairs \cr
#'  \link[=ec2_describe_launch_template_versions]{describe_launch_template_versions} \tab Describes one or more versions of a specified launch template \cr
#'  \link[=ec2_describe_launch_templates]{describe_launch_templates} \tab Describes one or more launch templates \cr
#'  \link[=ec2_describe_moving_addresses]{describe_moving_addresses} \tab Describes your Elastic IP addresses that are being moved to the EC2-VPC platform, or that are being restored to the EC2-Classic platform \cr
#'  \link[=ec2_describe_nat_gateways]{describe_nat_gateways} \tab Describes one or more of your NAT gateways \cr
#'  \link[=ec2_describe_network_acls]{describe_network_acls} \tab Describes one or more of your network ACLs \cr
#'  \link[=ec2_describe_network_interface_attribute]{describe_network_interface_attribute} \tab Describes a network interface attribute \cr
#'  \link[=ec2_describe_network_interface_permissions]{describe_network_interface_permissions} \tab Describes the permissions for your network interfaces \cr
#'  \link[=ec2_describe_network_interfaces]{describe_network_interfaces} \tab Describes one or more of your network interfaces \cr
#'  \link[=ec2_describe_placement_groups]{describe_placement_groups} \tab Describes one or more of your placement groups \cr
#'  \link[=ec2_describe_prefix_lists]{describe_prefix_lists} \tab Describes available AWS services in a prefix list format, which includes the prefix list name and prefix list ID of the service and the IP address range for the service \cr
#'  \link[=ec2_describe_principal_id_format]{describe_principal_id_format} \tab Describes the ID format settings for the root user and all IAM roles and IAM users that have explicitly specified a longer ID (17-character ID) preference \cr
#'  \link[=ec2_describe_public_ipv_4_pools]{describe_public_ipv_4_pools} \tab Describes the specified IPv4 address pools \cr
#'  \link[=ec2_describe_regions]{describe_regions} \tab Describes one or more regions that are currently available to you \cr
#'  \link[=ec2_describe_reserved_instances]{describe_reserved_instances} \tab Describes one or more of the Reserved Instances that you purchased \cr
#'  \link[=ec2_describe_reserved_instances_listings]{describe_reserved_instances_listings} \tab Describes your account's Reserved Instance listings in the Reserved Instance Marketplace \cr
#'  \link[=ec2_describe_reserved_instances_modifications]{describe_reserved_instances_modifications} \tab Describes the modifications made to your Reserved Instances \cr
#'  \link[=ec2_describe_reserved_instances_offerings]{describe_reserved_instances_offerings} \tab Describes Reserved Instance offerings that are available for purchase \cr
#'  \link[=ec2_describe_route_tables]{describe_route_tables} \tab Describes one or more of your route tables \cr
#'  \link[=ec2_describe_scheduled_instance_availability]{describe_scheduled_instance_availability} \tab Finds available schedules that meet the specified criteria \cr
#'  \link[=ec2_describe_scheduled_instances]{describe_scheduled_instances} \tab Describes one or more of your Scheduled Instances \cr
#'  \link[=ec2_describe_security_group_references]{describe_security_group_references} \tab &#91;EC2-VPC only&#93; Describes the VPCs on the other side of a VPC peering connection that are referencing the security groups you've specified in this request \cr
#'  \link[=ec2_describe_security_groups]{describe_security_groups} \tab Describes one or more of your security groups \cr
#'  \link[=ec2_describe_snapshot_attribute]{describe_snapshot_attribute} \tab Describes the specified attribute of the specified snapshot \cr
#'  \link[=ec2_describe_snapshots]{describe_snapshots} \tab Describes one or more of the EBS snapshots available to you \cr
#'  \link[=ec2_describe_spot_datafeed_subscription]{describe_spot_datafeed_subscription} \tab Describes the data feed for Spot Instances \cr
#'  \link[=ec2_describe_spot_fleet_instances]{describe_spot_fleet_instances} \tab Describes the running instances for the specified Spot Fleet \cr
#'  \link[=ec2_describe_spot_fleet_request_history]{describe_spot_fleet_request_history} \tab Describes the events for the specified Spot Fleet request during the specified time \cr
#'  \link[=ec2_describe_spot_fleet_requests]{describe_spot_fleet_requests} \tab Describes your Spot Fleet requests \cr
#'  \link[=ec2_describe_spot_instance_requests]{describe_spot_instance_requests} \tab Describes the specified Spot Instance requests \cr
#'  \link[=ec2_describe_spot_price_history]{describe_spot_price_history} \tab Describes the Spot price history \cr
#'  \link[=ec2_describe_stale_security_groups]{describe_stale_security_groups} \tab &#91;EC2-VPC only&#93; Describes the stale security group rules for security groups in a specified VPC \cr
#'  \link[=ec2_describe_subnets]{describe_subnets} \tab Describes one or more of your subnets \cr
#'  \link[=ec2_describe_tags]{describe_tags} \tab Describes one or more of the tags for your EC2 resources \cr
#'  \link[=ec2_describe_transit_gateway_attachments]{describe_transit_gateway_attachments} \tab Describes one or more attachments between resources and transit gateways \cr
#'  \link[=ec2_describe_transit_gateway_route_tables]{describe_transit_gateway_route_tables} \tab Describes one or more transit gateway route tables \cr
#'  \link[=ec2_describe_transit_gateway_vpc_attachments]{describe_transit_gateway_vpc_attachments} \tab Describes one or more VPC attachments \cr
#'  \link[=ec2_describe_transit_gateways]{describe_transit_gateways} \tab Describes one or more transit gateways \cr
#'  \link[=ec2_describe_volume_attribute]{describe_volume_attribute} \tab Describes the specified attribute of the specified volume \cr
#'  \link[=ec2_describe_volume_status]{describe_volume_status} \tab Describes the status of the specified volumes \cr
#'  \link[=ec2_describe_volumes]{describe_volumes} \tab Describes the specified EBS volumes \cr
#'  \link[=ec2_describe_volumes_modifications]{describe_volumes_modifications} \tab Reports the current modification status of EBS volumes \cr
#'  \link[=ec2_describe_vpc_attribute]{describe_vpc_attribute} \tab Describes the specified attribute of the specified VPC \cr
#'  \link[=ec2_describe_vpc_classic_link]{describe_vpc_classic_link} \tab Describes the ClassicLink status of one or more VPCs \cr
#'  \link[=ec2_describe_vpc_classic_link_dns_support]{describe_vpc_classic_link_dns_support} \tab Describes the ClassicLink DNS support status of one or more VPCs \cr
#'  \link[=ec2_describe_vpc_endpoint_connection_notifications]{describe_vpc_endpoint_connection_notifications} \tab Describes the connection notifications for VPC endpoints and VPC endpoint services \cr
#'  \link[=ec2_describe_vpc_endpoint_connections]{describe_vpc_endpoint_connections} \tab Describes the VPC endpoint connections to your VPC endpoint services, including any endpoints that are pending your acceptance \cr
#'  \link[=ec2_describe_vpc_endpoint_service_configurations]{describe_vpc_endpoint_service_configurations} \tab Describes the VPC endpoint service configurations in your account (your services) \cr
#'  \link[=ec2_describe_vpc_endpoint_service_permissions]{describe_vpc_endpoint_service_permissions} \tab Describes the principals (service consumers) that are permitted to discover your VPC endpoint service \cr
#'  \link[=ec2_describe_vpc_endpoint_services]{describe_vpc_endpoint_services} \tab Describes available services to which you can create a VPC endpoint \cr
#'  \link[=ec2_describe_vpc_endpoints]{describe_vpc_endpoints} \tab Describes one or more of your VPC endpoints \cr
#'  \link[=ec2_describe_vpc_peering_connections]{describe_vpc_peering_connections} \tab Describes one or more of your VPC peering connections \cr
#'  \link[=ec2_describe_vpcs]{describe_vpcs} \tab Describes one or more of your VPCs \cr
#'  \link[=ec2_describe_vpn_connections]{describe_vpn_connections} \tab Describes one or more of your VPN connections \cr
#'  \link[=ec2_describe_vpn_gateways]{describe_vpn_gateways} \tab Describes one or more of your virtual private gateways \cr
#'  \link[=ec2_detach_classic_link_vpc]{detach_classic_link_vpc} \tab Unlinks (detaches) a linked EC2-Classic instance from a VPC \cr
#'  \link[=ec2_detach_internet_gateway]{detach_internet_gateway} \tab Detaches an internet gateway from a VPC, disabling connectivity between the internet and the VPC \cr
#'  \link[=ec2_detach_network_interface]{detach_network_interface} \tab Detaches a network interface from an instance \cr
#'  \link[=ec2_detach_volume]{detach_volume} \tab Detaches an EBS volume from an instance \cr
#'  \link[=ec2_detach_vpn_gateway]{detach_vpn_gateway} \tab Detaches a virtual private gateway from a VPC \cr
#'  \link[=ec2_disable_transit_gateway_route_table_propagation]{disable_transit_gateway_route_table_propagation} \tab Disables the specified resource attachment from propagating routes to the specified propagation route table \cr
#'  \link[=ec2_disable_vgw_route_propagation]{disable_vgw_route_propagation} \tab Disables a virtual private gateway (VGW) from propagating routes to a specified route table of a VPC \cr
#'  \link[=ec2_disable_vpc_classic_link]{disable_vpc_classic_link} \tab Disables ClassicLink for a VPC \cr
#'  \link[=ec2_disable_vpc_classic_link_dns_support]{disable_vpc_classic_link_dns_support} \tab Disables ClassicLink DNS support for a VPC \cr
#'  \link[=ec2_disassociate_address]{disassociate_address} \tab Disassociates an Elastic IP address from the instance or network interface it's associated with \cr
#'  \link[=ec2_disassociate_client_vpn_target_network]{disassociate_client_vpn_target_network} \tab Disassociates a target network from the specified Client VPN endpoint \cr
#'  \link[=ec2_disassociate_iam_instance_profile]{disassociate_iam_instance_profile} \tab Disassociates an IAM instance profile from a running or stopped instance \cr
#'  \link[=ec2_disassociate_route_table]{disassociate_route_table} \tab Disassociates a subnet from a route table \cr
#'  \link[=ec2_disassociate_subnet_cidr_block]{disassociate_subnet_cidr_block} \tab Disassociates a CIDR block from a subnet \cr
#'  \link[=ec2_disassociate_transit_gateway_route_table]{disassociate_transit_gateway_route_table} \tab Disassociates a resource attachment from a transit gateway route table \cr
#'  \link[=ec2_disassociate_vpc_cidr_block]{disassociate_vpc_cidr_block} \tab Disassociates a CIDR block from a VPC \cr
#'  \link[=ec2_enable_transit_gateway_route_table_propagation]{enable_transit_gateway_route_table_propagation} \tab Enables the specified attachment to propagate routes to the specified propagation route table \cr
#'  \link[=ec2_enable_vgw_route_propagation]{enable_vgw_route_propagation} \tab Enables a virtual private gateway (VGW) to propagate routes to the specified route table of a VPC \cr
#'  \link[=ec2_enable_volume_io]{enable_volume_io} \tab Enables I/O operations for a volume that had I/O operations disabled because the data on the volume was potentially inconsistent \cr
#'  \link[=ec2_enable_vpc_classic_link]{enable_vpc_classic_link} \tab Enables a VPC for ClassicLink \cr
#'  \link[=ec2_enable_vpc_classic_link_dns_support]{enable_vpc_classic_link_dns_support} \tab Enables a VPC to support DNS hostname resolution for ClassicLink \cr
#'  \link[=ec2_export_client_vpn_client_certificate_revocation_list]{export_client_vpn_client_certificate_revocation_list} \tab Downloads the client certificate revocation list for the specified Client VPN endpoint \cr
#'  \link[=ec2_export_client_vpn_client_configuration]{export_client_vpn_client_configuration} \tab Downloads the contents of the Client VPN endpoint configuration file for the specified Client VPN endpoint \cr
#'  \link[=ec2_export_transit_gateway_routes]{export_transit_gateway_routes} \tab Exports routes from the specified transit gateway route table to the specified S3 bucket \cr
#'  \link[=ec2_get_console_output]{get_console_output} \tab Gets the console output for the specified instance \cr
#'  \link[=ec2_get_console_screenshot]{get_console_screenshot} \tab Retrieve a JPG-format screenshot of a running instance to help with troubleshooting \cr
#'  \link[=ec2_get_host_reservation_purchase_preview]{get_host_reservation_purchase_preview} \tab Preview a reservation purchase with configurations that match those of your Dedicated Host \cr
#'  \link[=ec2_get_launch_template_data]{get_launch_template_data} \tab Retrieves the configuration data of the specified instance \cr
#'  \link[=ec2_get_password_data]{get_password_data} \tab Retrieves the encrypted administrator password for a running Windows instance \cr
#'  \link[=ec2_get_reserved_instances_exchange_quote]{get_reserved_instances_exchange_quote} \tab Returns a quote and exchange information for exchanging one or more specified Convertible Reserved Instances for a new Convertible Reserved Instance \cr
#'  \link[=ec2_get_transit_gateway_attachment_propagations]{get_transit_gateway_attachment_propagations} \tab Lists the route tables to which the specified resource attachment propagates routes \cr
#'  \link[=ec2_get_transit_gateway_route_table_associations]{get_transit_gateway_route_table_associations} \tab Gets information about the associations for the specified transit gateway route table \cr
#'  \link[=ec2_get_transit_gateway_route_table_propagations]{get_transit_gateway_route_table_propagations} \tab Gets information about the route table propagations for the specified transit gateway route table \cr
#'  \link[=ec2_import_client_vpn_client_certificate_revocation_list]{import_client_vpn_client_certificate_revocation_list} \tab Uploads a client certificate revocation list to the specified Client VPN endpoint \cr
#'  \link[=ec2_import_image]{import_image} \tab Import single or multi-volume disk images or EBS snapshots into an Amazon Machine Image (AMI) \cr
#'  \link[=ec2_import_instance]{import_instance} \tab Creates an import instance task using metadata from the specified disk image \cr
#'  \link[=ec2_import_key_pair]{import_key_pair} \tab Imports the public key from an RSA key pair that you created with a third-party tool \cr
#'  \link[=ec2_import_snapshot]{import_snapshot} \tab Imports a disk into an EBS snapshot \cr
#'  \link[=ec2_import_volume]{import_volume} \tab Creates an import volume task using metadata from the specified disk image \cr
#'  \link[=ec2_modify_capacity_reservation]{modify_capacity_reservation} \tab Modifies a Capacity Reservation's capacity and the conditions under which it is to be released \cr
#'  \link[=ec2_modify_client_vpn_endpoint]{modify_client_vpn_endpoint} \tab Modifies the specified Client VPN endpoint \cr
#'  \link[=ec2_modify_fleet]{modify_fleet} \tab Modifies the specified EC2 Fleet \cr
#'  \link[=ec2_modify_fpga_image_attribute]{modify_fpga_image_attribute} \tab Modifies the specified attribute of the specified Amazon FPGA Image (AFI) \cr
#'  \link[=ec2_modify_hosts]{modify_hosts} \tab Modify the auto-placement setting of a Dedicated Host \cr
#'  \link[=ec2_modify_id_format]{modify_id_format} \tab Modifies the ID format for the specified resource on a per-region basis \cr
#'  \link[=ec2_modify_identity_id_format]{modify_identity_id_format} \tab Modifies the ID format of a resource for a specified IAM user, IAM role, or the root user for an account; or all IAM users, IAM roles, and the root user for an account \cr
#'  \link[=ec2_modify_image_attribute]{modify_image_attribute} \tab Modifies the specified attribute of the specified AMI \cr
#'  \link[=ec2_modify_instance_attribute]{modify_instance_attribute} \tab Modifies the specified attribute of the specified instance \cr
#'  \link[=ec2_modify_instance_capacity_reservation_attributes]{modify_instance_capacity_reservation_attributes} \tab Modifies the Capacity Reservation settings for a stopped instance \cr
#'  \link[=ec2_modify_instance_credit_specification]{modify_instance_credit_specification} \tab Modifies the credit option for CPU usage on a running or stopped T2 or T3 instance \cr
#'  \link[=ec2_modify_instance_event_start_time]{modify_instance_event_start_time} \tab Modifies the start time for a scheduled Amazon EC2 instance event \cr
#'  \link[=ec2_modify_instance_placement]{modify_instance_placement} \tab Modifies the placement attributes for a specified instance \cr
#'  \link[=ec2_modify_launch_template]{modify_launch_template} \tab Modifies a launch template \cr
#'  \link[=ec2_modify_network_interface_attribute]{modify_network_interface_attribute} \tab Modifies the specified network interface attribute \cr
#'  \link[=ec2_modify_reserved_instances]{modify_reserved_instances} \tab Modifies the Availability Zone, instance count, instance type, or network platform (EC2-Classic or EC2-VPC) of your Reserved Instances \cr
#'  \link[=ec2_modify_snapshot_attribute]{modify_snapshot_attribute} \tab Adds or removes permission settings for the specified snapshot \cr
#'  \link[=ec2_modify_spot_fleet_request]{modify_spot_fleet_request} \tab Modifies the specified Spot Fleet request \cr
#'  \link[=ec2_modify_subnet_attribute]{modify_subnet_attribute} \tab Modifies a subnet attribute \cr
#'  \link[=ec2_modify_transit_gateway_vpc_attachment]{modify_transit_gateway_vpc_attachment} \tab Modifies the specified VPC attachment \cr
#'  \link[=ec2_modify_volume]{modify_volume} \tab You can modify several parameters of an existing EBS volume, including volume size, volume type, and IOPS capacity \cr
#'  \link[=ec2_modify_volume_attribute]{modify_volume_attribute} \tab Modifies a volume attribute \cr
#'  \link[=ec2_modify_vpc_attribute]{modify_vpc_attribute} \tab Modifies the specified attribute of the specified VPC \cr
#'  \link[=ec2_modify_vpc_endpoint]{modify_vpc_endpoint} \tab Modifies attributes of a specified VPC endpoint \cr
#'  \link[=ec2_modify_vpc_endpoint_connection_notification]{modify_vpc_endpoint_connection_notification} \tab Modifies a connection notification for VPC endpoint or VPC endpoint service \cr
#'  \link[=ec2_modify_vpc_endpoint_service_configuration]{modify_vpc_endpoint_service_configuration} \tab Modifies the attributes of your VPC endpoint service configuration \cr
#'  \link[=ec2_modify_vpc_endpoint_service_permissions]{modify_vpc_endpoint_service_permissions} \tab Modifies the permissions for your VPC endpoint service \cr
#'  \link[=ec2_modify_vpc_peering_connection_options]{modify_vpc_peering_connection_options} \tab Modifies the VPC peering connection options on one side of a VPC peering connection \cr
#'  \link[=ec2_modify_vpc_tenancy]{modify_vpc_tenancy} \tab Modifies the instance tenancy attribute of the specified VPC \cr
#'  \link[=ec2_monitor_instances]{monitor_instances} \tab Enables detailed monitoring for a running instance \cr
#'  \link[=ec2_move_address_to_vpc]{move_address_to_vpc} \tab Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC platform \cr
#'  \link[=ec2_provision_byoip_cidr]{provision_byoip_cidr} \tab Provisions an address range for use with your AWS resources through bring your own IP addresses (BYOIP) and creates a corresponding address pool \cr
#'  \link[=ec2_purchase_host_reservation]{purchase_host_reservation} \tab Purchase a reservation with configurations that match those of your Dedicated Host \cr
#'  \link[=ec2_purchase_reserved_instances_offering]{purchase_reserved_instances_offering} \tab Purchases a Reserved Instance for use with your account \cr
#'  \link[=ec2_purchase_scheduled_instances]{purchase_scheduled_instances} \tab Purchases one or more Scheduled Instances with the specified schedule \cr
#'  \link[=ec2_reboot_instances]{reboot_instances} \tab Requests a reboot of one or more instances \cr
#'  \link[=ec2_register_image]{register_image} \tab Registers an AMI \cr
#'  \link[=ec2_reject_transit_gateway_vpc_attachment]{reject_transit_gateway_vpc_attachment} \tab Rejects a request to attach a VPC to a transit gateway \cr
#'  \link[=ec2_reject_vpc_endpoint_connections]{reject_vpc_endpoint_connections} \tab Rejects one or more VPC endpoint connection requests to your VPC endpoint service \cr
#'  \link[=ec2_reject_vpc_peering_connection]{reject_vpc_peering_connection} \tab Rejects a VPC peering connection request \cr
#'  \link[=ec2_release_address]{release_address} \tab Releases the specified Elastic IP address \cr
#'  \link[=ec2_release_hosts]{release_hosts} \tab When you no longer want to use an On-Demand Dedicated Host it can be released \cr
#'  \link[=ec2_replace_iam_instance_profile_association]{replace_iam_instance_profile_association} \tab Replaces an IAM instance profile for the specified running instance \cr
#'  \link[=ec2_replace_network_acl_association]{replace_network_acl_association} \tab Changes which network ACL a subnet is associated with \cr
#'  \link[=ec2_replace_network_acl_entry]{replace_network_acl_entry} \tab Replaces an entry (rule) in a network ACL \cr
#'  \link[=ec2_replace_route]{replace_route} \tab Replaces an existing route within a route table in a VPC \cr
#'  \link[=ec2_replace_route_table_association]{replace_route_table_association} \tab Changes the route table associated with a given subnet in a VPC \cr
#'  \link[=ec2_replace_transit_gateway_route]{replace_transit_gateway_route} \tab Replaces the specified route in the specified transit gateway route table \cr
#'  \link[=ec2_report_instance_status]{report_instance_status} \tab Submits feedback about the status of an instance \cr
#'  \link[=ec2_request_spot_fleet]{request_spot_fleet} \tab Creates a Spot Fleet request \cr
#'  \link[=ec2_request_spot_instances]{request_spot_instances} \tab Creates a Spot Instance request \cr
#'  \link[=ec2_reset_fpga_image_attribute]{reset_fpga_image_attribute} \tab Resets the specified attribute of the specified Amazon FPGA Image (AFI) to its default value \cr
#'  \link[=ec2_reset_image_attribute]{reset_image_attribute} \tab Resets an attribute of an AMI to its default value \cr
#'  \link[=ec2_reset_instance_attribute]{reset_instance_attribute} \tab Resets an attribute of an instance to its default value \cr
#'  \link[=ec2_reset_network_interface_attribute]{reset_network_interface_attribute} \tab Resets a network interface attribute \cr
#'  \link[=ec2_reset_snapshot_attribute]{reset_snapshot_attribute} \tab Resets permission settings for the specified snapshot \cr
#'  \link[=ec2_restore_address_to_classic]{restore_address_to_classic} \tab Restores an Elastic IP address that was previously moved to the EC2-VPC platform back to the EC2-Classic platform \cr
#'  \link[=ec2_revoke_client_vpn_ingress]{revoke_client_vpn_ingress} \tab Removes an ingress authorization rule from a Client VPN endpoint \cr
#'  \link[=ec2_revoke_security_group_egress]{revoke_security_group_egress} \tab &#91;EC2-VPC only&#93; Removes one or more egress rules from a security group for EC2-VPC \cr
#'  \link[=ec2_revoke_security_group_ingress]{revoke_security_group_ingress} \tab Removes one or more ingress rules from a security group \cr
#'  \link[=ec2_run_instances]{run_instances} \tab Launches the specified number of instances using an AMI for which you have permissions \cr
#'  \link[=ec2_run_scheduled_instances]{run_scheduled_instances} \tab Launches the specified Scheduled Instances \cr
#'  \link[=ec2_search_transit_gateway_routes]{search_transit_gateway_routes} \tab Searches for routes in the specified transit gateway route table \cr
#'  \link[=ec2_start_instances]{start_instances} \tab Starts an Amazon EBS-backed instance that you've previously stopped \cr
#'  \link[=ec2_stop_instances]{stop_instances} \tab Stops an Amazon EBS-backed instance \cr
#'  \link[=ec2_terminate_client_vpn_connections]{terminate_client_vpn_connections} \tab Terminates active Client VPN endpoint connections \cr
#'  \link[=ec2_terminate_instances]{terminate_instances} \tab Shuts down one or more instances \cr
#'  \link[=ec2_unassign_ipv_6_addresses]{unassign_ipv_6_addresses} \tab Unassigns one or more IPv6 addresses from a network interface \cr
#'  \link[=ec2_unassign_private_ip_addresses]{unassign_private_ip_addresses} \tab Unassigns one or more secondary private IP addresses from a network interface \cr
#'  \link[=ec2_unmonitor_instances]{unmonitor_instances} \tab Disables detailed monitoring for a running instance \cr
#'  \link[=ec2_update_security_group_rule_descriptions_egress]{update_security_group_rule_descriptions_egress} \tab &#91;EC2-VPC only&#93; Updates the description of an egress (outbound) security group rule \cr
#'  \link[=ec2_update_security_group_rule_descriptions_ingress]{update_security_group_rule_descriptions_ingress} \tab Updates the description of an ingress (inbound) security group rule \cr
#'  \link[=ec2_withdraw_byoip_cidr]{withdraw_byoip_cidr} \tab Stops advertising an IPv4 address range that is provisioned as an address pool 
#' }
#'
#' @rdname ec2
#' @export
ec2 <- function() {
  paws.compute::ec2()
}

#' Amazon EC2 Container Registry
#'
#' @description
#' Amazon Elastic Container Registry (Amazon ECR) is a managed Docker
#' registry service. Customers can use the familiar Docker CLI to push,
#' pull, and manage images. Amazon ECR provides a secure, scalable, and
#' reliable registry. Amazon ECR supports private Docker repositories with
#' resource-based permissions using IAM so that specific users or Amazon
#' EC2 instances can access repositories and images. Developers can use the
#' Docker CLI to author and manage images.
#'
#' @examples
#' # This example deletes images with the tags precise and trusty in a
#' # repository called ubuntu in the default registry for an account.
#' \donttest{svc <- ecr()
#' svc$batch_delete_image(
#'   imageIds = list(
#'     list(
#'       imageTag = "precise"
#'     )
#'   ),
#'   repositoryName = "ubuntu"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=ecr_batch_check_layer_availability]{batch_check_layer_availability} \tab Check the availability of multiple image layers in a specified registry and repository \cr
#'  \link[=ecr_batch_delete_image]{batch_delete_image} \tab Deletes a list of specified images within a specified repository \cr
#'  \link[=ecr_batch_get_image]{batch_get_image} \tab Gets detailed information for specified images within a specified repository \cr
#'  \link[=ecr_complete_layer_upload]{complete_layer_upload} \tab Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID\cr
#'  \link[=ecr_create_repository]{create_repository} \tab Creates an image repository \cr
#'  \link[=ecr_delete_lifecycle_policy]{delete_lifecycle_policy} \tab Deletes the specified lifecycle policy \cr
#'  \link[=ecr_delete_repository]{delete_repository} \tab Deletes an existing image repository \cr
#'  \link[=ecr_delete_repository_policy]{delete_repository_policy} \tab Deletes the repository policy from a specified repository \cr
#'  \link[=ecr_describe_images]{describe_images} \tab Returns metadata about the images in a repository, including image size, image tags, and creation date \cr
#'  \link[=ecr_describe_repositories]{describe_repositories} \tab Describes image repositories in a registry \cr
#'  \link[=ecr_get_authorization_token]{get_authorization_token} \tab Retrieves a token that is valid for a specified registry for 12 hours \cr
#'  \link[=ecr_get_download_url_for_layer]{get_download_url_for_layer} \tab Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer \cr
#'  \link[=ecr_get_lifecycle_policy]{get_lifecycle_policy} \tab Retrieves the specified lifecycle policy \cr
#'  \link[=ecr_get_lifecycle_policy_preview]{get_lifecycle_policy_preview} \tab Retrieves the results of the specified lifecycle policy preview request \cr
#'  \link[=ecr_get_repository_policy]{get_repository_policy} \tab Retrieves the repository policy for a specified repository \cr
#'  \link[=ecr_initiate_layer_upload]{initiate_layer_upload} \tab Notify Amazon ECR that you intend to upload an image layer \cr
#'  \link[=ecr_list_images]{list_images} \tab Lists all the image IDs for a given repository \cr
#'  \link[=ecr_list_tags_for_resource]{list_tags_for_resource} \tab List the tags for an Amazon ECR resource \cr
#'  \link[=ecr_put_image]{put_image} \tab Creates or updates the image manifest and tags associated with an image \cr
#'  \link[=ecr_put_lifecycle_policy]{put_lifecycle_policy} \tab Creates or updates a lifecycle policy \cr
#'  \link[=ecr_set_repository_policy]{set_repository_policy} \tab Applies a repository policy on a specified repository to control access permissions \cr
#'  \link[=ecr_start_lifecycle_policy_preview]{start_lifecycle_policy_preview} \tab Starts a preview of the specified lifecycle policy \cr
#'  \link[=ecr_tag_resource]{tag_resource} \tab Adds specified tags to a resource with the specified ARN \cr
#'  \link[=ecr_untag_resource]{untag_resource} \tab Deletes specified tags from a resource \cr
#'  \link[=ecr_upload_layer_part]{upload_layer_part} \tab Uploads an image layer part to Amazon ECR 
#' }
#'
#' @rdname ecr
#' @export
ecr <- function() {
  paws.compute::ecr()
}

#' Amazon EC2 Container Service
#'
#' @description
#' Amazon Elastic Container Service
#' 
#' Amazon Elastic Container Service (Amazon ECS) is a highly scalable,
#' fast, container management service that makes it easy to run, stop, and
#' manage Docker containers on a cluster. You can host your cluster on a
#' serverless infrastructure that is managed by Amazon ECS by launching
#' your services or tasks using the Fargate launch type. For more control,
#' you can host your tasks on a cluster of Amazon Elastic Compute Cloud
#' (Amazon EC2) instances that you manage by using the EC2 launch type. For
#' more information about launch types, see [Amazon ECS Launch
#' Types](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html).
#' 
#' Amazon ECS lets you launch and stop container-based applications with
#' simple API calls, allows you to get the state of your cluster from a
#' centralized service, and gives you access to many familiar Amazon EC2
#' features.
#' 
#' You can use Amazon ECS to schedule the placement of containers across
#' your cluster based on your resource needs, isolation policies, and
#' availability requirements. Amazon ECS eliminates the need for you to
#' operate your own cluster management and configuration management systems
#' or worry about scaling your management infrastructure.
#'
#' @examples
#' # This example creates a cluster in your default region.
#' \donttest{svc <- ecs()
#' svc$create_cluster(
#'   clusterName = "my_cluster"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=ecs_create_cluster]{create_cluster} \tab Creates a new Amazon ECS cluster \cr
#'  \link[=ecs_create_service]{create_service} \tab Runs and maintains a desired number of tasks from a specified task definition \cr
#'  \link[=ecs_create_task_set]{create_task_set} \tab Create a task set in the specified cluster and service \cr
#'  \link[=ecs_delete_account_setting]{delete_account_setting} \tab Modifies the ARN and resource ID format of a resource for a specified IAM user, IAM role, or the root user for an account \cr
#'  \link[=ecs_delete_attributes]{delete_attributes} \tab Deletes one or more custom attributes from an Amazon ECS resource \cr
#'  \link[=ecs_delete_cluster]{delete_cluster} \tab Deletes the specified cluster \cr
#'  \link[=ecs_delete_service]{delete_service} \tab Deletes a specified service within a cluster \cr
#'  \link[=ecs_delete_task_set]{delete_task_set} \tab Deletes a specified task set within a service \cr
#'  \link[=ecs_deregister_container_instance]{deregister_container_instance} \tab Deregisters an Amazon ECS container instance from the specified cluster \cr
#'  \link[=ecs_deregister_task_definition]{deregister_task_definition} \tab Deregisters the specified task definition by family and revision \cr
#'  \link[=ecs_describe_clusters]{describe_clusters} \tab Describes one or more of your clusters \cr
#'  \link[=ecs_describe_container_instances]{describe_container_instances} \tab Describes Amazon Elastic Container Service container instances \cr
#'  \link[=ecs_describe_services]{describe_services} \tab Describes the specified services running in your cluster \cr
#'  \link[=ecs_describe_task_definition]{describe_task_definition} \tab Describes a task definition \cr
#'  \link[=ecs_describe_task_sets]{describe_task_sets} \tab Describes the task sets in the specified cluster and service \cr
#'  \link[=ecs_describe_tasks]{describe_tasks} \tab Describes a specified task or tasks \cr
#'  \link[=ecs_discover_poll_endpoint]{discover_poll_endpoint} \tab This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent \cr
#'  \link[=ecs_list_account_settings]{list_account_settings} \tab Lists the account settings for an Amazon ECS resource for a specified principal \cr
#'  \link[=ecs_list_attributes]{list_attributes} \tab Lists the attributes for Amazon ECS resources within a specified target type and cluster \cr
#'  \link[=ecs_list_clusters]{list_clusters} \tab Returns a list of existing clusters \cr
#'  \link[=ecs_list_container_instances]{list_container_instances} \tab Returns a list of container instances in a specified cluster \cr
#'  \link[=ecs_list_services]{list_services} \tab Lists the services that are running in a specified cluster \cr
#'  \link[=ecs_list_tags_for_resource]{list_tags_for_resource} \tab List the tags for an Amazon ECS resource \cr
#'  \link[=ecs_list_task_definition_families]{list_task_definition_families} \tab Returns a list of task definition families that are registered to your account (which may include task definition families that no longer have any ACTIVE task definition revisions)\cr
#'  \link[=ecs_list_task_definitions]{list_task_definitions} \tab Returns a list of task definitions that are registered to your account \cr
#'  \link[=ecs_list_tasks]{list_tasks} \tab Returns a list of tasks for a specified cluster \cr
#'  \link[=ecs_put_account_setting]{put_account_setting} \tab Modifies the ARN and resource ID format of a resource type for a specified IAM user, IAM role, or the root user for an account \cr
#'  \link[=ecs_put_account_setting_default]{put_account_setting_default} \tab Modifies the ARN and resource ID format of a resource type for all IAM users on an account for which no individual account setting has been set \cr
#'  \link[=ecs_put_attributes]{put_attributes} \tab Create or update an attribute on an Amazon ECS resource \cr
#'  \link[=ecs_register_container_instance]{register_container_instance} \tab This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent \cr
#'  \link[=ecs_register_task_definition]{register_task_definition} \tab Registers a new task definition from the supplied family and containerDefinitions \cr
#'  \link[=ecs_run_task]{run_task} \tab Starts a new task using the specified task definition \cr
#'  \link[=ecs_start_task]{start_task} \tab Starts a new task from the specified task definition on the specified container instance or instances \cr
#'  \link[=ecs_stop_task]{stop_task} \tab Stops a running task \cr
#'  \link[=ecs_submit_container_state_change]{submit_container_state_change} \tab This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent \cr
#'  \link[=ecs_submit_task_state_change]{submit_task_state_change} \tab This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent \cr
#'  \link[=ecs_tag_resource]{tag_resource} \tab Associates the specified tags to a resource with the specified resourceArn \cr
#'  \link[=ecs_untag_resource]{untag_resource} \tab Deletes specified tags from a resource \cr
#'  \link[=ecs_update_container_agent]{update_container_agent} \tab Updates the Amazon ECS container agent on a specified container instance \cr
#'  \link[=ecs_update_container_instances_state]{update_container_instances_state} \tab Modifies the status of an Amazon ECS container instance \cr
#'  \link[=ecs_update_service]{update_service} \tab Modifies the parameters of a service \cr
#'  \link[=ecs_update_service_primary_task_set]{update_service_primary_task_set} \tab Modifies which task set in a service is the primary task set \cr
#'  \link[=ecs_update_task_set]{update_task_set} \tab Modifies a task set 
#' }
#'
#' @rdname ecs
#' @export
ecs <- function() {
  paws.compute::ecs()
}

#' Amazon Elastic Container Service for Kubernetes
#'
#' @description
#' Amazon Elastic Container Service for Kubernetes (Amazon EKS) is a
#' managed service that makes it easy for you to run Kubernetes on AWS
#' without needing to stand up or maintain your own Kubernetes control
#' plane. Kubernetes is an open-source system for automating the
#' deployment, scaling, and management of containerized applications.
#' 
#' Amazon EKS runs up-to-date versions of the open-source Kubernetes
#' software, so you can use all the existing plugins and tooling from the
#' Kubernetes community. Applications running on Amazon EKS are fully
#' compatible with applications running on any standard Kubernetes
#' environment, whether running in on-premises data centers or public
#' clouds. This means that you can easily migrate any standard Kubernetes
#' application to Amazon EKS without any code modification required.
#'
#' @examples
#' # The following example creates an Amazon EKS cluster called prod.
#' \donttest{svc <- eks()
#' svc$create_cluster(
#'   version = "1.10",
#'   name = "prod",
#'   clientRequestToken = "1d2129a1-3d38-460a-9756-e5b91fddb951",
#'   resourcesVpcConfig = list(
#'     securityGroupIds = list(
#'       "sg-6979fe18"
#'     ),
#'     subnetIds = list(
#'       "subnet-6782e71e",
#'       "subnet-e7e761ac"
#'     )
#'   ),
#'   roleArn = "arn:aws:iam::012345678910:role/eks-service-role-AWSServiceRoleForAmazonEKS-J7ON..."
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=eks_create_cluster]{create_cluster} \tab Creates an Amazon EKS control plane \cr
#'  \link[=eks_delete_cluster]{delete_cluster} \tab Deletes the Amazon EKS cluster control plane \cr
#'  \link[=eks_describe_cluster]{describe_cluster} \tab Returns descriptive information about an Amazon EKS cluster \cr
#'  \link[=eks_describe_update]{describe_update} \tab Returns descriptive information about an update against your Amazon EKS cluster \cr
#'  \link[=eks_list_clusters]{list_clusters} \tab Lists the Amazon EKS clusters in your AWS account in the specified Region \cr
#'  \link[=eks_list_updates]{list_updates} \tab Lists the updates associated with an Amazon EKS cluster in your AWS account, in the specified Region\cr
#'  \link[=eks_update_cluster_config]{update_cluster_config} \tab Updates an Amazon EKS cluster configuration \cr
#'  \link[=eks_update_cluster_version]{update_cluster_version} \tab Updates an Amazon EKS cluster to the specified Kubernetes version 
#' }
#'
#' @rdname eks
#' @export
eks <- function() {
  paws.compute::eks()
}

#' AWS Elastic Beanstalk
#'
#' @description
#' AWS Elastic Beanstalk makes it easy for you to create, deploy, and
#' manage scalable, fault-tolerant applications running on the Amazon Web
#' Services cloud.
#' 
#' For more information about this product, go to the [AWS Elastic
#' Beanstalk](http://aws.amazon.com/elasticbeanstalk/) details page. The
#' location of the latest AWS Elastic Beanstalk WSDL is
#' <http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl>.
#' To install the Software Development Kits (SDKs), Integrated Development
#' Environment (IDE) Toolkits, and command line tools that enable you to
#' access the API, go to [Tools for Amazon Web
#' Services](http://aws.amazon.com/tools/).
#' 
#' **Endpoints**
#' 
#' For a list of region-specific endpoints that AWS Elastic Beanstalk
#' supports, go to [Regions and
#' Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region)
#' in the *Amazon Web Services Glossary*.
#'
#' @examples
#' # The following code aborts a running application version deployment for
#' # an environment named my-env:
#' \donttest{svc <- elasticbeanstalk()
#' svc$abort_environment_update(
#'   EnvironmentName = "my-env"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=elasticbeanstalk_abort_environment_update]{abort_environment_update} \tab Cancels in-progress environment configuration update or application version deployment \cr
#'  \link[=elasticbeanstalk_apply_environment_managed_action]{apply_environment_managed_action} \tab Applies a scheduled managed action immediately \cr
#'  \link[=elasticbeanstalk_check_dns_availability]{check_dns_availability} \tab Checks if the specified CNAME is available \cr
#'  \link[=elasticbeanstalk_compose_environments]{compose_environments} \tab Create or update a group of environments that each run a separate component of a single application \cr
#'  \link[=elasticbeanstalk_create_application]{create_application} \tab Creates an application that has one configuration template named default and no application versions \cr
#'  \link[=elasticbeanstalk_create_application_version]{create_application_version} \tab Creates an application version for the specified application \cr
#'  \link[=elasticbeanstalk_create_configuration_template]{create_configuration_template} \tab Creates a configuration template \cr
#'  \link[=elasticbeanstalk_create_environment]{create_environment} \tab Launches an environment for the specified application using the specified configuration \cr
#'  \link[=elasticbeanstalk_create_platform_version]{create_platform_version} \tab Create a new version of your custom platform \cr
#'  \link[=elasticbeanstalk_create_storage_location]{create_storage_location} \tab Creates a bucket in Amazon S3 to store application versions, logs, and other files used by Elastic Beanstalk environments \cr
#'  \link[=elasticbeanstalk_delete_application]{delete_application} \tab Deletes the specified application along with all associated versions and configurations \cr
#'  \link[=elasticbeanstalk_delete_application_version]{delete_application_version} \tab Deletes the specified version from the specified application \cr
#'  \link[=elasticbeanstalk_delete_configuration_template]{delete_configuration_template} \tab Deletes the specified configuration template \cr
#'  \link[=elasticbeanstalk_delete_environment_configuration]{delete_environment_configuration} \tab Deletes the draft configuration associated with the running environment \cr
#'  \link[=elasticbeanstalk_delete_platform_version]{delete_platform_version} \tab Deletes the specified version of a custom platform \cr
#'  \link[=elasticbeanstalk_describe_account_attributes]{describe_account_attributes} \tab Returns attributes related to AWS Elastic Beanstalk that are associated with the calling AWS account \cr
#'  \link[=elasticbeanstalk_describe_application_versions]{describe_application_versions} \tab Retrieve a list of application versions \cr
#'  \link[=elasticbeanstalk_describe_applications]{describe_applications} \tab Returns the descriptions of existing applications \cr
#'  \link[=elasticbeanstalk_describe_configuration_options]{describe_configuration_options} \tab Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines \cr
#'  \link[=elasticbeanstalk_describe_configuration_settings]{describe_configuration_settings} \tab Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment \cr
#'  \link[=elasticbeanstalk_describe_environment_health]{describe_environment_health} \tab Returns information about the overall health of the specified environment \cr
#'  \link[=elasticbeanstalk_describe_environment_managed_action_history]{describe_environment_managed_action_history} \tab Lists an environment's completed and failed managed actions \cr
#'  \link[=elasticbeanstalk_describe_environment_managed_actions]{describe_environment_managed_actions} \tab Lists an environment's upcoming and in-progress managed actions \cr
#'  \link[=elasticbeanstalk_describe_environment_resources]{describe_environment_resources} \tab Returns AWS resources for this environment \cr
#'  \link[=elasticbeanstalk_describe_environments]{describe_environments} \tab Returns descriptions for existing environments \cr
#'  \link[=elasticbeanstalk_describe_events]{describe_events} \tab Returns list of event descriptions matching criteria up to the last 6 weeks \cr
#'  \link[=elasticbeanstalk_describe_instances_health]{describe_instances_health} \tab Retrieves detailed information about the health of instances in your AWS Elastic Beanstalk \cr
#'  \link[=elasticbeanstalk_describe_platform_version]{describe_platform_version} \tab Describes the version of the platform \cr
#'  \link[=elasticbeanstalk_list_available_solution_stacks]{list_available_solution_stacks} \tab Returns a list of the available solution stack names, with the public version first and then in reverse chronological order \cr
#'  \link[=elasticbeanstalk_list_platform_versions]{list_platform_versions} \tab Lists the available platforms \cr
#'  \link[=elasticbeanstalk_list_tags_for_resource]{list_tags_for_resource} \tab Returns the tags applied to an AWS Elastic Beanstalk resource \cr
#'  \link[=elasticbeanstalk_rebuild_environment]{rebuild_environment} \tab Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc \cr
#'  \link[=elasticbeanstalk_request_environment_info]{request_environment_info} \tab Initiates a request to compile the specified type of information of the deployed environment \cr
#'  \link[=elasticbeanstalk_restart_app_server]{restart_app_server} \tab Causes the environment to restart the application container server running on each Amazon EC2 instance \cr
#'  \link[=elasticbeanstalk_retrieve_environment_info]{retrieve_environment_info} \tab Retrieves the compiled information from a RequestEnvironmentInfo request \cr
#'  \link[=elasticbeanstalk_swap_environment_cnam_es]{swap_environment_cnam_es} \tab Swaps the CNAMEs of two environments \cr
#'  \link[=elasticbeanstalk_terminate_environment]{terminate_environment} \tab Terminates the specified environment \cr
#'  \link[=elasticbeanstalk_update_application]{update_application} \tab Updates the specified application to have the specified properties \cr
#'  \link[=elasticbeanstalk_update_application_resource_lifecycle]{update_application_resource_lifecycle} \tab Modifies lifecycle settings for an application \cr
#'  \link[=elasticbeanstalk_update_application_version]{update_application_version} \tab Updates the specified application version to have the specified properties \cr
#'  \link[=elasticbeanstalk_update_configuration_template]{update_configuration_template} \tab Updates the specified configuration template to have the specified properties or configuration option values \cr
#'  \link[=elasticbeanstalk_update_environment]{update_environment} \tab Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment\cr
#'  \link[=elasticbeanstalk_update_tags_for_resource]{update_tags_for_resource} \tab Update the list of tags applied to an AWS Elastic Beanstalk resource \cr
#'  \link[=elasticbeanstalk_validate_configuration_settings]{validate_configuration_settings} \tab Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid 
#' }
#'
#' @rdname elasticbeanstalk
#' @export
elasticbeanstalk <- function() {
  paws.compute::elasticbeanstalk()
}

#' AWS Lambda
#'
#' @description
#' **Overview**
#' 
#' This is the *AWS Lambda API Reference*. The AWS Lambda Developer Guide
#' provides additional information. For the service overview, see [What is
#' AWS Lambda](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html),
#' and for information about how the service works, see [AWS Lambda: How it
#' Works](https://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html)
#' in the **AWS Lambda Developer Guide**.
#'
#' @examples
#' # This example adds a permission for an S3 bucket to invoke a Lambda
#' # function.
#' \donttest{svc <- lambda()
#' svc$add_permission(
#'   Action = "lambda:InvokeFunction",
#'   FunctionName = "MyFunction",
#'   Principal = "s3.amazonaws.com",
#'   SourceAccount = "123456789012",
#'   SourceArn = "arn:aws:s3:::examplebucket/*",
#'   StatementId = "ID-1"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=lambda_add_layer_version_permission]{add_layer_version_permission} \tab Adds permissions to the resource-based policy of a version of an AWS Lambda layer \cr
#'  \link[=lambda_add_permission]{add_permission} \tab Grants an AWS service or another account permission to use a function \cr
#'  \link[=lambda_create_alias]{create_alias} \tab Creates an alias for a Lambda function version \cr
#'  \link[=lambda_create_event_source_mapping]{create_event_source_mapping} \tab Creates a mapping between an event source and an AWS Lambda function \cr
#'  \link[=lambda_create_function]{create_function} \tab Creates a Lambda function \cr
#'  \link[=lambda_delete_alias]{delete_alias} \tab Deletes a Lambda function alias \cr
#'  \link[=lambda_delete_event_source_mapping]{delete_event_source_mapping} \tab Deletes an event source mapping \cr
#'  \link[=lambda_delete_function]{delete_function} \tab Deletes a Lambda function \cr
#'  \link[=lambda_delete_function_concurrency]{delete_function_concurrency} \tab Removes a concurrent execution limit from a function \cr
#'  \link[=lambda_delete_layer_version]{delete_layer_version} \tab Deletes a version of an AWS Lambda layer \cr
#'  \link[=lambda_get_account_settings]{get_account_settings} \tab Retrieves details about your account's limits and usage in an AWS Region \cr
#'  \link[=lambda_get_alias]{get_alias} \tab Returns details about a Lambda function alias \cr
#'  \link[=lambda_get_event_source_mapping]{get_event_source_mapping} \tab Returns details about an event source mapping \cr
#'  \link[=lambda_get_function]{get_function} \tab Returns information about the function or function version, with a link to download the deployment package that's valid for 10 minutes\cr
#'  \link[=lambda_get_function_configuration]{get_function_configuration} \tab Returns the version-specific settings of a Lambda function or version \cr
#'  \link[=lambda_get_layer_version]{get_layer_version} \tab Returns information about a version of an AWS Lambda layer, with a link to download the layer archive that's valid for 10 minutes \cr
#'  \link[=lambda_get_layer_version_policy]{get_layer_version_policy} \tab Returns the permission policy for a version of an AWS Lambda layer \cr
#'  \link[=lambda_get_policy]{get_policy} \tab Returns the resource-based IAM policy for a function, version, or alias \cr
#'  \link[=lambda_invoke]{invoke} \tab Invokes a Lambda function \cr
#'  \link[=lambda_invoke_async]{invoke_async} \tab For asynchronous function invocation, use Invoke \cr
#'  \link[=lambda_list_aliases]{list_aliases} \tab Returns a list of aliases for a Lambda function \cr
#'  \link[=lambda_list_event_source_mappings]{list_event_source_mappings} \tab Lists event source mappings \cr
#'  \link[=lambda_list_functions]{list_functions} \tab Returns a list of Lambda functions, with the version-specific configuration of each \cr
#'  \link[=lambda_list_layer_versions]{list_layer_versions} \tab Lists the versions of an AWS Lambda layer \cr
#'  \link[=lambda_list_layers]{list_layers} \tab Lists AWS Lambda layers and shows information about the latest version of each \cr
#'  \link[=lambda_list_tags]{list_tags} \tab Returns a function's tags \cr
#'  \link[=lambda_list_versions_by_function]{list_versions_by_function} \tab Returns a list of versions, with the version-specific configuration of each \cr
#'  \link[=lambda_publish_layer_version]{publish_layer_version} \tab Creates an AWS Lambda layer from a ZIP archive \cr
#'  \link[=lambda_publish_version]{publish_version} \tab Creates a version from the current code and configuration of a function \cr
#'  \link[=lambda_put_function_concurrency]{put_function_concurrency} \tab Sets the maximum number of simultaneous executions for a function, and reserves capacity for that concurrency level \cr
#'  \link[=lambda_remove_layer_version_permission]{remove_layer_version_permission} \tab Removes a statement from the permissions policy for a version of an AWS Lambda layer \cr
#'  \link[=lambda_remove_permission]{remove_permission} \tab Revokes function-use permission from an AWS service or another account \cr
#'  \link[=lambda_tag_resource]{tag_resource} \tab Adds tags to a function \cr
#'  \link[=lambda_untag_resource]{untag_resource} \tab Removes tags from a function \cr
#'  \link[=lambda_update_alias]{update_alias} \tab Updates the configuration of a Lambda function alias \cr
#'  \link[=lambda_update_event_source_mapping]{update_event_source_mapping} \tab Updates an event source mapping \cr
#'  \link[=lambda_update_function_code]{update_function_code} \tab Updates a Lambda function's code \cr
#'  \link[=lambda_update_function_configuration]{update_function_configuration} \tab Modify the version-specifc settings of a Lambda function 
#' }
#'
#' @rdname lambda
#' @export
lambda <- function() {
  paws.compute::lambda()
}

#' Amazon Lightsail
#'
#' @description
#' Amazon Lightsail is the easiest way to get started with AWS for
#' developers who just need virtual private servers. Lightsail includes
#' everything you need to launch your project quickly - a virtual machine,
#' a managed database, SSD-based storage, data transfer, DNS management,
#' and a static IP - for a low, predictable price. You manage those
#' Lightsail servers through the Lightsail console or by using the API or
#' command-line interface (CLI).
#' 
#' For more information about Lightsail concepts and tasks, see the
#' [Lightsail Dev Guide](https://lightsail.aws.amazon.com/ls/docs/all).
#' 
#' To use the Lightsail API or the CLI, you will need to use AWS Identity
#' and Access Management (IAM) to generate access keys. For details about
#' how to set this up, see the [Lightsail Dev
#' Guide](http://lightsail.aws.amazon.com/ls/docs/how-to/article/lightsail-how-to-set-up-access-keys-to-use-sdk-api-cli).
#'
#' @examples
#' \donttest{svc <- lightsail()
#' svc$allocate_static_ip(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=lightsail_allocate_static_ip]{allocate_static_ip} \tab Allocates a static IP address \cr
#'  \link[=lightsail_attach_disk]{attach_disk} \tab Attaches a block storage disk to a running or stopped Lightsail instance and exposes it to the instance with the specified disk name \cr
#'  \link[=lightsail_attach_instances_to_load_balancer]{attach_instances_to_load_balancer} \tab Attaches one or more Lightsail instances to a load balancer \cr
#'  \link[=lightsail_attach_load_balancer_tls_certificate]{attach_load_balancer_tls_certificate} \tab Attaches a Transport Layer Security (TLS) certificate to your load balancer \cr
#'  \link[=lightsail_attach_static_ip]{attach_static_ip} \tab Attaches a static IP address to a specific Amazon Lightsail instance \cr
#'  \link[=lightsail_close_instance_public_ports]{close_instance_public_ports} \tab Closes the public ports on a specific Amazon Lightsail instance \cr
#'  \link[=lightsail_copy_snapshot]{copy_snapshot} \tab Copies an instance or disk snapshot from one AWS Region to another in Amazon Lightsail \cr
#'  \link[=lightsail_create_cloud_formation_stack]{create_cloud_formation_stack} \tab Creates an AWS CloudFormation stack, which creates a new Amazon EC2 instance from an exported Amazon Lightsail snapshot \cr
#'  \link[=lightsail_create_disk]{create_disk} \tab Creates a block storage disk that can be attached to a Lightsail instance in the same Availability Zone (e \cr
#'  \link[=lightsail_create_disk_from_snapshot]{create_disk_from_snapshot} \tab Creates a block storage disk from a disk snapshot that can be attached to a Lightsail instance in the same Availability Zone (e \cr
#'  \link[=lightsail_create_disk_snapshot]{create_disk_snapshot} \tab Creates a snapshot of a block storage disk \cr
#'  \link[=lightsail_create_domain]{create_domain} \tab Creates a domain resource for the specified domain (e \cr
#'  \link[=lightsail_create_domain_entry]{create_domain_entry} \tab Creates one of the following entry records associated with the domain: Address (A), canonical name (CNAME), mail exchanger (MX), name server (NS), start of authority (SOA), service locator (SRV), or text (TXT)\cr
#'  \link[=lightsail_create_instance_snapshot]{create_instance_snapshot} \tab Creates a snapshot of a specific virtual private server, or _instance_ \cr
#'  \link[=lightsail_create_instances]{create_instances} \tab Creates one or more Amazon Lightsail virtual private servers, or _instances_ \cr
#'  \link[=lightsail_create_instances_from_snapshot]{create_instances_from_snapshot} \tab Uses a specific snapshot as a blueprint for creating one or more new instances that are based on that identical configuration \cr
#'  \link[=lightsail_create_key_pair]{create_key_pair} \tab Creates an SSH key pair \cr
#'  \link[=lightsail_create_load_balancer]{create_load_balancer} \tab Creates a Lightsail load balancer \cr
#'  \link[=lightsail_create_load_balancer_tls_certificate]{create_load_balancer_tls_certificate} \tab Creates a Lightsail load balancer TLS certificate \cr
#'  \link[=lightsail_create_relational_database]{create_relational_database} \tab Creates a new database in Amazon Lightsail \cr
#'  \link[=lightsail_create_relational_database_from_snapshot]{create_relational_database_from_snapshot} \tab Creates a new database from an existing database snapshot in Amazon Lightsail \cr
#'  \link[=lightsail_create_relational_database_snapshot]{create_relational_database_snapshot} \tab Creates a snapshot of your database in Amazon Lightsail \cr
#'  \link[=lightsail_delete_disk]{delete_disk} \tab Deletes the specified block storage disk \cr
#'  \link[=lightsail_delete_disk_snapshot]{delete_disk_snapshot} \tab Deletes the specified disk snapshot \cr
#'  \link[=lightsail_delete_domain]{delete_domain} \tab Deletes the specified domain recordset and all of its domain records \cr
#'  \link[=lightsail_delete_domain_entry]{delete_domain_entry} \tab Deletes a specific domain entry \cr
#'  \link[=lightsail_delete_instance]{delete_instance} \tab Deletes a specific Amazon Lightsail virtual private server, or _instance_ \cr
#'  \link[=lightsail_delete_instance_snapshot]{delete_instance_snapshot} \tab Deletes a specific snapshot of a virtual private server (or _instance_) \cr
#'  \link[=lightsail_delete_key_pair]{delete_key_pair} \tab Deletes a specific SSH key pair \cr
#'  \link[=lightsail_delete_known_host_keys]{delete_known_host_keys} \tab Deletes the known host key or certificate used by the Amazon Lightsail browser-based SSH or RDP clients to authenticate an instance \cr
#'  \link[=lightsail_delete_load_balancer]{delete_load_balancer} \tab Deletes a Lightsail load balancer and all its associated SSL/TLS certificates \cr
#'  \link[=lightsail_delete_load_balancer_tls_certificate]{delete_load_balancer_tls_certificate} \tab Deletes an SSL/TLS certificate associated with a Lightsail load balancer \cr
#'  \link[=lightsail_delete_relational_database]{delete_relational_database} \tab Deletes a database in Amazon Lightsail \cr
#'  \link[=lightsail_delete_relational_database_snapshot]{delete_relational_database_snapshot} \tab Deletes a database snapshot in Amazon Lightsail \cr
#'  \link[=lightsail_detach_disk]{detach_disk} \tab Detaches a stopped block storage disk from a Lightsail instance \cr
#'  \link[=lightsail_detach_instances_from_load_balancer]{detach_instances_from_load_balancer} \tab Detaches the specified instances from a Lightsail load balancer \cr
#'  \link[=lightsail_detach_static_ip]{detach_static_ip} \tab Detaches a static IP from the Amazon Lightsail instance to which it is attached \cr
#'  \link[=lightsail_download_default_key_pair]{download_default_key_pair} \tab Downloads the default SSH key pair from the user's account \cr
#'  \link[=lightsail_export_snapshot]{export_snapshot} \tab Exports an Amazon Lightsail instance or block storage disk snapshot to Amazon Elastic Compute Cloud (Amazon EC2) \cr
#'  \link[=lightsail_get_active_names]{get_active_names} \tab Returns the names of all active (not deleted) resources \cr
#'  \link[=lightsail_get_blueprints]{get_blueprints} \tab Returns the list of available instance images, or _blueprints_ \cr
#'  \link[=lightsail_get_bundles]{get_bundles} \tab Returns the list of bundles that are available for purchase \cr
#'  \link[=lightsail_get_cloud_formation_stack_records]{get_cloud_formation_stack_records} \tab Returns the CloudFormation stack record created as a result of the create cloud formation stack operation \cr
#'  \link[=lightsail_get_disk]{get_disk} \tab Returns information about a specific block storage disk \cr
#'  \link[=lightsail_get_disk_snapshot]{get_disk_snapshot} \tab Returns information about a specific block storage disk snapshot \cr
#'  \link[=lightsail_get_disk_snapshots]{get_disk_snapshots} \tab Returns information about all block storage disk snapshots in your AWS account and region \cr
#'  \link[=lightsail_get_disks]{get_disks} \tab Returns information about all block storage disks in your AWS account and region \cr
#'  \link[=lightsail_get_domain]{get_domain} \tab Returns information about a specific domain recordset \cr
#'  \link[=lightsail_get_domains]{get_domains} \tab Returns a list of all domains in the user's account \cr
#'  \link[=lightsail_get_export_snapshot_records]{get_export_snapshot_records} \tab Returns the export snapshot record created as a result of the export snapshot operation \cr
#'  \link[=lightsail_get_instance]{get_instance} \tab Returns information about a specific Amazon Lightsail instance, which is a virtual private server \cr
#'  \link[=lightsail_get_instance_access_details]{get_instance_access_details} \tab Returns temporary SSH keys you can use to connect to a specific virtual private server, or _instance_ \cr
#'  \link[=lightsail_get_instance_metric_data]{get_instance_metric_data} \tab Returns the data points for the specified Amazon Lightsail instance metric, given an instance name \cr
#'  \link[=lightsail_get_instance_port_states]{get_instance_port_states} \tab Returns the port states for a specific virtual private server, or _instance_ \cr
#'  \link[=lightsail_get_instance_snapshot]{get_instance_snapshot} \tab Returns information about a specific instance snapshot \cr
#'  \link[=lightsail_get_instance_snapshots]{get_instance_snapshots} \tab Returns all instance snapshots for the user's account \cr
#'  \link[=lightsail_get_instance_state]{get_instance_state} \tab Returns the state of a specific instance \cr
#'  \link[=lightsail_get_instances]{get_instances} \tab Returns information about all Amazon Lightsail virtual private servers, or _instances_ \cr
#'  \link[=lightsail_get_key_pair]{get_key_pair} \tab Returns information about a specific key pair \cr
#'  \link[=lightsail_get_key_pairs]{get_key_pairs} \tab Returns information about all key pairs in the user's account \cr
#'  \link[=lightsail_get_load_balancer]{get_load_balancer} \tab Returns information about the specified Lightsail load balancer \cr
#'  \link[=lightsail_get_load_balancer_metric_data]{get_load_balancer_metric_data} \tab Returns information about health metrics for your Lightsail load balancer \cr
#'  \link[=lightsail_get_load_balancer_tls_certificates]{get_load_balancer_tls_certificates} \tab Returns information about the TLS certificates that are associated with the specified Lightsail load balancer \cr
#'  \link[=lightsail_get_load_balancers]{get_load_balancers} \tab Returns information about all load balancers in an account \cr
#'  \link[=lightsail_get_operation]{get_operation} \tab Returns information about a specific operation \cr
#'  \link[=lightsail_get_operations]{get_operations} \tab Returns information about all operations \cr
#'  \link[=lightsail_get_operations_for_resource]{get_operations_for_resource} \tab Gets operations for a specific resource (e \cr
#'  \link[=lightsail_get_regions]{get_regions} \tab Returns a list of all valid regions for Amazon Lightsail \cr
#'  \link[=lightsail_get_relational_database]{get_relational_database} \tab Returns information about a specific database in Amazon Lightsail \cr
#'  \link[=lightsail_get_relational_database_blueprints]{get_relational_database_blueprints} \tab Returns a list of available database blueprints in Amazon Lightsail \cr
#'  \link[=lightsail_get_relational_database_bundles]{get_relational_database_bundles} \tab Returns the list of bundles that are available in Amazon Lightsail \cr
#'  \link[=lightsail_get_relational_database_events]{get_relational_database_events} \tab Returns a list of events for a specific database in Amazon Lightsail \cr
#'  \link[=lightsail_get_relational_database_log_events]{get_relational_database_log_events} \tab Returns a list of log events for a database in Amazon Lightsail \cr
#'  \link[=lightsail_get_relational_database_log_streams]{get_relational_database_log_streams} \tab Returns a list of available log streams for a specific database in Amazon Lightsail \cr
#'  \link[=lightsail_get_relational_database_master_user_password]{get_relational_database_master_user_password} \tab Returns the current, previous, or pending versions of the master user password for a Lightsail database \cr
#'  \link[=lightsail_get_relational_database_metric_data]{get_relational_database_metric_data} \tab Returns the data points of the specified metric for a database in Amazon Lightsail \cr
#'  \link[=lightsail_get_relational_database_parameters]{get_relational_database_parameters} \tab Returns all of the runtime parameters offered by the underlying database software, or engine, for a specific database in Amazon Lightsail \cr
#'  \link[=lightsail_get_relational_database_snapshot]{get_relational_database_snapshot} \tab Returns information about a specific database snapshot in Amazon Lightsail \cr
#'  \link[=lightsail_get_relational_database_snapshots]{get_relational_database_snapshots} \tab Returns information about all of your database snapshots in Amazon Lightsail \cr
#'  \link[=lightsail_get_relational_databases]{get_relational_databases} \tab Returns information about all of your databases in Amazon Lightsail \cr
#'  \link[=lightsail_get_static_ip]{get_static_ip} \tab Returns information about a specific static IP \cr
#'  \link[=lightsail_get_static_ips]{get_static_ips} \tab Returns information about all static IPs in the user's account \cr
#'  \link[=lightsail_import_key_pair]{import_key_pair} \tab Imports a public SSH key from a specific key pair \cr
#'  \link[=lightsail_is_vpc_peered]{is_vpc_peered} \tab Returns a Boolean value indicating whether your Lightsail VPC is peered \cr
#'  \link[=lightsail_open_instance_public_ports]{open_instance_public_ports} \tab Adds public ports to an Amazon Lightsail instance \cr
#'  \link[=lightsail_peer_vpc]{peer_vpc} \tab Tries to peer the Lightsail VPC with the user's default VPC \cr
#'  \link[=lightsail_put_instance_public_ports]{put_instance_public_ports} \tab Sets the specified open ports for an Amazon Lightsail instance, and closes all ports for every protocol not included in the current request \cr
#'  \link[=lightsail_reboot_instance]{reboot_instance} \tab Restarts a specific instance \cr
#'  \link[=lightsail_reboot_relational_database]{reboot_relational_database} \tab Restarts a specific database in Amazon Lightsail \cr
#'  \link[=lightsail_release_static_ip]{release_static_ip} \tab Deletes a specific static IP from your account \cr
#'  \link[=lightsail_start_instance]{start_instance} \tab Starts a specific Amazon Lightsail instance from a stopped state \cr
#'  \link[=lightsail_start_relational_database]{start_relational_database} \tab Starts a specific database from a stopped state in Amazon Lightsail \cr
#'  \link[=lightsail_stop_instance]{stop_instance} \tab Stops a specific Amazon Lightsail instance that is currently running \cr
#'  \link[=lightsail_stop_relational_database]{stop_relational_database} \tab Stops a specific database that is currently running in Amazon Lightsail \cr
#'  \link[=lightsail_tag_resource]{tag_resource} \tab Adds one or more tags to the specified Amazon Lightsail resource \cr
#'  \link[=lightsail_unpeer_vpc]{unpeer_vpc} \tab Attempts to unpeer the Lightsail VPC from the user's default VPC \cr
#'  \link[=lightsail_untag_resource]{untag_resource} \tab Deletes the specified set of tag keys and their values from the specified Amazon Lightsail resource \cr
#'  \link[=lightsail_update_domain_entry]{update_domain_entry} \tab Updates a domain recordset after it is created \cr
#'  \link[=lightsail_update_load_balancer_attribute]{update_load_balancer_attribute} \tab Updates the specified attribute for a load balancer \cr
#'  \link[=lightsail_update_relational_database]{update_relational_database} \tab Allows the update of one or more attributes of a database in Amazon Lightsail \cr
#'  \link[=lightsail_update_relational_database_parameters]{update_relational_database_parameters} \tab Allows the update of one or more parameters of a database in Amazon Lightsail 
#' }
#'
#' @rdname lightsail
#' @export
lightsail <- function() {
  paws.compute::lightsail()
}

#' AWSServerlessApplicationRepository
#'
#' @description
#' The AWS Serverless Application Repository makes it easy for developers
#' and enterprises to quickly find and deploy serverless applications in
#' the AWS Cloud. For more information about serverless applications, see
#' Serverless Computing and Applications on the AWS website.
#' 
#' The AWS Serverless Application Repository is deeply integrated with the
#' AWS Lambda console, so that developers of all levels can get started
#' with serverless computing without needing to learn anything new. You can
#' use category keywords to browse for applications such as web and mobile
#' backends, data processing applications, or chatbots. You can also search
#' for applications by name, publisher, or event source. To use an
#' application, you simply choose it, configure any required fields, and
#' deploy it with a few clicks.
#' 
#' You can also easily publish applications, sharing them publicly with the
#' community at large, or privately within your team or across your
#' organization. To publish a serverless application (or app), you can use
#' the AWS Management Console, AWS Command Line Interface (AWS CLI), or AWS
#' SDKs to upload the code. Along with the code, you upload a simple
#' manifest file, also known as the AWS Serverless Application Model (AWS
#' SAM) template. For more information about AWS SAM, see AWS Serverless
#' Application Model (AWS SAM) on the AWS Labs GitHub repository.
#' 
#' The AWS Serverless Application Repository Developer Guide contains more
#' information about the two developer experiences available:
#' 
#' -   Consuming Applications -- Browse for applications and view
#'     information about them, including source code and readme files. Also
#'     install, configure, and deploy applications of your choosing.
#' 
#'     Publishing Applications -- Configure and upload applications to make
#'     them available to other developers, and publish new versions of
#'     applications.
#'
#' @examples
#' \donttest{svc <- serverlessapplicationrepository()
#' svc$create_application(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=serverlessapplicationrepository_create_application]{create_application} \tab Creates an application, optionally including an AWS SAM file to create the first application version in the same call\cr
#'  \link[=serverlessapplicationrepository_create_application_version]{create_application_version} \tab Creates an application version \cr
#'  \link[=serverlessapplicationrepository_create_cloud_formation_change_set]{create_cloud_formation_change_set} \tab Creates an AWS CloudFormation change set for the given application \cr
#'  \link[=serverlessapplicationrepository_create_cloud_formation_template]{create_cloud_formation_template} \tab Creates an AWS CloudFormation template \cr
#'  \link[=serverlessapplicationrepository_delete_application]{delete_application} \tab Deletes the specified application \cr
#'  \link[=serverlessapplicationrepository_get_application]{get_application} \tab Gets the specified application \cr
#'  \link[=serverlessapplicationrepository_get_application_policy]{get_application_policy} \tab Retrieves the policy for the application \cr
#'  \link[=serverlessapplicationrepository_get_cloud_formation_template]{get_cloud_formation_template} \tab Gets the specified AWS CloudFormation template \cr
#'  \link[=serverlessapplicationrepository_list_application_dependencies]{list_application_dependencies} \tab Retrieves the list of applications nested in the containing application \cr
#'  \link[=serverlessapplicationrepository_list_application_versions]{list_application_versions} \tab Lists versions for the specified application \cr
#'  \link[=serverlessapplicationrepository_list_applications]{list_applications} \tab Lists applications owned by the requester \cr
#'  \link[=serverlessapplicationrepository_put_application_policy]{put_application_policy} \tab Sets the permission policy for an application \cr
#'  \link[=serverlessapplicationrepository_update_application]{update_application} \tab Updates the specified application 
#' }
#'
#' @rdname serverlessapplicationrepository
#' @export
serverlessapplicationrepository <- function() {
  paws.compute::serverlessapplicationrepository()
}

#' AWS Backup
#'
#' @description
#' AWS Backup is a unified backup service designed to protect AWS services
#' and their associated data. AWS Backup simplifies the creation,
#' migration, restoration, and deletion of backups, while also providing
#' reporting and auditing.
#'
#' @examples
#' \donttest{svc <- backup()
#' svc$create_backup_plan(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=backup_create_backup_plan]{create_backup_plan} \tab Backup plans are documents that contain information that AWS Backup uses to schedule tasks that create recovery points of resources \cr
#'  \link[=backup_create_backup_selection]{create_backup_selection} \tab Creates a JSON document that specifies a set of resources to assign to a backup plan \cr
#'  \link[=backup_create_backup_vault]{create_backup_vault} \tab Creates a logical container where backups are stored \cr
#'  \link[=backup_delete_backup_plan]{delete_backup_plan} \tab Deletes a backup plan \cr
#'  \link[=backup_delete_backup_selection]{delete_backup_selection} \tab Deletes the resource selection associated with a backup plan that is specified by the SelectionId \cr
#'  \link[=backup_delete_backup_vault]{delete_backup_vault} \tab Deletes the backup vault identified by its name \cr
#'  \link[=backup_delete_backup_vault_access_policy]{delete_backup_vault_access_policy} \tab Deletes the policy document that manages permissions on a backup vault \cr
#'  \link[=backup_delete_backup_vault_notifications]{delete_backup_vault_notifications} \tab Deletes event notifications for the specified backup vault \cr
#'  \link[=backup_delete_recovery_point]{delete_recovery_point} \tab Deletes the recovery point specified by a recovery point ID \cr
#'  \link[=backup_describe_backup_job]{describe_backup_job} \tab Returns metadata associated with creating a backup of a resource \cr
#'  \link[=backup_describe_backup_vault]{describe_backup_vault} \tab Returns metadata about a backup vault specified by its name \cr
#'  \link[=backup_describe_protected_resource]{describe_protected_resource} \tab Returns information about a saved resource, including the last time it was backed-up, its Amazon Resource Name (ARN), and the AWS service type of the saved resource \cr
#'  \link[=backup_describe_recovery_point]{describe_recovery_point} \tab Returns metadata associated with a recovery point, including ID, status, encryption, and lifecycle \cr
#'  \link[=backup_describe_restore_job]{describe_restore_job} \tab Returns metadata associated with a restore job that is specified by a job ID \cr
#'  \link[=backup_export_backup_plan_template]{export_backup_plan_template} \tab Returns the backup plan that is specified by the plan ID as a backup template \cr
#'  \link[=backup_get_backup_plan]{get_backup_plan} \tab Returns the body of a backup plan in JSON format, in addition to plan metadata \cr
#'  \link[=backup_get_backup_plan_from_json]{get_backup_plan_from_json} \tab Returns a valid JSON document specifying a backup plan or an error \cr
#'  \link[=backup_get_backup_plan_from_template]{get_backup_plan_from_template} \tab Returns the template specified by its templateId as a backup plan \cr
#'  \link[=backup_get_backup_selection]{get_backup_selection} \tab Returns selection metadata and a document in JSON format that specifies a list of resources that are associated with a backup plan \cr
#'  \link[=backup_get_backup_vault_access_policy]{get_backup_vault_access_policy} \tab Returns the access policy document that is associated with the named backup vault \cr
#'  \link[=backup_get_backup_vault_notifications]{get_backup_vault_notifications} \tab Returns event notifications for the specified backup vault \cr
#'  \link[=backup_get_recovery_point_restore_metadata]{get_recovery_point_restore_metadata} \tab Returns two sets of metadata key-value pairs \cr
#'  \link[=backup_get_supported_resource_types]{get_supported_resource_types} \tab Returns the AWS resource types supported by AWS Backup \cr
#'  \link[=backup_list_backup_jobs]{list_backup_jobs} \tab Returns metadata about your backup jobs \cr
#'  \link[=backup_list_backup_plan_templates]{list_backup_plan_templates} \tab Returns metadata of your saved backup plan templates, including the template ID, name, and the creation and deletion dates \cr
#'  \link[=backup_list_backup_plan_versions]{list_backup_plan_versions} \tab Returns version metadata of your backup plans, including Amazon Resource Names (ARNs), backup plan IDs, creation and deletion dates, plan names, and version IDs \cr
#'  \link[=backup_list_backup_plans]{list_backup_plans} \tab Returns metadata of your saved backup plans, including Amazon Resource Names (ARNs), plan IDs, creation and deletion dates, version IDs, plan names, and creator request IDs \cr
#'  \link[=backup_list_backup_selections]{list_backup_selections} \tab Returns an array containing metadata of the resources associated with the target backup plan \cr
#'  \link[=backup_list_backup_vaults]{list_backup_vaults} \tab Returns a list of recovery point storage containers along with information about them \cr
#'  \link[=backup_list_protected_resources]{list_protected_resources} \tab Returns an array of resources successfully backed up by AWS Backup, including the time the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource type\cr
#'  \link[=backup_list_recovery_points_by_backup_vault]{list_recovery_points_by_backup_vault} \tab Returns detailed information about the recovery points stored in a backup vault \cr
#'  \link[=backup_list_recovery_points_by_resource]{list_recovery_points_by_resource} \tab Returns detailed information about recovery points of the type specified by a resource Amazon Resource Name (ARN) \cr
#'  \link[=backup_list_restore_jobs]{list_restore_jobs} \tab Returns a list of jobs that AWS Backup initiated to restore a saved resource, including metadata about the recovery process \cr
#'  \link[=backup_list_tags]{list_tags} \tab Returns a list of key-value pairs assigned to a target recovery point, backup plan, or backup vault \cr
#'  \link[=backup_put_backup_vault_access_policy]{put_backup_vault_access_policy} \tab Sets a resource-based policy that is used to manage access permissions on the target backup vault \cr
#'  \link[=backup_put_backup_vault_notifications]{put_backup_vault_notifications} \tab Turns on notifications on a backup vault for the specified topic and events \cr
#'  \link[=backup_start_backup_job]{start_backup_job} \tab Starts a job to create a one-time backup of the specified resource \cr
#'  \link[=backup_start_restore_job]{start_restore_job} \tab Recovers the saved resource identified by an Amazon Resource Name (ARN) \cr
#'  \link[=backup_stop_backup_job]{stop_backup_job} \tab Attempts to cancel a job to create a one-time backup of a resource \cr
#'  \link[=backup_tag_resource]{tag_resource} \tab Assigns a set of key-value pairs to a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN) \cr
#'  \link[=backup_untag_resource]{untag_resource} \tab Removes a set of key-value pairs from a recovery point, backup plan, or backup vault identified by an Amazon Resource Name (ARN) \cr
#'  \link[=backup_update_backup_plan]{update_backup_plan} \tab Replaces the body of a saved backup plan identified by its backupPlanId with the input document in JSON format \cr
#'  \link[=backup_update_recovery_point_lifecycle]{update_recovery_point_lifecycle} \tab Sets the transition lifecycle of a recovery point 
#' }
#'
#' @rdname backup
#' @export
backup <- function() {
  paws.storage::backup()
}

#' Amazon Data Lifecycle Manager
#'
#' @description
#' With Amazon Data Lifecycle Manager, you can manage the lifecycle of your
#' AWS resources. You create lifecycle policies, which are used to automate
#' operations on the specified resources.
#' 
#' Amazon DLM supports Amazon EBS volumes and snapshots. For information
#' about using Amazon DLM with Amazon EBS, see [Automating the Amazon EBS
#' Snapshot
#' Lifecycle](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-lifecycle.html)
#' in the *Amazon EC2 User Guide*.
#'
#' @examples
#' \donttest{svc <- dlm()
#' svc$create_lifecycle_policy(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=dlm_create_lifecycle_policy]{create_lifecycle_policy} \tab Creates a policy to manage the lifecycle of the specified AWS resources \cr
#'  \link[=dlm_delete_lifecycle_policy]{delete_lifecycle_policy} \tab Deletes the specified lifecycle policy and halts the automated operations that the policy specified\cr
#'  \link[=dlm_get_lifecycle_policies]{get_lifecycle_policies} \tab Gets summary information about all or the specified data lifecycle policies \cr
#'  \link[=dlm_get_lifecycle_policy]{get_lifecycle_policy} \tab Gets detailed information about the specified lifecycle policy \cr
#'  \link[=dlm_update_lifecycle_policy]{update_lifecycle_policy} \tab Updates the specified lifecycle policy 
#' }
#'
#' @rdname dlm
#' @export
dlm <- function() {
  paws.storage::dlm()
}

#' Amazon Elastic File System
#'
#' @description
#' Amazon Elastic File System (Amazon EFS) provides simple, scalable file
#' storage for use with Amazon EC2 instances in the AWS Cloud. With Amazon
#' EFS, storage capacity is elastic, growing and shrinking automatically as
#' you add and remove files, so your applications have the storage they
#' need, when they need it. For more information, see the [User
#' Guide](https://docs.aws.amazon.com/efs/latest/ug/api-reference.html).
#'
#' @examples
#' # This operation creates a new file system with the default generalpurpose
#' # performance mode.
#' \donttest{svc <- efs()
#' svc$create_file_system(
#'   CreationToken = "tokenstring",
#'   PerformanceMode = "generalPurpose",
#'   Tags = list(
#'     list(
#'       Key = "Name",
#'       Value = "MyFileSystem"
#'     )
#'   )
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=efs_create_file_system]{create_file_system} \tab Creates a new, empty file system \cr
#'  \link[=efs_create_mount_target]{create_mount_target} \tab Creates a mount target for a file system \cr
#'  \link[=efs_create_tags]{create_tags} \tab Creates or overwrites tags associated with a file system \cr
#'  \link[=efs_delete_file_system]{delete_file_system} \tab Deletes a file system, permanently severing access to its contents \cr
#'  \link[=efs_delete_mount_target]{delete_mount_target} \tab Deletes the specified mount target \cr
#'  \link[=efs_delete_tags]{delete_tags} \tab Deletes the specified tags from a file system \cr
#'  \link[=efs_describe_file_systems]{describe_file_systems} \tab Returns the description of a specific Amazon EFS file system if either the file system CreationToken or the FileSystemId is provided\cr
#'  \link[=efs_describe_lifecycle_configuration]{describe_lifecycle_configuration} \tab Returns the current LifecycleConfiguration object for the specified Amazon EFS file system \cr
#'  \link[=efs_describe_mount_target_security_groups]{describe_mount_target_security_groups} \tab Returns the security groups currently in effect for a mount target \cr
#'  \link[=efs_describe_mount_targets]{describe_mount_targets} \tab Returns the descriptions of all the current mount targets, or a specific mount target, for a file system \cr
#'  \link[=efs_describe_tags]{describe_tags} \tab Returns the tags associated with a file system \cr
#'  \link[=efs_modify_mount_target_security_groups]{modify_mount_target_security_groups} \tab Modifies the set of security groups in effect for a mount target \cr
#'  \link[=efs_put_lifecycle_configuration]{put_lifecycle_configuration} \tab Enables lifecycle management by creating a new LifecycleConfiguration object \cr
#'  \link[=efs_update_file_system]{update_file_system} \tab Updates the throughput mode or the amount of provisioned throughput of an existing file system 
#' }
#'
#' @rdname efs
#' @export
efs <- function() {
  paws.storage::efs()
}

#' Amazon FSx
#'
#' @description
#' Amazon FSx is a fully managed service that makes it easy for storage and
#' application administrators to launch and use shared file storage.
#'
#' @examples
#' # This operation creates a new backup.
#' \donttest{svc <- fsx()
#' svc$create_backup(
#'   FileSystemId = "fs-0498eed5fe91001ec",
#'   Tags = list(
#'     list(
#'       Key = "Name",
#'       Value = "MyBackup"
#'     )
#'   )
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=fsx_create_backup]{create_backup} \tab Creates a backup of an existing Amazon FSx for Windows File Server file system \cr
#'  \link[=fsx_create_file_system]{create_file_system} \tab Creates a new, empty Amazon FSx file system \cr
#'  \link[=fsx_create_file_system_from_backup]{create_file_system_from_backup} \tab Creates a new Amazon FSx file system from an existing Amazon FSx for Windows File Server backup \cr
#'  \link[=fsx_delete_backup]{delete_backup} \tab Deletes an Amazon FSx for Windows File Server backup, deleting its contents \cr
#'  \link[=fsx_delete_file_system]{delete_file_system} \tab Deletes a file system, deleting its contents \cr
#'  \link[=fsx_describe_backups]{describe_backups} \tab Returns the description of specific Amazon FSx for Windows File Server backups, if a BackupIds value is provided for that backup\cr
#'  \link[=fsx_describe_file_systems]{describe_file_systems} \tab Returns the description of specific Amazon FSx file systems, if a FileSystemIds value is provided for that file system \cr
#'  \link[=fsx_list_tags_for_resource]{list_tags_for_resource} \tab Lists tags for an Amazon FSx file systems and backups in the case of Amazon FSx for Windows File Server \cr
#'  \link[=fsx_tag_resource]{tag_resource} \tab Tags an Amazon FSx resource \cr
#'  \link[=fsx_untag_resource]{untag_resource} \tab This action removes a tag from an Amazon FSx resource \cr
#'  \link[=fsx_update_file_system]{update_file_system} \tab Updates a file system configuration 
#' }
#'
#' @rdname fsx
#' @export
fsx <- function() {
  paws.storage::fsx()
}

#' Amazon Glacier
#'
#' @description
#' Amazon Glacier is a storage solution for \"cold data.\"
#' 
#' Amazon Glacier is an extremely low-cost storage service that provides
#' secure, durable, and easy-to-use storage for data backup and archival.
#' With Amazon Glacier, customers can store their data cost effectively for
#' months, years, or decades. Amazon Glacier also enables customers to
#' offload the administrative burdens of operating and scaling storage to
#' AWS, so they don\'t have to worry about capacity planning, hardware
#' provisioning, data replication, hardware failure and recovery, or
#' time-consuming hardware migrations.
#' 
#' Amazon Glacier is a great storage choice when low storage cost is
#' paramount and your data is rarely retrieved. If your application
#' requires fast or frequent access to your data, consider using Amazon S3.
#' For more information, see [Amazon Simple Storage Service (Amazon
#' S3)](http://aws.amazon.com/s3/).
#' 
#' You can store any kind of data in any format. There is no maximum limit
#' on the total amount of data you can store in Amazon Glacier.
#' 
#' If you are a first-time user of Amazon Glacier, we recommend that you
#' begin by reading the following sections in the *Amazon Glacier Developer
#' Guide*:
#' 
#' -   [What is Amazon
#'     Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/introduction.html) -
#'     This section of the Developer Guide describes the underlying data
#'     model, the operations it supports, and the AWS SDKs that you can use
#'     to interact with the service.
#' 
#' -   [Getting Started with Amazon
#'     Glacier](http://docs.aws.amazon.com/amazonglacier/latest/dev/amazon-glacier-getting-started.html) -
#'     The Getting Started section walks you through the process of
#'     creating a vault, uploading archives, creating jobs to download
#'     archives, retrieving the job output, and deleting archives.
#'
#' @examples
#' # The example deletes an in-progress multipart upload to a vault named
#' # my-vault:
#' \donttest{svc <- glacier()
#' svc$abort_multipart_upload(
#'   accountId = "-",
#'   uploadId = "19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV...",
#'   vaultName = "my-vault"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=glacier_abort_multipart_upload]{abort_multipart_upload} \tab This operation aborts a multipart upload identified by the upload ID \cr
#'  \link[=glacier_abort_vault_lock]{abort_vault_lock} \tab This operation aborts the vault locking process if the vault lock is not in the Locked state \cr
#'  \link[=glacier_add_tags_to_vault]{add_tags_to_vault} \tab This operation adds the specified tags to a vault \cr
#'  \link[=glacier_complete_multipart_upload]{complete_multipart_upload} \tab You call this operation to inform Amazon Glacier that all the archive parts have been uploaded and that Amazon Glacier can now assemble the archive from the uploaded parts \cr
#'  \link[=glacier_complete_vault_lock]{complete_vault_lock} \tab This operation completes the vault locking process by transitioning the vault lock from the InProgress state to the Locked state, which causes the vault lock policy to become unchangeable \cr
#'  \link[=glacier_create_vault]{create_vault} \tab This operation creates a new vault with the specified name \cr
#'  \link[=glacier_delete_archive]{delete_archive} \tab This operation deletes an archive from a vault \cr
#'  \link[=glacier_delete_vault]{delete_vault} \tab This operation deletes a vault \cr
#'  \link[=glacier_delete_vault_access_policy]{delete_vault_access_policy} \tab This operation deletes the access policy associated with the specified vault \cr
#'  \link[=glacier_delete_vault_notifications]{delete_vault_notifications} \tab This operation deletes the notification configuration set for a vault \cr
#'  \link[=glacier_describe_job]{describe_job} \tab This operation returns information about a job you previously initiated, including the job initiation date, the user who initiated the job, the job status code/message and the Amazon SNS topic to notify after Amazon Glacier completes the job\cr
#'  \link[=glacier_describe_vault]{describe_vault} \tab This operation returns information about a vault, including the vault's Amazon Resource Name (ARN), the date the vault was created, the number of archives it contains, and the total size of all the archives in the vault \cr
#'  \link[=glacier_get_data_retrieval_policy]{get_data_retrieval_policy} \tab This operation returns the current data retrieval policy for the account and region specified in the GET request \cr
#'  \link[=glacier_get_job_output]{get_job_output} \tab This operation downloads the output of the job you initiated using InitiateJob \cr
#'  \link[=glacier_get_vault_access_policy]{get_vault_access_policy} \tab This operation retrieves the access-policy subresource set on the vault; for more information on setting this subresource, see Set Vault Access Policy (PUT access-policy) \cr
#'  \link[=glacier_get_vault_lock]{get_vault_lock} \tab This operation retrieves the following attributes from the lock-policy subresource set on the specified vault: - The vault lock policy set on the vault \cr
#'  \link[=glacier_get_vault_notifications]{get_vault_notifications} \tab This operation retrieves the notification-configuration subresource of the specified vault \cr
#'  \link[=glacier_initiate_job]{initiate_job} \tab This operation initiates a job of the specified type, which can be a select, an archival retrieval, or a vault retrieval \cr
#'  \link[=glacier_initiate_multipart_upload]{initiate_multipart_upload} \tab This operation initiates a multipart upload \cr
#'  \link[=glacier_initiate_vault_lock]{initiate_vault_lock} \tab This operation initiates the vault locking process by doing the following: - Installing a vault lock policy on the specified vault \cr
#'  \link[=glacier_list_jobs]{list_jobs} \tab This operation lists jobs for a vault, including jobs that are in-progress and jobs that have recently finished \cr
#'  \link[=glacier_list_multipart_uploads]{list_multipart_uploads} \tab This operation lists in-progress multipart uploads for the specified vault \cr
#'  \link[=glacier_list_parts]{list_parts} \tab This operation lists the parts of an archive that have been uploaded in a specific multipart upload \cr
#'  \link[=glacier_list_provisioned_capacity]{list_provisioned_capacity} \tab This operation lists the provisioned capacity units for the specified AWS account \cr
#'  \link[=glacier_list_tags_for_vault]{list_tags_for_vault} \tab This operation lists all the tags attached to a vault \cr
#'  \link[=glacier_list_vaults]{list_vaults} \tab This operation lists all vaults owned by the calling user's account \cr
#'  \link[=glacier_purchase_provisioned_capacity]{purchase_provisioned_capacity} \tab This operation purchases a provisioned capacity unit for an AWS account \cr
#'  \link[=glacier_remove_tags_from_vault]{remove_tags_from_vault} \tab This operation removes one or more tags from the set of tags attached to a vault \cr
#'  \link[=glacier_set_data_retrieval_policy]{set_data_retrieval_policy} \tab This operation sets and then enacts a data retrieval policy in the region specified in the PUT request \cr
#'  \link[=glacier_set_vault_access_policy]{set_vault_access_policy} \tab This operation configures an access policy for a vault and will overwrite an existing policy \cr
#'  \link[=glacier_set_vault_notifications]{set_vault_notifications} \tab This operation configures notifications that will be sent when specific events happen to a vault \cr
#'  \link[=glacier_upload_archive]{upload_archive} \tab This operation adds an archive to a vault \cr
#'  \link[=glacier_upload_multipart_part]{upload_multipart_part} \tab This operation uploads a part of an archive 
#' }
#'
#' @rdname glacier
#' @export
glacier <- function() {
  paws.storage::glacier()
}

#' Amazon Simple Storage Service
#'
#' 
#'
#' @examples
#' # The following example aborts a multipart upload.
#' \donttest{svc <- s3()
#' svc$abort_multipart_upload(
#'   Bucket = "examplebucket",
#'   Key = "bigobject",
#'   UploadId = "xadcOB_7YPBOJuoFiQ9cz4P3Pe6FIZwO4f7wN93uHsNBEw97pl5eNwzExg0LAT2dUN91cOmrEQHDsP..."
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=s3_abort_multipart_upload]{abort_multipart_upload} \tab Aborts a multipart upload \cr
#'  \link[=s3_complete_multipart_upload]{complete_multipart_upload} \tab Completes a multipart upload by assembling previously uploaded parts \cr
#'  \link[=s3_copy_object]{copy_object} \tab Creates a copy of an object that is already stored in Amazon S3 \cr
#'  \link[=s3_create_bucket]{create_bucket} \tab Creates a new bucket \cr
#'  \link[=s3_create_multipart_upload]{create_multipart_upload} \tab Initiates a multipart upload and returns an upload ID \cr
#'  \link[=s3_delete_bucket]{delete_bucket} \tab Deletes the bucket \cr
#'  \link[=s3_delete_bucket_analytics_configuration]{delete_bucket_analytics_configuration} \tab Deletes an analytics configuration for the bucket (specified by the analytics configuration ID) \cr
#'  \link[=s3_delete_bucket_cors]{delete_bucket_cors} \tab Deletes the CORS configuration information set for the bucket \cr
#'  \link[=s3_delete_bucket_encryption]{delete_bucket_encryption} \tab Deletes the server-side encryption configuration from the bucket \cr
#'  \link[=s3_delete_bucket_inventory_configuration]{delete_bucket_inventory_configuration} \tab Deletes an inventory configuration (identified by the inventory ID) from the bucket \cr
#'  \link[=s3_delete_bucket_lifecycle]{delete_bucket_lifecycle} \tab Deletes the lifecycle configuration from the bucket \cr
#'  \link[=s3_delete_bucket_metrics_configuration]{delete_bucket_metrics_configuration} \tab Deletes a metrics configuration (specified by the metrics configuration ID) from the bucket \cr
#'  \link[=s3_delete_bucket_policy]{delete_bucket_policy} \tab Deletes the policy from the bucket \cr
#'  \link[=s3_delete_bucket_replication]{delete_bucket_replication} \tab Deletes the replication configuration from the bucket \cr
#'  \link[=s3_delete_bucket_tagging]{delete_bucket_tagging} \tab Deletes the tags from the bucket \cr
#'  \link[=s3_delete_bucket_website]{delete_bucket_website} \tab This operation removes the website configuration from the bucket \cr
#'  \link[=s3_delete_object]{delete_object} \tab Removes the null version (if there is one) of an object and inserts a delete marker, which becomes the latest version of the object\cr
#'  \link[=s3_delete_object_tagging]{delete_object_tagging} \tab Removes the tag-set from an existing object \cr
#'  \link[=s3_delete_objects]{delete_objects} \tab This operation enables you to delete multiple objects from a bucket using a single HTTP request \cr
#'  \link[=s3_delete_public_access_block]{delete_public_access_block} \tab Removes the PublicAccessBlock configuration from an Amazon S3 bucket \cr
#'  \link[=s3_get_bucket_accelerate_configuration]{get_bucket_accelerate_configuration} \tab Returns the accelerate configuration of a bucket \cr
#'  \link[=s3_get_bucket_acl]{get_bucket_acl} \tab Gets the access control policy for the bucket \cr
#'  \link[=s3_get_bucket_analytics_configuration]{get_bucket_analytics_configuration} \tab Gets an analytics configuration for the bucket (specified by the analytics configuration ID) \cr
#'  \link[=s3_get_bucket_cors]{get_bucket_cors} \tab Returns the CORS configuration for the bucket \cr
#'  \link[=s3_get_bucket_encryption]{get_bucket_encryption} \tab Returns the server-side encryption configuration of a bucket \cr
#'  \link[=s3_get_bucket_inventory_configuration]{get_bucket_inventory_configuration} \tab Returns an inventory configuration (identified by the inventory ID) from the bucket \cr
#'  \link[=s3_get_bucket_lifecycle]{get_bucket_lifecycle} \tab No longer used, see the GetBucketLifecycleConfiguration operation \cr
#'  \link[=s3_get_bucket_lifecycle_configuration]{get_bucket_lifecycle_configuration} \tab Returns the lifecycle configuration information set on the bucket \cr
#'  \link[=s3_get_bucket_location]{get_bucket_location} \tab Returns the region the bucket resides in \cr
#'  \link[=s3_get_bucket_logging]{get_bucket_logging} \tab Returns the logging status of a bucket and the permissions users have to view and modify that status \cr
#'  \link[=s3_get_bucket_metrics_configuration]{get_bucket_metrics_configuration} \tab Gets a metrics configuration (specified by the metrics configuration ID) from the bucket \cr
#'  \link[=s3_get_bucket_notification]{get_bucket_notification} \tab No longer used, see the GetBucketNotificationConfiguration operation \cr
#'  \link[=s3_get_bucket_notification_configuration]{get_bucket_notification_configuration} \tab Returns the notification configuration of a bucket \cr
#'  \link[=s3_get_bucket_policy]{get_bucket_policy} \tab Returns the policy of a specified bucket \cr
#'  \link[=s3_get_bucket_policy_status]{get_bucket_policy_status} \tab Retrieves the policy status for an Amazon S3 bucket, indicating whether the bucket is public \cr
#'  \link[=s3_get_bucket_replication]{get_bucket_replication} \tab Returns the replication configuration of a bucket \cr
#'  \link[=s3_get_bucket_request_payment]{get_bucket_request_payment} \tab Returns the request payment configuration of a bucket \cr
#'  \link[=s3_get_bucket_tagging]{get_bucket_tagging} \tab Returns the tag set associated with the bucket \cr
#'  \link[=s3_get_bucket_versioning]{get_bucket_versioning} \tab Returns the versioning state of a bucket \cr
#'  \link[=s3_get_bucket_website]{get_bucket_website} \tab Returns the website configuration for a bucket \cr
#'  \link[=s3_get_object]{get_object} \tab Retrieves objects from Amazon S3 \cr
#'  \link[=s3_get_object_acl]{get_object_acl} \tab Returns the access control list (ACL) of an object \cr
#'  \link[=s3_get_object_legal_hold]{get_object_legal_hold} \tab Gets an object's current Legal Hold status \cr
#'  \link[=s3_get_object_lock_configuration]{get_object_lock_configuration} \tab Gets the Object Lock configuration for a bucket \cr
#'  \link[=s3_get_object_retention]{get_object_retention} \tab Retrieves an object's retention settings \cr
#'  \link[=s3_get_object_tagging]{get_object_tagging} \tab Returns the tag-set of an object \cr
#'  \link[=s3_get_object_torrent]{get_object_torrent} \tab Return torrent files from a bucket \cr
#'  \link[=s3_get_public_access_block]{get_public_access_block} \tab Retrieves the PublicAccessBlock configuration for an Amazon S3 bucket \cr
#'  \link[=s3_head_bucket]{head_bucket} \tab This operation is useful to determine if a bucket exists and you have permission to access it \cr
#'  \link[=s3_head_object]{head_object} \tab The HEAD operation retrieves metadata from an object without returning the object itself \cr
#'  \link[=s3_list_bucket_analytics_configurations]{list_bucket_analytics_configurations} \tab Lists the analytics configurations for the bucket \cr
#'  \link[=s3_list_bucket_inventory_configurations]{list_bucket_inventory_configurations} \tab Returns a list of inventory configurations for the bucket \cr
#'  \link[=s3_list_bucket_metrics_configurations]{list_bucket_metrics_configurations} \tab Lists the metrics configurations for the bucket \cr
#'  \link[=s3_list_buckets]{list_buckets} \tab Returns a list of all buckets owned by the authenticated sender of the request \cr
#'  \link[=s3_list_multipart_uploads]{list_multipart_uploads} \tab This operation lists in-progress multipart uploads \cr
#'  \link[=s3_list_object_versions]{list_object_versions} \tab Returns metadata about all of the versions of objects in a bucket \cr
#'  \link[=s3_list_objects]{list_objects} \tab Returns some or all (up to 1000) of the objects in a bucket \cr
#'  \link[=s3_list_objects_v2]{list_objects_v2} \tab Returns some or all (up to 1000) of the objects in a bucket \cr
#'  \link[=s3_list_parts]{list_parts} \tab Lists the parts that have been uploaded for a specific multipart upload \cr
#'  \link[=s3_put_bucket_accelerate_configuration]{put_bucket_accelerate_configuration} \tab Sets the accelerate configuration of an existing bucket \cr
#'  \link[=s3_put_bucket_acl]{put_bucket_acl} \tab Sets the permissions on a bucket using access control lists (ACL) \cr
#'  \link[=s3_put_bucket_analytics_configuration]{put_bucket_analytics_configuration} \tab Sets an analytics configuration for the bucket (specified by the analytics configuration ID) \cr
#'  \link[=s3_put_bucket_cors]{put_bucket_cors} \tab Sets the CORS configuration for a bucket \cr
#'  \link[=s3_put_bucket_encryption]{put_bucket_encryption} \tab Creates a new server-side encryption configuration (or replaces an existing one, if present) \cr
#'  \link[=s3_put_bucket_inventory_configuration]{put_bucket_inventory_configuration} \tab Adds an inventory configuration (identified by the inventory ID) from the bucket \cr
#'  \link[=s3_put_bucket_lifecycle]{put_bucket_lifecycle} \tab No longer used, see the PutBucketLifecycleConfiguration operation \cr
#'  \link[=s3_put_bucket_lifecycle_configuration]{put_bucket_lifecycle_configuration} \tab Sets lifecycle configuration for your bucket \cr
#'  \link[=s3_put_bucket_logging]{put_bucket_logging} \tab Set the logging parameters for a bucket and to specify permissions for who can view and modify the logging parameters \cr
#'  \link[=s3_put_bucket_metrics_configuration]{put_bucket_metrics_configuration} \tab Sets a metrics configuration (specified by the metrics configuration ID) for the bucket \cr
#'  \link[=s3_put_bucket_notification]{put_bucket_notification} \tab No longer used, see the PutBucketNotificationConfiguration operation \cr
#'  \link[=s3_put_bucket_notification_configuration]{put_bucket_notification_configuration} \tab Enables notifications of specified events for a bucket \cr
#'  \link[=s3_put_bucket_policy]{put_bucket_policy} \tab Replaces a policy on a bucket \cr
#'  \link[=s3_put_bucket_replication]{put_bucket_replication} \tab Creates a replication configuration or replaces an existing one \cr
#'  \link[=s3_put_bucket_request_payment]{put_bucket_request_payment} \tab Sets the request payment configuration for a bucket \cr
#'  \link[=s3_put_bucket_tagging]{put_bucket_tagging} \tab Sets the tags for a bucket \cr
#'  \link[=s3_put_bucket_versioning]{put_bucket_versioning} \tab Sets the versioning state of an existing bucket \cr
#'  \link[=s3_put_bucket_website]{put_bucket_website} \tab Set the website configuration for a bucket \cr
#'  \link[=s3_put_object]{put_object} \tab Adds an object to a bucket \cr
#'  \link[=s3_put_object_acl]{put_object_acl} \tab uses the acl subresource to set the access control list (ACL) permissions for an object that already exists in a bucket \cr
#'  \link[=s3_put_object_legal_hold]{put_object_legal_hold} \tab Applies a Legal Hold configuration to the specified object \cr
#'  \link[=s3_put_object_lock_configuration]{put_object_lock_configuration} \tab Places an Object Lock configuration on the specified bucket \cr
#'  \link[=s3_put_object_retention]{put_object_retention} \tab Places an Object Retention configuration on an object \cr
#'  \link[=s3_put_object_tagging]{put_object_tagging} \tab Sets the supplied tag-set to an object that already exists in a bucket \cr
#'  \link[=s3_put_public_access_block]{put_public_access_block} \tab Creates or modifies the PublicAccessBlock configuration for an Amazon S3 bucket \cr
#'  \link[=s3_restore_object]{restore_object} \tab Restores an archived copy of an object back into Amazon S3 \cr
#'  \link[=s3_select_object_content]{select_object_content} \tab This operation filters the contents of an Amazon S3 object based on a simple Structured Query Language (SQL) statement \cr
#'  \link[=s3_upload_part]{upload_part} \tab Uploads a part in a multipart upload \cr
#'  \link[=s3_upload_part_copy]{upload_part_copy} \tab Uploads a part by copying data from an existing object as data source 
#' }
#'
#' @rdname s3
#' @export
s3 <- function() {
  paws.storage::s3()
}

#' AWS S3 Control
#'
#' @description
#' AWS S3 Control provides access to Amazon S3 control plane operations.
#'
#' @examples
#' \donttest{svc <- s3control()
#' svc$delete_public_access_block(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=s3control_delete_public_access_block]{delete_public_access_block} \tab Removes the Public Access Block configuration for an Amazon Web Services account \cr
#'  \link[=s3control_get_public_access_block]{get_public_access_block} \tab Retrieves the Public Access Block configuration for an Amazon Web Services account \cr
#'  \link[=s3control_put_public_access_block]{put_public_access_block} \tab Creates or modifies the Public Access Block configuration for an Amazon Web Services account
#' }
#'
#' @rdname s3control
#' @export
s3control <- function() {
  paws.storage::s3control()
}

#' AWS Storage Gateway
#'
#' @description
#' AWS Storage Gateway Service
#' 
#' AWS Storage Gateway is the service that connects an on-premises software
#' appliance with cloud-based storage to provide seamless and secure
#' integration between an organization\'s on-premises IT environment and
#' AWS\'s storage infrastructure. The service enables you to securely
#' upload data to the AWS cloud for cost effective backup and rapid
#' disaster recovery.
#' 
#' Use the following links to get started using the *AWS Storage Gateway
#' Service API Reference*:
#' 
#' -   [AWS Storage Gateway Required Request
#'     Headers](https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewayHTTPRequestsHeaders):
#'     Describes the required headers that you must send with every POST
#'     request to AWS Storage Gateway.
#' 
#' -   [Signing
#'     Requests](https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#AWSStorageGatewaySigningRequests):
#'     AWS Storage Gateway requires that you authenticate every request you
#'     send; this topic describes how sign such a request.
#' 
#' -   [Error
#'     Responses](https://docs.aws.amazon.com/storagegateway/latest/userguide/AWSStorageGatewayAPI.html#APIErrorResponses):
#'     Provides reference information about AWS Storage Gateway errors.
#' 
#' -   [Operations in AWS Storage
#'     Gateway](https://docs.aws.amazon.com/storagegateway/latest/APIReference/API_Operations.html):
#'     Contains detailed descriptions of all AWS Storage Gateway
#'     operations, their request parameters, response elements, possible
#'     errors, and examples of requests and responses.
#' 
#' -   [AWS Storage Gateway Regions and
#'     Endpoints:](http://docs.aws.amazon.com/general/latest/gr/rande.html#sg_region)
#'     Provides a list of each AWS region and endpoints available for use
#'     with AWS Storage Gateway.
#' 
#' AWS Storage Gateway resource IDs are in uppercase. When you use these
#' resource IDs with the Amazon EC2 API, EC2 expects resource IDs in
#' lowercase. You must change your resource ID to lowercase to use it with
#' the EC2 API. For example, in Storage Gateway the ID for a volume might
#' be `vol-AA22BB012345DAF670`. When you use this ID with the EC2 API, you
#' must change it to `vol-aa22bb012345daf670`. Otherwise, the EC2 API might
#' not behave as expected.
#' 
#' IDs for Storage Gateway volumes and Amazon EBS snapshots created from
#' gateway volumes are changing to a longer format. Starting in December
#' 2016, all new volumes and snapshots will be created with a 17-character
#' string. Starting in April 2016, you will be able to use these longer IDs
#' so you can test your systems with the new format. For more information,
#' see [Longer EC2 and EBS Resource
#' IDs](https://aws.amazon.com/ec2/faqs/#longer-ids).
#' 
#' For example, a volume Amazon Resource Name (ARN) with the longer volume
#' ID format looks like the following:
#' 
#' `arn:aws:storagegateway:us-west-2:111122223333:gateway/sgw-12A3456B/volume/vol-1122AABBCCDDEEFFG`.
#' 
#' A snapshot ID with the longer ID format looks like the following:
#' `snap-78e226633445566ee`.
#' 
#' For more information, see [Announcement: Heads-up -- Longer AWS Storage
#' Gateway volume and snapshot IDs coming in
#' 2016](https://forums.aws.amazon.com/ann.jspa?annID=3557).
#'
#' @examples
#' # Activates the gateway you previously deployed on your host.
#' \donttest{svc <- storagegateway()
#' svc$activate_gateway(
#'   ActivationKey = "29AV1-3OFV9-VVIUB-NKT0I-LRO6V",
#'   GatewayName = "My_Gateway",
#'   GatewayRegion = "us-east-1",
#'   GatewayTimezone = "GMT-12:00",
#'   GatewayType = "STORED",
#'   MediumChangerType = "AWS-Gateway-VTL",
#'   TapeDriveType = "IBM-ULT3580-TD5"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=storagegateway_activate_gateway]{activate_gateway} \tab Activates the gateway you previously deployed on your host \cr
#'  \link[=storagegateway_add_cache]{add_cache} \tab Configures one or more gateway local disks as cache for a gateway \cr
#'  \link[=storagegateway_add_tags_to_resource]{add_tags_to_resource} \tab Adds one or more tags to the specified resource \cr
#'  \link[=storagegateway_add_upload_buffer]{add_upload_buffer} \tab Configures one or more gateway local disks as upload buffer for a specified gateway \cr
#'  \link[=storagegateway_add_working_storage]{add_working_storage} \tab Configures one or more gateway local disks as working storage for a gateway \cr
#'  \link[=storagegateway_attach_volume]{attach_volume} \tab Connects a volume to an iSCSI connection and then attaches the volume to the specified gateway \cr
#'  \link[=storagegateway_cancel_archival]{cancel_archival} \tab Cancels archiving of a virtual tape to the virtual tape shelf (VTS) after the archiving process is initiated \cr
#'  \link[=storagegateway_cancel_retrieval]{cancel_retrieval} \tab Cancels retrieval of a virtual tape from the virtual tape shelf (VTS) to a gateway after the retrieval process is initiated \cr
#'  \link[=storagegateway_create_cachedi_scsi_volume]{create_cachedi_scsi_volume} \tab Creates a cached volume on a specified cached volume gateway \cr
#'  \link[=storagegateway_create_nfs_file_share]{create_nfs_file_share} \tab Creates a Network File System (NFS) file share on an existing file gateway \cr
#'  \link[=storagegateway_create_smb_file_share]{create_smb_file_share} \tab Creates a Server Message Block (SMB) file share on an existing file gateway \cr
#'  \link[=storagegateway_create_snapshot]{create_snapshot} \tab Initiates a snapshot of a volume \cr
#'  \link[=storagegateway_create_snapshot_from_volume_recovery_point]{create_snapshot_from_volume_recovery_point} \tab Initiates a snapshot of a gateway from a volume recovery point \cr
#'  \link[=storagegateway_create_storedi_scsi_volume]{create_storedi_scsi_volume} \tab Creates a volume on a specified gateway \cr
#'  \link[=storagegateway_create_tape_with_barcode]{create_tape_with_barcode} \tab Creates a virtual tape by using your own barcode \cr
#'  \link[=storagegateway_create_tapes]{create_tapes} \tab Creates one or more virtual tapes \cr
#'  \link[=storagegateway_delete_bandwidth_rate_limit]{delete_bandwidth_rate_limit} \tab Deletes the bandwidth rate limits of a gateway \cr
#'  \link[=storagegateway_delete_chap_credentials]{delete_chap_credentials} \tab Deletes Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target and initiator pair \cr
#'  \link[=storagegateway_delete_file_share]{delete_file_share} \tab Deletes a file share from a file gateway \cr
#'  \link[=storagegateway_delete_gateway]{delete_gateway} \tab Deletes a gateway \cr
#'  \link[=storagegateway_delete_snapshot_schedule]{delete_snapshot_schedule} \tab Deletes a snapshot of a volume \cr
#'  \link[=storagegateway_delete_tape]{delete_tape} \tab Deletes the specified virtual tape \cr
#'  \link[=storagegateway_delete_tape_archive]{delete_tape_archive} \tab Deletes the specified virtual tape from the virtual tape shelf (VTS) \cr
#'  \link[=storagegateway_delete_volume]{delete_volume} \tab Deletes the specified storage volume that you previously created using the CreateCachediSCSIVolume or CreateStorediSCSIVolume API \cr
#'  \link[=storagegateway_describe_bandwidth_rate_limit]{describe_bandwidth_rate_limit} \tab Returns the bandwidth rate limits of a gateway \cr
#'  \link[=storagegateway_describe_cache]{describe_cache} \tab Returns information about the cache of a gateway \cr
#'  \link[=storagegateway_describe_cachedi_scsi_volumes]{describe_cachedi_scsi_volumes} \tab Returns a description of the gateway volumes specified in the request \cr
#'  \link[=storagegateway_describe_chap_credentials]{describe_chap_credentials} \tab Returns an array of Challenge-Handshake Authentication Protocol (CHAP) credentials information for a specified iSCSI target, one for each target-initiator pair\cr
#'  \link[=storagegateway_describe_gateway_information]{describe_gateway_information} \tab Returns metadata about a gateway such as its name, network interfaces, configured time zone, and the state (whether the gateway is running or not) \cr
#'  \link[=storagegateway_describe_maintenance_start_time]{describe_maintenance_start_time} \tab Returns your gateway's weekly maintenance start time including the day and time of the week \cr
#'  \link[=storagegateway_describe_nfs_file_shares]{describe_nfs_file_shares} \tab Gets a description for one or more Network File System (NFS) file shares from a file gateway \cr
#'  \link[=storagegateway_describe_smb_file_shares]{describe_smb_file_shares} \tab Gets a description for one or more Server Message Block (SMB) file shares from a file gateway \cr
#'  \link[=storagegateway_describe_smb_settings]{describe_smb_settings} \tab Gets a description of a Server Message Block (SMB) file share settings from a file gateway \cr
#'  \link[=storagegateway_describe_snapshot_schedule]{describe_snapshot_schedule} \tab Describes the snapshot schedule for the specified gateway volume \cr
#'  \link[=storagegateway_describe_storedi_scsi_volumes]{describe_storedi_scsi_volumes} \tab Returns the description of the gateway volumes specified in the request \cr
#'  \link[=storagegateway_describe_tape_archives]{describe_tape_archives} \tab Returns a description of specified virtual tapes in the virtual tape shelf (VTS) \cr
#'  \link[=storagegateway_describe_tape_recovery_points]{describe_tape_recovery_points} \tab Returns a list of virtual tape recovery points that are available for the specified tape gateway \cr
#'  \link[=storagegateway_describe_tapes]{describe_tapes} \tab Returns a description of the specified Amazon Resource Name (ARN) of virtual tapes \cr
#'  \link[=storagegateway_describe_upload_buffer]{describe_upload_buffer} \tab Returns information about the upload buffer of a gateway \cr
#'  \link[=storagegateway_describe_vtl_devices]{describe_vtl_devices} \tab Returns a description of virtual tape library (VTL) devices for the specified tape gateway \cr
#'  \link[=storagegateway_describe_working_storage]{describe_working_storage} \tab Returns information about the working storage of a gateway \cr
#'  \link[=storagegateway_detach_volume]{detach_volume} \tab Disconnects a volume from an iSCSI connection and then detaches the volume from the specified gateway \cr
#'  \link[=storagegateway_disable_gateway]{disable_gateway} \tab Disables a tape gateway when the gateway is no longer functioning \cr
#'  \link[=storagegateway_join_domain]{join_domain} \tab Adds a file gateway to an Active Directory domain \cr
#'  \link[=storagegateway_list_file_shares]{list_file_shares} \tab Gets a list of the file shares for a specific file gateway, or the list of file shares that belong to the calling user account \cr
#'  \link[=storagegateway_list_gateways]{list_gateways} \tab Lists gateways owned by an AWS account in a region specified in the request \cr
#'  \link[=storagegateway_list_local_disks]{list_local_disks} \tab Returns a list of the gateway's local disks \cr
#'  \link[=storagegateway_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags that have been added to the specified resource \cr
#'  \link[=storagegateway_list_tapes]{list_tapes} \tab Lists virtual tapes in your virtual tape library (VTL) and your virtual tape shelf (VTS) \cr
#'  \link[=storagegateway_list_volume_initiators]{list_volume_initiators} \tab Lists iSCSI initiators that are connected to a volume \cr
#'  \link[=storagegateway_list_volume_recovery_points]{list_volume_recovery_points} \tab Lists the recovery points for a specified gateway \cr
#'  \link[=storagegateway_list_volumes]{list_volumes} \tab Lists the iSCSI stored volumes of a gateway \cr
#'  \link[=storagegateway_notify_when_uploaded]{notify_when_uploaded} \tab Sends you notification through CloudWatch Events when all files written to your NFS file share have been uploaded to Amazon S3 \cr
#'  \link[=storagegateway_refresh_cache]{refresh_cache} \tab Refreshes the cache for the specified file share \cr
#'  \link[=storagegateway_remove_tags_from_resource]{remove_tags_from_resource} \tab Removes one or more tags from the specified resource \cr
#'  \link[=storagegateway_reset_cache]{reset_cache} \tab Resets all cache disks that have encountered a error and makes the disks available for reconfiguration as cache storage \cr
#'  \link[=storagegateway_retrieve_tape_archive]{retrieve_tape_archive} \tab Retrieves an archived virtual tape from the virtual tape shelf (VTS) to a tape gateway \cr
#'  \link[=storagegateway_retrieve_tape_recovery_point]{retrieve_tape_recovery_point} \tab Retrieves the recovery point for the specified virtual tape \cr
#'  \link[=storagegateway_set_local_console_password]{set_local_console_password} \tab Sets the password for your VM local console \cr
#'  \link[=storagegateway_set_smb_guest_password]{set_smb_guest_password} \tab Sets the password for the guest user smbguest \cr
#'  \link[=storagegateway_shutdown_gateway]{shutdown_gateway} \tab Shuts down a gateway \cr
#'  \link[=storagegateway_start_gateway]{start_gateway} \tab Starts a gateway that you previously shut down (see ShutdownGateway) \cr
#'  \link[=storagegateway_update_bandwidth_rate_limit]{update_bandwidth_rate_limit} \tab Updates the bandwidth rate limits of a gateway \cr
#'  \link[=storagegateway_update_chap_credentials]{update_chap_credentials} \tab Updates the Challenge-Handshake Authentication Protocol (CHAP) credentials for a specified iSCSI target \cr
#'  \link[=storagegateway_update_gateway_information]{update_gateway_information} \tab Updates a gateway's metadata, which includes the gateway's name and time zone \cr
#'  \link[=storagegateway_update_gateway_software_now]{update_gateway_software_now} \tab Updates the gateway virtual machine (VM) software \cr
#'  \link[=storagegateway_update_maintenance_start_time]{update_maintenance_start_time} \tab Updates a gateway's weekly maintenance start time information, including day and time of the week \cr
#'  \link[=storagegateway_update_nfs_file_share]{update_nfs_file_share} \tab Updates a Network File System (NFS) file share \cr
#'  \link[=storagegateway_update_smb_file_share]{update_smb_file_share} \tab Updates a Server Message Block (SMB) file share \cr
#'  \link[=storagegateway_update_snapshot_schedule]{update_snapshot_schedule} \tab Updates a snapshot schedule configured for a gateway volume \cr
#'  \link[=storagegateway_update_vtl_device_type]{update_vtl_device_type} \tab Updates the type of medium changer in a tape gateway 
#' }
#'
#' @rdname storagegateway
#' @export
storagegateway <- function() {
  paws.storage::storagegateway()
}

#' Amazon DynamoDB Accelerator (DAX)
#'
#' @description
#' DAX is a managed caching service engineered for Amazon DynamoDB. DAX
#' dramatically speeds up database reads by caching frequently-accessed
#' data from DynamoDB, so applications can access that data with
#' sub-millisecond latency. You can create a DAX cluster easily, using the
#' AWS Management Console. With a few simple modifications to your code,
#' your application can begin taking advantage of the DAX cluster and
#' realize significant improvements in read performance.
#'
#' @examples
#' \donttest{svc <- dax()
#' svc$create_cluster(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=dax_create_cluster]{create_cluster} \tab Creates a DAX cluster \cr
#'  \link[=dax_create_parameter_group]{create_parameter_group} \tab Creates a new parameter group \cr
#'  \link[=dax_create_subnet_group]{create_subnet_group} \tab Creates a new subnet group \cr
#'  \link[=dax_decrease_replication_factor]{decrease_replication_factor} \tab Removes one or more nodes from a DAX cluster \cr
#'  \link[=dax_delete_cluster]{delete_cluster} \tab Deletes a previously provisioned DAX cluster \cr
#'  \link[=dax_delete_parameter_group]{delete_parameter_group} \tab Deletes the specified parameter group \cr
#'  \link[=dax_delete_subnet_group]{delete_subnet_group} \tab Deletes a subnet group \cr
#'  \link[=dax_describe_clusters]{describe_clusters} \tab Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied\cr
#'  \link[=dax_describe_default_parameters]{describe_default_parameters} \tab Returns the default system parameter information for the DAX caching software \cr
#'  \link[=dax_describe_events]{describe_events} \tab Returns events related to DAX clusters and parameter groups \cr
#'  \link[=dax_describe_parameter_groups]{describe_parameter_groups} \tab Returns a list of parameter group descriptions \cr
#'  \link[=dax_describe_parameters]{describe_parameters} \tab Returns the detailed parameter list for a particular parameter group \cr
#'  \link[=dax_describe_subnet_groups]{describe_subnet_groups} \tab Returns a list of subnet group descriptions \cr
#'  \link[=dax_increase_replication_factor]{increase_replication_factor} \tab Adds one or more nodes to a DAX cluster \cr
#'  \link[=dax_list_tags]{list_tags} \tab List all of the tags for a DAX cluster \cr
#'  \link[=dax_reboot_node]{reboot_node} \tab Reboots a single node of a DAX cluster \cr
#'  \link[=dax_tag_resource]{tag_resource} \tab Associates a set of tags with a DAX resource \cr
#'  \link[=dax_untag_resource]{untag_resource} \tab Removes the association of tags from a DAX resource \cr
#'  \link[=dax_update_cluster]{update_cluster} \tab Modifies the settings for a DAX cluster \cr
#'  \link[=dax_update_parameter_group]{update_parameter_group} \tab Modifies the parameters of a parameter group \cr
#'  \link[=dax_update_subnet_group]{update_subnet_group} \tab Modifies an existing subnet group 
#' }
#'
#' @rdname dax
#' @export
dax <- function() {
  paws.database::dax()
}

#' Amazon DocumentDB with MongoDB compatibility
#'
#' @description
#' Amazon DocumentDB API documentation
#'
#' @examples
#' \donttest{svc <- docdb()
#' svc$add_tags_to_resource(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=docdb_add_tags_to_resource]{add_tags_to_resource} \tab Adds metadata tags to an Amazon DocumentDB resource \cr
#'  \link[=docdb_apply_pending_maintenance_action]{apply_pending_maintenance_action} \tab Applies a pending maintenance action to a resource (for example, to a DB instance) \cr
#'  \link[=docdb_copy_db_cluster_parameter_group]{copy_db_cluster_parameter_group} \tab Copies the specified DB cluster parameter group \cr
#'  \link[=docdb_copy_db_cluster_snapshot]{copy_db_cluster_snapshot} \tab Copies a snapshot of a DB cluster \cr
#'  \link[=docdb_create_db_cluster]{create_db_cluster} \tab Creates a new Amazon DocumentDB DB cluster \cr
#'  \link[=docdb_create_db_cluster_parameter_group]{create_db_cluster_parameter_group} \tab Creates a new DB cluster parameter group \cr
#'  \link[=docdb_create_db_cluster_snapshot]{create_db_cluster_snapshot} \tab Creates a snapshot of a DB cluster \cr
#'  \link[=docdb_create_db_instance]{create_db_instance} \tab Creates a new DB instance \cr
#'  \link[=docdb_create_db_subnet_group]{create_db_subnet_group} \tab Creates a new DB subnet group \cr
#'  \link[=docdb_delete_db_cluster]{delete_db_cluster} \tab Deletes a previously provisioned DB cluster \cr
#'  \link[=docdb_delete_db_cluster_parameter_group]{delete_db_cluster_parameter_group} \tab Deletes a specified DB cluster parameter group \cr
#'  \link[=docdb_delete_db_cluster_snapshot]{delete_db_cluster_snapshot} \tab Deletes a DB cluster snapshot \cr
#'  \link[=docdb_delete_db_instance]{delete_db_instance} \tab Deletes a previously provisioned DB instance \cr
#'  \link[=docdb_delete_db_subnet_group]{delete_db_subnet_group} \tab Deletes a DB subnet group \cr
#'  \link[=docdb_describe_db_cluster_parameter_groups]{describe_db_cluster_parameter_groups} \tab Returns a list of DBClusterParameterGroup descriptions \cr
#'  \link[=docdb_describe_db_cluster_parameters]{describe_db_cluster_parameters} \tab Returns the detailed parameter list for a particular DB cluster parameter group \cr
#'  \link[=docdb_describe_db_cluster_snapshot_attributes]{describe_db_cluster_snapshot_attributes} \tab Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster snapshot \cr
#'  \link[=docdb_describe_db_cluster_snapshots]{describe_db_cluster_snapshots} \tab Returns information about DB cluster snapshots \cr
#'  \link[=docdb_describe_db_clusters]{describe_db_clusters} \tab Returns information about provisioned Amazon DocumentDB DB clusters \cr
#'  \link[=docdb_describe_db_engine_versions]{describe_db_engine_versions} \tab Returns a list of the available DB engines \cr
#'  \link[=docdb_describe_db_instances]{describe_db_instances} \tab Returns information about provisioned Amazon DocumentDB instances \cr
#'  \link[=docdb_describe_db_subnet_groups]{describe_db_subnet_groups} \tab Returns a list of DBSubnetGroup descriptions \cr
#'  \link[=docdb_describe_engine_default_cluster_parameters]{describe_engine_default_cluster_parameters} \tab Returns the default engine and system parameter information for the cluster database engine \cr
#'  \link[=docdb_describe_event_categories]{describe_event_categories} \tab Displays a list of categories for all event source types, or, if specified, for a specified source type \cr
#'  \link[=docdb_describe_events]{describe_events} \tab Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter groups for the past 14 days\cr
#'  \link[=docdb_describe_orderable_db_instance_options]{describe_orderable_db_instance_options} \tab Returns a list of orderable DB instance options for the specified engine \cr
#'  \link[=docdb_describe_pending_maintenance_actions]{describe_pending_maintenance_actions} \tab Returns a list of resources (for example, DB instances) that have at least one pending maintenance action \cr
#'  \link[=docdb_failover_db_cluster]{failover_db_cluster} \tab Forces a failover for a DB cluster \cr
#'  \link[=docdb_list_tags_for_resource]{list_tags_for_resource} \tab Lists all tags on an Amazon DocumentDB resource \cr
#'  \link[=docdb_modify_db_cluster]{modify_db_cluster} \tab Modifies a setting for an Amazon DocumentDB DB cluster \cr
#'  \link[=docdb_modify_db_cluster_parameter_group]{modify_db_cluster_parameter_group} \tab Modifies the parameters of a DB cluster parameter group \cr
#'  \link[=docdb_modify_db_cluster_snapshot_attribute]{modify_db_cluster_snapshot_attribute} \tab Adds an attribute and values to, or removes an attribute and values from, a manual DB cluster snapshot \cr
#'  \link[=docdb_modify_db_instance]{modify_db_instance} \tab Modifies settings for a DB instance \cr
#'  \link[=docdb_modify_db_subnet_group]{modify_db_subnet_group} \tab Modifies an existing DB subnet group \cr
#'  \link[=docdb_reboot_db_instance]{reboot_db_instance} \tab You might need to reboot your DB instance, usually for maintenance reasons \cr
#'  \link[=docdb_remove_tags_from_resource]{remove_tags_from_resource} \tab Removes metadata tags from an Amazon DocumentDB resource \cr
#'  \link[=docdb_reset_db_cluster_parameter_group]{reset_db_cluster_parameter_group} \tab Modifies the parameters of a DB cluster parameter group to the default value \cr
#'  \link[=docdb_restore_db_cluster_from_snapshot]{restore_db_cluster_from_snapshot} \tab Creates a new DB cluster from a DB snapshot or DB cluster snapshot \cr
#'  \link[=docdb_restore_db_cluster_to_point_in_time]{restore_db_cluster_to_point_in_time} \tab Restores a DB cluster to an arbitrary point in time 
#' }
#'
#' @rdname docdb
#' @export
docdb <- function() {
  paws.database::docdb()
}

#' Amazon DynamoDB
#'
#' @description
#' Amazon DynamoDB is a fully managed NoSQL database service that provides
#' fast and predictable performance with seamless scalability. DynamoDB
#' lets you offload the administrative burdens of operating and scaling a
#' distributed database, so that you don\'t have to worry about hardware
#' provisioning, setup and configuration, replication, software patching,
#' or cluster scaling.
#' 
#' With DynamoDB, you can create database tables that can store and
#' retrieve any amount of data, and serve any level of request traffic. You
#' can scale up or scale down your tables\' throughput capacity without
#' downtime or performance degradation, and use the AWS Management Console
#' to monitor resource utilization and performance metrics.
#' 
#' DynamoDB automatically spreads the data and traffic for your tables over
#' a sufficient number of servers to handle your throughput and storage
#' requirements, while maintaining consistent and fast performance. All of
#' your data is stored on solid state disks (SSDs) and automatically
#' replicated across multiple Availability Zones in an AWS region,
#' providing built-in high availability and data durability.
#'
#' @examples
#' # This example reads multiple items from the Music table using a batch of
#' # three GetItem requests.  Only the AlbumTitle attribute is returned.
#' \donttest{svc <- dynamodb()
#' svc$batch_get_item(
#'   RequestItems = list(
#'     Music = list(
#'       Keys = list(
#'         list(
#'           Artist = list(
#'             S = "No One You Know"
#'           ),
#'           SongTitle = list(
#'             S = "Call Me Today"
#'           )
#'         ),
#'         list(
#'           Artist = list(
#'             S = "Acme Band"
#'           ),
#'           SongTitle = list(
#'             S = "Happy Day"
#'           )
#'         ),
#'         list(
#'           Artist = list(
#'             S = "No One You Know"
#'           ),
#'           SongTitle = list(
#'             S = "Scared of My Shadow"
#'           )
#'         )
#'       ),
#'       ProjectionExpression = "AlbumTitle"
#'     )
#'   )
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=dynamodb_batch_get_item]{batch_get_item} \tab The BatchGetItem operation returns the attributes of one or more items from one or more tables \cr
#'  \link[=dynamodb_batch_write_item]{batch_write_item} \tab The BatchWriteItem operation puts or deletes multiple items in one or more tables \cr
#'  \link[=dynamodb_create_backup]{create_backup} \tab Creates a backup for an existing table \cr
#'  \link[=dynamodb_create_global_table]{create_global_table} \tab Creates a global table from an existing table \cr
#'  \link[=dynamodb_create_table]{create_table} \tab The CreateTable operation adds a new table to your account \cr
#'  \link[=dynamodb_delete_backup]{delete_backup} \tab Deletes an existing backup of a table \cr
#'  \link[=dynamodb_delete_item]{delete_item} \tab Deletes a single item in a table by primary key \cr
#'  \link[=dynamodb_delete_table]{delete_table} \tab The DeleteTable operation deletes a table and all of its items \cr
#'  \link[=dynamodb_describe_backup]{describe_backup} \tab Describes an existing backup of a table \cr
#'  \link[=dynamodb_describe_continuous_backups]{describe_continuous_backups} \tab Checks the status of continuous backups and point in time recovery on the specified table \cr
#'  \link[=dynamodb_describe_endpoints]{describe_endpoints} \tab Returns the regional endpoint information \cr
#'  \link[=dynamodb_describe_global_table]{describe_global_table} \tab Returns information about the specified global table \cr
#'  \link[=dynamodb_describe_global_table_settings]{describe_global_table_settings} \tab Describes region specific settings for a global table \cr
#'  \link[=dynamodb_describe_limits]{describe_limits} \tab Returns the current provisioned-capacity limits for your AWS account in a region, both for the region as a whole and for any one DynamoDB table that you create there\cr
#'  \link[=dynamodb_describe_table]{describe_table} \tab Returns information about the table, including the current status of the table, when it was created, the primary key schema, and any indexes on the table \cr
#'  \link[=dynamodb_describe_time_to_live]{describe_time_to_live} \tab Gives a description of the Time to Live (TTL) status on the specified table \cr
#'  \link[=dynamodb_get_item]{get_item} \tab The GetItem operation returns a set of attributes for the item with the given primary key \cr
#'  \link[=dynamodb_list_backups]{list_backups} \tab List backups associated with an AWS account \cr
#'  \link[=dynamodb_list_global_tables]{list_global_tables} \tab Lists all global tables that have a replica in the specified region \cr
#'  \link[=dynamodb_list_tables]{list_tables} \tab Returns an array of table names associated with the current account and endpoint \cr
#'  \link[=dynamodb_list_tags_of_resource]{list_tags_of_resource} \tab List all tags on an Amazon DynamoDB resource \cr
#'  \link[=dynamodb_put_item]{put_item} \tab Creates a new item, or replaces an old item with a new item \cr
#'  \link[=dynamodb_query]{query} \tab The Query operation finds items based on primary key values \cr
#'  \link[=dynamodb_restore_table_from_backup]{restore_table_from_backup} \tab Creates a new table from an existing backup \cr
#'  \link[=dynamodb_restore_table_to_point_in_time]{restore_table_to_point_in_time} \tab Restores the specified table to the specified point in time within EarliestRestorableDateTime and LatestRestorableDateTime \cr
#'  \link[=dynamodb_scan]{scan} \tab The Scan operation returns one or more items and item attributes by accessing every item in a table or a secondary index \cr
#'  \link[=dynamodb_tag_resource]{tag_resource} \tab Associate a set of tags with an Amazon DynamoDB resource \cr
#'  \link[=dynamodb_transact_get_items]{transact_get_items} \tab TransactGetItems is a synchronous operation that atomically retrieves multiple items from one or more tables (but not from indexes) in a single account and region \cr
#'  \link[=dynamodb_transact_write_items]{transact_write_items} \tab TransactWriteItems is a synchronous write operation that groups up to 10 action requests \cr
#'  \link[=dynamodb_untag_resource]{untag_resource} \tab Removes the association of tags from an Amazon DynamoDB resource \cr
#'  \link[=dynamodb_update_continuous_backups]{update_continuous_backups} \tab UpdateContinuousBackups enables or disables point in time recovery for the specified table \cr
#'  \link[=dynamodb_update_global_table]{update_global_table} \tab Adds or removes replicas in the specified global table \cr
#'  \link[=dynamodb_update_global_table_settings]{update_global_table_settings} \tab Updates settings for a global table \cr
#'  \link[=dynamodb_update_item]{update_item} \tab Edits an existing item's attributes, or adds a new item to the table if it does not already exist \cr
#'  \link[=dynamodb_update_table]{update_table} \tab Modifies the provisioned throughput settings, global secondary indexes, or DynamoDB Streams settings for a given table \cr
#'  \link[=dynamodb_update_time_to_live]{update_time_to_live} \tab The UpdateTimeToLive method will enable or disable TTL for the specified table 
#' }
#'
#' @rdname dynamodb
#' @export
dynamodb <- function() {
  paws.database::dynamodb()
}

#' Amazon DynamoDB Streams
#'
#' @description
#' Amazon DynamoDB
#' 
#' Amazon DynamoDB Streams provides API actions for accessing streams and
#' processing stream records. To learn more about application development
#' with Streams, see [Capturing Table Activity with DynamoDB
#' Streams](http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Streams.html)
#' in the Amazon DynamoDB Developer Guide.
#'
#' @examples
#' # The following example describes a stream with a given stream ARN.
#' \donttest{svc <- dynamodbstreams()
#' svc$describe_stream(
#'   StreamArn = "arn:aws:dynamodb:us-west-2:111122223333:table/Forum/stream/2015-05-20T20:51:1..."
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=dynamodbstreams_describe_stream]{describe_stream} \tab Returns information about a stream, including the current status of the stream, its Amazon Resource Name (ARN), the composition of its shards, and its corresponding DynamoDB table\cr
#'  \link[=dynamodbstreams_get_records]{get_records} \tab Retrieves the stream records from a given shard \cr
#'  \link[=dynamodbstreams_get_shard_iterator]{get_shard_iterator} \tab Returns a shard iterator \cr
#'  \link[=dynamodbstreams_list_streams]{list_streams} \tab Returns an array of stream ARNs associated with the current account and endpoint 
#' }
#'
#' @rdname dynamodbstreams
#' @export
dynamodbstreams <- function() {
  paws.database::dynamodbstreams()
}

#' Amazon ElastiCache
#'
#' @description
#' Amazon ElastiCache is a web service that makes it easier to set up,
#' operate, and scale a distributed cache in the cloud.
#' 
#' With ElastiCache, customers get all of the benefits of a
#' high-performance, in-memory cache with less of the administrative burden
#' involved in launching and managing a distributed cache. The service
#' makes setup, scaling, and cluster failure handling much simpler than in
#' a self-managed cache deployment.
#' 
#' In addition, through integration with Amazon CloudWatch, customers get
#' enhanced visibility into the key performance statistics associated with
#' their cache and can receive alarms if a part of their cache runs hot.
#'
#' @examples
#' \donttest{svc <- elasticache()
#' svc$add_tags_to_resource(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=elasticache_add_tags_to_resource]{add_tags_to_resource} \tab Adds up to 50 cost allocation tags to the named resource \cr
#'  \link[=elasticache_authorize_cache_security_group_ingress]{authorize_cache_security_group_ingress} \tab Allows network ingress to a cache security group \cr
#'  \link[=elasticache_copy_snapshot]{copy_snapshot} \tab Makes a copy of an existing snapshot \cr
#'  \link[=elasticache_create_cache_cluster]{create_cache_cluster} \tab Creates a cluster \cr
#'  \link[=elasticache_create_cache_parameter_group]{create_cache_parameter_group} \tab Creates a new Amazon ElastiCache cache parameter group \cr
#'  \link[=elasticache_create_cache_security_group]{create_cache_security_group} \tab Creates a new cache security group \cr
#'  \link[=elasticache_create_cache_subnet_group]{create_cache_subnet_group} \tab Creates a new cache subnet group \cr
#'  \link[=elasticache_create_replication_group]{create_replication_group} \tab Creates a Redis (cluster mode disabled) or a Redis (cluster mode enabled) replication group \cr
#'  \link[=elasticache_create_snapshot]{create_snapshot} \tab Creates a copy of an entire cluster or replication group at a specific moment in time \cr
#'  \link[=elasticache_decrease_replica_count]{decrease_replica_count} \tab Dynamically decreases the number of replics in a Redis (cluster mode disabled) replication group or the number of replica nodes in one or more node groups (shards) of a Redis (cluster mode enabled) replication group\cr
#'  \link[=elasticache_delete_cache_cluster]{delete_cache_cluster} \tab Deletes a previously provisioned cluster \cr
#'  \link[=elasticache_delete_cache_parameter_group]{delete_cache_parameter_group} \tab Deletes the specified cache parameter group \cr
#'  \link[=elasticache_delete_cache_security_group]{delete_cache_security_group} \tab Deletes a cache security group \cr
#'  \link[=elasticache_delete_cache_subnet_group]{delete_cache_subnet_group} \tab Deletes a cache subnet group \cr
#'  \link[=elasticache_delete_replication_group]{delete_replication_group} \tab Deletes an existing replication group \cr
#'  \link[=elasticache_delete_snapshot]{delete_snapshot} \tab Deletes an existing snapshot \cr
#'  \link[=elasticache_describe_cache_clusters]{describe_cache_clusters} \tab Returns information about all provisioned clusters if no cluster identifier is specified, or about a specific cache cluster if a cluster identifier is supplied \cr
#'  \link[=elasticache_describe_cache_engine_versions]{describe_cache_engine_versions} \tab Returns a list of the available cache engines and their versions \cr
#'  \link[=elasticache_describe_cache_parameter_groups]{describe_cache_parameter_groups} \tab Returns a list of cache parameter group descriptions \cr
#'  \link[=elasticache_describe_cache_parameters]{describe_cache_parameters} \tab Returns the detailed parameter list for a particular cache parameter group \cr
#'  \link[=elasticache_describe_cache_security_groups]{describe_cache_security_groups} \tab Returns a list of cache security group descriptions \cr
#'  \link[=elasticache_describe_cache_subnet_groups]{describe_cache_subnet_groups} \tab Returns a list of cache subnet group descriptions \cr
#'  \link[=elasticache_describe_engine_default_parameters]{describe_engine_default_parameters} \tab Returns the default engine and system parameter information for the specified cache engine \cr
#'  \link[=elasticache_describe_events]{describe_events} \tab Returns events related to clusters, cache security groups, and cache parameter groups \cr
#'  \link[=elasticache_describe_replication_groups]{describe_replication_groups} \tab Returns information about a particular replication group \cr
#'  \link[=elasticache_describe_reserved_cache_nodes]{describe_reserved_cache_nodes} \tab Returns information about reserved cache nodes for this account, or about a specified reserved cache node \cr
#'  \link[=elasticache_describe_reserved_cache_nodes_offerings]{describe_reserved_cache_nodes_offerings} \tab Lists available reserved cache node offerings \cr
#'  \link[=elasticache_describe_snapshots]{describe_snapshots} \tab Returns information about cluster or replication group snapshots \cr
#'  \link[=elasticache_increase_replica_count]{increase_replica_count} \tab Dynamically increases the number of replics in a Redis (cluster mode disabled) replication group or the number of replica nodes in one or more node groups (shards) of a Redis (cluster mode enabled) replication group\cr
#'  \link[=elasticache_list_allowed_node_type_modifications]{list_allowed_node_type_modifications} \tab Lists all available node types that you can scale your Redis cluster's or replication group's current node type up to \cr
#'  \link[=elasticache_list_tags_for_resource]{list_tags_for_resource} \tab Lists all cost allocation tags currently on the named resource \cr
#'  \link[=elasticache_modify_cache_cluster]{modify_cache_cluster} \tab Modifies the settings for a cluster \cr
#'  \link[=elasticache_modify_cache_parameter_group]{modify_cache_parameter_group} \tab Modifies the parameters of a cache parameter group \cr
#'  \link[=elasticache_modify_cache_subnet_group]{modify_cache_subnet_group} \tab Modifies an existing cache subnet group \cr
#'  \link[=elasticache_modify_replication_group]{modify_replication_group} \tab Modifies the settings for a replication group \cr
#'  \link[=elasticache_modify_replication_group_shard_configuration]{modify_replication_group_shard_configuration} \tab Modifies a replication group's shards (node groups) by allowing you to add shards, remove shards, or rebalance the keyspaces among exisiting shards \cr
#'  \link[=elasticache_purchase_reserved_cache_nodes_offering]{purchase_reserved_cache_nodes_offering} \tab Allows you to purchase a reserved cache node offering \cr
#'  \link[=elasticache_reboot_cache_cluster]{reboot_cache_cluster} \tab Reboots some, or all, of the cache nodes within a provisioned cluster \cr
#'  \link[=elasticache_remove_tags_from_resource]{remove_tags_from_resource} \tab Removes the tags identified by the TagKeys list from the named resource \cr
#'  \link[=elasticache_reset_cache_parameter_group]{reset_cache_parameter_group} \tab Modifies the parameters of a cache parameter group to the engine or system default value \cr
#'  \link[=elasticache_revoke_cache_security_group_ingress]{revoke_cache_security_group_ingress} \tab Revokes ingress from a cache security group \cr
#'  \link[=elasticache_test_failover]{test_failover} \tab Represents the input of a TestFailover operation which test automatic failover on a specified node group (called shard in the console) in a replication group (called cluster in the console) 
#' }
#'
#' @rdname elasticache
#' @export
elasticache <- function() {
  paws.database::elasticache()
}

#' Amazon Neptune
#'
#' @description
#' Amazon Neptune is a fast, reliable, fully-managed graph database service
#' that makes it easy to build and run applications that work with highly
#' connected datasets. The core of Amazon Neptune is a purpose-built,
#' high-performance graph database engine optimized for storing billions of
#' relationships and querying the graph with milliseconds latency. Amazon
#' Neptune supports popular graph models Property Graph and W3C\'s RDF, and
#' their respective query languages Apache TinkerPop Gremlin and SPARQL,
#' allowing you to easily build queries that efficiently navigate highly
#' connected datasets. Neptune powers graph use cases such as
#' recommendation engines, fraud detection, knowledge graphs, drug
#' discovery, and network security.
#' 
#' This interface reference for Amazon Neptune contains documentation for a
#' programming or command line interface you can use to manage Amazon
#' Neptune. Note that Amazon Neptune is asynchronous, which means that some
#' interfaces might require techniques such as polling or callback
#' functions to determine when a command has been applied. In this
#' reference, the parameter descriptions indicate whether a command is
#' applied immediately, on the next instance reboot, or during the
#' maintenance window. The reference structure is as follows, and we list
#' following some related topics from the user guide.
#' 
#' **Amazon Neptune API Reference**
#'
#' @examples
#' \donttest{svc <- neptune()
#' svc$add_role_to_db_cluster(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=neptune_add_role_to_db_cluster]{add_role_to_db_cluster} \tab Associates an Identity and Access Management (IAM) role from an Neptune DB cluster \cr
#'  \link[=neptune_add_source_identifier_to_subscription]{add_source_identifier_to_subscription} \tab Adds a source identifier to an existing event notification subscription \cr
#'  \link[=neptune_add_tags_to_resource]{add_tags_to_resource} \tab Adds metadata tags to an Amazon Neptune resource \cr
#'  \link[=neptune_apply_pending_maintenance_action]{apply_pending_maintenance_action} \tab Applies a pending maintenance action to a resource (for example, to a DB instance) \cr
#'  \link[=neptune_copy_db_cluster_parameter_group]{copy_db_cluster_parameter_group} \tab Copies the specified DB cluster parameter group \cr
#'  \link[=neptune_copy_db_cluster_snapshot]{copy_db_cluster_snapshot} \tab Copies a snapshot of a DB cluster \cr
#'  \link[=neptune_copy_db_parameter_group]{copy_db_parameter_group} \tab Copies the specified DB parameter group \cr
#'  \link[=neptune_create_db_cluster]{create_db_cluster} \tab Creates a new Amazon Neptune DB cluster \cr
#'  \link[=neptune_create_db_cluster_parameter_group]{create_db_cluster_parameter_group} \tab Creates a new DB cluster parameter group \cr
#'  \link[=neptune_create_db_cluster_snapshot]{create_db_cluster_snapshot} \tab Creates a snapshot of a DB cluster \cr
#'  \link[=neptune_create_db_instance]{create_db_instance} \tab Creates a new DB instance \cr
#'  \link[=neptune_create_db_parameter_group]{create_db_parameter_group} \tab Creates a new DB parameter group \cr
#'  \link[=neptune_create_db_subnet_group]{create_db_subnet_group} \tab Creates a new DB subnet group \cr
#'  \link[=neptune_create_event_subscription]{create_event_subscription} \tab Creates an event notification subscription \cr
#'  \link[=neptune_delete_db_cluster]{delete_db_cluster} \tab The DeleteDBCluster action deletes a previously provisioned DB cluster \cr
#'  \link[=neptune_delete_db_cluster_parameter_group]{delete_db_cluster_parameter_group} \tab Deletes a specified DB cluster parameter group \cr
#'  \link[=neptune_delete_db_cluster_snapshot]{delete_db_cluster_snapshot} \tab Deletes a DB cluster snapshot \cr
#'  \link[=neptune_delete_db_instance]{delete_db_instance} \tab The DeleteDBInstance action deletes a previously provisioned DB instance \cr
#'  \link[=neptune_delete_db_parameter_group]{delete_db_parameter_group} \tab Deletes a specified DBParameterGroup \cr
#'  \link[=neptune_delete_db_subnet_group]{delete_db_subnet_group} \tab Deletes a DB subnet group \cr
#'  \link[=neptune_delete_event_subscription]{delete_event_subscription} \tab Deletes an event notification subscription \cr
#'  \link[=neptune_describe_db_cluster_parameter_groups]{describe_db_cluster_parameter_groups} \tab Returns a list of DBClusterParameterGroup descriptions \cr
#'  \link[=neptune_describe_db_cluster_parameters]{describe_db_cluster_parameters} \tab Returns the detailed parameter list for a particular DB cluster parameter group \cr
#'  \link[=neptune_describe_db_cluster_snapshot_attributes]{describe_db_cluster_snapshot_attributes} \tab Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster snapshot \cr
#'  \link[=neptune_describe_db_cluster_snapshots]{describe_db_cluster_snapshots} \tab Returns information about DB cluster snapshots \cr
#'  \link[=neptune_describe_db_clusters]{describe_db_clusters} \tab Returns information about provisioned DB clusters \cr
#'  \link[=neptune_describe_db_engine_versions]{describe_db_engine_versions} \tab Returns a list of the available DB engines \cr
#'  \link[=neptune_describe_db_instances]{describe_db_instances} \tab Returns information about provisioned instances \cr
#'  \link[=neptune_describe_db_parameter_groups]{describe_db_parameter_groups} \tab Returns a list of DBParameterGroup descriptions \cr
#'  \link[=neptune_describe_db_parameters]{describe_db_parameters} \tab Returns the detailed parameter list for a particular DB parameter group \cr
#'  \link[=neptune_describe_db_subnet_groups]{describe_db_subnet_groups} \tab Returns a list of DBSubnetGroup descriptions \cr
#'  \link[=neptune_describe_engine_default_cluster_parameters]{describe_engine_default_cluster_parameters} \tab Returns the default engine and system parameter information for the cluster database engine \cr
#'  \link[=neptune_describe_engine_default_parameters]{describe_engine_default_parameters} \tab Returns the default engine and system parameter information for the specified database engine \cr
#'  \link[=neptune_describe_event_categories]{describe_event_categories} \tab Displays a list of categories for all event source types, or, if specified, for a specified source type \cr
#'  \link[=neptune_describe_event_subscriptions]{describe_event_subscriptions} \tab Lists all the subscription descriptions for a customer account \cr
#'  \link[=neptune_describe_events]{describe_events} \tab Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter groups for the past 14 days\cr
#'  \link[=neptune_describe_orderable_db_instance_options]{describe_orderable_db_instance_options} \tab Returns a list of orderable DB instance options for the specified engine \cr
#'  \link[=neptune_describe_pending_maintenance_actions]{describe_pending_maintenance_actions} \tab Returns a list of resources (for example, DB instances) that have at least one pending maintenance action \cr
#'  \link[=neptune_describe_valid_db_instance_modifications]{describe_valid_db_instance_modifications} \tab You can call DescribeValidDBInstanceModifications to learn what modifications you can make to your DB instance \cr
#'  \link[=neptune_failover_db_cluster]{failover_db_cluster} \tab Forces a failover for a DB cluster \cr
#'  \link[=neptune_list_tags_for_resource]{list_tags_for_resource} \tab Lists all tags on an Amazon Neptune resource \cr
#'  \link[=neptune_modify_db_cluster]{modify_db_cluster} \tab Modify a setting for a DB cluster \cr
#'  \link[=neptune_modify_db_cluster_parameter_group]{modify_db_cluster_parameter_group} \tab Modifies the parameters of a DB cluster parameter group \cr
#'  \link[=neptune_modify_db_cluster_snapshot_attribute]{modify_db_cluster_snapshot_attribute} \tab Adds an attribute and values to, or removes an attribute and values from, a manual DB cluster snapshot \cr
#'  \link[=neptune_modify_db_instance]{modify_db_instance} \tab Modifies settings for a DB instance \cr
#'  \link[=neptune_modify_db_parameter_group]{modify_db_parameter_group} \tab Modifies the parameters of a DB parameter group \cr
#'  \link[=neptune_modify_db_subnet_group]{modify_db_subnet_group} \tab Modifies an existing DB subnet group \cr
#'  \link[=neptune_modify_event_subscription]{modify_event_subscription} \tab Modifies an existing event notification subscription \cr
#'  \link[=neptune_promote_read_replica_db_cluster]{promote_read_replica_db_cluster} \tab Promotes a Read Replica DB cluster to a standalone DB cluster \cr
#'  \link[=neptune_reboot_db_instance]{reboot_db_instance} \tab You might need to reboot your DB instance, usually for maintenance reasons \cr
#'  \link[=neptune_remove_role_from_db_cluster]{remove_role_from_db_cluster} \tab Disassociates an Identity and Access Management (IAM) role from a DB cluster \cr
#'  \link[=neptune_remove_source_identifier_from_subscription]{remove_source_identifier_from_subscription} \tab Removes a source identifier from an existing event notification subscription \cr
#'  \link[=neptune_remove_tags_from_resource]{remove_tags_from_resource} \tab Removes metadata tags from an Amazon Neptune resource \cr
#'  \link[=neptune_reset_db_cluster_parameter_group]{reset_db_cluster_parameter_group} \tab Modifies the parameters of a DB cluster parameter group to the default value \cr
#'  \link[=neptune_reset_db_parameter_group]{reset_db_parameter_group} \tab Modifies the parameters of a DB parameter group to the engine/system default value \cr
#'  \link[=neptune_restore_db_cluster_from_snapshot]{restore_db_cluster_from_snapshot} \tab Creates a new DB cluster from a DB snapshot or DB cluster snapshot \cr
#'  \link[=neptune_restore_db_cluster_to_point_in_time]{restore_db_cluster_to_point_in_time} \tab Restores a DB cluster to an arbitrary point in time 
#' }
#'
#' @rdname neptune
#' @export
neptune <- function() {
  paws.database::neptune()
}

#' Amazon Relational Database Service
#'
#' @description
#' Amazon Relational Database Service (Amazon RDS) is a web service that
#' makes it easier to set up, operate, and scale a relational database in
#' the cloud. It provides cost-efficient, resizable capacity for an
#' industry-standard relational database and manages common database
#' administration tasks, freeing up developers to focus on what makes their
#' applications and businesses unique.
#' 
#' Amazon RDS gives you access to the capabilities of a MySQL, MariaDB,
#' PostgreSQL, Microsoft SQL Server, Oracle, or Amazon Aurora database
#' server. These capabilities mean that the code, applications, and tools
#' you already use today with your existing databases work with Amazon RDS
#' without modification. Amazon RDS automatically backs up your database
#' and maintains the database software that powers your DB instance. Amazon
#' RDS is flexible: you can scale your DB instance\'s compute resources and
#' storage capacity to meet your application\'s demand. As with all Amazon
#' Web Services, there are no up-front investments, and you pay only for
#' the resources you use.
#' 
#' This interface reference for Amazon RDS contains documentation for a
#' programming or command line interface you can use to manage Amazon RDS.
#' Note that Amazon RDS is asynchronous, which means that some interfaces
#' might require techniques such as polling or callback functions to
#' determine when a command has been applied. In this reference, the
#' parameter descriptions indicate whether a command is applied
#' immediately, on the next instance reboot, or during the maintenance
#' window. The reference structure is as follows, and we list following
#' some related topics from the user guide.
#' 
#' **Amazon RDS API Reference**
#' 
#' -   For the alphabetical list of API actions, see [API
#'     Actions](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html).
#' 
#' -   For the alphabetical list of data types, see [Data
#'     Types](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Types.html).
#' 
#' -   For a list of common query parameters, see [Common
#'     Parameters](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonParameters.html).
#' 
#' -   For descriptions of the error codes, see [Common
#'     Errors](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonErrors.html).
#' 
#' **Amazon RDS User Guide**
#' 
#' -   For a summary of the Amazon RDS interfaces, see [Available RDS
#'     Interfaces](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces).
#' 
#' -   For more information about how to use the Query API, see [Using the
#'     Query
#'     API](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Using_the_Query_API.html).
#'
#' @examples
#' \donttest{svc <- rds()
#' svc$add_role_to_db_cluster(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=rds_add_role_to_db_cluster]{add_role_to_db_cluster} \tab Associates an Identity and Access Management (IAM) role from an Amazon Aurora DB cluster \cr
#'  \link[=rds_add_role_to_db_instance]{add_role_to_db_instance} \tab Associates an AWS Identity and Access Management (IAM) role with a DB instance \cr
#'  \link[=rds_add_source_identifier_to_subscription]{add_source_identifier_to_subscription} \tab Adds a source identifier to an existing RDS event notification subscription \cr
#'  \link[=rds_add_tags_to_resource]{add_tags_to_resource} \tab Adds metadata tags to an Amazon RDS resource \cr
#'  \link[=rds_apply_pending_maintenance_action]{apply_pending_maintenance_action} \tab Applies a pending maintenance action to a resource (for example, to a DB instance) \cr
#'  \link[=rds_authorize_db_security_group_ingress]{authorize_db_security_group_ingress} \tab Enables ingress to a DBSecurityGroup using one of two forms of authorization \cr
#'  \link[=rds_backtrack_db_cluster]{backtrack_db_cluster} \tab Backtracks a DB cluster to a specific time, without creating a new DB cluster \cr
#'  \link[=rds_copy_db_cluster_parameter_group]{copy_db_cluster_parameter_group} \tab Copies the specified DB cluster parameter group \cr
#'  \link[=rds_copy_db_cluster_snapshot]{copy_db_cluster_snapshot} \tab Copies a snapshot of a DB cluster \cr
#'  \link[=rds_copy_db_parameter_group]{copy_db_parameter_group} \tab Copies the specified DB parameter group \cr
#'  \link[=rds_copy_db_snapshot]{copy_db_snapshot} \tab Copies the specified DB snapshot \cr
#'  \link[=rds_copy_option_group]{copy_option_group} \tab Copies the specified option group \cr
#'  \link[=rds_create_db_cluster]{create_db_cluster} \tab Creates a new Amazon Aurora DB cluster \cr
#'  \link[=rds_create_db_cluster_endpoint]{create_db_cluster_endpoint} \tab Creates a new custom endpoint and associates it with an Amazon Aurora DB cluster \cr
#'  \link[=rds_create_db_cluster_parameter_group]{create_db_cluster_parameter_group} \tab Creates a new DB cluster parameter group \cr
#'  \link[=rds_create_db_cluster_snapshot]{create_db_cluster_snapshot} \tab Creates a snapshot of a DB cluster \cr
#'  \link[=rds_create_db_instance]{create_db_instance} \tab Creates a new DB instance \cr
#'  \link[=rds_create_db_instance_read_replica]{create_db_instance_read_replica} \tab Creates a new DB instance that acts as a Read Replica for an existing source DB instance \cr
#'  \link[=rds_create_db_parameter_group]{create_db_parameter_group} \tab Creates a new DB parameter group \cr
#'  \link[=rds_create_db_security_group]{create_db_security_group} \tab Creates a new DB security group \cr
#'  \link[=rds_create_db_snapshot]{create_db_snapshot} \tab Creates a DBSnapshot \cr
#'  \link[=rds_create_db_subnet_group]{create_db_subnet_group} \tab Creates a new DB subnet group \cr
#'  \link[=rds_create_event_subscription]{create_event_subscription} \tab Creates an RDS event notification subscription \cr
#'  \link[=rds_create_global_cluster]{create_global_cluster} \tab Creates an Aurora global database spread across multiple regions \cr
#'  \link[=rds_create_option_group]{create_option_group} \tab Creates a new option group \cr
#'  \link[=rds_delete_db_cluster]{delete_db_cluster} \tab The DeleteDBCluster action deletes a previously provisioned DB cluster \cr
#'  \link[=rds_delete_db_cluster_endpoint]{delete_db_cluster_endpoint} \tab Deletes a custom endpoint and removes it from an Amazon Aurora DB cluster \cr
#'  \link[=rds_delete_db_cluster_parameter_group]{delete_db_cluster_parameter_group} \tab Deletes a specified DB cluster parameter group \cr
#'  \link[=rds_delete_db_cluster_snapshot]{delete_db_cluster_snapshot} \tab Deletes a DB cluster snapshot \cr
#'  \link[=rds_delete_db_instance]{delete_db_instance} \tab The DeleteDBInstance action deletes a previously provisioned DB instance \cr
#'  \link[=rds_delete_db_instance_automated_backup]{delete_db_instance_automated_backup} \tab Deletes automated backups based on the source instance's DbiResourceId value or the restorable instance's resource ID \cr
#'  \link[=rds_delete_db_parameter_group]{delete_db_parameter_group} \tab Deletes a specified DB parameter group \cr
#'  \link[=rds_delete_db_security_group]{delete_db_security_group} \tab Deletes a DB security group \cr
#'  \link[=rds_delete_db_snapshot]{delete_db_snapshot} \tab Deletes a DB snapshot \cr
#'  \link[=rds_delete_db_subnet_group]{delete_db_subnet_group} \tab Deletes a DB subnet group \cr
#'  \link[=rds_delete_event_subscription]{delete_event_subscription} \tab Deletes an RDS event notification subscription \cr
#'  \link[=rds_delete_global_cluster]{delete_global_cluster} \tab Deletes a global database cluster \cr
#'  \link[=rds_delete_option_group]{delete_option_group} \tab Deletes an existing option group \cr
#'  \link[=rds_describe_account_attributes]{describe_account_attributes} \tab Lists all of the attributes for a customer account \cr
#'  \link[=rds_describe_certificates]{describe_certificates} \tab Lists the set of CA certificates provided by Amazon RDS for this AWS account \cr
#'  \link[=rds_describe_db_cluster_backtracks]{describe_db_cluster_backtracks} \tab Returns information about backtracks for a DB cluster \cr
#'  \link[=rds_describe_db_cluster_endpoints]{describe_db_cluster_endpoints} \tab Returns information about endpoints for an Amazon Aurora DB cluster \cr
#'  \link[=rds_describe_db_cluster_parameter_groups]{describe_db_cluster_parameter_groups} \tab Returns a list of DBClusterParameterGroup descriptions \cr
#'  \link[=rds_describe_db_cluster_parameters]{describe_db_cluster_parameters} \tab Returns the detailed parameter list for a particular DB cluster parameter group \cr
#'  \link[=rds_describe_db_cluster_snapshot_attributes]{describe_db_cluster_snapshot_attributes} \tab Returns a list of DB cluster snapshot attribute names and values for a manual DB cluster snapshot \cr
#'  \link[=rds_describe_db_cluster_snapshots]{describe_db_cluster_snapshots} \tab Returns information about DB cluster snapshots \cr
#'  \link[=rds_describe_db_clusters]{describe_db_clusters} \tab Returns information about provisioned Aurora DB clusters \cr
#'  \link[=rds_describe_db_engine_versions]{describe_db_engine_versions} \tab Returns a list of the available DB engines \cr
#'  \link[=rds_describe_db_instance_automated_backups]{describe_db_instance_automated_backups} \tab Displays backups for both current and deleted instances \cr
#'  \link[=rds_describe_db_instances]{describe_db_instances} \tab Returns information about provisioned RDS instances \cr
#'  \link[=rds_describe_db_log_files]{describe_db_log_files} \tab Returns a list of DB log files for the DB instance \cr
#'  \link[=rds_describe_db_parameter_groups]{describe_db_parameter_groups} \tab Returns a list of DBParameterGroup descriptions \cr
#'  \link[=rds_describe_db_parameters]{describe_db_parameters} \tab Returns the detailed parameter list for a particular DB parameter group \cr
#'  \link[=rds_describe_db_security_groups]{describe_db_security_groups} \tab Returns a list of DBSecurityGroup descriptions \cr
#'  \link[=rds_describe_db_snapshot_attributes]{describe_db_snapshot_attributes} \tab Returns a list of DB snapshot attribute names and values for a manual DB snapshot \cr
#'  \link[=rds_describe_db_snapshots]{describe_db_snapshots} \tab Returns information about DB snapshots \cr
#'  \link[=rds_describe_db_subnet_groups]{describe_db_subnet_groups} \tab Returns a list of DBSubnetGroup descriptions \cr
#'  \link[=rds_describe_engine_default_cluster_parameters]{describe_engine_default_cluster_parameters} \tab Returns the default engine and system parameter information for the cluster database engine \cr
#'  \link[=rds_describe_engine_default_parameters]{describe_engine_default_parameters} \tab Returns the default engine and system parameter information for the specified database engine \cr
#'  \link[=rds_describe_event_categories]{describe_event_categories} \tab Displays a list of categories for all event source types, or, if specified, for a specified source type \cr
#'  \link[=rds_describe_event_subscriptions]{describe_event_subscriptions} \tab Lists all the subscription descriptions for a customer account \cr
#'  \link[=rds_describe_events]{describe_events} \tab Returns events related to DB instances, DB security groups, DB snapshots, and DB parameter groups for the past 14 days \cr
#'  \link[=rds_describe_global_clusters]{describe_global_clusters} \tab Returns information about Aurora global database clusters \cr
#'  \link[=rds_describe_option_group_options]{describe_option_group_options} \tab Describes all available options \cr
#'  \link[=rds_describe_option_groups]{describe_option_groups} \tab Describes the available option groups \cr
#'  \link[=rds_describe_orderable_db_instance_options]{describe_orderable_db_instance_options} \tab Returns a list of orderable DB instance options for the specified engine \cr
#'  \link[=rds_describe_pending_maintenance_actions]{describe_pending_maintenance_actions} \tab Returns a list of resources (for example, DB instances) that have at least one pending maintenance action \cr
#'  \link[=rds_describe_reserved_db_instances]{describe_reserved_db_instances} \tab Returns information about reserved DB instances for this account, or about a specified reserved DB instance \cr
#'  \link[=rds_describe_reserved_db_instances_offerings]{describe_reserved_db_instances_offerings} \tab Lists available reserved DB instance offerings \cr
#'  \link[=rds_describe_source_regions]{describe_source_regions} \tab Returns a list of the source AWS Regions where the current AWS Region can create a Read Replica or copy a DB snapshot from \cr
#'  \link[=rds_describe_valid_db_instance_modifications]{describe_valid_db_instance_modifications} \tab You can call DescribeValidDBInstanceModifications to learn what modifications you can make to your DB instance \cr
#'  \link[=rds_download_db_log_file_portion]{download_db_log_file_portion} \tab Downloads all or a portion of the specified log file, up to 1 MB in size \cr
#'  \link[=rds_failover_db_cluster]{failover_db_cluster} \tab Forces a failover for a DB cluster \cr
#'  \link[=rds_list_tags_for_resource]{list_tags_for_resource} \tab Lists all tags on an Amazon RDS resource \cr
#'  \link[=rds_modify_current_db_cluster_capacity]{modify_current_db_cluster_capacity} \tab Set the capacity of an Aurora Serverless DB cluster to a specific value \cr
#'  \link[=rds_modify_db_cluster]{modify_db_cluster} \tab Modify a setting for an Amazon Aurora DB cluster \cr
#'  \link[=rds_modify_db_cluster_endpoint]{modify_db_cluster_endpoint} \tab Modifies the properties of an endpoint in an Amazon Aurora DB cluster \cr
#'  \link[=rds_modify_db_cluster_parameter_group]{modify_db_cluster_parameter_group} \tab Modifies the parameters of a DB cluster parameter group \cr
#'  \link[=rds_modify_db_cluster_snapshot_attribute]{modify_db_cluster_snapshot_attribute} \tab Adds an attribute and values to, or removes an attribute and values from, a manual DB cluster snapshot \cr
#'  \link[=rds_modify_db_instance]{modify_db_instance} \tab Modifies settings for a DB instance \cr
#'  \link[=rds_modify_db_parameter_group]{modify_db_parameter_group} \tab Modifies the parameters of a DB parameter group \cr
#'  \link[=rds_modify_db_snapshot]{modify_db_snapshot} \tab Updates a manual DB snapshot, which can be encrypted or not encrypted, with a new engine version \cr
#'  \link[=rds_modify_db_snapshot_attribute]{modify_db_snapshot_attribute} \tab Adds an attribute and values to, or removes an attribute and values from, a manual DB snapshot \cr
#'  \link[=rds_modify_db_subnet_group]{modify_db_subnet_group} \tab Modifies an existing DB subnet group \cr
#'  \link[=rds_modify_event_subscription]{modify_event_subscription} \tab Modifies an existing RDS event notification subscription \cr
#'  \link[=rds_modify_global_cluster]{modify_global_cluster} \tab Modify a setting for an Amazon Aurora global cluster \cr
#'  \link[=rds_modify_option_group]{modify_option_group} \tab Modifies an existing option group \cr
#'  \link[=rds_promote_read_replica]{promote_read_replica} \tab Promotes a Read Replica DB instance to a standalone DB instance \cr
#'  \link[=rds_promote_read_replica_db_cluster]{promote_read_replica_db_cluster} \tab Promotes a Read Replica DB cluster to a standalone DB cluster \cr
#'  \link[=rds_purchase_reserved_db_instances_offering]{purchase_reserved_db_instances_offering} \tab Purchases a reserved DB instance offering \cr
#'  \link[=rds_reboot_db_instance]{reboot_db_instance} \tab You might need to reboot your DB instance, usually for maintenance reasons \cr
#'  \link[=rds_remove_from_global_cluster]{remove_from_global_cluster} \tab Detaches an Aurora secondary cluster from an Aurora global database cluster \cr
#'  \link[=rds_remove_role_from_db_cluster]{remove_role_from_db_cluster} \tab Disassociates an AWS Identity and Access Management (IAM) role from an Amazon Aurora DB cluster \cr
#'  \link[=rds_remove_role_from_db_instance]{remove_role_from_db_instance} \tab Disassociates an AWS Identity and Access Management (IAM) role from a DB instance \cr
#'  \link[=rds_remove_source_identifier_from_subscription]{remove_source_identifier_from_subscription} \tab Removes a source identifier from an existing RDS event notification subscription \cr
#'  \link[=rds_remove_tags_from_resource]{remove_tags_from_resource} \tab Removes metadata tags from an Amazon RDS resource \cr
#'  \link[=rds_reset_db_cluster_parameter_group]{reset_db_cluster_parameter_group} \tab Modifies the parameters of a DB cluster parameter group to the default value \cr
#'  \link[=rds_reset_db_parameter_group]{reset_db_parameter_group} \tab Modifies the parameters of a DB parameter group to the engine/system default value \cr
#'  \link[=rds_restore_db_cluster_from_s3]{restore_db_cluster_from_s3} \tab Creates an Amazon Aurora DB cluster from data stored in an Amazon S3 bucket \cr
#'  \link[=rds_restore_db_cluster_from_snapshot]{restore_db_cluster_from_snapshot} \tab Creates a new DB cluster from a DB snapshot or DB cluster snapshot \cr
#'  \link[=rds_restore_db_cluster_to_point_in_time]{restore_db_cluster_to_point_in_time} \tab Restores a DB cluster to an arbitrary point in time \cr
#'  \link[=rds_restore_db_instance_from_db_snapshot]{restore_db_instance_from_db_snapshot} \tab Creates a new DB instance from a DB snapshot \cr
#'  \link[=rds_restore_db_instance_from_s3]{restore_db_instance_from_s3} \tab Amazon Relational Database Service (Amazon RDS) supports importing MySQL databases by using backup files \cr
#'  \link[=rds_restore_db_instance_to_point_in_time]{restore_db_instance_to_point_in_time} \tab Restores a DB instance to an arbitrary point in time \cr
#'  \link[=rds_revoke_db_security_group_ingress]{revoke_db_security_group_ingress} \tab Revokes ingress from a DBSecurityGroup for previously authorized IP ranges or EC2 or VPC Security Groups \cr
#'  \link[=rds_start_db_cluster]{start_db_cluster} \tab Starts an Amazon Aurora DB cluster that was stopped using the AWS console, the stop-db-cluster AWS CLI command, or the StopDBCluster action\cr
#'  \link[=rds_start_db_instance]{start_db_instance} \tab Starts an Amazon RDS DB instance that was stopped using the AWS console, the stop-db-instance AWS CLI command, or the StopDBInstance action\cr
#'  \link[=rds_stop_db_cluster]{stop_db_cluster} \tab Stops an Amazon Aurora DB cluster \cr
#'  \link[=rds_stop_db_instance]{stop_db_instance} \tab Stops an Amazon RDS DB instance 
#' }
#'
#' @rdname rds
#' @export
rds <- function() {
  paws.database::rds()
}

#' AWS RDS DataService
#'
#' @description
#' AWS RDS DataService provides Http Endpoint to query RDS databases.
#'
#' @examples
#' \donttest{svc <- rdsdataservice()
#' svc$execute_sql(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=rdsdataservice_execute_sql]{execute_sql} \tab Executes any SQL statement on the target database synchronously
#' }
#'
#' @rdname rdsdataservice
#' @export
rdsdataservice <- function() {
  paws.database::rdsdataservice()
}

#' Amazon Redshift
#'
#' @description
#' **Overview**
#' 
#' This is an interface reference for Amazon Redshift. It contains
#' documentation for one of the programming or command line interfaces you
#' can use to manage Amazon Redshift clusters. Note that Amazon Redshift is
#' asynchronous, which means that some interfaces may require techniques,
#' such as polling or asynchronous callback handlers, to determine when a
#' command has been applied. In this reference, the parameter descriptions
#' indicate whether a change is applied immediately, on the next instance
#' reboot, or during the next maintenance window. For a summary of the
#' Amazon Redshift cluster management interfaces, go to [Using the Amazon
#' Redshift Management
#' Interfaces](http://docs.aws.amazon.com/redshift/latest/mgmt/using-aws-sdk.html).
#' 
#' Amazon Redshift manages all the work of setting up, operating, and
#' scaling a data warehouse: provisioning capacity, monitoring and backing
#' up the cluster, and applying patches and upgrades to the Amazon Redshift
#' engine. You can focus on using your data to acquire new insights for
#' your business and customers.
#' 
#' If you are a first-time user of Amazon Redshift, we recommend that you
#' begin by reading the [Amazon Redshift Getting Started
#' Guide](http://docs.aws.amazon.com/redshift/latest/gsg/getting-started.html).
#' 
#' If you are a database developer, the [Amazon Redshift Database Developer
#' Guide](http://docs.aws.amazon.com/redshift/latest/dg/welcome.html)
#' explains how to design, build, query, and maintain the databases that
#' make up your data warehouse.
#'
#' @examples
#' \donttest{svc <- redshift()
#' svc$accept_reserved_node_exchange(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=redshift_accept_reserved_node_exchange]{accept_reserved_node_exchange} \tab Exchanges a DC1 Reserved Node for a DC2 Reserved Node with no changes to the configuration (term, payment type, or number of nodes) and no additional costs \cr
#'  \link[=redshift_authorize_cluster_security_group_ingress]{authorize_cluster_security_group_ingress} \tab Adds an inbound (ingress) rule to an Amazon Redshift security group \cr
#'  \link[=redshift_authorize_snapshot_access]{authorize_snapshot_access} \tab Authorizes the specified AWS customer account to restore the specified snapshot \cr
#'  \link[=redshift_batch_delete_cluster_snapshots]{batch_delete_cluster_snapshots} \tab Deletes a set of cluster snapshots \cr
#'  \link[=redshift_batch_modify_cluster_snapshots]{batch_modify_cluster_snapshots} \tab Modifies the settings for a list of snapshots \cr
#'  \link[=redshift_cancel_resize]{cancel_resize} \tab Cancels a resize operation \cr
#'  \link[=redshift_copy_cluster_snapshot]{copy_cluster_snapshot} \tab Copies the specified automated cluster snapshot to a new manual cluster snapshot \cr
#'  \link[=redshift_create_cluster]{create_cluster} \tab Creates a new cluster \cr
#'  \link[=redshift_create_cluster_parameter_group]{create_cluster_parameter_group} \tab Creates an Amazon Redshift parameter group \cr
#'  \link[=redshift_create_cluster_security_group]{create_cluster_security_group} \tab Creates a new Amazon Redshift security group \cr
#'  \link[=redshift_create_cluster_snapshot]{create_cluster_snapshot} \tab Creates a manual snapshot of the specified cluster \cr
#'  \link[=redshift_create_cluster_subnet_group]{create_cluster_subnet_group} \tab Creates a new Amazon Redshift subnet group \cr
#'  \link[=redshift_create_event_subscription]{create_event_subscription} \tab Creates an Amazon Redshift event notification subscription \cr
#'  \link[=redshift_create_hsm_client_certificate]{create_hsm_client_certificate} \tab Creates an HSM client certificate that an Amazon Redshift cluster will use to connect to the client's HSM in order to store and retrieve the keys used to encrypt the cluster databases \cr
#'  \link[=redshift_create_hsm_configuration]{create_hsm_configuration} \tab Creates an HSM configuration that contains the information required by an Amazon Redshift cluster to store and use database encryption keys in a Hardware Security Module (HSM) \cr
#'  \link[=redshift_create_snapshot_copy_grant]{create_snapshot_copy_grant} \tab Creates a snapshot copy grant that permits Amazon Redshift to use a customer master key (CMK) from AWS Key Management Service (AWS KMS) to encrypt copied snapshots in a destination region \cr
#'  \link[=redshift_create_snapshot_schedule]{create_snapshot_schedule} \tab Creates a new snapshot schedule \cr
#'  \link[=redshift_create_tags]{create_tags} \tab Adds one or more tags to a specified resource \cr
#'  \link[=redshift_delete_cluster]{delete_cluster} \tab Deletes a previously provisioned cluster \cr
#'  \link[=redshift_delete_cluster_parameter_group]{delete_cluster_parameter_group} \tab Deletes a specified Amazon Redshift parameter group \cr
#'  \link[=redshift_delete_cluster_security_group]{delete_cluster_security_group} \tab Deletes an Amazon Redshift security group \cr
#'  \link[=redshift_delete_cluster_snapshot]{delete_cluster_snapshot} \tab Deletes the specified manual snapshot \cr
#'  \link[=redshift_delete_cluster_subnet_group]{delete_cluster_subnet_group} \tab Deletes the specified cluster subnet group \cr
#'  \link[=redshift_delete_event_subscription]{delete_event_subscription} \tab Deletes an Amazon Redshift event notification subscription \cr
#'  \link[=redshift_delete_hsm_client_certificate]{delete_hsm_client_certificate} \tab Deletes the specified HSM client certificate \cr
#'  \link[=redshift_delete_hsm_configuration]{delete_hsm_configuration} \tab Deletes the specified Amazon Redshift HSM configuration \cr
#'  \link[=redshift_delete_snapshot_copy_grant]{delete_snapshot_copy_grant} \tab Deletes the specified snapshot copy grant \cr
#'  \link[=redshift_delete_snapshot_schedule]{delete_snapshot_schedule} \tab Deletes a snapshot schedule \cr
#'  \link[=redshift_delete_tags]{delete_tags} \tab Deletes a tag or tags from a resource \cr
#'  \link[=redshift_describe_account_attributes]{describe_account_attributes} \tab Returns a list of attributes attached to an account \cr
#'  \link[=redshift_describe_cluster_db_revisions]{describe_cluster_db_revisions} \tab Returns an array of ClusterDbRevision objects \cr
#'  \link[=redshift_describe_cluster_parameter_groups]{describe_cluster_parameter_groups} \tab Returns a list of Amazon Redshift parameter groups, including parameter groups you created and the default parameter group \cr
#'  \link[=redshift_describe_cluster_parameters]{describe_cluster_parameters} \tab Returns a detailed list of parameters contained within the specified Amazon Redshift parameter group \cr
#'  \link[=redshift_describe_cluster_security_groups]{describe_cluster_security_groups} \tab Returns information about Amazon Redshift security groups \cr
#'  \link[=redshift_describe_cluster_snapshots]{describe_cluster_snapshots} \tab Returns one or more snapshot objects, which contain metadata about your cluster snapshots \cr
#'  \link[=redshift_describe_cluster_subnet_groups]{describe_cluster_subnet_groups} \tab Returns one or more cluster subnet group objects, which contain metadata about your cluster subnet groups \cr
#'  \link[=redshift_describe_cluster_tracks]{describe_cluster_tracks} \tab Returns a list of all the available maintenance tracks \cr
#'  \link[=redshift_describe_cluster_versions]{describe_cluster_versions} \tab Returns descriptions of the available Amazon Redshift cluster versions \cr
#'  \link[=redshift_describe_clusters]{describe_clusters} \tab Returns properties of provisioned clusters including general cluster properties, cluster database properties, maintenance and backup properties, and security and access properties \cr
#'  \link[=redshift_describe_default_cluster_parameters]{describe_default_cluster_parameters} \tab Returns a list of parameter settings for the specified parameter group family \cr
#'  \link[=redshift_describe_event_categories]{describe_event_categories} \tab Displays a list of event categories for all event source types, or for a specified source type \cr
#'  \link[=redshift_describe_event_subscriptions]{describe_event_subscriptions} \tab Lists descriptions of all the Amazon Redshift event notification subscriptions for a customer account \cr
#'  \link[=redshift_describe_events]{describe_events} \tab Returns events related to clusters, security groups, snapshots, and parameter groups for the past 14 days \cr
#'  \link[=redshift_describe_hsm_client_certificates]{describe_hsm_client_certificates} \tab Returns information about the specified HSM client certificate \cr
#'  \link[=redshift_describe_hsm_configurations]{describe_hsm_configurations} \tab Returns information about the specified Amazon Redshift HSM configuration \cr
#'  \link[=redshift_describe_logging_status]{describe_logging_status} \tab Describes whether information, such as queries and connection attempts, is being logged for the specified Amazon Redshift cluster \cr
#'  \link[=redshift_describe_orderable_cluster_options]{describe_orderable_cluster_options} \tab Returns a list of orderable cluster options \cr
#'  \link[=redshift_describe_reserved_node_offerings]{describe_reserved_node_offerings} \tab Returns a list of the available reserved node offerings by Amazon Redshift with their descriptions including the node type, the fixed and recurring costs of reserving the node and duration the node will be reserved for you\cr
#'  \link[=redshift_describe_reserved_nodes]{describe_reserved_nodes} \tab Returns the descriptions of the reserved nodes \cr
#'  \link[=redshift_describe_resize]{describe_resize} \tab Returns information about the last resize operation for the specified cluster \cr
#'  \link[=redshift_describe_snapshot_copy_grants]{describe_snapshot_copy_grants} \tab Returns a list of snapshot copy grants owned by the AWS account in the destination region \cr
#'  \link[=redshift_describe_snapshot_schedules]{describe_snapshot_schedules} \tab Returns a list of snapshot schedules \cr
#'  \link[=redshift_describe_storage]{describe_storage} \tab Returns the total amount of snapshot usage and provisioned storage for a user in megabytes \cr
#'  \link[=redshift_describe_table_restore_status]{describe_table_restore_status} \tab Lists the status of one or more table restore requests made using the RestoreTableFromClusterSnapshot API action \cr
#'  \link[=redshift_describe_tags]{describe_tags} \tab Returns a list of tags \cr
#'  \link[=redshift_disable_logging]{disable_logging} \tab Stops logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster \cr
#'  \link[=redshift_disable_snapshot_copy]{disable_snapshot_copy} \tab Disables the automatic copying of snapshots from one region to another region for a specified cluster \cr
#'  \link[=redshift_enable_logging]{enable_logging} \tab Starts logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster \cr
#'  \link[=redshift_enable_snapshot_copy]{enable_snapshot_copy} \tab Enables the automatic copy of snapshots from one region to another region for a specified cluster \cr
#'  \link[=redshift_get_cluster_credentials]{get_cluster_credentials} \tab Returns a database user name and temporary password with temporary authorization to log on to an Amazon Redshift database \cr
#'  \link[=redshift_get_reserved_node_exchange_offerings]{get_reserved_node_exchange_offerings} \tab Returns an array of DC2 ReservedNodeOfferings that matches the payment type, term, and usage price of the given DC1 reserved node \cr
#'  \link[=redshift_modify_cluster]{modify_cluster} \tab Modifies the settings for a cluster \cr
#'  \link[=redshift_modify_cluster_db_revision]{modify_cluster_db_revision} \tab Modifies the database revision of a cluster \cr
#'  \link[=redshift_modify_cluster_iam_roles]{modify_cluster_iam_roles} \tab Modifies the list of AWS Identity and Access Management (IAM) roles that can be used by the cluster to access other AWS services \cr
#'  \link[=redshift_modify_cluster_maintenance]{modify_cluster_maintenance} \tab Modifies the maintenance settings of a cluster \cr
#'  \link[=redshift_modify_cluster_parameter_group]{modify_cluster_parameter_group} \tab Modifies the parameters of a parameter group \cr
#'  \link[=redshift_modify_cluster_snapshot]{modify_cluster_snapshot} \tab Modifies the settings for a snapshot \cr
#'  \link[=redshift_modify_cluster_snapshot_schedule]{modify_cluster_snapshot_schedule} \tab Modifies a snapshot schedule for a cluster \cr
#'  \link[=redshift_modify_cluster_subnet_group]{modify_cluster_subnet_group} \tab Modifies a cluster subnet group to include the specified list of VPC subnets \cr
#'  \link[=redshift_modify_event_subscription]{modify_event_subscription} \tab Modifies an existing Amazon Redshift event notification subscription \cr
#'  \link[=redshift_modify_snapshot_copy_retention_period]{modify_snapshot_copy_retention_period} \tab Modifies the number of days to retain snapshots in the destination AWS Region after they are copied from the source AWS Region \cr
#'  \link[=redshift_modify_snapshot_schedule]{modify_snapshot_schedule} \tab Modifies a snapshot schedule \cr
#'  \link[=redshift_purchase_reserved_node_offering]{purchase_reserved_node_offering} \tab Allows you to purchase reserved nodes \cr
#'  \link[=redshift_reboot_cluster]{reboot_cluster} \tab Reboots a cluster \cr
#'  \link[=redshift_reset_cluster_parameter_group]{reset_cluster_parameter_group} \tab Sets one or more parameters of the specified parameter group to their default values and sets the source values of the parameters to "engine-default" \cr
#'  \link[=redshift_resize_cluster]{resize_cluster} \tab Changes the size of the cluster \cr
#'  \link[=redshift_restore_from_cluster_snapshot]{restore_from_cluster_snapshot} \tab Creates a new cluster from a snapshot \cr
#'  \link[=redshift_restore_table_from_cluster_snapshot]{restore_table_from_cluster_snapshot} \tab Creates a new table from a table in an Amazon Redshift cluster snapshot \cr
#'  \link[=redshift_revoke_cluster_security_group_ingress]{revoke_cluster_security_group_ingress} \tab Revokes an ingress rule in an Amazon Redshift security group for a previously authorized IP range or Amazon EC2 security group \cr
#'  \link[=redshift_revoke_snapshot_access]{revoke_snapshot_access} \tab Removes the ability of the specified AWS customer account to restore the specified snapshot \cr
#'  \link[=redshift_rotate_encryption_key]{rotate_encryption_key} \tab Rotates the encryption keys for a cluster 
#' }
#'
#' @rdname redshift
#' @export
redshift <- function() {
  paws.database::redshift()
}

#' Amazon SimpleDB
#'
#' @description
#' Amazon SimpleDB is a web service providing the core database functions of data indexing and querying in the cloud. By offloading the time and effort associated with building and operating a web-scale database, SimpleDB provides developers the freedom to focus on application development. <p> A traditional, clustered relational database requires a sizable upfront capital outlay, is complex to design, and often requires extensive and repetitive database administration. Amazon SimpleDB is dramatically simpler, requiring no schema, automatically indexing your data and providing a simple API for storage and access. This approach eliminates the administrative burden of data modeling, index maintenance, and performance tuning. Developers gain access to this functionality within Amazon's proven computing environment, are able to scale instantly, and pay only for what they use. </p> <p> Visit <a href="http://aws.amazon.com/simpledb/">http://aws.amazon.com/simpledb/</a> for more information. </p>
#'
#' @examples
#' \donttest{svc <- simpledb()
#' svc$batch_delete_attributes(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=simpledb_batch_delete_attributes]{batch_delete_attributes} \tab Performs multiple DeleteAttributes operations in a single call, which reduces round trips and latencies \cr
#'  \link[=simpledb_batch_put_attributes]{batch_put_attributes} \tab The BatchPutAttributes operation creates or replaces attributes within one or more items \cr
#'  \link[=simpledb_create_domain]{create_domain} \tab The CreateDomain operation creates a new domain \cr
#'  \link[=simpledb_delete_attributes]{delete_attributes} \tab Deletes one or more attributes associated with an item \cr
#'  \link[=simpledb_delete_domain]{delete_domain} \tab The DeleteDomain operation deletes a domain \cr
#'  \link[=simpledb_domain_metadata]{domain_metadata} \tab Returns information about the domain, including when the domain was created, the number of items and attributes in the domain, and the size of the attribute names and values\cr
#'  \link[=simpledb_get_attributes]{get_attributes} \tab Returns all of the attributes associated with the specified item \cr
#'  \link[=simpledb_list_domains]{list_domains} \tab The ListDomains operation lists all domains associated with the Access Key ID \cr
#'  \link[=simpledb_put_attributes]{put_attributes} \tab The PutAttributes operation creates or replaces attributes in an item \cr
#'  \link[=simpledb_select]{select} \tab The Select operation returns a set of attributes for ItemNames that match the select expression 
#' }
#'
#' @rdname simpledb
#' @export
simpledb <- function() {
  paws.database::simpledb()
}

#' AWS Certificate Manager
#'
#' @description
#' Welcome to the AWS Certificate Manager (ACM) API documentation.
#' 
#' You can use ACM to manage SSL/TLS certificates for your AWS-based
#' websites and applications. For general information about using ACM, see
#' the [*AWS Certificate Manager User
#' Guide*](https://docs.aws.amazon.com/acm/latest/userguide/).
#'
#' @examples
#' \donttest{svc <- acm()
#' svc$add_tags_to_certificate(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=acm_add_tags_to_certificate]{add_tags_to_certificate} \tab Adds one or more tags to an ACM certificate \cr
#'  \link[=acm_delete_certificate]{delete_certificate} \tab Deletes a certificate and its associated private key \cr
#'  \link[=acm_describe_certificate]{describe_certificate} \tab Returns detailed metadata about the specified ACM certificate \cr
#'  \link[=acm_export_certificate]{export_certificate} \tab Exports a private certificate issued by a private certificate authority (CA) for use anywhere \cr
#'  \link[=acm_get_certificate]{get_certificate} \tab Retrieves a certificate specified by an ARN and its certificate chain \cr
#'  \link[=acm_import_certificate]{import_certificate} \tab Imports a certificate into AWS Certificate Manager (ACM) to use with services that are integrated with ACM\cr
#'  \link[=acm_list_certificates]{list_certificates} \tab Retrieves a list of certificate ARNs and domain names \cr
#'  \link[=acm_list_tags_for_certificate]{list_tags_for_certificate} \tab Lists the tags that have been applied to the ACM certificate \cr
#'  \link[=acm_remove_tags_from_certificate]{remove_tags_from_certificate} \tab Remove one or more tags from an ACM certificate \cr
#'  \link[=acm_renew_certificate]{renew_certificate} \tab Renews an eligable ACM certificate \cr
#'  \link[=acm_request_certificate]{request_certificate} \tab Requests an ACM certificate for use with other AWS services \cr
#'  \link[=acm_resend_validation_email]{resend_validation_email} \tab Resends the email that requests domain ownership validation \cr
#'  \link[=acm_update_certificate_options]{update_certificate_options} \tab Updates a certificate 
#' }
#'
#' @rdname acm
#' @export
acm <- function() {
  paws.security.identity::acm()
}

#' AWS Certificate Manager Private Certificate Authority
#'
#' @description
#' You can use the ACM PCA API to create a private certificate authority
#' (CA). You must first call the CreateCertificateAuthority operation. If
#' successful, the operation returns an Amazon Resource Name (ARN) for your
#' private CA. Use this ARN as input to the GetCertificateAuthorityCsr
#' operation to retrieve the certificate signing request (CSR) for your
#' private CA certificate. Sign the CSR using the root or an intermediate
#' CA in your on-premises PKI hierarchy, and call the
#' ImportCertificateAuthorityCertificate to import your signed private CA
#' certificate into ACM PCA.
#' 
#' Use your private CA to issue and revoke certificates. These are private
#' certificates that identify and secure client computers, servers,
#' applications, services, devices, and users over SSLS/TLS connections
#' within your organization. Call the IssueCertificate operation to issue a
#' certificate. Call the RevokeCertificate operation to revoke a
#' certificate.
#' 
#' Certificates issued by your private CA can be trusted only within your
#' organization, not publicly.
#' 
#' Your private CA can optionally create a certificate revocation list
#' (CRL) to track the certificates you revoke. To create a CRL, you must
#' specify a RevocationConfiguration object when you call the
#' CreateCertificateAuthority operation. ACM PCA writes the CRL to an S3
#' bucket that you specify. You must specify a bucket policy that grants
#' ACM PCA write permission.
#' 
#' You can also call the CreateCertificateAuthorityAuditReport to create an
#' optional audit report, which enumerates all of the issued, valid,
#' expired, and revoked certificates from the CA.
#' 
#' Each ACM PCA API operation has a throttling limit which determines the
#' number of times the operation can be called per second. For more
#' information, see [API Rate Limits in ACM
#' PCA](https://docs.aws.amazon.com/acm-pca/latest/userguide/PcaLimits.html#PcaLimits-api)
#' in the ACM PCA user guide.
#'
#' @examples
#' \donttest{svc <- acmpca()
#' svc$create_certificate_authority(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=acmpca_create_certificate_authority]{create_certificate_authority} \tab Creates a private subordinate certificate authority (CA) \cr
#'  \link[=acmpca_create_certificate_authority_audit_report]{create_certificate_authority_audit_report} \tab Creates an audit report that lists every time that your CA private key is used \cr
#'  \link[=acmpca_create_permission]{create_permission} \tab Assigns permissions from a private CA to a designated AWS service \cr
#'  \link[=acmpca_delete_certificate_authority]{delete_certificate_authority} \tab Deletes a private certificate authority (CA) \cr
#'  \link[=acmpca_delete_permission]{delete_permission} \tab Revokes permissions that a private CA assigned to a designated AWS service \cr
#'  \link[=acmpca_describe_certificate_authority]{describe_certificate_authority} \tab Lists information about your private certificate authority (CA) \cr
#'  \link[=acmpca_describe_certificate_authority_audit_report]{describe_certificate_authority_audit_report} \tab Lists information about a specific audit report created by calling the CreateCertificateAuthorityAuditReport operation\cr
#'  \link[=acmpca_get_certificate]{get_certificate} \tab Retrieves a certificate from your private CA \cr
#'  \link[=acmpca_get_certificate_authority_certificate]{get_certificate_authority_certificate} \tab Retrieves the certificate and certificate chain for your private certificate authority (CA) \cr
#'  \link[=acmpca_get_certificate_authority_csr]{get_certificate_authority_csr} \tab Retrieves the certificate signing request (CSR) for your private certificate authority (CA) \cr
#'  \link[=acmpca_import_certificate_authority_certificate]{import_certificate_authority_certificate} \tab Imports your signed private CA certificate into ACM PCA \cr
#'  \link[=acmpca_issue_certificate]{issue_certificate} \tab Uses your private certificate authority (CA) to issue a client certificate \cr
#'  \link[=acmpca_list_certificate_authorities]{list_certificate_authorities} \tab Lists the private certificate authorities that you created by using the CreateCertificateAuthority operation \cr
#'  \link[=acmpca_list_permissions]{list_permissions} \tab Lists all the permissions, if any, that have been assigned by a private CA \cr
#'  \link[=acmpca_list_tags]{list_tags} \tab Lists the tags, if any, that are associated with your private CA \cr
#'  \link[=acmpca_restore_certificate_authority]{restore_certificate_authority} \tab Restores a certificate authority (CA) that is in the DELETED state \cr
#'  \link[=acmpca_revoke_certificate]{revoke_certificate} \tab Revokes a certificate that you issued by calling the IssueCertificate operation \cr
#'  \link[=acmpca_tag_certificate_authority]{tag_certificate_authority} \tab Adds one or more tags to your private CA \cr
#'  \link[=acmpca_untag_certificate_authority]{untag_certificate_authority} \tab Remove one or more tags from your private CA \cr
#'  \link[=acmpca_update_certificate_authority]{update_certificate_authority} \tab Updates the status or configuration of a private certificate authority (CA) 
#' }
#'
#' @rdname acmpca
#' @export
acmpca <- function() {
  paws.security.identity::acmpca()
}

#' Amazon CloudDirectory
#'
#' @description
#' Amazon Cloud Directory
#' 
#' Amazon Cloud Directory is a component of the AWS Directory Service that
#' simplifies the development and management of cloud-scale web, mobile,
#' and IoT applications. This guide describes the Cloud Directory
#' operations that you can call programmatically and includes detailed
#' information on data types and errors. For information about Cloud
#' Directory features, see [AWS Directory
#' Service](https://aws.amazon.com/directoryservice/) and the [Amazon Cloud
#' Directory Developer
#' Guide](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/what_is_cloud_directory.html).
#'
#' @examples
#' \donttest{svc <- clouddirectory()
#' svc$add_facet_to_object(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=clouddirectory_add_facet_to_object]{add_facet_to_object} \tab Adds a new Facet to an object \cr
#'  \link[=clouddirectory_apply_schema]{apply_schema} \tab Copies the input published schema, at the specified version, into the Directory with the same name and version as that of the published schema\cr
#'  \link[=clouddirectory_attach_object]{attach_object} \tab Attaches an existing object to another object \cr
#'  \link[=clouddirectory_attach_policy]{attach_policy} \tab Attaches a policy object to a regular object \cr
#'  \link[=clouddirectory_attach_to_index]{attach_to_index} \tab Attaches the specified object to the specified index \cr
#'  \link[=clouddirectory_attach_typed_link]{attach_typed_link} \tab Attaches a typed link to a specified source and target object \cr
#'  \link[=clouddirectory_batch_read]{batch_read} \tab Performs all the read operations in a batch \cr
#'  \link[=clouddirectory_batch_write]{batch_write} \tab Performs all the write operations in a batch \cr
#'  \link[=clouddirectory_create_directory]{create_directory} \tab Creates a Directory by copying the published schema into the directory \cr
#'  \link[=clouddirectory_create_facet]{create_facet} \tab Creates a new Facet in a schema \cr
#'  \link[=clouddirectory_create_index]{create_index} \tab Creates an index object \cr
#'  \link[=clouddirectory_create_object]{create_object} \tab Creates an object in a Directory \cr
#'  \link[=clouddirectory_create_schema]{create_schema} \tab Creates a new schema in a development state \cr
#'  \link[=clouddirectory_create_typed_link_facet]{create_typed_link_facet} \tab Creates a TypedLinkFacet \cr
#'  \link[=clouddirectory_delete_directory]{delete_directory} \tab Deletes a directory \cr
#'  \link[=clouddirectory_delete_facet]{delete_facet} \tab Deletes a given Facet \cr
#'  \link[=clouddirectory_delete_object]{delete_object} \tab Deletes an object and its associated attributes \cr
#'  \link[=clouddirectory_delete_schema]{delete_schema} \tab Deletes a given schema \cr
#'  \link[=clouddirectory_delete_typed_link_facet]{delete_typed_link_facet} \tab Deletes a TypedLinkFacet \cr
#'  \link[=clouddirectory_detach_from_index]{detach_from_index} \tab Detaches the specified object from the specified index \cr
#'  \link[=clouddirectory_detach_object]{detach_object} \tab Detaches a given object from the parent object \cr
#'  \link[=clouddirectory_detach_policy]{detach_policy} \tab Detaches a policy from an object \cr
#'  \link[=clouddirectory_detach_typed_link]{detach_typed_link} \tab Detaches a typed link from a specified source and target object \cr
#'  \link[=clouddirectory_disable_directory]{disable_directory} \tab Disables the specified directory \cr
#'  \link[=clouddirectory_enable_directory]{enable_directory} \tab Enables the specified directory \cr
#'  \link[=clouddirectory_get_applied_schema_version]{get_applied_schema_version} \tab Returns current applied schema version ARN, including the minor version in use \cr
#'  \link[=clouddirectory_get_directory]{get_directory} \tab Retrieves metadata about a directory \cr
#'  \link[=clouddirectory_get_facet]{get_facet} \tab Gets details of the Facet, such as facet name, attributes, Rules, or ObjectType \cr
#'  \link[=clouddirectory_get_link_attributes]{get_link_attributes} \tab Retrieves attributes that are associated with a typed link \cr
#'  \link[=clouddirectory_get_object_attributes]{get_object_attributes} \tab Retrieves attributes within a facet that are associated with an object \cr
#'  \link[=clouddirectory_get_object_information]{get_object_information} \tab Retrieves metadata about an object \cr
#'  \link[=clouddirectory_get_schema_as_json]{get_schema_as_json} \tab Retrieves a JSON representation of the schema \cr
#'  \link[=clouddirectory_get_typed_link_facet_information]{get_typed_link_facet_information} \tab Returns the identity attribute order for a specific TypedLinkFacet \cr
#'  \link[=clouddirectory_list_applied_schema_arns]{list_applied_schema_arns} \tab Lists schema major versions applied to a directory \cr
#'  \link[=clouddirectory_list_attached_indices]{list_attached_indices} \tab Lists indices attached to the specified object \cr
#'  \link[=clouddirectory_list_development_schema_arns]{list_development_schema_arns} \tab Retrieves each Amazon Resource Name (ARN) of schemas in the development state \cr
#'  \link[=clouddirectory_list_directories]{list_directories} \tab Lists directories created within an account \cr
#'  \link[=clouddirectory_list_facet_attributes]{list_facet_attributes} \tab Retrieves attributes attached to the facet \cr
#'  \link[=clouddirectory_list_facet_names]{list_facet_names} \tab Retrieves the names of facets that exist in a schema \cr
#'  \link[=clouddirectory_list_incoming_typed_links]{list_incoming_typed_links} \tab Returns a paginated list of all the incoming TypedLinkSpecifier information for an object \cr
#'  \link[=clouddirectory_list_index]{list_index} \tab Lists objects attached to the specified index \cr
#'  \link[=clouddirectory_list_managed_schema_arns]{list_managed_schema_arns} \tab Lists the major version families of each managed schema \cr
#'  \link[=clouddirectory_list_object_attributes]{list_object_attributes} \tab Lists all attributes that are associated with an object \cr
#'  \link[=clouddirectory_list_object_children]{list_object_children} \tab Returns a paginated list of child objects that are associated with a given object \cr
#'  \link[=clouddirectory_list_object_parent_paths]{list_object_parent_paths} \tab Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects \cr
#'  \link[=clouddirectory_list_object_parents]{list_object_parents} \tab Lists parent objects that are associated with a given object in pagination fashion \cr
#'  \link[=clouddirectory_list_object_policies]{list_object_policies} \tab Returns policies attached to an object in pagination fashion \cr
#'  \link[=clouddirectory_list_outgoing_typed_links]{list_outgoing_typed_links} \tab Returns a paginated list of all the outgoing TypedLinkSpecifier information for an object \cr
#'  \link[=clouddirectory_list_policy_attachments]{list_policy_attachments} \tab Returns all of the ObjectIdentifiers to which a given policy is attached \cr
#'  \link[=clouddirectory_list_published_schema_arns]{list_published_schema_arns} \tab Lists the major version families of each published schema \cr
#'  \link[=clouddirectory_list_tags_for_resource]{list_tags_for_resource} \tab Returns tags for a resource \cr
#'  \link[=clouddirectory_list_typed_link_facet_attributes]{list_typed_link_facet_attributes} \tab Returns a paginated list of all attribute definitions for a particular TypedLinkFacet \cr
#'  \link[=clouddirectory_list_typed_link_facet_names]{list_typed_link_facet_names} \tab Returns a paginated list of TypedLink facet names for a particular schema \cr
#'  \link[=clouddirectory_lookup_policy]{lookup_policy} \tab Lists all policies from the root of the Directory to the object specified \cr
#'  \link[=clouddirectory_publish_schema]{publish_schema} \tab Publishes a development schema with a major version and a recommended minor version \cr
#'  \link[=clouddirectory_put_schema_from_json]{put_schema_from_json} \tab Allows a schema to be updated using JSON upload \cr
#'  \link[=clouddirectory_remove_facet_from_object]{remove_facet_from_object} \tab Removes the specified facet from the specified object \cr
#'  \link[=clouddirectory_tag_resource]{tag_resource} \tab An API operation for adding tags to a resource \cr
#'  \link[=clouddirectory_untag_resource]{untag_resource} \tab An API operation for removing tags from a resource \cr
#'  \link[=clouddirectory_update_facet]{update_facet} \tab Does the following: 1 \cr
#'  \link[=clouddirectory_update_link_attributes]{update_link_attributes} \tab Updates a given typed linkÃ¢â‚¬â„¢s attributes \cr
#'  \link[=clouddirectory_update_object_attributes]{update_object_attributes} \tab Updates a given object's attributes \cr
#'  \link[=clouddirectory_update_schema]{update_schema} \tab Updates the schema name with a new name \cr
#'  \link[=clouddirectory_update_typed_link_facet]{update_typed_link_facet} \tab Updates a TypedLinkFacet \cr
#'  \link[=clouddirectory_upgrade_applied_schema]{upgrade_applied_schema} \tab Upgrades a single directory in-place using the PublishedSchemaArn with schema updates found in MinorVersion \cr
#'  \link[=clouddirectory_upgrade_published_schema]{upgrade_published_schema} \tab Upgrades a published schema under a new minor version revision using the current contents of DevelopmentSchemaArn 
#' }
#'
#' @rdname clouddirectory
#' @export
clouddirectory <- function() {
  paws.security.identity::clouddirectory()
}

#' Amazon CloudHSM
#'
#' @description
#' AWS CloudHSM Service
#' 
#' This is documentation for **AWS CloudHSM Classic**. For more
#' information, see [AWS CloudHSM Classic
#' FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
#' Classic User
#' Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
#' [AWS CloudHSM Classic API
#' Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).
#' 
#' **For information about the current version of AWS CloudHSM**, see [AWS
#' CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
#' Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the
#' [AWS CloudHSM API
#' Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
#'
#' @examples
#' \donttest{svc <- cloudhsm()
#' svc$add_tags_to_resource(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=cloudhsm_add_tags_to_resource]{add_tags_to_resource} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_create_hapg]{create_hapg} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_create_hsm]{create_hsm} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_create_luna_client]{create_luna_client} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_delete_hapg]{delete_hapg} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_delete_hsm]{delete_hsm} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_delete_luna_client]{delete_luna_client} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_describe_hapg]{describe_hapg} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_describe_hsm]{describe_hsm} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_describe_luna_client]{describe_luna_client} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_get_config]{get_config} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_list_available_zones]{list_available_zones} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_list_hapgs]{list_hapgs} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_list_hsms]{list_hsms} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_list_luna_clients]{list_luna_clients} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_list_tags_for_resource]{list_tags_for_resource} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_modify_hapg]{modify_hapg} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_modify_hsm]{modify_hsm} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_modify_luna_client]{modify_luna_client} \tab This is documentation for AWS CLOUDHSM CLASSIC\cr
#'  \link[=cloudhsm_remove_tags_from_resource]{remove_tags_from_resource} \tab This is documentation for AWS CLOUDHSM CLASSIC
#' }
#'
#' @rdname cloudhsm
#' @export
cloudhsm <- function() {
  paws.security.identity::cloudhsm()
}

#' AWS CloudHSM V2
#'
#' @description
#' For more information about AWS CloudHSM, see [AWS
#' CloudHSM](http://aws.amazon.com/cloudhsm/) and the [AWS CloudHSM User
#' Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/).
#'
#' @examples
#' \donttest{svc <- cloudhsmv2()
#' svc$copy_backup_to_region(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=cloudhsmv2_copy_backup_to_region]{copy_backup_to_region} \tab Copy an AWS CloudHSM cluster backup to a different region \cr
#'  \link[=cloudhsmv2_create_cluster]{create_cluster} \tab Creates a new AWS CloudHSM cluster \cr
#'  \link[=cloudhsmv2_create_hsm]{create_hsm} \tab Creates a new hardware security module (HSM) in the specified AWS CloudHSM cluster \cr
#'  \link[=cloudhsmv2_delete_backup]{delete_backup} \tab Deletes a specified AWS CloudHSM backup \cr
#'  \link[=cloudhsmv2_delete_cluster]{delete_cluster} \tab Deletes the specified AWS CloudHSM cluster \cr
#'  \link[=cloudhsmv2_delete_hsm]{delete_hsm} \tab Deletes the specified HSM \cr
#'  \link[=cloudhsmv2_describe_backups]{describe_backups} \tab Gets information about backups of AWS CloudHSM clusters \cr
#'  \link[=cloudhsmv2_describe_clusters]{describe_clusters} \tab Gets information about AWS CloudHSM clusters \cr
#'  \link[=cloudhsmv2_initialize_cluster]{initialize_cluster} \tab Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA's root certificate\cr
#'  \link[=cloudhsmv2_list_tags]{list_tags} \tab Gets a list of tags for the specified AWS CloudHSM cluster \cr
#'  \link[=cloudhsmv2_restore_backup]{restore_backup} \tab Restores a specified AWS CloudHSM backup that is in the PENDING_DELETION state \cr
#'  \link[=cloudhsmv2_tag_resource]{tag_resource} \tab Adds or overwrites one or more tags for the specified AWS CloudHSM cluster \cr
#'  \link[=cloudhsmv2_untag_resource]{untag_resource} \tab Removes the specified tag or tags from the specified AWS CloudHSM cluster 
#' }
#'
#' @rdname cloudhsmv2
#' @export
cloudhsmv2 <- function() {
  paws.security.identity::cloudhsmv2()
}

#' Amazon Cognito Identity
#'
#' @description
#' Amazon Cognito Federated Identities
#' 
#' Amazon Cognito Federated Identities is a web service that delivers
#' scoped temporary credentials to mobile devices and other untrusted
#' environments. It uniquely identifies a device and supplies the user with
#' a consistent identity over the lifetime of an application.
#' 
#' Using Amazon Cognito Federated Identities, you can enable authentication
#' with one or more third-party identity providers (Facebook, Google, or
#' Login with Amazon) or an Amazon Cognito user pool, and you can also
#' choose to support unauthenticated access from your app. Cognito delivers
#' a unique identifier for each user and acts as an OpenID token provider
#' trusted by AWS Security Token Service (STS) to access temporary,
#' limited-privilege AWS credentials.
#' 
#' For a description of the authentication flow from the Amazon Cognito
#' Developer Guide see [Authentication
#' Flow](https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html).
#' 
#' For more information see [Amazon Cognito Federated
#' Identities](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html).
#'
#' @examples
#' \donttest{svc <- cognitoidentity()
#' svc$create_identity_pool(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=cognitoidentity_create_identity_pool]{create_identity_pool} \tab Creates a new identity pool \cr
#'  \link[=cognitoidentity_delete_identities]{delete_identities} \tab Deletes identities from an identity pool \cr
#'  \link[=cognitoidentity_delete_identity_pool]{delete_identity_pool} \tab Deletes an identity pool \cr
#'  \link[=cognitoidentity_describe_identity]{describe_identity} \tab Returns metadata related to the given identity, including when the identity was created and any associated linked logins \cr
#'  \link[=cognitoidentity_describe_identity_pool]{describe_identity_pool} \tab Gets details about a particular identity pool, including the pool name, ID description, creation date, and current number of users \cr
#'  \link[=cognitoidentity_get_credentials_for_identity]{get_credentials_for_identity} \tab Returns credentials for the provided identity ID \cr
#'  \link[=cognitoidentity_get_id]{get_id} \tab Generates (or retrieves) a Cognito ID \cr
#'  \link[=cognitoidentity_get_identity_pool_roles]{get_identity_pool_roles} \tab Gets the roles for an identity pool \cr
#'  \link[=cognitoidentity_get_open_id_token]{get_open_id_token} \tab Gets an OpenID token, using a known Cognito ID \cr
#'  \link[=cognitoidentity_get_open_id_token_for_developer_identity]{get_open_id_token_for_developer_identity} \tab Registers (or retrieves) a Cognito IdentityId and an OpenID Connect token for a user authenticated by your backend authentication process \cr
#'  \link[=cognitoidentity_list_identities]{list_identities} \tab Lists the identities in an identity pool \cr
#'  \link[=cognitoidentity_list_identity_pools]{list_identity_pools} \tab Lists all of the Cognito identity pools registered for your account \cr
#'  \link[=cognitoidentity_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags that are assigned to an Amazon Cognito identity pool \cr
#'  \link[=cognitoidentity_lookup_developer_identity]{lookup_developer_identity} \tab Retrieves the IdentityID associated with a DeveloperUserIdentifier or the list of DeveloperUserIdentifier values associated with an IdentityId for an existing identity\cr
#'  \link[=cognitoidentity_merge_developer_identities]{merge_developer_identities} \tab Merges two users having different IdentityIds, existing in the same identity pool, and identified by the same developer provider \cr
#'  \link[=cognitoidentity_set_identity_pool_roles]{set_identity_pool_roles} \tab Sets the roles for an identity pool \cr
#'  \link[=cognitoidentity_tag_resource]{tag_resource} \tab Assigns a set of tags to an Amazon Cognito identity pool \cr
#'  \link[=cognitoidentity_unlink_developer_identity]{unlink_developer_identity} \tab Unlinks a DeveloperUserIdentifier from an existing identity \cr
#'  \link[=cognitoidentity_unlink_identity]{unlink_identity} \tab Unlinks a federated identity from an existing account \cr
#'  \link[=cognitoidentity_untag_resource]{untag_resource} \tab Removes the specified tags from an Amazon Cognito identity pool \cr
#'  \link[=cognitoidentity_update_identity_pool]{update_identity_pool} \tab Updates an identity pool 
#' }
#'
#' @rdname cognitoidentity
#' @export
cognitoidentity <- function() {
  paws.security.identity::cognitoidentity()
}

#' Amazon Cognito Identity Provider
#'
#' @description
#' Using the Amazon Cognito User Pools API, you can create a user pool to
#' manage directories and users. You can authenticate a user to obtain
#' tokens related to user identity and access policies.
#' 
#' This API reference provides information about user pools in Amazon
#' Cognito User Pools.
#' 
#' For more information, see the Amazon Cognito Documentation.
#'
#' @examples
#' \donttest{svc <- cognitoidentityprovider()
#' svc$add_custom_attributes(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=cognitoidentityprovider_add_custom_attributes]{add_custom_attributes} \tab Adds additional user attributes to the user pool schema \cr
#'  \link[=cognitoidentityprovider_admin_add_user_to_group]{admin_add_user_to_group} \tab Adds the specified user to the specified group \cr
#'  \link[=cognitoidentityprovider_admin_confirm_sign_up]{admin_confirm_sign_up} \tab Confirms user registration as an admin without using a confirmation code \cr
#'  \link[=cognitoidentityprovider_admin_create_user]{admin_create_user} \tab Creates a new user in the specified user pool \cr
#'  \link[=cognitoidentityprovider_admin_delete_user]{admin_delete_user} \tab Deletes a user as an administrator \cr
#'  \link[=cognitoidentityprovider_admin_delete_user_attributes]{admin_delete_user_attributes} \tab Deletes the user attributes in a user pool as an administrator \cr
#'  \link[=cognitoidentityprovider_admin_disable_provider_for_user]{admin_disable_provider_for_user} \tab Disables the user from signing in with the specified external (SAML or social) identity provider \cr
#'  \link[=cognitoidentityprovider_admin_disable_user]{admin_disable_user} \tab Disables the specified user as an administrator \cr
#'  \link[=cognitoidentityprovider_admin_enable_user]{admin_enable_user} \tab Enables the specified user as an administrator \cr
#'  \link[=cognitoidentityprovider_admin_forget_device]{admin_forget_device} \tab Forgets the device, as an administrator \cr
#'  \link[=cognitoidentityprovider_admin_get_device]{admin_get_device} \tab Gets the device, as an administrator \cr
#'  \link[=cognitoidentityprovider_admin_get_user]{admin_get_user} \tab Gets the specified user by user name in a user pool as an administrator \cr
#'  \link[=cognitoidentityprovider_admin_initiate_auth]{admin_initiate_auth} \tab Initiates the authentication flow, as an administrator \cr
#'  \link[=cognitoidentityprovider_admin_link_provider_for_user]{admin_link_provider_for_user} \tab Links an existing user account in a user pool (DestinationUser) to an identity from an external identity provider (SourceUser) based on a specified attribute name and value from the external identity provider\cr
#'  \link[=cognitoidentityprovider_admin_list_devices]{admin_list_devices} \tab Lists devices, as an administrator \cr
#'  \link[=cognitoidentityprovider_admin_list_groups_for_user]{admin_list_groups_for_user} \tab Lists the groups that the user belongs to \cr
#'  \link[=cognitoidentityprovider_admin_list_user_auth_events]{admin_list_user_auth_events} \tab Lists a history of user activity and any risks detected as part of Amazon Cognito advanced security \cr
#'  \link[=cognitoidentityprovider_admin_remove_user_from_group]{admin_remove_user_from_group} \tab Removes the specified user from the specified group \cr
#'  \link[=cognitoidentityprovider_admin_reset_user_password]{admin_reset_user_password} \tab Resets the specified user's password in a user pool as an administrator \cr
#'  \link[=cognitoidentityprovider_admin_respond_to_auth_challenge]{admin_respond_to_auth_challenge} \tab Responds to an authentication challenge, as an administrator \cr
#'  \link[=cognitoidentityprovider_admin_set_user_mfa_preference]{admin_set_user_mfa_preference} \tab Sets the user's multi-factor authentication (MFA) preference \cr
#'  \link[=cognitoidentityprovider_admin_set_user_settings]{admin_set_user_settings} \tab Sets all the user settings for a specified user name \cr
#'  \link[=cognitoidentityprovider_admin_update_auth_event_feedback]{admin_update_auth_event_feedback} \tab Provides feedback for an authentication event as to whether it was from a valid user \cr
#'  \link[=cognitoidentityprovider_admin_update_device_status]{admin_update_device_status} \tab Updates the device status as an administrator \cr
#'  \link[=cognitoidentityprovider_admin_update_user_attributes]{admin_update_user_attributes} \tab Updates the specified user's attributes, including developer attributes, as an administrator \cr
#'  \link[=cognitoidentityprovider_admin_user_global_sign_out]{admin_user_global_sign_out} \tab Signs out users from all devices, as an administrator \cr
#'  \link[=cognitoidentityprovider_associate_software_token]{associate_software_token} \tab Returns a unique generated shared secret key code for the user account \cr
#'  \link[=cognitoidentityprovider_change_password]{change_password} \tab Changes the password for a specified user in a user pool \cr
#'  \link[=cognitoidentityprovider_confirm_device]{confirm_device} \tab Confirms tracking of the device \cr
#'  \link[=cognitoidentityprovider_confirm_forgot_password]{confirm_forgot_password} \tab Allows a user to enter a confirmation code to reset a forgotten password \cr
#'  \link[=cognitoidentityprovider_confirm_sign_up]{confirm_sign_up} \tab Confirms registration of a user and handles the existing alias from a previous user \cr
#'  \link[=cognitoidentityprovider_create_group]{create_group} \tab Creates a new group in the specified user pool \cr
#'  \link[=cognitoidentityprovider_create_identity_provider]{create_identity_provider} \tab Creates an identity provider for a user pool \cr
#'  \link[=cognitoidentityprovider_create_resource_server]{create_resource_server} \tab Creates a new OAuth2 \cr
#'  \link[=cognitoidentityprovider_create_user_import_job]{create_user_import_job} \tab Creates the user import job \cr
#'  \link[=cognitoidentityprovider_create_user_pool]{create_user_pool} \tab Creates a new Amazon Cognito user pool and sets the password policy for the pool \cr
#'  \link[=cognitoidentityprovider_create_user_pool_client]{create_user_pool_client} \tab Creates the user pool client \cr
#'  \link[=cognitoidentityprovider_create_user_pool_domain]{create_user_pool_domain} \tab Creates a new domain for a user pool \cr
#'  \link[=cognitoidentityprovider_delete_group]{delete_group} \tab Deletes a group \cr
#'  \link[=cognitoidentityprovider_delete_identity_provider]{delete_identity_provider} \tab Deletes an identity provider for a user pool \cr
#'  \link[=cognitoidentityprovider_delete_resource_server]{delete_resource_server} \tab Deletes a resource server \cr
#'  \link[=cognitoidentityprovider_delete_user]{delete_user} \tab Allows a user to delete himself or herself \cr
#'  \link[=cognitoidentityprovider_delete_user_attributes]{delete_user_attributes} \tab Deletes the attributes for a user \cr
#'  \link[=cognitoidentityprovider_delete_user_pool]{delete_user_pool} \tab Deletes the specified Amazon Cognito user pool \cr
#'  \link[=cognitoidentityprovider_delete_user_pool_client]{delete_user_pool_client} \tab Allows the developer to delete the user pool client \cr
#'  \link[=cognitoidentityprovider_delete_user_pool_domain]{delete_user_pool_domain} \tab Deletes a domain for a user pool \cr
#'  \link[=cognitoidentityprovider_describe_identity_provider]{describe_identity_provider} \tab Gets information about a specific identity provider \cr
#'  \link[=cognitoidentityprovider_describe_resource_server]{describe_resource_server} \tab Describes a resource server \cr
#'  \link[=cognitoidentityprovider_describe_risk_configuration]{describe_risk_configuration} \tab Describes the risk configuration \cr
#'  \link[=cognitoidentityprovider_describe_user_import_job]{describe_user_import_job} \tab Describes the user import job \cr
#'  \link[=cognitoidentityprovider_describe_user_pool]{describe_user_pool} \tab Returns the configuration information and metadata of the specified user pool \cr
#'  \link[=cognitoidentityprovider_describe_user_pool_client]{describe_user_pool_client} \tab Client method for returning the configuration information and metadata of the specified user pool app client \cr
#'  \link[=cognitoidentityprovider_describe_user_pool_domain]{describe_user_pool_domain} \tab Gets information about a domain \cr
#'  \link[=cognitoidentityprovider_forget_device]{forget_device} \tab Forgets the specified device \cr
#'  \link[=cognitoidentityprovider_forgot_password]{forgot_password} \tab Calling this API causes a message to be sent to the end user with a confirmation code that is required to change the user's password \cr
#'  \link[=cognitoidentityprovider_get_csv_header]{get_csv_header} \tab Gets the header information for the \cr
#'  \link[=cognitoidentityprovider_get_device]{get_device} \tab Gets the device \cr
#'  \link[=cognitoidentityprovider_get_group]{get_group} \tab Gets a group \cr
#'  \link[=cognitoidentityprovider_get_identity_provider_by_identifier]{get_identity_provider_by_identifier} \tab Gets the specified identity provider \cr
#'  \link[=cognitoidentityprovider_get_signing_certificate]{get_signing_certificate} \tab This method takes a user pool ID, and returns the signing certificate \cr
#'  \link[=cognitoidentityprovider_get_ui_customization]{get_ui_customization} \tab Gets the UI Customization information for a particular app client's app UI, if there is something set \cr
#'  \link[=cognitoidentityprovider_get_user]{get_user} \tab Gets the user attributes and metadata for a user \cr
#'  \link[=cognitoidentityprovider_get_user_attribute_verification_code]{get_user_attribute_verification_code} \tab Gets the user attribute verification code for the specified attribute name \cr
#'  \link[=cognitoidentityprovider_get_user_pool_mfa_config]{get_user_pool_mfa_config} \tab Gets the user pool multi-factor authentication (MFA) configuration \cr
#'  \link[=cognitoidentityprovider_global_sign_out]{global_sign_out} \tab Signs out users from all devices \cr
#'  \link[=cognitoidentityprovider_initiate_auth]{initiate_auth} \tab Initiates the authentication flow \cr
#'  \link[=cognitoidentityprovider_list_devices]{list_devices} \tab Lists the devices \cr
#'  \link[=cognitoidentityprovider_list_groups]{list_groups} \tab Lists the groups associated with a user pool \cr
#'  \link[=cognitoidentityprovider_list_identity_providers]{list_identity_providers} \tab Lists information about all identity providers for a user pool \cr
#'  \link[=cognitoidentityprovider_list_resource_servers]{list_resource_servers} \tab Lists the resource servers for a user pool \cr
#'  \link[=cognitoidentityprovider_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags that are assigned to an Amazon Cognito user pool \cr
#'  \link[=cognitoidentityprovider_list_user_import_jobs]{list_user_import_jobs} \tab Lists the user import jobs \cr
#'  \link[=cognitoidentityprovider_list_user_pool_clients]{list_user_pool_clients} \tab Lists the clients that have been created for the specified user pool \cr
#'  \link[=cognitoidentityprovider_list_user_pools]{list_user_pools} \tab Lists the user pools associated with an AWS account \cr
#'  \link[=cognitoidentityprovider_list_users]{list_users} \tab Lists the users in the Amazon Cognito user pool \cr
#'  \link[=cognitoidentityprovider_list_users_in_group]{list_users_in_group} \tab Lists the users in the specified group \cr
#'  \link[=cognitoidentityprovider_resend_confirmation_code]{resend_confirmation_code} \tab Resends the confirmation (for confirmation of registration) to a specific user in the user pool \cr
#'  \link[=cognitoidentityprovider_respond_to_auth_challenge]{respond_to_auth_challenge} \tab Responds to the authentication challenge \cr
#'  \link[=cognitoidentityprovider_set_risk_configuration]{set_risk_configuration} \tab Configures actions on detected risks \cr
#'  \link[=cognitoidentityprovider_set_ui_customization]{set_ui_customization} \tab Sets the UI customization information for a user pool's built-in app UI \cr
#'  \link[=cognitoidentityprovider_set_user_mfa_preference]{set_user_mfa_preference} \tab Set the user's multi-factor authentication (MFA) method preference \cr
#'  \link[=cognitoidentityprovider_set_user_pool_mfa_config]{set_user_pool_mfa_config} \tab Set the user pool MFA configuration \cr
#'  \link[=cognitoidentityprovider_set_user_settings]{set_user_settings} \tab Sets the user settings like multi-factor authentication (MFA) \cr
#'  \link[=cognitoidentityprovider_sign_up]{sign_up} \tab Registers the user in the specified user pool and creates a user name, password, and user attributes \cr
#'  \link[=cognitoidentityprovider_start_user_import_job]{start_user_import_job} \tab Starts the user import \cr
#'  \link[=cognitoidentityprovider_stop_user_import_job]{stop_user_import_job} \tab Stops the user import job \cr
#'  \link[=cognitoidentityprovider_tag_resource]{tag_resource} \tab Assigns a set of tags to an Amazon Cognito user pool \cr
#'  \link[=cognitoidentityprovider_untag_resource]{untag_resource} \tab Removes the specified tags from an Amazon Cognito user pool \cr
#'  \link[=cognitoidentityprovider_update_auth_event_feedback]{update_auth_event_feedback} \tab Provides the feedback for an authentication event whether it was from a valid user or not \cr
#'  \link[=cognitoidentityprovider_update_device_status]{update_device_status} \tab Updates the device status \cr
#'  \link[=cognitoidentityprovider_update_group]{update_group} \tab Updates the specified group with the specified attributes \cr
#'  \link[=cognitoidentityprovider_update_identity_provider]{update_identity_provider} \tab Updates identity provider information for a user pool \cr
#'  \link[=cognitoidentityprovider_update_resource_server]{update_resource_server} \tab Updates the name and scopes of resource server \cr
#'  \link[=cognitoidentityprovider_update_user_attributes]{update_user_attributes} \tab Allows a user to update a specific attribute (one at a time) \cr
#'  \link[=cognitoidentityprovider_update_user_pool]{update_user_pool} \tab Updates the specified user pool with the specified attributes \cr
#'  \link[=cognitoidentityprovider_update_user_pool_client]{update_user_pool_client} \tab Updates the specified user pool app client with the specified attributes \cr
#'  \link[=cognitoidentityprovider_update_user_pool_domain]{update_user_pool_domain} \tab Updates the Secure Sockets Layer (SSL) certificate for the custom domain for your user pool \cr
#'  \link[=cognitoidentityprovider_verify_software_token]{verify_software_token} \tab Use this API to register a user's entered TOTP code and mark the user's software token MFA status as "verified" if successful \cr
#'  \link[=cognitoidentityprovider_verify_user_attribute]{verify_user_attribute} \tab Verifies the specified user attributes in the user pool 
#' }
#'
#' @rdname cognitoidentityprovider
#' @export
cognitoidentityprovider <- function() {
  paws.security.identity::cognitoidentityprovider()
}

#' Amazon Cognito Sync
#'
#' @description
#' Amazon Cognito Sync provides an AWS service and client library that
#' enable cross-device syncing of application-related user data. High-level
#' client libraries are available for both iOS and Android. You can use
#' these libraries to persist data locally so that it\'s available even if
#' the device is offline. Developer credentials don\'t need to be stored on
#' the mobile device to access the service. You can use Amazon Cognito to
#' obtain a normalized user ID and credentials. User data is persisted in a
#' dataset that can store up to 1 MB of key-value pairs, and you can have
#' up to 20 datasets per user identity.
#' 
#' With Amazon Cognito Sync, the data stored for each identity is
#' accessible only to credentials assigned to that identity. In order to
#' use the Cognito Sync service, you need to make API calls using
#' credentials retrieved with [Amazon Cognito Identity
#' service](http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html).
#' 
#' If you want to use Cognito Sync in an Android or iOS application, you
#' will probably want to make API calls via the AWS Mobile SDK. To learn
#' more, see the [Developer Guide for
#' Android](http://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-sync.html)
#' and the [Developer Guide for
#' iOS](http://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-sync.html).
#'
#' @examples
#' \donttest{svc <- cognitosync()
#' svc$bulk_publish(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=cognitosync_bulk_publish]{bulk_publish} \tab Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream \cr
#'  \link[=cognitosync_delete_dataset]{delete_dataset} \tab Deletes the specific dataset \cr
#'  \link[=cognitosync_describe_dataset]{describe_dataset} \tab Gets meta data about a dataset by identity and dataset name \cr
#'  \link[=cognitosync_describe_identity_pool_usage]{describe_identity_pool_usage} \tab Gets usage details (for example, data storage) about a particular identity pool \cr
#'  \link[=cognitosync_describe_identity_usage]{describe_identity_usage} \tab Gets usage information for an identity, including number of datasets and data usage \cr
#'  \link[=cognitosync_get_bulk_publish_details]{get_bulk_publish_details} \tab Get the status of the last BulkPublish operation for an identity pool \cr
#'  \link[=cognitosync_get_cognito_events]{get_cognito_events} \tab Gets the events and the corresponding Lambda functions associated with an identity pool \cr
#'  \link[=cognitosync_get_identity_pool_configuration]{get_identity_pool_configuration} \tab Gets the configuration settings of an identity pool \cr
#'  \link[=cognitosync_list_datasets]{list_datasets} \tab Lists datasets for an identity \cr
#'  \link[=cognitosync_list_identity_pool_usage]{list_identity_pool_usage} \tab Gets a list of identity pools registered with Cognito \cr
#'  \link[=cognitosync_list_records]{list_records} \tab Gets paginated records, optionally changed after a particular sync count for a dataset and identity\cr
#'  \link[=cognitosync_register_device]{register_device} \tab Registers a device to receive push sync notifications \cr
#'  \link[=cognitosync_set_cognito_events]{set_cognito_events} \tab Sets the AWS Lambda function for a given event type for an identity pool \cr
#'  \link[=cognitosync_set_identity_pool_configuration]{set_identity_pool_configuration} \tab Sets the necessary configuration for push sync \cr
#'  \link[=cognitosync_subscribe_to_dataset]{subscribe_to_dataset} \tab Subscribes to receive notifications when a dataset is modified by another device \cr
#'  \link[=cognitosync_unsubscribe_from_dataset]{unsubscribe_from_dataset} \tab Unsubscribes from receiving notifications when a dataset is modified by another device \cr
#'  \link[=cognitosync_update_records]{update_records} \tab Posts updates to records and adds and deletes records for a dataset and user 
#' }
#'
#' @rdname cognitosync
#' @export
cognitosync <- function() {
  paws.security.identity::cognitosync()
}

#' AWS Directory Service
#'
#' @description
#' AWS Directory Service is a web service that makes it easy for you to
#' setup and run directories in the AWS cloud, or connect your AWS
#' resources with an existing on-premises Microsoft Active Directory. This
#' guide provides detailed information about AWS Directory Service
#' operations, data types, parameters, and errors. For information about
#' AWS Directory Services features, see [AWS Directory
#' Service](https://aws.amazon.com/directoryservice/) and the [AWS
#' Directory Service Administration
#' Guide](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html).
#' 
#' AWS provides SDKs that consist of libraries and sample code for various
#' programming languages and platforms (Java, Ruby, .Net, iOS, Android,
#' etc.). The SDKs provide a convenient way to create programmatic access
#' to AWS Directory Service and other AWS services. For more information
#' about the AWS SDKs, including how to download and install them, see
#' [Tools for Amazon Web Services](http://aws.amazon.com/tools/).
#'
#' @examples
#' \donttest{svc <- directoryservice()
#' svc$accept_shared_directory(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=directoryservice_accept_shared_directory]{accept_shared_directory} \tab Accepts a directory sharing request that was sent from the directory owner account \cr
#'  \link[=directoryservice_add_ip_routes]{add_ip_routes} \tab If the DNS server for your on-premises domain uses a publicly addressable IP address, you must add a CIDR address block to correctly route traffic to and from your Microsoft AD on Amazon Web Services\cr
#'  \link[=directoryservice_add_tags_to_resource]{add_tags_to_resource} \tab Adds or overwrites one or more tags for the specified directory \cr
#'  \link[=directoryservice_cancel_schema_extension]{cancel_schema_extension} \tab Cancels an in-progress schema extension to a Microsoft AD directory \cr
#'  \link[=directoryservice_connect_directory]{connect_directory} \tab Creates an AD Connector to connect to an on-premises directory \cr
#'  \link[=directoryservice_create_alias]{create_alias} \tab Creates an alias for a directory and assigns the alias to the directory \cr
#'  \link[=directoryservice_create_computer]{create_computer} \tab Creates a computer account in the specified directory, and joins the computer to the directory \cr
#'  \link[=directoryservice_create_conditional_forwarder]{create_conditional_forwarder} \tab Creates a conditional forwarder associated with your AWS directory \cr
#'  \link[=directoryservice_create_directory]{create_directory} \tab Creates a Simple AD directory \cr
#'  \link[=directoryservice_create_log_subscription]{create_log_subscription} \tab Creates a subscription to forward real time Directory Service domain controller security logs to the specified CloudWatch log group in your AWS account \cr
#'  \link[=directoryservice_create_microsoft_ad]{create_microsoft_ad} \tab Creates an AWS Managed Microsoft AD directory \cr
#'  \link[=directoryservice_create_snapshot]{create_snapshot} \tab Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS cloud \cr
#'  \link[=directoryservice_create_trust]{create_trust} \tab AWS Directory Service for Microsoft Active Directory allows you to configure trust relationships \cr
#'  \link[=directoryservice_delete_conditional_forwarder]{delete_conditional_forwarder} \tab Deletes a conditional forwarder that has been set up for your AWS directory \cr
#'  \link[=directoryservice_delete_directory]{delete_directory} \tab Deletes an AWS Directory Service directory \cr
#'  \link[=directoryservice_delete_log_subscription]{delete_log_subscription} \tab Deletes the specified log subscription \cr
#'  \link[=directoryservice_delete_snapshot]{delete_snapshot} \tab Deletes a directory snapshot \cr
#'  \link[=directoryservice_delete_trust]{delete_trust} \tab Deletes an existing trust relationship between your AWS Managed Microsoft AD directory and an external domain \cr
#'  \link[=directoryservice_deregister_event_topic]{deregister_event_topic} \tab Removes the specified directory as a publisher to the specified SNS topic \cr
#'  \link[=directoryservice_describe_conditional_forwarders]{describe_conditional_forwarders} \tab Obtains information about the conditional forwarders for this account \cr
#'  \link[=directoryservice_describe_directories]{describe_directories} \tab Obtains information about the directories that belong to this account \cr
#'  \link[=directoryservice_describe_domain_controllers]{describe_domain_controllers} \tab Provides information about any domain controllers in your directory \cr
#'  \link[=directoryservice_describe_event_topics]{describe_event_topics} \tab Obtains information about which SNS topics receive status messages from the specified directory \cr
#'  \link[=directoryservice_describe_shared_directories]{describe_shared_directories} \tab Returns the shared directories in your account \cr
#'  \link[=directoryservice_describe_snapshots]{describe_snapshots} \tab Obtains information about the directory snapshots that belong to this account \cr
#'  \link[=directoryservice_describe_trusts]{describe_trusts} \tab Obtains information about the trust relationships for this account \cr
#'  \link[=directoryservice_disable_radius]{disable_radius} \tab Disables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory \cr
#'  \link[=directoryservice_disable_sso]{disable_sso} \tab Disables single-sign on for a directory \cr
#'  \link[=directoryservice_enable_radius]{enable_radius} \tab Enables multi-factor authentication (MFA) with the Remote Authentication Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD directory \cr
#'  \link[=directoryservice_enable_sso]{enable_sso} \tab Enables single sign-on for a directory \cr
#'  \link[=directoryservice_get_directory_limits]{get_directory_limits} \tab Obtains directory limit information for the current region \cr
#'  \link[=directoryservice_get_snapshot_limits]{get_snapshot_limits} \tab Obtains the manual snapshot limits for a directory \cr
#'  \link[=directoryservice_list_ip_routes]{list_ip_routes} \tab Lists the address blocks that you have added to a directory \cr
#'  \link[=directoryservice_list_log_subscriptions]{list_log_subscriptions} \tab Lists the active log subscriptions for the AWS account \cr
#'  \link[=directoryservice_list_schema_extensions]{list_schema_extensions} \tab Lists all schema extensions applied to a Microsoft AD Directory \cr
#'  \link[=directoryservice_list_tags_for_resource]{list_tags_for_resource} \tab Lists all tags on a directory \cr
#'  \link[=directoryservice_register_event_topic]{register_event_topic} \tab Associates a directory with an SNS topic \cr
#'  \link[=directoryservice_reject_shared_directory]{reject_shared_directory} \tab Rejects a directory sharing request that was sent from the directory owner account \cr
#'  \link[=directoryservice_remove_ip_routes]{remove_ip_routes} \tab Removes IP address blocks from a directory \cr
#'  \link[=directoryservice_remove_tags_from_resource]{remove_tags_from_resource} \tab Removes tags from a directory \cr
#'  \link[=directoryservice_reset_user_password]{reset_user_password} \tab Resets the password for any user in your AWS Managed Microsoft AD or Simple AD directory \cr
#'  \link[=directoryservice_restore_from_snapshot]{restore_from_snapshot} \tab Restores a directory using an existing directory snapshot \cr
#'  \link[=directoryservice_share_directory]{share_directory} \tab Shares a specified directory (DirectoryId) in your AWS account (directory owner) with another AWS account (directory consumer) \cr
#'  \link[=directoryservice_start_schema_extension]{start_schema_extension} \tab Applies a schema extension to a Microsoft AD directory \cr
#'  \link[=directoryservice_unshare_directory]{unshare_directory} \tab Stops the directory sharing between the directory owner and consumer accounts \cr
#'  \link[=directoryservice_update_conditional_forwarder]{update_conditional_forwarder} \tab Updates a conditional forwarder that has been set up for your AWS directory \cr
#'  \link[=directoryservice_update_number_of_domain_controllers]{update_number_of_domain_controllers} \tab Adds or removes domain controllers to or from the directory \cr
#'  \link[=directoryservice_update_radius]{update_radius} \tab Updates the Remote Authentication Dial In User Service (RADIUS) server information for an AD Connector or Microsoft AD directory \cr
#'  \link[=directoryservice_update_trust]{update_trust} \tab Updates the trust that has been set up between your AWS Managed Microsoft AD directory and an on-premises Active Directory \cr
#'  \link[=directoryservice_verify_trust]{verify_trust} \tab AWS Directory Service for Microsoft Active Directory allows you to configure and verify trust relationships 
#' }
#'
#' @rdname directoryservice
#' @export
directoryservice <- function() {
  paws.security.identity::directoryservice()
}

#' Firewall Management Service
#'
#' @description
#' AWS Firewall Manager
#' 
#' This is the *AWS Firewall Manager API Reference*. This guide is for
#' developers who need detailed information about the AWS Firewall Manager
#' API actions, data types, and errors. For detailed information about AWS
#' Firewall Manager features, see the [AWS Firewall Manager Developer
#' Guide](https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html).
#'
#' @examples
#' \donttest{svc <- fms()
#' svc$associate_admin_account(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=fms_associate_admin_account]{associate_admin_account} \tab Sets the AWS Firewall Manager administrator account \cr
#'  \link[=fms_delete_notification_channel]{delete_notification_channel} \tab Deletes an AWS Firewall Manager association with the IAM role and the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs\cr
#'  \link[=fms_delete_policy]{delete_policy} \tab Permanently deletes an AWS Firewall Manager policy \cr
#'  \link[=fms_disassociate_admin_account]{disassociate_admin_account} \tab Disassociates the account that has been set as the AWS Firewall Manager administrator account \cr
#'  \link[=fms_get_admin_account]{get_admin_account} \tab Returns the AWS Organizations master account that is associated with AWS Firewall Manager as the AWS Firewall Manager administrator \cr
#'  \link[=fms_get_compliance_detail]{get_compliance_detail} \tab Returns detailed compliance information about the specified member account \cr
#'  \link[=fms_get_notification_channel]{get_notification_channel} \tab Returns information about the Amazon Simple Notification Service (SNS) topic that is used to record AWS Firewall Manager SNS logs \cr
#'  \link[=fms_get_policy]{get_policy} \tab Returns information about the specified AWS Firewall Manager policy \cr
#'  \link[=fms_get_protection_status]{get_protection_status} \tab If you created a Shield Advanced policy, returns policy-level attack summary information in the event of a potential DDoS attack \cr
#'  \link[=fms_list_compliance_status]{list_compliance_status} \tab Returns an array of PolicyComplianceStatus objects in the response \cr
#'  \link[=fms_list_member_accounts]{list_member_accounts} \tab Returns a MemberAccounts object that lists the member accounts in the administrator's AWS organization \cr
#'  \link[=fms_list_policies]{list_policies} \tab Returns an array of PolicySummary objects in the response \cr
#'  \link[=fms_put_notification_channel]{put_notification_channel} \tab Designates the IAM role and Amazon Simple Notification Service (SNS) topic that AWS Firewall Manager uses to record SNS logs \cr
#'  \link[=fms_put_policy]{put_policy} \tab Creates an AWS Firewall Manager policy 
#' }
#'
#' @rdname fms
#' @export
fms <- function() {
  paws.security.identity::fms()
}

#' Amazon GuardDuty
#'
#' @description
#' Assess, monitor, manage, and remediate security issues across your AWS infrastructure, applications, and data.
#'
#' @examples
#' \donttest{svc <- guardduty()
#' svc$accept_invitation(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=guardduty_accept_invitation]{accept_invitation} \tab Accepts the invitation to be monitored by a master GuardDuty account \cr
#'  \link[=guardduty_archive_findings]{archive_findings} \tab Archives Amazon GuardDuty findings specified by the list of finding IDs \cr
#'  \link[=guardduty_create_detector]{create_detector} \tab Creates a single Amazon GuardDuty detector \cr
#'  \link[=guardduty_create_filter]{create_filter} \tab Creates a filter using the specified finding criteria \cr
#'  \link[=guardduty_create_ip_set]{create_ip_set} \tab Creates a new IPSet - a list of trusted IP addresses that have been whitelisted for secure communication with AWS infrastructure and applications \cr
#'  \link[=guardduty_create_members]{create_members} \tab Creates member accounts of the current AWS account by specifying a list of AWS account IDs \cr
#'  \link[=guardduty_create_sample_findings]{create_sample_findings} \tab Generates example findings of types specified by the list of finding types \cr
#'  \link[=guardduty_create_threat_intel_set]{create_threat_intel_set} \tab Create a new ThreatIntelSet \cr
#'  \link[=guardduty_decline_invitations]{decline_invitations} \tab Declines invitations sent to the current member account by AWS account specified by their account IDs \cr
#'  \link[=guardduty_delete_detector]{delete_detector} \tab Deletes a Amazon GuardDuty detector specified by the detector ID \cr
#'  \link[=guardduty_delete_filter]{delete_filter} \tab Deletes the filter specified by the filter name \cr
#'  \link[=guardduty_delete_ip_set]{delete_ip_set} \tab Deletes the IPSet specified by the IPSet ID \cr
#'  \link[=guardduty_delete_invitations]{delete_invitations} \tab Deletes invitations sent to the current member account by AWS accounts specified by their account IDs \cr
#'  \link[=guardduty_delete_members]{delete_members} \tab Deletes GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs \cr
#'  \link[=guardduty_delete_threat_intel_set]{delete_threat_intel_set} \tab Deletes ThreatIntelSet specified by the ThreatIntelSet ID \cr
#'  \link[=guardduty_disassociate_from_master_account]{disassociate_from_master_account} \tab Disassociates the current GuardDuty member account from its master account \cr
#'  \link[=guardduty_disassociate_members]{disassociate_members} \tab Disassociates GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs \cr
#'  \link[=guardduty_get_detector]{get_detector} \tab Retrieves an Amazon GuardDuty detector specified by the detectorId \cr
#'  \link[=guardduty_get_filter]{get_filter} \tab Returns the details of the filter specified by the filter name \cr
#'  \link[=guardduty_get_findings]{get_findings} \tab Describes Amazon GuardDuty findings specified by finding IDs \cr
#'  \link[=guardduty_get_findings_statistics]{get_findings_statistics} \tab Lists Amazon GuardDuty findings' statistics for the specified detector ID \cr
#'  \link[=guardduty_get_ip_set]{get_ip_set} \tab Retrieves the IPSet specified by the IPSet ID \cr
#'  \link[=guardduty_get_invitations_count]{get_invitations_count} \tab Returns the count of all GuardDuty membership invitations that were sent to the current member account except the currently accepted invitation \cr
#'  \link[=guardduty_get_master_account]{get_master_account} \tab Provides the details for the GuardDuty master account to the current GuardDuty member account \cr
#'  \link[=guardduty_get_members]{get_members} \tab Retrieves GuardDuty member accounts (to the current GuardDuty master account) specified by the account IDs \cr
#'  \link[=guardduty_get_threat_intel_set]{get_threat_intel_set} \tab Retrieves the ThreatIntelSet that is specified by the ThreatIntelSet ID \cr
#'  \link[=guardduty_invite_members]{invite_members} \tab Invites other AWS accounts (created as members of the current AWS account by CreateMembers) to enable GuardDuty and allow the current AWS account to view and manage these accounts' GuardDuty findings on their behalf as the master account\cr
#'  \link[=guardduty_list_detectors]{list_detectors} \tab Lists detectorIds of all the existing Amazon GuardDuty detector resources \cr
#'  \link[=guardduty_list_filters]{list_filters} \tab Returns a paginated list of the current filters \cr
#'  \link[=guardduty_list_findings]{list_findings} \tab Lists Amazon GuardDuty findings for the specified detector ID \cr
#'  \link[=guardduty_list_ip_sets]{list_ip_sets} \tab Lists the IPSets of the GuardDuty service specified by the detector ID \cr
#'  \link[=guardduty_list_invitations]{list_invitations} \tab Lists all GuardDuty membership invitations that were sent to the current AWS account \cr
#'  \link[=guardduty_list_members]{list_members} \tab Lists details about all member accounts for the current GuardDuty master account \cr
#'  \link[=guardduty_list_threat_intel_sets]{list_threat_intel_sets} \tab Lists the ThreatIntelSets of the GuardDuty service specified by the detector ID \cr
#'  \link[=guardduty_start_monitoring_members]{start_monitoring_members} \tab Re-enables GuardDuty to monitor findings of the member accounts specified by the account IDs \cr
#'  \link[=guardduty_stop_monitoring_members]{stop_monitoring_members} \tab Disables GuardDuty from monitoring findings of the member accounts specified by the account IDs \cr
#'  \link[=guardduty_unarchive_findings]{unarchive_findings} \tab Unarchives Amazon GuardDuty findings specified by the list of finding IDs \cr
#'  \link[=guardduty_update_detector]{update_detector} \tab Updates an Amazon GuardDuty detector specified by the detectorId \cr
#'  \link[=guardduty_update_filter]{update_filter} \tab Updates the filter specified by the filter name \cr
#'  \link[=guardduty_update_findings_feedback]{update_findings_feedback} \tab Marks specified Amazon GuardDuty findings as useful or not useful \cr
#'  \link[=guardduty_update_ip_set]{update_ip_set} \tab Updates the IPSet specified by the IPSet ID \cr
#'  \link[=guardduty_update_threat_intel_set]{update_threat_intel_set} \tab Updates the ThreatIntelSet specified by ThreatIntelSet ID 
#' }
#'
#' @rdname guardduty
#' @export
guardduty <- function() {
  paws.security.identity::guardduty()
}

#' AWS Identity and Access Management
#'
#' @description
#' AWS Identity and Access Management (IAM) is a web service that you can
#' use to manage users and user permissions under your AWS account. This
#' guide provides descriptions of IAM actions that you can call
#' programmatically. For general information about IAM, see [AWS Identity
#' and Access Management (IAM)](http://aws.amazon.com/iam/). For the user
#' guide for IAM, see [Using
#' IAM](http://docs.aws.amazon.com/IAM/latest/UserGuide/).
#' 
#' AWS provides SDKs that consist of libraries and sample code for various
#' programming languages and platforms (Java, Ruby, .NET, iOS, Android,
#' etc.). The SDKs provide a convenient way to create programmatic access
#' to IAM and AWS. For example, the SDKs take care of tasks such as
#' cryptographically signing requests (see below), managing errors, and
#' retrying requests automatically. For information about the AWS SDKs,
#' including how to download and install them, see the [Tools for Amazon
#' Web Services](http://aws.amazon.com/tools/) page.
#' 
#' We recommend that you use the AWS SDKs to make programmatic API calls to
#' IAM. However, you can also use the IAM Query API to make direct calls to
#' the IAM web service. To learn more about the IAM Query API, see [Making
#' Query
#' Requests](http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
#' in the *Using IAM* guide. IAM supports GET and POST requests for all
#' actions. That is, the API does not require you to use GET for some
#' actions and POST for others. However, GET requests are subject to the
#' limitation size of a URL. Therefore, for operations that require larger
#' sizes, use a POST request.
#' 
#' **Signing Requests**
#' 
#' Requests must be signed using an access key ID and a secret access key.
#' We strongly recommend that you do not use your AWS account access key ID
#' and secret access key for everyday work with IAM. You can use the access
#' key ID and secret access key for an IAM user or you can use the AWS
#' Security Token Service to generate temporary security credentials and
#' use those to sign requests.
#' 
#' To sign requests, we recommend that you use [Signature Version
#' 4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
#' If you have an existing application that uses Signature Version 2, you
#' do not have to update it to use Signature Version 4. However, some
#' operations now require Signature Version 4. The documentation for
#' operations that require version 4 indicate this requirement.
#' 
#' **Additional Resources**
#' 
#' For more information, see the following:
#' 
#' -   [AWS Security
#'     Credentials](http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html).
#'     This topic provides general information about the types of
#'     credentials used for accessing AWS.
#' 
#' -   [IAM Best
#'     Practices](http://docs.aws.amazon.com/IAM/latest/UserGuide/IAMBestPractices.html).
#'     This topic presents a list of suggestions for using the IAM service
#'     to help secure your AWS resources.
#' 
#' -   [Signing AWS API
#'     Requests](http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html).
#'     This set of topics walk you through the process of signing a request
#'     using an access key ID and secret access key.
#'
#' @examples
#' # The following add-client-id-to-open-id-connect-provider command adds the
#' # client ID my-application-ID to the OIDC provider named
#' # server.example.com:
#' \donttest{svc <- iam()
#' svc$add_client_id_to_open_id_connect_provider(
#'   ClientID = "my-application-ID",
#'   OpenIDConnectProviderArn = "arn:aws:iam::123456789012:oidc-provider/server.example.com"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=iam_add_client_id_to_open_id_connect_provider]{add_client_id_to_open_id_connect_provider} \tab Adds a new client ID (also known as audience) to the list of client IDs already registered for the specified IAM OpenID Connect (OIDC) provider resource \cr
#'  \link[=iam_add_role_to_instance_profile]{add_role_to_instance_profile} \tab Adds the specified IAM role to the specified instance profile \cr
#'  \link[=iam_add_user_to_group]{add_user_to_group} \tab Adds the specified user to the specified group \cr
#'  \link[=iam_attach_group_policy]{attach_group_policy} \tab Attaches the specified managed policy to the specified IAM group \cr
#'  \link[=iam_attach_role_policy]{attach_role_policy} \tab Attaches the specified managed policy to the specified IAM role \cr
#'  \link[=iam_attach_user_policy]{attach_user_policy} \tab Attaches the specified managed policy to the specified user \cr
#'  \link[=iam_change_password]{change_password} \tab Changes the password of the IAM user who is calling this operation \cr
#'  \link[=iam_create_access_key]{create_access_key} \tab Creates a new AWS secret access key and corresponding AWS access key ID for the specified user \cr
#'  \link[=iam_create_account_alias]{create_account_alias} \tab Creates an alias for your AWS account \cr
#'  \link[=iam_create_group]{create_group} \tab Creates a new group \cr
#'  \link[=iam_create_instance_profile]{create_instance_profile} \tab Creates a new instance profile \cr
#'  \link[=iam_create_login_profile]{create_login_profile} \tab Creates a password for the specified user, giving the user the ability to access AWS services through the AWS Management Console \cr
#'  \link[=iam_create_open_id_connect_provider]{create_open_id_connect_provider} \tab Creates an IAM entity to describe an identity provider (IdP) that supports OpenID Connect (OIDC) \cr
#'  \link[=iam_create_policy]{create_policy} \tab Creates a new managed policy for your AWS account \cr
#'  \link[=iam_create_policy_version]{create_policy_version} \tab Creates a new version of the specified managed policy \cr
#'  \link[=iam_create_role]{create_role} \tab Creates a new role for your AWS account \cr
#'  \link[=iam_create_saml_provider]{create_saml_provider} \tab Creates an IAM resource that describes an identity provider (IdP) that supports SAML 2 \cr
#'  \link[=iam_create_service_linked_role]{create_service_linked_role} \tab Creates an IAM role that is linked to a specific AWS service \cr
#'  \link[=iam_create_service_specific_credential]{create_service_specific_credential} \tab Generates a set of credentials consisting of a user name and password that can be used to access the service specified in the request \cr
#'  \link[=iam_create_user]{create_user} \tab Creates a new IAM user for your AWS account \cr
#'  \link[=iam_create_virtual_mfa_device]{create_virtual_mfa_device} \tab Creates a new virtual MFA device for the AWS account \cr
#'  \link[=iam_deactivate_mfa_device]{deactivate_mfa_device} \tab Deactivates the specified MFA device and removes it from association with the user name for which it was originally enabled \cr
#'  \link[=iam_delete_access_key]{delete_access_key} \tab Deletes the access key pair associated with the specified IAM user \cr
#'  \link[=iam_delete_account_alias]{delete_account_alias} \tab Deletes the specified AWS account alias \cr
#'  \link[=iam_delete_account_password_policy]{delete_account_password_policy} \tab Deletes the password policy for the AWS account \cr
#'  \link[=iam_delete_group]{delete_group} \tab Deletes the specified IAM group \cr
#'  \link[=iam_delete_group_policy]{delete_group_policy} \tab Deletes the specified inline policy that is embedded in the specified IAM group \cr
#'  \link[=iam_delete_instance_profile]{delete_instance_profile} \tab Deletes the specified instance profile \cr
#'  \link[=iam_delete_login_profile]{delete_login_profile} \tab Deletes the password for the specified IAM user, which terminates the user's ability to access AWS services through the AWS Management Console \cr
#'  \link[=iam_delete_open_id_connect_provider]{delete_open_id_connect_provider} \tab Deletes an OpenID Connect identity provider (IdP) resource object in IAM \cr
#'  \link[=iam_delete_policy]{delete_policy} \tab Deletes the specified managed policy \cr
#'  \link[=iam_delete_policy_version]{delete_policy_version} \tab Deletes the specified version from the specified managed policy \cr
#'  \link[=iam_delete_role]{delete_role} \tab Deletes the specified role \cr
#'  \link[=iam_delete_role_permissions_boundary]{delete_role_permissions_boundary} \tab Deletes the permissions boundary for the specified IAM role \cr
#'  \link[=iam_delete_role_policy]{delete_role_policy} \tab Deletes the specified inline policy that is embedded in the specified IAM role \cr
#'  \link[=iam_delete_saml_provider]{delete_saml_provider} \tab Deletes a SAML provider resource in IAM \cr
#'  \link[=iam_delete_ssh_public_key]{delete_ssh_public_key} \tab Deletes the specified SSH public key \cr
#'  \link[=iam_delete_server_certificate]{delete_server_certificate} \tab Deletes the specified server certificate \cr
#'  \link[=iam_delete_service_linked_role]{delete_service_linked_role} \tab Submits a service-linked role deletion request and returns a DeletionTaskId, which you can use to check the status of the deletion \cr
#'  \link[=iam_delete_service_specific_credential]{delete_service_specific_credential} \tab Deletes the specified service-specific credential \cr
#'  \link[=iam_delete_signing_certificate]{delete_signing_certificate} \tab Deletes a signing certificate associated with the specified IAM user \cr
#'  \link[=iam_delete_user]{delete_user} \tab Deletes the specified IAM user \cr
#'  \link[=iam_delete_user_permissions_boundary]{delete_user_permissions_boundary} \tab Deletes the permissions boundary for the specified IAM user \cr
#'  \link[=iam_delete_user_policy]{delete_user_policy} \tab Deletes the specified inline policy that is embedded in the specified IAM user \cr
#'  \link[=iam_delete_virtual_mfa_device]{delete_virtual_mfa_device} \tab Deletes a virtual MFA device \cr
#'  \link[=iam_detach_group_policy]{detach_group_policy} \tab Removes the specified managed policy from the specified IAM group \cr
#'  \link[=iam_detach_role_policy]{detach_role_policy} \tab Removes the specified managed policy from the specified role \cr
#'  \link[=iam_detach_user_policy]{detach_user_policy} \tab Removes the specified managed policy from the specified user \cr
#'  \link[=iam_enable_mfa_device]{enable_mfa_device} \tab Enables the specified MFA device and associates it with the specified IAM user \cr
#'  \link[=iam_generate_credential_report]{generate_credential_report} \tab Generates a credential report for the AWS account \cr
#'  \link[=iam_generate_service_last_accessed_details]{generate_service_last_accessed_details} \tab Generates a request for a report that includes details about when an IAM resource (user, group, role, or policy) was last used in an attempt to access AWS services \cr
#'  \link[=iam_get_access_key_last_used]{get_access_key_last_used} \tab Retrieves information about when the specified access key was last used \cr
#'  \link[=iam_get_account_authorization_details]{get_account_authorization_details} \tab Retrieves information about all IAM users, groups, roles, and policies in your AWS account, including their relationships to one another \cr
#'  \link[=iam_get_account_password_policy]{get_account_password_policy} \tab Retrieves the password policy for the AWS account \cr
#'  \link[=iam_get_account_summary]{get_account_summary} \tab Retrieves information about IAM entity usage and IAM quotas in the AWS account \cr
#'  \link[=iam_get_context_keys_for_custom_policy]{get_context_keys_for_custom_policy} \tab Gets a list of all of the context keys referenced in the input policies \cr
#'  \link[=iam_get_context_keys_for_principal_policy]{get_context_keys_for_principal_policy} \tab Gets a list of all of the context keys referenced in all the IAM policies that are attached to the specified IAM entity \cr
#'  \link[=iam_get_credential_report]{get_credential_report} \tab Retrieves a credential report for the AWS account \cr
#'  \link[=iam_get_group]{get_group} \tab Returns a list of IAM users that are in the specified IAM group \cr
#'  \link[=iam_get_group_policy]{get_group_policy} \tab Retrieves the specified inline policy document that is embedded in the specified IAM group \cr
#'  \link[=iam_get_instance_profile]{get_instance_profile} \tab Retrieves information about the specified instance profile, including the instance profile's path, GUID, ARN, and role \cr
#'  \link[=iam_get_login_profile]{get_login_profile} \tab Retrieves the user name and password-creation date for the specified IAM user \cr
#'  \link[=iam_get_open_id_connect_provider]{get_open_id_connect_provider} \tab Returns information about the specified OpenID Connect (OIDC) provider resource object in IAM \cr
#'  \link[=iam_get_policy]{get_policy} \tab Retrieves information about the specified managed policy, including the policy's default version and the total number of IAM users, groups, and roles to which the policy is attached\cr
#'  \link[=iam_get_policy_version]{get_policy_version} \tab Retrieves information about the specified version of the specified managed policy, including the policy document \cr
#'  \link[=iam_get_role]{get_role} \tab Retrieves information about the specified role, including the role's path, GUID, ARN, and the role's trust policy that grants permission to assume the role \cr
#'  \link[=iam_get_role_policy]{get_role_policy} \tab Retrieves the specified inline policy document that is embedded with the specified IAM role \cr
#'  \link[=iam_get_saml_provider]{get_saml_provider} \tab Returns the SAML provider metadocument that was uploaded when the IAM SAML provider resource object was created or updated \cr
#'  \link[=iam_get_ssh_public_key]{get_ssh_public_key} \tab Retrieves the specified SSH public key, including metadata about the key \cr
#'  \link[=iam_get_server_certificate]{get_server_certificate} \tab Retrieves information about the specified server certificate stored in IAM \cr
#'  \link[=iam_get_service_last_accessed_details]{get_service_last_accessed_details} \tab After you generate a user, group, role, or policy report using the GenerateServiceLastAccessedDetails operation, you can use the JobId parameter in GetServiceLastAccessedDetails \cr
#'  \link[=iam_get_service_last_accessed_details_with_entities]{get_service_last_accessed_details_with_entities} \tab After you generate a group or policy report using the GenerateServiceLastAccessedDetails operation, you can use the JobId parameter in GetServiceLastAccessedDetailsWithEntities \cr
#'  \link[=iam_get_service_linked_role_deletion_status]{get_service_linked_role_deletion_status} \tab Retrieves the status of your service-linked role deletion \cr
#'  \link[=iam_get_user]{get_user} \tab Retrieves information about the specified IAM user, including the user's creation date, path, unique ID, and ARN \cr
#'  \link[=iam_get_user_policy]{get_user_policy} \tab Retrieves the specified inline policy document that is embedded in the specified IAM user \cr
#'  \link[=iam_list_access_keys]{list_access_keys} \tab Returns information about the access key IDs associated with the specified IAM user \cr
#'  \link[=iam_list_account_aliases]{list_account_aliases} \tab Lists the account alias associated with the AWS account (Note: you can have only one) \cr
#'  \link[=iam_list_attached_group_policies]{list_attached_group_policies} \tab Lists all managed policies that are attached to the specified IAM group \cr
#'  \link[=iam_list_attached_role_policies]{list_attached_role_policies} \tab Lists all managed policies that are attached to the specified IAM role \cr
#'  \link[=iam_list_attached_user_policies]{list_attached_user_policies} \tab Lists all managed policies that are attached to the specified IAM user \cr
#'  \link[=iam_list_entities_for_policy]{list_entities_for_policy} \tab Lists all IAM users, groups, and roles that the specified managed policy is attached to \cr
#'  \link[=iam_list_group_policies]{list_group_policies} \tab Lists the names of the inline policies that are embedded in the specified IAM group \cr
#'  \link[=iam_list_groups]{list_groups} \tab Lists the IAM groups that have the specified path prefix \cr
#'  \link[=iam_list_groups_for_user]{list_groups_for_user} \tab Lists the IAM groups that the specified IAM user belongs to \cr
#'  \link[=iam_list_instance_profiles]{list_instance_profiles} \tab Lists the instance profiles that have the specified path prefix \cr
#'  \link[=iam_list_instance_profiles_for_role]{list_instance_profiles_for_role} \tab Lists the instance profiles that have the specified associated IAM role \cr
#'  \link[=iam_list_mfa_devices]{list_mfa_devices} \tab Lists the MFA devices for an IAM user \cr
#'  \link[=iam_list_open_id_connect_providers]{list_open_id_connect_providers} \tab Lists information about the IAM OpenID Connect (OIDC) provider resource objects defined in the AWS account \cr
#'  \link[=iam_list_policies]{list_policies} \tab Lists all the managed policies that are available in your AWS account, including your own customer-defined managed policies and all AWS managed policies \cr
#'  \link[=iam_list_policies_granting_service_access]{list_policies_granting_service_access} \tab Retrieves a list of policies that the IAM identity (user, group, or role) can use to access each specified service \cr
#'  \link[=iam_list_policy_versions]{list_policy_versions} \tab Lists information about the versions of the specified managed policy, including the version that is currently set as the policy's default version \cr
#'  \link[=iam_list_role_policies]{list_role_policies} \tab Lists the names of the inline policies that are embedded in the specified IAM role \cr
#'  \link[=iam_list_role_tags]{list_role_tags} \tab Lists the tags that are attached to the specified role \cr
#'  \link[=iam_list_roles]{list_roles} \tab Lists the IAM roles that have the specified path prefix \cr
#'  \link[=iam_list_saml_providers]{list_saml_providers} \tab Lists the SAML provider resource objects defined in IAM in the account \cr
#'  \link[=iam_list_ssh_public_keys]{list_ssh_public_keys} \tab Returns information about the SSH public keys associated with the specified IAM user \cr
#'  \link[=iam_list_server_certificates]{list_server_certificates} \tab Lists the server certificates stored in IAM that have the specified path prefix \cr
#'  \link[=iam_list_service_specific_credentials]{list_service_specific_credentials} \tab Returns information about the service-specific credentials associated with the specified IAM user \cr
#'  \link[=iam_list_signing_certificates]{list_signing_certificates} \tab Returns information about the signing certificates associated with the specified IAM user \cr
#'  \link[=iam_list_user_policies]{list_user_policies} \tab Lists the names of the inline policies embedded in the specified IAM user \cr
#'  \link[=iam_list_user_tags]{list_user_tags} \tab Lists the tags that are attached to the specified user \cr
#'  \link[=iam_list_users]{list_users} \tab Lists the IAM users that have the specified path prefix \cr
#'  \link[=iam_list_virtual_mfa_devices]{list_virtual_mfa_devices} \tab Lists the virtual MFA devices defined in the AWS account by assignment status \cr
#'  \link[=iam_put_group_policy]{put_group_policy} \tab Adds or updates an inline policy document that is embedded in the specified IAM group \cr
#'  \link[=iam_put_role_permissions_boundary]{put_role_permissions_boundary} \tab Adds or updates the policy that is specified as the IAM role's permissions boundary \cr
#'  \link[=iam_put_role_policy]{put_role_policy} \tab Adds or updates an inline policy document that is embedded in the specified IAM role \cr
#'  \link[=iam_put_user_permissions_boundary]{put_user_permissions_boundary} \tab Adds or updates the policy that is specified as the IAM user's permissions boundary \cr
#'  \link[=iam_put_user_policy]{put_user_policy} \tab Adds or updates an inline policy document that is embedded in the specified IAM user \cr
#'  \link[=iam_remove_client_id_from_open_id_connect_provider]{remove_client_id_from_open_id_connect_provider} \tab Removes the specified client ID (also known as audience) from the list of client IDs registered for the specified IAM OpenID Connect (OIDC) provider resource object \cr
#'  \link[=iam_remove_role_from_instance_profile]{remove_role_from_instance_profile} \tab Removes the specified IAM role from the specified EC2 instance profile \cr
#'  \link[=iam_remove_user_from_group]{remove_user_from_group} \tab Removes the specified user from the specified group \cr
#'  \link[=iam_reset_service_specific_credential]{reset_service_specific_credential} \tab Resets the password for a service-specific credential \cr
#'  \link[=iam_resync_mfa_device]{resync_mfa_device} \tab Synchronizes the specified MFA device with its IAM resource object on the AWS servers \cr
#'  \link[=iam_set_default_policy_version]{set_default_policy_version} \tab Sets the specified version of the specified policy as the policy's default (operative) version \cr
#'  \link[=iam_simulate_custom_policy]{simulate_custom_policy} \tab Simulate how a set of IAM policies and optionally a resource-based policy works with a list of API operations and AWS resources to determine the policies' effective permissions \cr
#'  \link[=iam_simulate_principal_policy]{simulate_principal_policy} \tab Simulate how a set of IAM policies attached to an IAM entity works with a list of API operations and AWS resources to determine the policies' effective permissions \cr
#'  \link[=iam_tag_role]{tag_role} \tab Adds one or more tags to an IAM role \cr
#'  \link[=iam_tag_user]{tag_user} \tab Adds one or more tags to an IAM user \cr
#'  \link[=iam_untag_role]{untag_role} \tab Removes the specified tags from the role \cr
#'  \link[=iam_untag_user]{untag_user} \tab Removes the specified tags from the user \cr
#'  \link[=iam_update_access_key]{update_access_key} \tab Changes the status of the specified access key from Active to Inactive, or vice versa \cr
#'  \link[=iam_update_account_password_policy]{update_account_password_policy} \tab Updates the password policy settings for the AWS account \cr
#'  \link[=iam_update_assume_role_policy]{update_assume_role_policy} \tab Updates the policy that grants an IAM entity permission to assume a role \cr
#'  \link[=iam_update_group]{update_group} \tab Updates the name and/or the path of the specified IAM group \cr
#'  \link[=iam_update_login_profile]{update_login_profile} \tab Changes the password for the specified IAM user \cr
#'  \link[=iam_update_open_id_connect_provider_thumbprint]{update_open_id_connect_provider_thumbprint} \tab Replaces the existing list of server certificate thumbprints associated with an OpenID Connect (OIDC) provider resource object with a new list of thumbprints \cr
#'  \link[=iam_update_role]{update_role} \tab Updates the description or maximum session duration setting of a role \cr
#'  \link[=iam_update_role_description]{update_role_description} \tab Use UpdateRole instead \cr
#'  \link[=iam_update_saml_provider]{update_saml_provider} \tab Updates the metadata document for an existing SAML provider resource object \cr
#'  \link[=iam_update_ssh_public_key]{update_ssh_public_key} \tab Sets the status of an IAM user's SSH public key to active or inactive \cr
#'  \link[=iam_update_server_certificate]{update_server_certificate} \tab Updates the name and/or the path of the specified server certificate stored in IAM \cr
#'  \link[=iam_update_service_specific_credential]{update_service_specific_credential} \tab Sets the status of a service-specific credential to Active or Inactive \cr
#'  \link[=iam_update_signing_certificate]{update_signing_certificate} \tab Changes the status of the specified user signing certificate from active to disabled, or vice versa \cr
#'  \link[=iam_update_user]{update_user} \tab Updates the name and/or the path of the specified IAM user \cr
#'  \link[=iam_upload_ssh_public_key]{upload_ssh_public_key} \tab Uploads an SSH public key and associates it with the specified IAM user \cr
#'  \link[=iam_upload_server_certificate]{upload_server_certificate} \tab Uploads a server certificate entity for the AWS account \cr
#'  \link[=iam_upload_signing_certificate]{upload_signing_certificate} \tab Uploads an X 
#' }
#'
#' @rdname iam
#' @export
iam <- function() {
  paws.security.identity::iam()
}

#' Amazon Inspector
#'
#' @description
#' Amazon Inspector enables you to analyze the behavior of your AWS
#' resources and to identify potential security issues. For more
#' information, see [Amazon Inspector User
#' Guide](http://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html).
#'
#' @examples
#' # Assigns attributes (key and value pairs) to the findings that are
#' # specified by the ARNs of the findings.
#' \donttest{svc <- inspector()
#' svc$add_attributes_to_findings(
#'   attributes = list(
#'     list(
#'       key = "Example",
#'       value = "example"
#'     )
#'   ),
#'   findingArns = list(
#'     "arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-8l1VIE0D/run/0-Z0..."
#'   )
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=inspector_add_attributes_to_findings]{add_attributes_to_findings} \tab Assigns attributes (key and value pairs) to the findings that are specified by the ARNs of the findings \cr
#'  \link[=inspector_create_assessment_target]{create_assessment_target} \tab Creates a new assessment target using the ARN of the resource group that is generated by CreateResourceGroup \cr
#'  \link[=inspector_create_assessment_template]{create_assessment_template} \tab Creates an assessment template for the assessment target that is specified by the ARN of the assessment target \cr
#'  \link[=inspector_create_exclusions_preview]{create_exclusions_preview} \tab Starts the generation of an exclusions preview for the specified assessment template \cr
#'  \link[=inspector_create_resource_group]{create_resource_group} \tab Creates a resource group using the specified set of tags (key and value pairs) that are used to select the EC2 instances to be included in an Amazon Inspector assessment target\cr
#'  \link[=inspector_delete_assessment_run]{delete_assessment_run} \tab Deletes the assessment run that is specified by the ARN of the assessment run \cr
#'  \link[=inspector_delete_assessment_target]{delete_assessment_target} \tab Deletes the assessment target that is specified by the ARN of the assessment target \cr
#'  \link[=inspector_delete_assessment_template]{delete_assessment_template} \tab Deletes the assessment template that is specified by the ARN of the assessment template \cr
#'  \link[=inspector_describe_assessment_runs]{describe_assessment_runs} \tab Describes the assessment runs that are specified by the ARNs of the assessment runs \cr
#'  \link[=inspector_describe_assessment_targets]{describe_assessment_targets} \tab Describes the assessment targets that are specified by the ARNs of the assessment targets \cr
#'  \link[=inspector_describe_assessment_templates]{describe_assessment_templates} \tab Describes the assessment templates that are specified by the ARNs of the assessment templates \cr
#'  \link[=inspector_describe_cross_account_access_role]{describe_cross_account_access_role} \tab Describes the IAM role that enables Amazon Inspector to access your AWS account \cr
#'  \link[=inspector_describe_exclusions]{describe_exclusions} \tab Describes the exclusions that are specified by the exclusions' ARNs \cr
#'  \link[=inspector_describe_findings]{describe_findings} \tab Describes the findings that are specified by the ARNs of the findings \cr
#'  \link[=inspector_describe_resource_groups]{describe_resource_groups} \tab Describes the resource groups that are specified by the ARNs of the resource groups \cr
#'  \link[=inspector_describe_rules_packages]{describe_rules_packages} \tab Describes the rules packages that are specified by the ARNs of the rules packages \cr
#'  \link[=inspector_get_assessment_report]{get_assessment_report} \tab Produces an assessment report that includes detailed and comprehensive results of a specified assessment run \cr
#'  \link[=inspector_get_exclusions_preview]{get_exclusions_preview} \tab Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token \cr
#'  \link[=inspector_get_telemetry_metadata]{get_telemetry_metadata} \tab Information about the data that is collected for the specified assessment run \cr
#'  \link[=inspector_list_assessment_run_agents]{list_assessment_run_agents} \tab Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs \cr
#'  \link[=inspector_list_assessment_runs]{list_assessment_runs} \tab Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates \cr
#'  \link[=inspector_list_assessment_targets]{list_assessment_targets} \tab Lists the ARNs of the assessment targets within this AWS account \cr
#'  \link[=inspector_list_assessment_templates]{list_assessment_templates} \tab Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets \cr
#'  \link[=inspector_list_event_subscriptions]{list_event_subscriptions} \tab Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template \cr
#'  \link[=inspector_list_exclusions]{list_exclusions} \tab List exclusions that are generated by the assessment run \cr
#'  \link[=inspector_list_findings]{list_findings} \tab Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs \cr
#'  \link[=inspector_list_rules_packages]{list_rules_packages} \tab Lists all available Amazon Inspector rules packages \cr
#'  \link[=inspector_list_tags_for_resource]{list_tags_for_resource} \tab Lists all tags associated with an assessment template \cr
#'  \link[=inspector_preview_agents]{preview_agents} \tab Previews the agents installed on the EC2 instances that are part of the specified assessment target \cr
#'  \link[=inspector_register_cross_account_access_role]{register_cross_account_access_role} \tab Registers the IAM role that grants Amazon Inspector access to AWS Services needed to perform security assessments \cr
#'  \link[=inspector_remove_attributes_from_findings]{remove_attributes_from_findings} \tab Removes entire attributes (key and value pairs) from the findings that are specified by the ARNs of the findings where an attribute with the specified key exists \cr
#'  \link[=inspector_set_tags_for_resource]{set_tags_for_resource} \tab Sets tags (key and value pairs) to the assessment template that is specified by the ARN of the assessment template \cr
#'  \link[=inspector_start_assessment_run]{start_assessment_run} \tab Starts the assessment run specified by the ARN of the assessment template \cr
#'  \link[=inspector_stop_assessment_run]{stop_assessment_run} \tab Stops the assessment run that is specified by the ARN of the assessment run \cr
#'  \link[=inspector_subscribe_to_event]{subscribe_to_event} \tab Enables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic \cr
#'  \link[=inspector_unsubscribe_from_event]{unsubscribe_from_event} \tab Disables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic \cr
#'  \link[=inspector_update_assessment_target]{update_assessment_target} \tab Updates the assessment target that is specified by the ARN of the assessment target 
#' }
#'
#' @rdname inspector
#' @export
inspector <- function() {
  paws.security.identity::inspector()
}

#' AWS Key Management Service
#'
#' @description
#' AWS Key Management Service (AWS KMS) is an encryption and key management
#' web service. This guide describes the AWS KMS operations that you can
#' call programmatically. For general information about AWS KMS, see the
#' [*AWS Key Management Service Developer
#' Guide*](http://docs.aws.amazon.com/kms/latest/developerguide/).
#' 
#' AWS provides SDKs that consist of libraries and sample code for various
#' programming languages and platforms (Java, Ruby, .Net, macOS, Android,
#' etc.). The SDKs provide a convenient way to create programmatic access
#' to AWS KMS and other AWS services. For example, the SDKs take care of
#' tasks such as signing requests (see below), managing errors, and
#' retrying requests automatically. For more information about the AWS
#' SDKs, including how to download and install them, see [Tools for Amazon
#' Web Services](http://aws.amazon.com/tools/).
#' 
#' We recommend that you use the AWS SDKs to make programmatic API calls to
#' AWS KMS.
#' 
#' Clients must support TLS (Transport Layer Security) 1.0. We recommend
#' TLS 1.2. Clients must also support cipher suites with Perfect Forward
#' Secrecy (PFS) such as Ephemeral Diffie-Hellman (DHE) or Elliptic Curve
#' Ephemeral Diffie-Hellman (ECDHE). Most modern systems such as Java 7 and
#' later support these modes.
#' 
#' **Signing Requests**
#' 
#' Requests must be signed by using an access key ID and a secret access
#' key. We strongly recommend that you *do not* use your AWS account (root)
#' access key ID and secret key for everyday work with AWS KMS. Instead,
#' use the access key ID and secret access key for an IAM user, or you can
#' use the AWS Security Token Service to generate temporary security
#' credentials that you can use to sign requests.
#' 
#' All AWS KMS operations require [Signature Version
#' 4](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
#' 
#' **Logging API Requests**
#' 
#' AWS KMS supports AWS CloudTrail, a service that logs AWS API calls and
#' related events for your AWS account and delivers them to an Amazon S3
#' bucket that you specify. By using the information collected by
#' CloudTrail, you can determine what requests were made to AWS KMS, who
#' made the request, when it was made, and so on. To learn more about
#' CloudTrail, including how to turn it on and find your log files, see the
#' [AWS CloudTrail User
#' Guide](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/).
#' 
#' **Additional Resources**
#' 
#' For more information about credentials and request signing, see the
#' following:
#' 
#' -   [AWS Security
#'     Credentials](http://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html) -
#'     This topic provides general information about the of credentials
#'     used for accessing AWS.
#' 
#' -   [Temporary Security
#'     Credentials](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html) -
#'     This section of the *IAM User Guide* describes how to create and use
#'     temporary security credentials.
#' 
#' -   [Signature Version 4 Signing
#'     Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html) -
#'     This set of topics walks you through the process of signing a
#'     request using an access key ID and a secret access key.
#' 
#' **Commonly Used APIs**
#' 
#' Of the APIs discussed in this guide, the following will prove the most
#' useful for most applications. You will likely perform actions other than
#' these, such as creating keys and assigning policies, by using the
#' console.
#' 
#' -   Encrypt
#' 
#' -   Decrypt
#' 
#' -   GenerateDataKey
#' 
#' -   GenerateDataKeyWithoutPlaintext
#'
#' @examples
#' # The following example cancels deletion of the specified CMK.
#' \donttest{svc <- kms()
#' svc$cancel_key_deletion(
#'   KeyId = "1234abcd-12ab-34cd-56ef-1234567890ab"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=kms_cancel_key_deletion]{cancel_key_deletion} \tab Cancels the deletion of a customer master key (CMK) \cr
#'  \link[=kms_connect_custom_key_store]{connect_custom_key_store} \tab Connects or reconnects a custom key store to its associated AWS CloudHSM cluster \cr
#'  \link[=kms_create_alias]{create_alias} \tab Creates a display name for a customer master key (CMK) \cr
#'  \link[=kms_create_custom_key_store]{create_custom_key_store} \tab Creates a custom key store that is associated with an AWS CloudHSM cluster that you own and manage \cr
#'  \link[=kms_create_grant]{create_grant} \tab Adds a grant to a customer master key (CMK) \cr
#'  \link[=kms_create_key]{create_key} \tab Creates a customer master key (CMK) in the caller's AWS account \cr
#'  \link[=kms_decrypt]{decrypt} \tab Decrypts ciphertext \cr
#'  \link[=kms_delete_alias]{delete_alias} \tab Deletes the specified alias \cr
#'  \link[=kms_delete_custom_key_store]{delete_custom_key_store} \tab Deletes a custom key store \cr
#'  \link[=kms_delete_imported_key_material]{delete_imported_key_material} \tab Deletes key material that you previously imported \cr
#'  \link[=kms_describe_custom_key_stores]{describe_custom_key_stores} \tab Gets information about custom key stores in the account and region \cr
#'  \link[=kms_describe_key]{describe_key} \tab Provides detailed information about the specified customer master key (CMK) \cr
#'  \link[=kms_disable_key]{disable_key} \tab Sets the state of a customer master key (CMK) to disabled, thereby preventing its use for cryptographic operations \cr
#'  \link[=kms_disable_key_rotation]{disable_key_rotation} \tab Disables automatic rotation of the key material for the specified customer master key (CMK) \cr
#'  \link[=kms_disconnect_custom_key_store]{disconnect_custom_key_store} \tab Disconnects the custom key store from its associated AWS CloudHSM cluster \cr
#'  \link[=kms_enable_key]{enable_key} \tab Sets the key state of a customer master key (CMK) to enabled \cr
#'  \link[=kms_enable_key_rotation]{enable_key_rotation} \tab Enables automatic rotation of the key material for the specified customer master key (CMK) \cr
#'  \link[=kms_encrypt]{encrypt} \tab Encrypts plaintext into ciphertext by using a customer master key (CMK) \cr
#'  \link[=kms_generate_data_key]{generate_data_key} \tab Returns a data encryption key that you can use in your application to encrypt data locally \cr
#'  \link[=kms_generate_data_key_without_plaintext]{generate_data_key_without_plaintext} \tab Returns a data encryption key encrypted under a customer master key (CMK) \cr
#'  \link[=kms_generate_random]{generate_random} \tab Returns a random byte string that is cryptographically secure \cr
#'  \link[=kms_get_key_policy]{get_key_policy} \tab Gets a key policy attached to the specified customer master key (CMK) \cr
#'  \link[=kms_get_key_rotation_status]{get_key_rotation_status} \tab Gets a Boolean value that indicates whether automatic rotation of the key material is enabled for the specified customer master key (CMK)\cr
#'  \link[=kms_get_parameters_for_import]{get_parameters_for_import} \tab Returns the items you need in order to import key material into AWS KMS from your existing key management infrastructure \cr
#'  \link[=kms_import_key_material]{import_key_material} \tab Imports key material into an existing AWS KMS customer master key (CMK) that was created without key material \cr
#'  \link[=kms_list_aliases]{list_aliases} \tab Gets a list of all aliases in the caller's AWS account and region \cr
#'  \link[=kms_list_grants]{list_grants} \tab Gets a list of all grants for the specified customer master key (CMK) \cr
#'  \link[=kms_list_key_policies]{list_key_policies} \tab Gets the names of the key policies that are attached to a customer master key (CMK) \cr
#'  \link[=kms_list_keys]{list_keys} \tab Gets a list of all customer master keys (CMKs) in the caller's AWS account and region \cr
#'  \link[=kms_list_resource_tags]{list_resource_tags} \tab Returns a list of all tags for the specified customer master key (CMK) \cr
#'  \link[=kms_list_retirable_grants]{list_retirable_grants} \tab Returns a list of all grants for which the grant's RetiringPrincipal matches the one specified \cr
#'  \link[=kms_put_key_policy]{put_key_policy} \tab Attaches a key policy to the specified customer master key (CMK) \cr
#'  \link[=kms_re_encrypt]{re_encrypt} \tab Encrypts data on the server side with a new customer master key (CMK) without exposing the plaintext of the data on the client side \cr
#'  \link[=kms_retire_grant]{retire_grant} \tab Retires a grant \cr
#'  \link[=kms_revoke_grant]{revoke_grant} \tab Revokes the specified grant for the specified customer master key (CMK) \cr
#'  \link[=kms_schedule_key_deletion]{schedule_key_deletion} \tab Schedules the deletion of a customer master key (CMK) \cr
#'  \link[=kms_tag_resource]{tag_resource} \tab Adds or edits tags for a customer master key (CMK) \cr
#'  \link[=kms_untag_resource]{untag_resource} \tab Removes the specified tags from the specified customer master key (CMK) \cr
#'  \link[=kms_update_alias]{update_alias} \tab Associates an existing alias with a different customer master key (CMK) \cr
#'  \link[=kms_update_custom_key_store]{update_custom_key_store} \tab Changes the properties of a custom key store \cr
#'  \link[=kms_update_key_description]{update_key_description} \tab Updates the description of a customer master key (CMK) 
#' }
#'
#' @rdname kms
#' @export
kms <- function() {
  paws.security.identity::kms()
}

#' Amazon Macie
#'
#' @description
#' Amazon Macie is a security service that uses machine learning to
#' automatically discover, classify, and protect sensitive data in AWS.
#' Macie recognizes sensitive data such as personally identifiable
#' information (PII) or intellectual property, and provides you with
#' dashboards and alerts that give visibility into how this data is being
#' accessed or moved. For more information, see the [Macie User
#' Guide](https://docs.aws.amazon.com/macie/latest/userguide/what-is-macie.html).
#'
#' @examples
#' \donttest{svc <- macie()
#' svc$associate_member_account(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=macie_associate_member_account]{associate_member_account} \tab Associates a specified AWS account with Amazon Macie as a member account \cr
#'  \link[=macie_associate_s3_resources]{associate_s3_resources} \tab Associates specified S3 resources with Amazon Macie for monitoring and data classification\cr
#'  \link[=macie_disassociate_member_account]{disassociate_member_account} \tab Removes the specified member account from Amazon Macie \cr
#'  \link[=macie_disassociate_s3_resources]{disassociate_s3_resources} \tab Removes specified S3 resources from being monitored by Amazon Macie \cr
#'  \link[=macie_list_member_accounts]{list_member_accounts} \tab Lists all Amazon Macie member accounts for the current Amazon Macie master account \cr
#'  \link[=macie_list_s3_resources]{list_s3_resources} \tab Lists all the S3 resources associated with Amazon Macie \cr
#'  \link[=macie_update_s3_resources]{update_s3_resources} \tab Updates the classification types for the specified S3 resources 
#' }
#'
#' @rdname macie
#' @export
macie <- function() {
  paws.security.identity::macie()
}

#' AWS Resource Access Manager
#'
#' @description
#' Use AWS Resource Access Manager to share AWS resources between AWS
#' accounts. To share a resource, you create a resource share, associate
#' the resource with the resource share, and specify the principals that
#' can access the resource. The following principals are supported:
#' 
#' -   The ID of an AWS account
#' 
#' -   The Amazon Resource Name (ARN) of an OU from AWS Organizations
#' 
#' -   The Amazon Resource Name (ARN) of an organization from AWS
#'     Organizations
#' 
#' If you specify an AWS account that doesn\'t exist in the same
#' organization as the account that owns the resource share, the owner of
#' the specified account receives an invitation to accept the resource
#' share. After the owner accepts the invitation, they can access the
#' resources in the resource share. An administrator of the specified
#' account can use IAM policies to restrict access resources in the
#' resource share.
#'
#' @examples
#' \donttest{svc <- ram()
#' svc$accept_resource_share_invitation(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=ram_accept_resource_share_invitation]{accept_resource_share_invitation} \tab Accepts an invitation to a resource share from another AWS account \cr
#'  \link[=ram_associate_resource_share]{associate_resource_share} \tab Associates the specified resource share with the specified principals and resources \cr
#'  \link[=ram_create_resource_share]{create_resource_share} \tab Creates a resource share \cr
#'  \link[=ram_delete_resource_share]{delete_resource_share} \tab Deletes the specified resource share \cr
#'  \link[=ram_disassociate_resource_share]{disassociate_resource_share} \tab Disassociates the specified principals or resources from the specified resource share\cr
#'  \link[=ram_enable_sharing_with_aws_organization]{enable_sharing_with_aws_organization} \tab Enables resource sharing within your organization \cr
#'  \link[=ram_get_resource_policies]{get_resource_policies} \tab Gets the policies for the specifies resources \cr
#'  \link[=ram_get_resource_share_associations]{get_resource_share_associations} \tab Gets the associations for the specified resource share \cr
#'  \link[=ram_get_resource_share_invitations]{get_resource_share_invitations} \tab Gets the specified invitations for resource sharing \cr
#'  \link[=ram_get_resource_shares]{get_resource_shares} \tab Gets the specified resource shares or all of your resource shares \cr
#'  \link[=ram_list_principals]{list_principals} \tab Lists the principals with access to the specified resource \cr
#'  \link[=ram_list_resources]{list_resources} \tab Lists the resources that the specified principal can access \cr
#'  \link[=ram_reject_resource_share_invitation]{reject_resource_share_invitation} \tab Rejects an invitation to a resource share from another AWS account \cr
#'  \link[=ram_tag_resource]{tag_resource} \tab Adds the specified tags to the specified resource share \cr
#'  \link[=ram_untag_resource]{untag_resource} \tab Removes the specified tags from the specified resource share \cr
#'  \link[=ram_update_resource_share]{update_resource_share} \tab Updates the specified resource share 
#' }
#'
#' @rdname ram
#' @export
ram <- function() {
  paws.security.identity::ram()
}

#' AWS Secrets Manager
#'
#' @description
#' AWS Secrets Manager API Reference
#' 
#' AWS Secrets Manager is a web service that enables you to store, manage,
#' and retrieve, secrets.
#' 
#' This guide provides descriptions of the Secrets Manager API. For more
#' information about using this service, see the [AWS Secrets Manager User
#' Guide](https://docs.aws.amazon.com/secretsmanager/latest/userguide/introduction.html).
#' 
#' **API Version**
#' 
#' This version of the Secrets Manager API Reference documents the Secrets
#' Manager API version 2017-10-17.
#' 
#' As an alternative to using the API directly, you can use one of the AWS
#' SDKs, which consist of libraries and sample code for various programming
#' languages and platforms (such as Java, Ruby, .NET, iOS, and Android).
#' The SDKs provide a convenient way to create programmatic access to AWS
#' Secrets Manager. For example, the SDKs take care of cryptographically
#' signing requests, managing errors, and retrying requests automatically.
#' For more information about the AWS SDKs, including how to download and
#' install them, see [Tools for Amazon Web
#' Services](http://aws.amazon.com/tools/).
#' 
#' We recommend that you use the AWS SDKs to make programmatic API calls to
#' Secrets Manager. However, you also can use the Secrets Manager HTTP
#' Query API to make direct calls to the Secrets Manager web service. To
#' learn more about the Secrets Manager HTTP Query API, see [Making Query
#' Requests](https://docs.aws.amazon.com/secretsmanager/latest/userguide/query-requests.html)
#' in the *AWS Secrets Manager User Guide*.
#' 
#' Secrets Manager supports GET and POST requests for all actions. That is,
#' the API doesn\'t require you to use GET for some actions and POST for
#' others. However, GET requests are subject to the limitation size of a
#' URL. Therefore, for operations that require larger sizes, use a POST
#' request.
#' 
#' **Support and Feedback for AWS Secrets Manager**
#' 
#' We welcome your feedback. Send your comments to
#' <awssecretsmanager-feedback@amazon.com>, or post your feedback and
#' questions in the [AWS Secrets Manager Discussion
#' Forum](http://forums.aws.amazon.com/forum.jspa?forumID=296). For more
#' information about the AWS Discussion Forums, see [Forums
#' Help](http://forums.aws.amazon.com/help.jspa).
#' 
#' **How examples are presented**
#' 
#' The JSON that AWS Secrets Manager expects as your request parameters and
#' that the service returns as a response to HTTP query requests are
#' single, long strings without line breaks or white space formatting. The
#' JSON shown in the examples is formatted with both line breaks and white
#' space to improve readability. When example input parameters would also
#' result in long strings that extend beyond the screen, we insert line
#' breaks to enhance readability. You should always submit the input as a
#' single JSON text string.
#' 
#' **Logging API Requests**
#' 
#' AWS Secrets Manager supports AWS CloudTrail, a service that records AWS
#' API calls for your AWS account and delivers log files to an Amazon S3
#' bucket. By using information that\'s collected by AWS CloudTrail, you
#' can determine which requests were successfully made to Secrets Manager,
#' who made the request, when it was made, and so on. For more about AWS
#' Secrets Manager and its support for AWS CloudTrail, see [Logging AWS
#' Secrets Manager Events with AWS
#' CloudTrail](http://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring.html#monitoring_cloudtrail)
#' in the *AWS Secrets Manager User Guide*. To learn more about CloudTrail,
#' including how to turn it on and find your log files, see the [AWS
#' CloudTrail User
#' Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html).
#'
#' @examples
#' # The following example shows how to cancel rotation for a secret. The
#' # operation sets the RotationEnabled field to false and cancels all
#' # scheduled rotations. To resume scheduled rotations, you must re-enable
#' # rotation by calling the rotate-secret operation.
#' \donttest{svc <- secretsmanager()
#' svc$cancel_rotate_secret(
#'   SecretId = "MyTestDatabaseSecret"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=secretsmanager_cancel_rotate_secret]{cancel_rotate_secret} \tab Disables automatic scheduled rotation and cancels the rotation of a secret if one is currently in progress \cr
#'  \link[=secretsmanager_create_secret]{create_secret} \tab Creates a new secret \cr
#'  \link[=secretsmanager_delete_resource_policy]{delete_resource_policy} \tab Deletes the resource-based permission policy that's attached to the secret \cr
#'  \link[=secretsmanager_delete_secret]{delete_secret} \tab Deletes an entire secret and all of its versions \cr
#'  \link[=secretsmanager_describe_secret]{describe_secret} \tab Retrieves the details of a secret \cr
#'  \link[=secretsmanager_get_random_password]{get_random_password} \tab Generates a random password of the specified complexity \cr
#'  \link[=secretsmanager_get_resource_policy]{get_resource_policy} \tab Retrieves the JSON text of the resource-based policy document that's attached to the specified secret \cr
#'  \link[=secretsmanager_get_secret_value]{get_secret_value} \tab Retrieves the contents of the encrypted fields SecretString or SecretBinary from the specified version of a secret, whichever contains content\cr
#'  \link[=secretsmanager_list_secret_version_ids]{list_secret_version_ids} \tab Lists all of the versions attached to the specified secret \cr
#'  \link[=secretsmanager_list_secrets]{list_secrets} \tab Lists all of the secrets that are stored by Secrets Manager in the AWS account \cr
#'  \link[=secretsmanager_put_resource_policy]{put_resource_policy} \tab Attaches the contents of the specified resource-based permission policy to a secret \cr
#'  \link[=secretsmanager_put_secret_value]{put_secret_value} \tab Stores a new encrypted secret value in the specified secret \cr
#'  \link[=secretsmanager_restore_secret]{restore_secret} \tab Cancels the scheduled deletion of a secret by removing the DeletedDate time stamp \cr
#'  \link[=secretsmanager_rotate_secret]{rotate_secret} \tab Configures and starts the asynchronous process of rotating this secret \cr
#'  \link[=secretsmanager_tag_resource]{tag_resource} \tab Attaches one or more tags, each consisting of a key name and a value, to the specified secret \cr
#'  \link[=secretsmanager_untag_resource]{untag_resource} \tab Removes one or more tags from the specified secret \cr
#'  \link[=secretsmanager_update_secret]{update_secret} \tab Modifies many of the details of the specified secret \cr
#'  \link[=secretsmanager_update_secret_version_stage]{update_secret_version_stage} \tab Modifies the staging labels attached to a version of a secret 
#' }
#'
#' @rdname secretsmanager
#' @export
secretsmanager <- function() {
  paws.security.identity::secretsmanager()
}

#' AWS SecurityHub
#'
#' @description
#' AWS Security Hub provides you with a comprehensive view of your security
#' state within AWS and your compliance with the security industry
#' standards and best practices. Security Hub collects security data from
#' across AWS accounts, services, and supported third-party partners and
#' helps you analyze your security trends and identify the highest priority
#' security issues. For more information, see [AWS Security Hub User
#' Guide]().
#'
#' @examples
#' \donttest{svc <- securityhub()
#' svc$accept_invitation(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=securityhub_accept_invitation]{accept_invitation} \tab Accepts the invitation to be monitored by a master SecurityHub account \cr
#'  \link[=securityhub_batch_disable_standards]{batch_disable_standards} \tab Disables the standards specified by the standards subscription ARNs \cr
#'  \link[=securityhub_batch_enable_standards]{batch_enable_standards} \tab Enables the standards specified by the standards ARNs \cr
#'  \link[=securityhub_batch_import_findings]{batch_import_findings} \tab Imports security findings that are generated by the integrated third-party products into Security Hub \cr
#'  \link[=securityhub_create_insight]{create_insight} \tab Creates an insight, which is a consolidation of findings that identifies a security area that requires attention or intervention \cr
#'  \link[=securityhub_create_members]{create_members} \tab Creates member Security Hub accounts in the current AWS account (which becomes the master Security Hub account) that has Security Hub enabled \cr
#'  \link[=securityhub_decline_invitations]{decline_invitations} \tab Declines invitations that are sent to this AWS account (invitee) by the AWS accounts (inviters) that are specified by the account IDs \cr
#'  \link[=securityhub_delete_insight]{delete_insight} \tab Deletes an insight that is specified by the insight ARN \cr
#'  \link[=securityhub_delete_invitations]{delete_invitations} \tab Deletes invitations that are sent to this AWS account (invitee) by the AWS accounts (inviters) that are specified by their account IDs \cr
#'  \link[=securityhub_delete_members]{delete_members} \tab Deletes the Security Hub member accounts that are specified by the account IDs \cr
#'  \link[=securityhub_disable_import_findings_for_product]{disable_import_findings_for_product} \tab Stops you from being able to import findings generated by integrated third-party providers into Security Hub \cr
#'  \link[=securityhub_disable_security_hub]{disable_security_hub} \tab Disables the AWS Security Hub Service \cr
#'  \link[=securityhub_disassociate_from_master_account]{disassociate_from_master_account} \tab Disassociates the current Security Hub member account from its master account \cr
#'  \link[=securityhub_disassociate_members]{disassociate_members} \tab Disassociates the Security Hub member accounts that are specified by the account IDs from their master account \cr
#'  \link[=securityhub_enable_import_findings_for_product]{enable_import_findings_for_product} \tab Enables you to import findings generated by integrated third-party providers into Security Hub \cr
#'  \link[=securityhub_enable_security_hub]{enable_security_hub} \tab Enables the AWS Security Hub service \cr
#'  \link[=securityhub_get_enabled_standards]{get_enabled_standards} \tab Lists and describes enabled standards \cr
#'  \link[=securityhub_get_findings]{get_findings} \tab Lists and describes Security Hub-aggregated findings that are specified by filter attributes \cr
#'  \link[=securityhub_get_insight_results]{get_insight_results} \tab Lists the results of the Security Hub insight specified by the insight ARN \cr
#'  \link[=securityhub_get_insights]{get_insights} \tab Lists and describes insights that are specified by insight ARNs \cr
#'  \link[=securityhub_get_invitations_count]{get_invitations_count} \tab Returns the count of all Security Hub membership invitations that were sent to the current member account, not including the currently accepted invitation\cr
#'  \link[=securityhub_get_master_account]{get_master_account} \tab Provides the details for the Security Hub master account to the current member account \cr
#'  \link[=securityhub_get_members]{get_members} \tab Returns the details on the Security Hub member accounts that are specified by the account IDs \cr
#'  \link[=securityhub_invite_members]{invite_members} \tab Invites other AWS accounts to enable Security Hub and become Security Hub member accounts \cr
#'  \link[=securityhub_list_enabled_products_for_import]{list_enabled_products_for_import} \tab Lists all Security Hub-integrated third-party findings providers \cr
#'  \link[=securityhub_list_invitations]{list_invitations} \tab Lists all Security Hub membership invitations that were sent to the current AWS account \cr
#'  \link[=securityhub_list_members]{list_members} \tab Lists details about all member accounts for the current Security Hub master account \cr
#'  \link[=securityhub_update_findings]{update_findings} \tab Updates the AWS Security Hub-aggregated findings specified by the filter attributes \cr
#'  \link[=securityhub_update_insight]{update_insight} \tab Updates the AWS Security Hub insight specified by the insight ARN 
#' }
#'
#' @rdname securityhub
#' @export
securityhub <- function() {
  paws.security.identity::securityhub()
}

#' AWS Shield
#'
#' @description
#' AWS Shield Advanced
#' 
#' This is the *AWS Shield Advanced API Reference*. This guide is for
#' developers who need detailed information about the AWS Shield Advanced
#' API actions, data types, and errors. For detailed information about AWS
#' WAF and AWS Shield Advanced features and an overview of how to use the
#' AWS WAF and AWS Shield Advanced APIs, see the [AWS WAF and AWS Shield
#' Developer
#' Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @examples
#' \donttest{svc <- shield()
#' svc$associate_drt_log_bucket(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=shield_associate_drt_log_bucket]{associate_drt_log_bucket} \tab Authorizes the DDoS Response team (DRT) to access the specified Amazon S3 bucket containing your flow logs \cr
#'  \link[=shield_associate_drt_role]{associate_drt_role} \tab Authorizes the DDoS Response team (DRT), using the specified role, to access your AWS account to assist with DDoS attack mitigation during potential attacks \cr
#'  \link[=shield_create_protection]{create_protection} \tab Enables AWS Shield Advanced for a specific AWS resource \cr
#'  \link[=shield_create_subscription]{create_subscription} \tab Activates AWS Shield Advanced for an account \cr
#'  \link[=shield_delete_protection]{delete_protection} \tab Deletes an AWS Shield Advanced Protection \cr
#'  \link[=shield_delete_subscription]{delete_subscription} \tab Removes AWS Shield Advanced from an account \cr
#'  \link[=shield_describe_attack]{describe_attack} \tab Describes the details of a DDoS attack \cr
#'  \link[=shield_describe_drt_access]{describe_drt_access} \tab Returns the current role and list of Amazon S3 log buckets used by the DDoS Response team (DRT) to access your AWS account while assisting with attack mitigation\cr
#'  \link[=shield_describe_emergency_contact_settings]{describe_emergency_contact_settings} \tab Lists the email addresses that the DRT can use to contact you during a suspected attack \cr
#'  \link[=shield_describe_protection]{describe_protection} \tab Lists the details of a Protection object \cr
#'  \link[=shield_describe_subscription]{describe_subscription} \tab Provides details about the AWS Shield Advanced subscription for an account \cr
#'  \link[=shield_disassociate_drt_log_bucket]{disassociate_drt_log_bucket} \tab Removes the DDoS Response team's (DRT) access to the specified Amazon S3 bucket containing your flow logs \cr
#'  \link[=shield_disassociate_drt_role]{disassociate_drt_role} \tab Removes the DDoS Response team's (DRT) access to your AWS account \cr
#'  \link[=shield_get_subscription_state]{get_subscription_state} \tab Returns the SubscriptionState, either Active or Inactive \cr
#'  \link[=shield_list_attacks]{list_attacks} \tab Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period \cr
#'  \link[=shield_list_protections]{list_protections} \tab Lists all Protection objects for the account \cr
#'  \link[=shield_update_emergency_contact_settings]{update_emergency_contact_settings} \tab Updates the details of the list of email addresses that the DRT can use to contact you during a suspected attack \cr
#'  \link[=shield_update_subscription]{update_subscription} \tab Updates the details of an existing subscription 
#' }
#'
#' @rdname shield
#' @export
shield <- function() {
  paws.security.identity::shield()
}

#' AWS Security Token Service
#'
#' @description
#' The AWS Security Token Service (STS) is a web service that enables you
#' to request temporary, limited-privilege credentials for AWS Identity and
#' Access Management (IAM) users or for users that you authenticate
#' (federated users). This guide provides descriptions of the STS API. For
#' more detailed information about using this service, go to [Temporary
#' Security
#' Credentials](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html).
#' 
#' As an alternative to using the API, you can use one of the AWS SDKs,
#' which consist of libraries and sample code for various programming
#' languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs
#' provide a convenient way to create programmatic access to STS. For
#' example, the SDKs take care of cryptographically signing requests,
#' managing errors, and retrying requests automatically. For information
#' about the AWS SDKs, including how to download and install them, see the
#' [Tools for Amazon Web Services page](http://aws.amazon.com/tools/).
#' 
#' For information about setting up signatures and authorization through
#' the API, go to [Signing AWS API
#' Requests](http://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html)
#' in the *AWS General Reference*. For general information about the Query
#' API, go to [Making Query
#' Requests](http://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
#' in *Using IAM*. For information about using security tokens with other
#' AWS products, go to [AWS Services That Work with
#' IAM](http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html)
#' in the *IAM User Guide*.
#' 
#' If you\'re new to AWS and need additional technical information about a
#' specific AWS product, you can find the product\'s technical
#' documentation at <http://aws.amazon.com/documentation/>.
#' 
#' **Endpoints**
#' 
#' The AWS Security Token Service (STS) has a default endpoint of
#' https://sts.amazonaws.com that maps to the US East (N. Virginia) region.
#' Additional regions are available and are activated by default. For more
#' information, see [Activating and Deactivating AWS STS in an AWS
#' Region](http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
#' in the *IAM User Guide*.
#' 
#' For information about STS endpoints, see [Regions and
#' Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#sts_region)
#' in the *AWS General Reference*.
#' 
#' **Recording API requests**
#' 
#' STS supports AWS CloudTrail, which is a service that records AWS calls
#' for your AWS account and delivers log files to an Amazon S3 bucket. By
#' using information collected by CloudTrail, you can determine what
#' requests were successfully made to STS, who made the request, when it
#' was made, and so on. To learn more about CloudTrail, including how to
#' turn it on and find your log files, see the [AWS CloudTrail User
#' Guide](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html).
#'
#' @examples
#' # 
#' \donttest{svc <- sts()
#' svc$assume_role(
#'   DurationSeconds = 3600L,
#'   ExternalId = "123ABC",
#'   Policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Stmt1\",\"Effect\":...",
#'   RoleArn = "arn:aws:iam::123456789012:role/demo",
#'   RoleSessionName = "Bob"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=sts_assume_role]{assume_role} \tab Returns a set of temporary security credentials (consisting of an access key ID, a secret access key, and a security token) that you can use to access AWS resources that you might not normally have access to \cr
#'  \link[=sts_assume_role_with_saml]{assume_role_with_saml} \tab Returns a set of temporary security credentials for users who have been authenticated via a SAML authentication response \cr
#'  \link[=sts_assume_role_with_web_identity]{assume_role_with_web_identity} \tab Returns a set of temporary security credentials for users who have been authenticated in a mobile or web application with a web identity provider, such as Amazon Cognito, Login with Amazon, Facebook, Google, or any OpenID Connect-compatible identity provider\cr
#'  \link[=sts_decode_authorization_message]{decode_authorization_message} \tab Decodes additional information about the authorization status of a request from an encoded message returned in response to an AWS request \cr
#'  \link[=sts_get_caller_identity]{get_caller_identity} \tab Returns details about the IAM identity whose credentials are used to call the API \cr
#'  \link[=sts_get_federation_token]{get_federation_token} \tab Returns a set of temporary security credentials (consisting of an access key ID, a secret access key, and a security token) for a federated user \cr
#'  \link[=sts_get_session_token]{get_session_token} \tab Returns a set of temporary credentials for an AWS account or IAM user 
#' }
#'
#' @rdname sts
#' @export
sts <- function() {
  paws.security.identity::sts()
}

#' AWS WAF
#'
#' @description
#' This is the *AWS WAF API Reference* for using AWS WAF with Amazon
#' CloudFront. The AWS WAF actions and data types listed in the reference
#' are available for protecting Amazon CloudFront distributions. You can
#' use these actions and data types via the endpoint *waf.amazonaws.com*.
#' This guide is for developers who need detailed information about the AWS
#' WAF API actions, data types, and errors. For detailed information about
#' AWS WAF features and an overview of how to use the AWS WAF API, see the
#' [AWS WAF Developer
#' Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @examples
#' # The following example creates an IP match set named MyIPSetFriendlyName.
#' \donttest{svc <- waf()
#' svc$create_ip_set(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   Name = "MyIPSetFriendlyName"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=waf_create_byte_match_set]{create_byte_match_set} \tab Creates a ByteMatchSet \cr
#'  \link[=waf_create_geo_match_set]{create_geo_match_set} \tab Creates an GeoMatchSet, which you use to specify which web requests you want to allow or block based on the country that the requests originate from \cr
#'  \link[=waf_create_ip_set]{create_ip_set} \tab Creates an IPSet, which you use to specify which web requests that you want to allow or block based on the IP addresses that the requests originate from \cr
#'  \link[=waf_create_rate_based_rule]{create_rate_based_rule} \tab Creates a RateBasedRule \cr
#'  \link[=waf_create_regex_match_set]{create_regex_match_set} \tab Creates a RegexMatchSet \cr
#'  \link[=waf_create_regex_pattern_set]{create_regex_pattern_set} \tab Creates a RegexPatternSet \cr
#'  \link[=waf_create_rule]{create_rule} \tab Creates a Rule, which contains the IPSet objects, ByteMatchSet objects, and other predicates that identify the requests that you want to block \cr
#'  \link[=waf_create_rule_group]{create_rule_group} \tab Creates a RuleGroup \cr
#'  \link[=waf_create_size_constraint_set]{create_size_constraint_set} \tab Creates a SizeConstraintSet \cr
#'  \link[=waf_create_sql_injection_match_set]{create_sql_injection_match_set} \tab Creates a SqlInjectionMatchSet, which you use to allow, block, or count requests that contain snippets of SQL code in a specified part of web requests \cr
#'  \link[=waf_create_web_acl]{create_web_acl} \tab Creates a WebACL, which contains the Rules that identify the CloudFront web requests that you want to allow, block, or count \cr
#'  \link[=waf_create_xss_match_set]{create_xss_match_set} \tab Creates an XssMatchSet, which you use to allow, block, or count requests that contain cross-site scripting attacks in the specified part of web requests \cr
#'  \link[=waf_delete_byte_match_set]{delete_byte_match_set} \tab Permanently deletes a ByteMatchSet \cr
#'  \link[=waf_delete_geo_match_set]{delete_geo_match_set} \tab Permanently deletes a GeoMatchSet \cr
#'  \link[=waf_delete_ip_set]{delete_ip_set} \tab Permanently deletes an IPSet \cr
#'  \link[=waf_delete_logging_configuration]{delete_logging_configuration} \tab Permanently deletes the LoggingConfiguration from the specified web ACL \cr
#'  \link[=waf_delete_permission_policy]{delete_permission_policy} \tab Permanently deletes an IAM policy from the specified RuleGroup \cr
#'  \link[=waf_delete_rate_based_rule]{delete_rate_based_rule} \tab Permanently deletes a RateBasedRule \cr
#'  \link[=waf_delete_regex_match_set]{delete_regex_match_set} \tab Permanently deletes a RegexMatchSet \cr
#'  \link[=waf_delete_regex_pattern_set]{delete_regex_pattern_set} \tab Permanently deletes a RegexPatternSet \cr
#'  \link[=waf_delete_rule]{delete_rule} \tab Permanently deletes a Rule \cr
#'  \link[=waf_delete_rule_group]{delete_rule_group} \tab Permanently deletes a RuleGroup \cr
#'  \link[=waf_delete_size_constraint_set]{delete_size_constraint_set} \tab Permanently deletes a SizeConstraintSet \cr
#'  \link[=waf_delete_sql_injection_match_set]{delete_sql_injection_match_set} \tab Permanently deletes a SqlInjectionMatchSet \cr
#'  \link[=waf_delete_web_acl]{delete_web_acl} \tab Permanently deletes a WebACL \cr
#'  \link[=waf_delete_xss_match_set]{delete_xss_match_set} \tab Permanently deletes an XssMatchSet \cr
#'  \link[=waf_get_byte_match_set]{get_byte_match_set} \tab Returns the ByteMatchSet specified by ByteMatchSetId \cr
#'  \link[=waf_get_change_token]{get_change_token} \tab When you want to create, update, or delete AWS WAF objects, get a change token and include the change token in the create, update, or delete request \cr
#'  \link[=waf_get_change_token_status]{get_change_token_status} \tab Returns the status of a ChangeToken that you got by calling GetChangeToken \cr
#'  \link[=waf_get_geo_match_set]{get_geo_match_set} \tab Returns the GeoMatchSet that is specified by GeoMatchSetId \cr
#'  \link[=waf_get_ip_set]{get_ip_set} \tab Returns the IPSet that is specified by IPSetId \cr
#'  \link[=waf_get_logging_configuration]{get_logging_configuration} \tab Returns the LoggingConfiguration for the specified web ACL \cr
#'  \link[=waf_get_permission_policy]{get_permission_policy} \tab Returns the IAM policy attached to the RuleGroup \cr
#'  \link[=waf_get_rate_based_rule]{get_rate_based_rule} \tab Returns the RateBasedRule that is specified by the RuleId that you included in the GetRateBasedRule request \cr
#'  \link[=waf_get_rate_based_rule_managed_keys]{get_rate_based_rule_managed_keys} \tab Returns an array of IP addresses currently being blocked by the RateBasedRule that is specified by the RuleId \cr
#'  \link[=waf_get_regex_match_set]{get_regex_match_set} \tab Returns the RegexMatchSet specified by RegexMatchSetId \cr
#'  \link[=waf_get_regex_pattern_set]{get_regex_pattern_set} \tab Returns the RegexPatternSet specified by RegexPatternSetId \cr
#'  \link[=waf_get_rule]{get_rule} \tab Returns the Rule that is specified by the RuleId that you included in the GetRule request \cr
#'  \link[=waf_get_rule_group]{get_rule_group} \tab Returns the RuleGroup that is specified by the RuleGroupId that you included in the GetRuleGroup request \cr
#'  \link[=waf_get_sampled_requests]{get_sampled_requests} \tab Gets detailed information about a specified number of requests--a sample--that AWS WAF randomly selects from among the first 5,000 requests that your AWS resource received during a time range that you choose\cr
#'  \link[=waf_get_size_constraint_set]{get_size_constraint_set} \tab Returns the SizeConstraintSet specified by SizeConstraintSetId \cr
#'  \link[=waf_get_sql_injection_match_set]{get_sql_injection_match_set} \tab Returns the SqlInjectionMatchSet that is specified by SqlInjectionMatchSetId \cr
#'  \link[=waf_get_web_acl]{get_web_acl} \tab Returns the WebACL that is specified by WebACLId \cr
#'  \link[=waf_get_xss_match_set]{get_xss_match_set} \tab Returns the XssMatchSet that is specified by XssMatchSetId \cr
#'  \link[=waf_list_activated_rules_in_rule_group]{list_activated_rules_in_rule_group} \tab Returns an array of ActivatedRule objects \cr
#'  \link[=waf_list_byte_match_sets]{list_byte_match_sets} \tab Returns an array of ByteMatchSetSummary objects \cr
#'  \link[=waf_list_geo_match_sets]{list_geo_match_sets} \tab Returns an array of GeoMatchSetSummary objects in the response \cr
#'  \link[=waf_list_ip_sets]{list_ip_sets} \tab Returns an array of IPSetSummary objects in the response \cr
#'  \link[=waf_list_logging_configurations]{list_logging_configurations} \tab Returns an array of LoggingConfiguration objects \cr
#'  \link[=waf_list_rate_based_rules]{list_rate_based_rules} \tab Returns an array of RuleSummary objects \cr
#'  \link[=waf_list_regex_match_sets]{list_regex_match_sets} \tab Returns an array of RegexMatchSetSummary objects \cr
#'  \link[=waf_list_regex_pattern_sets]{list_regex_pattern_sets} \tab Returns an array of RegexPatternSetSummary objects \cr
#'  \link[=waf_list_rule_groups]{list_rule_groups} \tab Returns an array of RuleGroup objects \cr
#'  \link[=waf_list_rules]{list_rules} \tab Returns an array of RuleSummary objects \cr
#'  \link[=waf_list_size_constraint_sets]{list_size_constraint_sets} \tab Returns an array of SizeConstraintSetSummary objects \cr
#'  \link[=waf_list_sql_injection_match_sets]{list_sql_injection_match_sets} \tab Returns an array of SqlInjectionMatchSet objects \cr
#'  \link[=waf_list_subscribed_rule_groups]{list_subscribed_rule_groups} \tab Returns an array of RuleGroup objects that you are subscribed to \cr
#'  \link[=waf_list_web_ac_ls]{list_web_ac_ls} \tab Returns an array of WebACLSummary objects in the response \cr
#'  \link[=waf_list_xss_match_sets]{list_xss_match_sets} \tab Returns an array of XssMatchSet objects \cr
#'  \link[=waf_put_logging_configuration]{put_logging_configuration} \tab Associates a LoggingConfiguration with a specified web ACL \cr
#'  \link[=waf_put_permission_policy]{put_permission_policy} \tab Attaches a IAM policy to the specified resource \cr
#'  \link[=waf_update_byte_match_set]{update_byte_match_set} \tab Inserts or deletes ByteMatchTuple objects (filters) in a ByteMatchSet \cr
#'  \link[=waf_update_geo_match_set]{update_geo_match_set} \tab Inserts or deletes GeoMatchConstraint objects in an GeoMatchSet \cr
#'  \link[=waf_update_ip_set]{update_ip_set} \tab Inserts or deletes IPSetDescriptor objects in an IPSet \cr
#'  \link[=waf_update_rate_based_rule]{update_rate_based_rule} \tab Inserts or deletes Predicate objects in a rule and updates the RateLimit in the rule \cr
#'  \link[=waf_update_regex_match_set]{update_regex_match_set} \tab Inserts or deletes RegexMatchTuple objects (filters) in a RegexMatchSet \cr
#'  \link[=waf_update_regex_pattern_set]{update_regex_pattern_set} \tab Inserts or deletes RegexPatternString objects in a RegexPatternSet \cr
#'  \link[=waf_update_rule]{update_rule} \tab Inserts or deletes Predicate objects in a Rule \cr
#'  \link[=waf_update_rule_group]{update_rule_group} \tab Inserts or deletes ActivatedRule objects in a RuleGroup \cr
#'  \link[=waf_update_size_constraint_set]{update_size_constraint_set} \tab Inserts or deletes SizeConstraint objects (filters) in a SizeConstraintSet \cr
#'  \link[=waf_update_sql_injection_match_set]{update_sql_injection_match_set} \tab Inserts or deletes SqlInjectionMatchTuple objects (filters) in a SqlInjectionMatchSet \cr
#'  \link[=waf_update_web_acl]{update_web_acl} \tab Inserts or deletes ActivatedRule objects in a WebACL \cr
#'  \link[=waf_update_xss_match_set]{update_xss_match_set} \tab Inserts or deletes XssMatchTuple objects (filters) in an XssMatchSet 
#' }
#'
#' @rdname waf
#' @export
waf <- function() {
  paws.security.identity::waf()
}

#' AWS WAF Regional
#'
#' @description
#' This is the *AWS WAF Regional API Reference* for using AWS WAF with
#' Elastic Load Balancing (ELB) Application Load Balancers. The AWS WAF
#' actions and data types listed in the reference are available for
#' protecting Application Load Balancers. You can use these actions and
#' data types by means of the endpoints listed in [AWS Regions and
#' Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#waf_region).
#' This guide is for developers who need detailed information about the AWS
#' WAF API actions, data types, and errors. For detailed information about
#' AWS WAF features and an overview of how to use the AWS WAF API, see the
#' [AWS WAF Developer
#' Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).
#'
#' @examples
#' # The following example creates an IP match set named MyIPSetFriendlyName.
#' \donttest{svc <- wafregional()
#' svc$create_ip_set(
#'   ChangeToken = "abcd12f2-46da-4fdb-b8d5-fbd4c466928f",
#'   Name = "MyIPSetFriendlyName"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=wafregional_associate_web_acl]{associate_web_acl} \tab Associates a web ACL with a resource, either an application load balancer or Amazon API Gateway stage \cr
#'  \link[=wafregional_create_byte_match_set]{create_byte_match_set} \tab Creates a ByteMatchSet \cr
#'  \link[=wafregional_create_geo_match_set]{create_geo_match_set} \tab Creates an GeoMatchSet, which you use to specify which web requests you want to allow or block based on the country that the requests originate from \cr
#'  \link[=wafregional_create_ip_set]{create_ip_set} \tab Creates an IPSet, which you use to specify which web requests that you want to allow or block based on the IP addresses that the requests originate from \cr
#'  \link[=wafregional_create_rate_based_rule]{create_rate_based_rule} \tab Creates a RateBasedRule \cr
#'  \link[=wafregional_create_regex_match_set]{create_regex_match_set} \tab Creates a RegexMatchSet \cr
#'  \link[=wafregional_create_regex_pattern_set]{create_regex_pattern_set} \tab Creates a RegexPatternSet \cr
#'  \link[=wafregional_create_rule]{create_rule} \tab Creates a Rule, which contains the IPSet objects, ByteMatchSet objects, and other predicates that identify the requests that you want to block \cr
#'  \link[=wafregional_create_rule_group]{create_rule_group} \tab Creates a RuleGroup \cr
#'  \link[=wafregional_create_size_constraint_set]{create_size_constraint_set} \tab Creates a SizeConstraintSet \cr
#'  \link[=wafregional_create_sql_injection_match_set]{create_sql_injection_match_set} \tab Creates a SqlInjectionMatchSet, which you use to allow, block, or count requests that contain snippets of SQL code in a specified part of web requests \cr
#'  \link[=wafregional_create_web_acl]{create_web_acl} \tab Creates a WebACL, which contains the Rules that identify the CloudFront web requests that you want to allow, block, or count \cr
#'  \link[=wafregional_create_xss_match_set]{create_xss_match_set} \tab Creates an XssMatchSet, which you use to allow, block, or count requests that contain cross-site scripting attacks in the specified part of web requests \cr
#'  \link[=wafregional_delete_byte_match_set]{delete_byte_match_set} \tab Permanently deletes a ByteMatchSet \cr
#'  \link[=wafregional_delete_geo_match_set]{delete_geo_match_set} \tab Permanently deletes a GeoMatchSet \cr
#'  \link[=wafregional_delete_ip_set]{delete_ip_set} \tab Permanently deletes an IPSet \cr
#'  \link[=wafregional_delete_logging_configuration]{delete_logging_configuration} \tab Permanently deletes the LoggingConfiguration from the specified web ACL \cr
#'  \link[=wafregional_delete_permission_policy]{delete_permission_policy} \tab Permanently deletes an IAM policy from the specified RuleGroup \cr
#'  \link[=wafregional_delete_rate_based_rule]{delete_rate_based_rule} \tab Permanently deletes a RateBasedRule \cr
#'  \link[=wafregional_delete_regex_match_set]{delete_regex_match_set} \tab Permanently deletes a RegexMatchSet \cr
#'  \link[=wafregional_delete_regex_pattern_set]{delete_regex_pattern_set} \tab Permanently deletes a RegexPatternSet \cr
#'  \link[=wafregional_delete_rule]{delete_rule} \tab Permanently deletes a Rule \cr
#'  \link[=wafregional_delete_rule_group]{delete_rule_group} \tab Permanently deletes a RuleGroup \cr
#'  \link[=wafregional_delete_size_constraint_set]{delete_size_constraint_set} \tab Permanently deletes a SizeConstraintSet \cr
#'  \link[=wafregional_delete_sql_injection_match_set]{delete_sql_injection_match_set} \tab Permanently deletes a SqlInjectionMatchSet \cr
#'  \link[=wafregional_delete_web_acl]{delete_web_acl} \tab Permanently deletes a WebACL \cr
#'  \link[=wafregional_delete_xss_match_set]{delete_xss_match_set} \tab Permanently deletes an XssMatchSet \cr
#'  \link[=wafregional_disassociate_web_acl]{disassociate_web_acl} \tab Removes a web ACL from the specified resource, either an application load balancer or Amazon API Gateway stage \cr
#'  \link[=wafregional_get_byte_match_set]{get_byte_match_set} \tab Returns the ByteMatchSet specified by ByteMatchSetId \cr
#'  \link[=wafregional_get_change_token]{get_change_token} \tab When you want to create, update, or delete AWS WAF objects, get a change token and include the change token in the create, update, or delete request \cr
#'  \link[=wafregional_get_change_token_status]{get_change_token_status} \tab Returns the status of a ChangeToken that you got by calling GetChangeToken \cr
#'  \link[=wafregional_get_geo_match_set]{get_geo_match_set} \tab Returns the GeoMatchSet that is specified by GeoMatchSetId \cr
#'  \link[=wafregional_get_ip_set]{get_ip_set} \tab Returns the IPSet that is specified by IPSetId \cr
#'  \link[=wafregional_get_logging_configuration]{get_logging_configuration} \tab Returns the LoggingConfiguration for the specified web ACL \cr
#'  \link[=wafregional_get_permission_policy]{get_permission_policy} \tab Returns the IAM policy attached to the RuleGroup \cr
#'  \link[=wafregional_get_rate_based_rule]{get_rate_based_rule} \tab Returns the RateBasedRule that is specified by the RuleId that you included in the GetRateBasedRule request \cr
#'  \link[=wafregional_get_rate_based_rule_managed_keys]{get_rate_based_rule_managed_keys} \tab Returns an array of IP addresses currently being blocked by the RateBasedRule that is specified by the RuleId \cr
#'  \link[=wafregional_get_regex_match_set]{get_regex_match_set} \tab Returns the RegexMatchSet specified by RegexMatchSetId \cr
#'  \link[=wafregional_get_regex_pattern_set]{get_regex_pattern_set} \tab Returns the RegexPatternSet specified by RegexPatternSetId \cr
#'  \link[=wafregional_get_rule]{get_rule} \tab Returns the Rule that is specified by the RuleId that you included in the GetRule request \cr
#'  \link[=wafregional_get_rule_group]{get_rule_group} \tab Returns the RuleGroup that is specified by the RuleGroupId that you included in the GetRuleGroup request \cr
#'  \link[=wafregional_get_sampled_requests]{get_sampled_requests} \tab Gets detailed information about a specified number of requests--a sample--that AWS WAF randomly selects from among the first 5,000 requests that your AWS resource received during a time range that you choose\cr
#'  \link[=wafregional_get_size_constraint_set]{get_size_constraint_set} \tab Returns the SizeConstraintSet specified by SizeConstraintSetId \cr
#'  \link[=wafregional_get_sql_injection_match_set]{get_sql_injection_match_set} \tab Returns the SqlInjectionMatchSet that is specified by SqlInjectionMatchSetId \cr
#'  \link[=wafregional_get_web_acl]{get_web_acl} \tab Returns the WebACL that is specified by WebACLId \cr
#'  \link[=wafregional_get_web_acl_for_resource]{get_web_acl_for_resource} \tab Returns the web ACL for the specified resource, either an application load balancer or Amazon API Gateway stage \cr
#'  \link[=wafregional_get_xss_match_set]{get_xss_match_set} \tab Returns the XssMatchSet that is specified by XssMatchSetId \cr
#'  \link[=wafregional_list_activated_rules_in_rule_group]{list_activated_rules_in_rule_group} \tab Returns an array of ActivatedRule objects \cr
#'  \link[=wafregional_list_byte_match_sets]{list_byte_match_sets} \tab Returns an array of ByteMatchSetSummary objects \cr
#'  \link[=wafregional_list_geo_match_sets]{list_geo_match_sets} \tab Returns an array of GeoMatchSetSummary objects in the response \cr
#'  \link[=wafregional_list_ip_sets]{list_ip_sets} \tab Returns an array of IPSetSummary objects in the response \cr
#'  \link[=wafregional_list_logging_configurations]{list_logging_configurations} \tab Returns an array of LoggingConfiguration objects \cr
#'  \link[=wafregional_list_rate_based_rules]{list_rate_based_rules} \tab Returns an array of RuleSummary objects \cr
#'  \link[=wafregional_list_regex_match_sets]{list_regex_match_sets} \tab Returns an array of RegexMatchSetSummary objects \cr
#'  \link[=wafregional_list_regex_pattern_sets]{list_regex_pattern_sets} \tab Returns an array of RegexPatternSetSummary objects \cr
#'  \link[=wafregional_list_resources_for_web_acl]{list_resources_for_web_acl} \tab Returns an array of resources associated with the specified web ACL \cr
#'  \link[=wafregional_list_rule_groups]{list_rule_groups} \tab Returns an array of RuleGroup objects \cr
#'  \link[=wafregional_list_rules]{list_rules} \tab Returns an array of RuleSummary objects \cr
#'  \link[=wafregional_list_size_constraint_sets]{list_size_constraint_sets} \tab Returns an array of SizeConstraintSetSummary objects \cr
#'  \link[=wafregional_list_sql_injection_match_sets]{list_sql_injection_match_sets} \tab Returns an array of SqlInjectionMatchSet objects \cr
#'  \link[=wafregional_list_subscribed_rule_groups]{list_subscribed_rule_groups} \tab Returns an array of RuleGroup objects that you are subscribed to \cr
#'  \link[=wafregional_list_web_ac_ls]{list_web_ac_ls} \tab Returns an array of WebACLSummary objects in the response \cr
#'  \link[=wafregional_list_xss_match_sets]{list_xss_match_sets} \tab Returns an array of XssMatchSet objects \cr
#'  \link[=wafregional_put_logging_configuration]{put_logging_configuration} \tab Associates a LoggingConfiguration with a specified web ACL \cr
#'  \link[=wafregional_put_permission_policy]{put_permission_policy} \tab Attaches a IAM policy to the specified resource \cr
#'  \link[=wafregional_update_byte_match_set]{update_byte_match_set} \tab Inserts or deletes ByteMatchTuple objects (filters) in a ByteMatchSet \cr
#'  \link[=wafregional_update_geo_match_set]{update_geo_match_set} \tab Inserts or deletes GeoMatchConstraint objects in an GeoMatchSet \cr
#'  \link[=wafregional_update_ip_set]{update_ip_set} \tab Inserts or deletes IPSetDescriptor objects in an IPSet \cr
#'  \link[=wafregional_update_rate_based_rule]{update_rate_based_rule} \tab Inserts or deletes Predicate objects in a rule and updates the RateLimit in the rule \cr
#'  \link[=wafregional_update_regex_match_set]{update_regex_match_set} \tab Inserts or deletes RegexMatchTuple objects (filters) in a RegexMatchSet \cr
#'  \link[=wafregional_update_regex_pattern_set]{update_regex_pattern_set} \tab Inserts or deletes RegexPatternString objects in a RegexPatternSet \cr
#'  \link[=wafregional_update_rule]{update_rule} \tab Inserts or deletes Predicate objects in a Rule \cr
#'  \link[=wafregional_update_rule_group]{update_rule_group} \tab Inserts or deletes ActivatedRule objects in a RuleGroup \cr
#'  \link[=wafregional_update_size_constraint_set]{update_size_constraint_set} \tab Inserts or deletes SizeConstraint objects (filters) in a SizeConstraintSet \cr
#'  \link[=wafregional_update_sql_injection_match_set]{update_sql_injection_match_set} \tab Inserts or deletes SqlInjectionMatchTuple objects (filters) in a SqlInjectionMatchSet \cr
#'  \link[=wafregional_update_web_acl]{update_web_acl} \tab Inserts or deletes ActivatedRule objects in a WebACL \cr
#'  \link[=wafregional_update_xss_match_set]{update_xss_match_set} \tab Inserts or deletes XssMatchTuple objects (filters) in an XssMatchSet 
#' }
#'
#' @rdname wafregional
#' @export
wafregional <- function() {
  paws.security.identity::wafregional()
}

#' AmazonMQ
#'
#' @description
#' Amazon MQ is a managed message broker service for Apache ActiveMQ that makes it easy to set up and operate message brokers in the cloud. A message broker allows software applications and components to communicate using various programming languages, operating systems, and formal messaging protocols.
#'
#' @examples
#' \donttest{svc <- mq()
#' svc$create_broker(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=mq_create_broker]{create_broker} \tab Creates a broker \cr
#'  \link[=mq_create_configuration]{create_configuration} \tab Creates a new configuration for the specified configuration name \cr
#'  \link[=mq_create_tags]{create_tags} \tab Add a tag to a resource \cr
#'  \link[=mq_create_user]{create_user} \tab Creates an ActiveMQ user \cr
#'  \link[=mq_delete_broker]{delete_broker} \tab Deletes a broker \cr
#'  \link[=mq_delete_tags]{delete_tags} \tab Remove a tag from a resource \cr
#'  \link[=mq_delete_user]{delete_user} \tab Deletes an ActiveMQ user \cr
#'  \link[=mq_describe_broker]{describe_broker} \tab Returns information about the specified broker \cr
#'  \link[=mq_describe_configuration]{describe_configuration} \tab Returns information about the specified configuration \cr
#'  \link[=mq_describe_configuration_revision]{describe_configuration_revision} \tab Returns the specified configuration revision for the specified configuration\cr
#'  \link[=mq_describe_user]{describe_user} \tab Returns information about an ActiveMQ user \cr
#'  \link[=mq_list_brokers]{list_brokers} \tab Returns a list of all brokers \cr
#'  \link[=mq_list_configuration_revisions]{list_configuration_revisions} \tab Returns a list of all revisions for the specified configuration \cr
#'  \link[=mq_list_configurations]{list_configurations} \tab Returns a list of all configurations \cr
#'  \link[=mq_list_tags]{list_tags} \tab Lists tags for a resource \cr
#'  \link[=mq_list_users]{list_users} \tab Returns a list of all ActiveMQ users \cr
#'  \link[=mq_reboot_broker]{reboot_broker} \tab Reboots a broker \cr
#'  \link[=mq_update_broker]{update_broker} \tab Adds a pending configuration change to a broker \cr
#'  \link[=mq_update_configuration]{update_configuration} \tab Updates the specified configuration \cr
#'  \link[=mq_update_user]{update_user} \tab Updates the information for an ActiveMQ user 
#' }
#'
#' @rdname mq
#' @export
mq <- function() {
  paws.application.integration::mq()
}

#' AWS Step Functions
#'
#' @description
#' AWS Step Functions is a service that lets you coordinate the components
#' of distributed applications and microservices using visual workflows.
#' 
#' You can use Step Functions to build applications from individual
#' components, each of which performs a discrete function, or *task*,
#' allowing you to scale and change applications quickly. Step Functions
#' provides a console that helps visualize the components of your
#' application as a series of steps. Step Functions automatically triggers
#' and tracks each step, and retries steps when there are errors, so your
#' application executes predictably and in the right order every time. Step
#' Functions logs the state of each step, so you can quickly diagnose and
#' debug any issues.
#' 
#' Step Functions manages operations and underlying infrastructure to
#' ensure your application is available at any scale. You can run tasks on
#' AWS, your own servers, or any system that has access to AWS. You can
#' access and use Step Functions using the console, the AWS SDKs, or an
#' HTTP API. For more information about Step Functions, see the *[AWS Step
#' Functions Developer
#' Guide](https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html)*
#' .
#'
#' @examples
#' \donttest{svc <- sfn()
#' svc$create_activity(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=sfn_create_activity]{create_activity} \tab Creates an activity \cr
#'  \link[=sfn_create_state_machine]{create_state_machine} \tab Creates a state machine \cr
#'  \link[=sfn_delete_activity]{delete_activity} \tab Deletes an activity \cr
#'  \link[=sfn_delete_state_machine]{delete_state_machine} \tab Deletes a state machine \cr
#'  \link[=sfn_describe_activity]{describe_activity} \tab Describes an activity \cr
#'  \link[=sfn_describe_execution]{describe_execution} \tab Describes an execution \cr
#'  \link[=sfn_describe_state_machine]{describe_state_machine} \tab Describes a state machine \cr
#'  \link[=sfn_describe_state_machine_for_execution]{describe_state_machine_for_execution} \tab Describes the state machine associated with a specific execution \cr
#'  \link[=sfn_get_activity_task]{get_activity_task} \tab Used by workers to retrieve a task (with the specified activity ARN) which has been scheduled for execution by a running state machine\cr
#'  \link[=sfn_get_execution_history]{get_execution_history} \tab Returns the history of the specified execution as a list of events \cr
#'  \link[=sfn_list_activities]{list_activities} \tab Lists the existing activities \cr
#'  \link[=sfn_list_executions]{list_executions} \tab Lists the executions of a state machine that meet the filtering criteria \cr
#'  \link[=sfn_list_state_machines]{list_state_machines} \tab Lists the existing state machines \cr
#'  \link[=sfn_list_tags_for_resource]{list_tags_for_resource} \tab List tags for a given resource \cr
#'  \link[=sfn_send_task_failure]{send_task_failure} \tab Used by workers to report that the task identified by the taskToken failed \cr
#'  \link[=sfn_send_task_heartbeat]{send_task_heartbeat} \tab Used by workers to report to the service that the task represented by the specified taskToken is still making progress \cr
#'  \link[=sfn_send_task_success]{send_task_success} \tab Used by workers to report that the task identified by the taskToken completed successfully \cr
#'  \link[=sfn_start_execution]{start_execution} \tab Starts a state machine execution \cr
#'  \link[=sfn_stop_execution]{stop_execution} \tab Stops an execution \cr
#'  \link[=sfn_tag_resource]{tag_resource} \tab Add a tag to a Step Functions resource \cr
#'  \link[=sfn_untag_resource]{untag_resource} \tab Remove a tag from a Step Functions resource \cr
#'  \link[=sfn_update_state_machine]{update_state_machine} \tab Updates an existing state machine by modifying its definition and/or roleArn 
#' }
#'
#' @rdname sfn
#' @export
sfn <- function() {
  paws.application.integration::sfn()
}

#' Amazon Simple Notification Service
#'
#' @description
#' Amazon Simple Notification Service (Amazon SNS) is a web service that
#' enables you to build distributed web-enabled applications. Applications
#' can use Amazon SNS to easily push real-time notification messages to
#' interested subscribers over multiple delivery protocols. For more
#' information about this product see
#' [http://aws.amazon.com/sns](http://aws.amazon.com/sns/). For detailed
#' information about Amazon SNS features and their associated API calls,
#' see the [Amazon SNS Developer
#' Guide](http://docs.aws.amazon.com/sns/latest/dg/).
#' 
#' We also provide SDKs that enable you to access Amazon SNS from your
#' preferred programming language. The SDKs contain functionality that
#' automatically takes care of tasks such as: cryptographically signing
#' your service requests, retrying requests, and handling error responses.
#' For a list of available SDKs, go to [Tools for Amazon Web
#' Services](http://aws.amazon.com/tools/).
#'
#' @examples
#' \donttest{svc <- sns()
#' svc$add_permission(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=sns_add_permission]{add_permission} \tab Adds a statement to a topic's access control policy, granting access for the specified AWS accounts to the specified actions \cr
#'  \link[=sns_check_if_phone_number_is_opted_out]{check_if_phone_number_is_opted_out} \tab Accepts a phone number and indicates whether the phone holder has opted out of receiving SMS messages from your account \cr
#'  \link[=sns_confirm_subscription]{confirm_subscription} \tab Verifies an endpoint owner's intent to receive messages by validating the token sent to the endpoint by an earlier Subscribe action \cr
#'  \link[=sns_create_platform_application]{create_platform_application} \tab Creates a platform application object for one of the supported push notification services, such as APNS and GCM, to which devices and mobile apps may register\cr
#'  \link[=sns_create_platform_endpoint]{create_platform_endpoint} \tab Creates an endpoint for a device and mobile app on one of the supported push notification services, such as GCM and APNS \cr
#'  \link[=sns_create_topic]{create_topic} \tab Creates a topic to which notifications can be published \cr
#'  \link[=sns_delete_endpoint]{delete_endpoint} \tab Deletes the endpoint for a device and mobile app from Amazon SNS \cr
#'  \link[=sns_delete_platform_application]{delete_platform_application} \tab Deletes a platform application object for one of the supported push notification services, such as APNS and GCM \cr
#'  \link[=sns_delete_topic]{delete_topic} \tab Deletes a topic and all its subscriptions \cr
#'  \link[=sns_get_endpoint_attributes]{get_endpoint_attributes} \tab Retrieves the endpoint attributes for a device on one of the supported push notification services, such as GCM and APNS \cr
#'  \link[=sns_get_platform_application_attributes]{get_platform_application_attributes} \tab Retrieves the attributes of the platform application object for the supported push notification services, such as APNS and GCM \cr
#'  \link[=sns_get_sms_attributes]{get_sms_attributes} \tab Returns the settings for sending SMS messages from your account \cr
#'  \link[=sns_get_subscription_attributes]{get_subscription_attributes} \tab Returns all of the properties of a subscription \cr
#'  \link[=sns_get_topic_attributes]{get_topic_attributes} \tab Returns all of the properties of a topic \cr
#'  \link[=sns_list_endpoints_by_platform_application]{list_endpoints_by_platform_application} \tab Lists the endpoints and endpoint attributes for devices in a supported push notification service, such as GCM and APNS \cr
#'  \link[=sns_list_phone_numbers_opted_out]{list_phone_numbers_opted_out} \tab Returns a list of phone numbers that are opted out, meaning you cannot send SMS messages to them \cr
#'  \link[=sns_list_platform_applications]{list_platform_applications} \tab Lists the platform application objects for the supported push notification services, such as APNS and GCM \cr
#'  \link[=sns_list_subscriptions]{list_subscriptions} \tab Returns a list of the requester's subscriptions \cr
#'  \link[=sns_list_subscriptions_by_topic]{list_subscriptions_by_topic} \tab Returns a list of the subscriptions to a specific topic \cr
#'  \link[=sns_list_topics]{list_topics} \tab Returns a list of the requester's topics \cr
#'  \link[=sns_opt_in_phone_number]{opt_in_phone_number} \tab Use this request to opt in a phone number that is opted out, which enables you to resume sending SMS messages to the number \cr
#'  \link[=sns_publish]{publish} \tab Sends a message to an Amazon SNS topic or sends a text message (SMS message) directly to a phone number \cr
#'  \link[=sns_remove_permission]{remove_permission} \tab Removes a statement from a topic's access control policy \cr
#'  \link[=sns_set_endpoint_attributes]{set_endpoint_attributes} \tab Sets the attributes for an endpoint for a device on one of the supported push notification services, such as GCM and APNS \cr
#'  \link[=sns_set_platform_application_attributes]{set_platform_application_attributes} \tab Sets the attributes of the platform application object for the supported push notification services, such as APNS and GCM \cr
#'  \link[=sns_set_sms_attributes]{set_sms_attributes} \tab Use this request to set the default settings for sending SMS messages and receiving daily SMS usage reports \cr
#'  \link[=sns_set_subscription_attributes]{set_subscription_attributes} \tab Allows a subscription owner to set an attribute of the subscription to a new value \cr
#'  \link[=sns_set_topic_attributes]{set_topic_attributes} \tab Allows a topic owner to set an attribute of the topic to a new value \cr
#'  \link[=sns_subscribe]{subscribe} \tab Prepares to subscribe an endpoint by sending the endpoint a confirmation message \cr
#'  \link[=sns_unsubscribe]{unsubscribe} \tab Deletes a subscription 
#' }
#'
#' @rdname sns
#' @export
sns <- function() {
  paws.application.integration::sns()
}

#' Amazon Simple Queue Service
#'
#' @description
#' Welcome to the *Amazon Simple Queue Service API Reference*.
#' 
#' Amazon Simple Queue Service (Amazon SQS) is a reliable, highly-scalable
#' hosted queue for storing messages as they travel between applications or
#' microservices. Amazon SQS moves data between distributed application
#' components and helps you decouple these components.
#' 
#' [Standard
#' queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/standard-queues.html)
#' are available in all regions. [FIFO
#' queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/FIFO-queues.html)
#' are available in the US East (N. Virginia), US East (Ohio), US West
#' (Oregon), and EU (Ireland) regions.
#' 
#' You can use [AWS SDKs](http://aws.amazon.com/tools/#sdk) to access
#' Amazon SQS using your favorite programming language. The SDKs perform
#' tasks such as the following automatically:
#' 
#' -   Cryptographically sign your service requests
#' 
#' -   Retry requests
#' 
#' -   Handle error responses
#' 
#' **Additional Information**
#' 
#' -   [Amazon SQS Product Page](http://aws.amazon.com/sqs/)
#' 
#' -   *Amazon Simple Queue Service Developer Guide*
#' 
#'     -   [Making API
#'         Requests](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-making-api-requests.html)
#' 
#'     -   [Amazon SQS Message
#'         Attributes](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-message-attributes.html)
#' 
#'     -   [Amazon SQS Dead-Letter
#'         Queues](http://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-dead-letter-queues.html)
#' 
#' -   [Amazon SQS in the *AWS CLI Command
#'     Reference*](http://docs.aws.amazon.com/cli/latest/reference/sqs/index.html)
#' 
#' -   *Amazon Web Services General Reference*
#' 
#'     -   [Regions and
#'         Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#sqs_region)
#'
#' @examples
#' \donttest{svc <- sqs()
#' svc$add_permission(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=sqs_add_permission]{add_permission} \tab Adds a permission to a queue for a specific principal \cr
#'  \link[=sqs_change_message_visibility]{change_message_visibility} \tab Changes the visibility timeout of a specified message in a queue to a new value \cr
#'  \link[=sqs_change_message_visibility_batch]{change_message_visibility_batch} \tab Changes the visibility timeout of multiple messages \cr
#'  \link[=sqs_create_queue]{create_queue} \tab Creates a new standard or FIFO queue \cr
#'  \link[=sqs_delete_message]{delete_message} \tab Deletes the specified message from the specified queue \cr
#'  \link[=sqs_delete_message_batch]{delete_message_batch} \tab Deletes up to ten messages from the specified queue \cr
#'  \link[=sqs_delete_queue]{delete_queue} \tab Deletes the queue specified by the QueueUrl, regardless of the queue's contents \cr
#'  \link[=sqs_get_queue_attributes]{get_queue_attributes} \tab Gets attributes for the specified queue \cr
#'  \link[=sqs_get_queue_url]{get_queue_url} \tab Returns the URL of an existing Amazon SQS queue \cr
#'  \link[=sqs_list_dead_letter_source_queues]{list_dead_letter_source_queues} \tab Returns a list of your queues that have the RedrivePolicy queue attribute configured with a dead-letter queue\cr
#'  \link[=sqs_list_queue_tags]{list_queue_tags} \tab List all cost allocation tags added to the specified Amazon SQS queue \cr
#'  \link[=sqs_list_queues]{list_queues} \tab Returns a list of your queues \cr
#'  \link[=sqs_purge_queue]{purge_queue} \tab Deletes the messages in a queue specified by the QueueURL parameter \cr
#'  \link[=sqs_receive_message]{receive_message} \tab Retrieves one or more messages (up to 10), from the specified queue \cr
#'  \link[=sqs_remove_permission]{remove_permission} \tab Revokes any permissions in the queue policy that matches the specified Label parameter \cr
#'  \link[=sqs_send_message]{send_message} \tab Delivers a message to the specified queue \cr
#'  \link[=sqs_send_message_batch]{send_message_batch} \tab Delivers up to ten messages to the specified queue \cr
#'  \link[=sqs_set_queue_attributes]{set_queue_attributes} \tab Sets the value of one or more queue attributes \cr
#'  \link[=sqs_tag_queue]{tag_queue} \tab Add cost allocation tags to the specified Amazon SQS queue \cr
#'  \link[=sqs_untag_queue]{untag_queue} \tab Remove cost allocation tags from the specified Amazon SQS queue 
#' }
#'
#' @rdname sqs
#' @export
sqs <- function() {
  paws.application.integration::sqs()
}

#' Amazon Simple Workflow Service
#'
#' @description
#' The Amazon Simple Workflow Service (Amazon SWF) makes it easy to build
#' applications that use Amazon\'s cloud to coordinate work across
#' distributed components. In Amazon SWF, a *task* represents a logical
#' unit of work that is performed by a component of your workflow.
#' Coordinating tasks in a workflow involves managing intertask
#' dependencies, scheduling, and concurrency in accordance with the logical
#' flow of the application.
#' 
#' Amazon SWF gives you full control over implementing tasks and
#' coordinating them without worrying about underlying complexities such as
#' tracking their progress and maintaining their state.
#' 
#' This documentation serves as reference only. For a broader overview of
#' the Amazon SWF programming model, see the *[Amazon SWF Developer
#' Guide](http://docs.aws.amazon.com/amazonswf/latest/developerguide/)* .
#'
#' @examples
#' \donttest{svc <- swf()
#' svc$count_closed_workflow_executions(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=swf_count_closed_workflow_executions]{count_closed_workflow_executions} \tab Returns the number of closed workflow executions within the given domain that meet the specified filtering criteria \cr
#'  \link[=swf_count_open_workflow_executions]{count_open_workflow_executions} \tab Returns the number of open workflow executions within the given domain that meet the specified filtering criteria \cr
#'  \link[=swf_count_pending_activity_tasks]{count_pending_activity_tasks} \tab Returns the estimated number of activity tasks in the specified task list \cr
#'  \link[=swf_count_pending_decision_tasks]{count_pending_decision_tasks} \tab Returns the estimated number of decision tasks in the specified task list \cr
#'  \link[=swf_deprecate_activity_type]{deprecate_activity_type} \tab Deprecates the specified _activity type_ \cr
#'  \link[=swf_deprecate_domain]{deprecate_domain} \tab Deprecates the specified domain \cr
#'  \link[=swf_deprecate_workflow_type]{deprecate_workflow_type} \tab Deprecates the specified _workflow type_ \cr
#'  \link[=swf_describe_activity_type]{describe_activity_type} \tab Returns information about the specified activity type \cr
#'  \link[=swf_describe_domain]{describe_domain} \tab Returns information about the specified domain, including description and status \cr
#'  \link[=swf_describe_workflow_execution]{describe_workflow_execution} \tab Returns information about the specified workflow execution including its type and some statistics \cr
#'  \link[=swf_describe_workflow_type]{describe_workflow_type} \tab Returns information about the specified _workflow type_ \cr
#'  \link[=swf_get_workflow_execution_history]{get_workflow_execution_history} \tab Returns the history of the specified workflow execution \cr
#'  \link[=swf_list_activity_types]{list_activity_types} \tab Returns information about all activities registered in the specified domain that match the specified name and registration status \cr
#'  \link[=swf_list_closed_workflow_executions]{list_closed_workflow_executions} \tab Returns a list of closed workflow executions in the specified domain that meet the filtering criteria \cr
#'  \link[=swf_list_domains]{list_domains} \tab Returns the list of domains registered in the account \cr
#'  \link[=swf_list_open_workflow_executions]{list_open_workflow_executions} \tab Returns a list of open workflow executions in the specified domain that meet the filtering criteria \cr
#'  \link[=swf_list_workflow_types]{list_workflow_types} \tab Returns information about workflow types in the specified domain \cr
#'  \link[=swf_poll_for_activity_task]{poll_for_activity_task} \tab Used by workers to get an ActivityTask from the specified activity taskList \cr
#'  \link[=swf_poll_for_decision_task]{poll_for_decision_task} \tab Used by deciders to get a DecisionTask from the specified decision taskList \cr
#'  \link[=swf_record_activity_task_heartbeat]{record_activity_task_heartbeat} \tab Used by activity workers to report to the service that the ActivityTask represented by the specified taskToken is still making progress \cr
#'  \link[=swf_register_activity_type]{register_activity_type} \tab Registers a new _activity type_ along with its configuration settings in the specified domain \cr
#'  \link[=swf_register_domain]{register_domain} \tab Registers a new domain \cr
#'  \link[=swf_register_workflow_type]{register_workflow_type} \tab Registers a new _workflow type_ and its configuration settings in the specified domain \cr
#'  \link[=swf_request_cancel_workflow_execution]{request_cancel_workflow_execution} \tab Records a WorkflowExecutionCancelRequested event in the currently running workflow execution identified by the given domain, workflowId, and runId \cr
#'  \link[=swf_respond_activity_task_canceled]{respond_activity_task_canceled} \tab Used by workers to tell the service that the ActivityTask identified by the taskToken was successfully canceled \cr
#'  \link[=swf_respond_activity_task_completed]{respond_activity_task_completed} \tab Used by workers to tell the service that the ActivityTask identified by the taskToken completed successfully with a result (if provided) \cr
#'  \link[=swf_respond_activity_task_failed]{respond_activity_task_failed} \tab Used by workers to tell the service that the ActivityTask identified by the taskToken has failed with reason (if specified) \cr
#'  \link[=swf_respond_decision_task_completed]{respond_decision_task_completed} \tab Used by deciders to tell the service that the DecisionTask identified by the taskToken has successfully completed \cr
#'  \link[=swf_signal_workflow_execution]{signal_workflow_execution} \tab Records a WorkflowExecutionSignaled event in the workflow execution history and creates a decision task for the workflow execution identified by the given domain, workflowId and runId\cr
#'  \link[=swf_start_workflow_execution]{start_workflow_execution} \tab Starts an execution of the workflow type in the specified domain using the provided workflowId and input data \cr
#'  \link[=swf_terminate_workflow_execution]{terminate_workflow_execution} \tab Records a WorkflowExecutionTerminated event and forces closure of the workflow execution identified by the given domain, runId, and workflowId 
#' }
#'
#' @rdname swf
#' @export
swf <- function() {
  paws.application.integration::swf()
}
