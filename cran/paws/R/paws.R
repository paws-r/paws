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
#'  \link[=ec2_authorize_security_group_egress]{authorize_security_group_egress} \tab &#91;VPC only&#93; Adds the specified egress rules to a security group for use with a VPC \cr
#'  \link[=ec2_authorize_security_group_ingress]{authorize_security_group_ingress} \tab Adds the specified ingress rules to a security group \cr
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
#'  \link[=ec2_copy_fpga_image]{copy_fpga_image} \tab Copies the specified Amazon FPGA Image (AFI) to the current Region \cr
#'  \link[=ec2_copy_image]{copy_image} \tab Initiates the copy of an AMI from the specified source Region to the current Region \cr
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
#'  \link[=ec2_create_snapshots]{create_snapshots} \tab Creates crash-consistent snapshots of multiple EBS volumes and stores the data in S3 \cr
#'  \link[=ec2_create_spot_datafeed_subscription]{create_spot_datafeed_subscription} \tab Creates a data feed for Spot Instances, enabling you to view Spot Instance usage logs \cr
#'  \link[=ec2_create_subnet]{create_subnet} \tab Creates a subnet in an existing VPC \cr
#'  \link[=ec2_create_tags]{create_tags} \tab Adds or overwrites the specified tags for the specified Amazon EC2 resource or resources \cr
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
#'  \link[=ec2_describe_addresses]{describe_addresses} \tab Describes the specified Elastic IP addresses or all of your Elastic IP addresses \cr
#'  \link[=ec2_describe_aggregate_id_format]{describe_aggregate_id_format} \tab Describes the longer ID format settings for all resource types in a specific Region \cr
#'  \link[=ec2_describe_availability_zones]{describe_availability_zones} \tab Describes the Availability Zones that are available to you \cr
#'  \link[=ec2_describe_bundle_tasks]{describe_bundle_tasks} \tab Describes the specified bundle tasks or all of your bundle tasks \cr
#'  \link[=ec2_describe_byoip_cidrs]{describe_byoip_cidrs} \tab Describes the IP address ranges that were specified in calls to ProvisionByoipCidr \cr
#'  \link[=ec2_describe_capacity_reservations]{describe_capacity_reservations} \tab Describes one or more of your Capacity Reservations \cr
#'  \link[=ec2_describe_classic_link_instances]{describe_classic_link_instances} \tab Describes one or more of your linked EC2-Classic instances \cr
#'  \link[=ec2_describe_client_vpn_authorization_rules]{describe_client_vpn_authorization_rules} \tab Describes the authorization rules for a specified Client VPN endpoint \cr
#'  \link[=ec2_describe_client_vpn_connections]{describe_client_vpn_connections} \tab Describes active client connections and connections that have been terminated within the last 60 minutes for the specified Client VPN endpoint \cr
#'  \link[=ec2_describe_client_vpn_endpoints]{describe_client_vpn_endpoints} \tab Describes one or more Client VPN endpoints in the account \cr
#'  \link[=ec2_describe_client_vpn_routes]{describe_client_vpn_routes} \tab Describes the routes for the specified Client VPN endpoint \cr
#'  \link[=ec2_describe_client_vpn_target_networks]{describe_client_vpn_target_networks} \tab Describes the target networks associated with the specified Client VPN endpoint \cr
#'  \link[=ec2_describe_conversion_tasks]{describe_conversion_tasks} \tab Describes the specified conversion tasks or all your conversion tasks \cr
#'  \link[=ec2_describe_customer_gateways]{describe_customer_gateways} \tab Describes one or more of your VPN customer gateways \cr
#'  \link[=ec2_describe_dhcp_options]{describe_dhcp_options} \tab Describes one or more of your DHCP options sets \cr
#'  \link[=ec2_describe_egress_only_internet_gateways]{describe_egress_only_internet_gateways} \tab Describes one or more of your egress-only internet gateways \cr
#'  \link[=ec2_describe_elastic_gpus]{describe_elastic_gpus} \tab Describes the Elastic Graphics accelerator associated with your instances \cr
#'  \link[=ec2_describe_export_tasks]{describe_export_tasks} \tab Describes the specified export tasks or all your export tasks \cr
#'  \link[=ec2_describe_fleet_history]{describe_fleet_history} \tab Describes the events for the specified EC2 Fleet during the specified time \cr
#'  \link[=ec2_describe_fleet_instances]{describe_fleet_instances} \tab Describes the running instances for the specified EC2 Fleet \cr
#'  \link[=ec2_describe_fleets]{describe_fleets} \tab Describes the specified EC2 Fleets or all your EC2 Fleets \cr
#'  \link[=ec2_describe_flow_logs]{describe_flow_logs} \tab Describes one or more flow logs \cr
#'  \link[=ec2_describe_fpga_image_attribute]{describe_fpga_image_attribute} \tab Describes the specified attribute of the specified Amazon FPGA Image (AFI) \cr
#'  \link[=ec2_describe_fpga_images]{describe_fpga_images} \tab Describes the Amazon FPGA Images (AFIs) available to you \cr
#'  \link[=ec2_describe_host_reservation_offerings]{describe_host_reservation_offerings} \tab Describes the Dedicated Host reservations that are available to purchase \cr
#'  \link[=ec2_describe_host_reservations]{describe_host_reservations} \tab Describes reservations that are associated with Dedicated Hosts in your account \cr
#'  \link[=ec2_describe_hosts]{describe_hosts} \tab Describes the specified Dedicated Hosts or all your Dedicated Hosts \cr
#'  \link[=ec2_describe_iam_instance_profile_associations]{describe_iam_instance_profile_associations} \tab Describes your IAM instance profile associations \cr
#'  \link[=ec2_describe_id_format]{describe_id_format} \tab Describes the ID format settings for your resources on a per-Region basis, for example, to view which resource types are enabled for longer IDs \cr
#'  \link[=ec2_describe_identity_id_format]{describe_identity_id_format} \tab Describes the ID format settings for resources for the specified IAM user, IAM role, or root user \cr
#'  \link[=ec2_describe_image_attribute]{describe_image_attribute} \tab Describes the specified attribute of the specified AMI \cr
#'  \link[=ec2_describe_images]{describe_images} \tab Describes the specified images (AMIs, AKIs, and ARIs) available to you or all of the images available to you \cr
#'  \link[=ec2_describe_import_image_tasks]{describe_import_image_tasks} \tab Displays details about an import virtual machine or import snapshot tasks that are already created \cr
#'  \link[=ec2_describe_import_snapshot_tasks]{describe_import_snapshot_tasks} \tab Describes your import snapshot tasks \cr
#'  \link[=ec2_describe_instance_attribute]{describe_instance_attribute} \tab Describes the specified attribute of the specified instance \cr
#'  \link[=ec2_describe_instance_credit_specifications]{describe_instance_credit_specifications} \tab Describes the credit option for CPU usage of the specified T2 or T3 instances \cr
#'  \link[=ec2_describe_instance_status]{describe_instance_status} \tab Describes the status of the specified instances or all of your instances \cr
#'  \link[=ec2_describe_instances]{describe_instances} \tab Describes the specified instances or all of your instances \cr
#'  \link[=ec2_describe_internet_gateways]{describe_internet_gateways} \tab Describes one or more of your internet gateways \cr
#'  \link[=ec2_describe_key_pairs]{describe_key_pairs} \tab Describes the specified key pairs or all of your key pairs \cr
#'  \link[=ec2_describe_launch_template_versions]{describe_launch_template_versions} \tab Describes one or more versions of a specified launch template \cr
#'  \link[=ec2_describe_launch_templates]{describe_launch_templates} \tab Describes one or more launch templates \cr
#'  \link[=ec2_describe_moving_addresses]{describe_moving_addresses} \tab Describes your Elastic IP addresses that are being moved to the EC2-VPC platform, or that are being restored to the EC2-Classic platform \cr
#'  \link[=ec2_describe_nat_gateways]{describe_nat_gateways} \tab Describes one or more of your NAT gateways \cr
#'  \link[=ec2_describe_network_acls]{describe_network_acls} \tab Describes one or more of your network ACLs \cr
#'  \link[=ec2_describe_network_interface_attribute]{describe_network_interface_attribute} \tab Describes a network interface attribute \cr
#'  \link[=ec2_describe_network_interface_permissions]{describe_network_interface_permissions} \tab Describes the permissions for your network interfaces \cr
#'  \link[=ec2_describe_network_interfaces]{describe_network_interfaces} \tab Describes one or more of your network interfaces \cr
#'  \link[=ec2_describe_placement_groups]{describe_placement_groups} \tab Describes the specified placement groups or all of your placement groups \cr
#'  \link[=ec2_describe_prefix_lists]{describe_prefix_lists} \tab Describes available AWS services in a prefix list format, which includes the prefix list name and prefix list ID of the service and the IP address range for the service \cr
#'  \link[=ec2_describe_principal_id_format]{describe_principal_id_format} \tab Describes the ID format settings for the root user and all IAM roles and IAM users that have explicitly specified a longer ID (17-character ID) preference \cr
#'  \link[=ec2_describe_public_ipv_4_pools]{describe_public_ipv_4_pools} \tab Describes the specified IPv4 address pools \cr
#'  \link[=ec2_describe_regions]{describe_regions} \tab Describes the Regions that are currently available to you \cr
#'  \link[=ec2_describe_reserved_instances]{describe_reserved_instances} \tab Describes one or more of the Reserved Instances that you purchased \cr
#'  \link[=ec2_describe_reserved_instances_listings]{describe_reserved_instances_listings} \tab Describes your account's Reserved Instance listings in the Reserved Instance Marketplace \cr
#'  \link[=ec2_describe_reserved_instances_modifications]{describe_reserved_instances_modifications} \tab Describes the modifications made to your Reserved Instances \cr
#'  \link[=ec2_describe_reserved_instances_offerings]{describe_reserved_instances_offerings} \tab Describes Reserved Instance offerings that are available for purchase \cr
#'  \link[=ec2_describe_route_tables]{describe_route_tables} \tab Describes one or more of your route tables \cr
#'  \link[=ec2_describe_scheduled_instance_availability]{describe_scheduled_instance_availability} \tab Finds available schedules that meet the specified criteria \cr
#'  \link[=ec2_describe_scheduled_instances]{describe_scheduled_instances} \tab Describes the specified Scheduled Instances or all your Scheduled Instances \cr
#'  \link[=ec2_describe_security_group_references]{describe_security_group_references} \tab &#91;VPC only&#93; Describes the VPCs on the other side of a VPC peering connection that are referencing the security groups you've specified in this request \cr
#'  \link[=ec2_describe_security_groups]{describe_security_groups} \tab Describes the specified security groups or all of your security groups \cr
#'  \link[=ec2_describe_snapshot_attribute]{describe_snapshot_attribute} \tab Describes the specified attribute of the specified snapshot \cr
#'  \link[=ec2_describe_snapshots]{describe_snapshots} \tab Describes the specified EBS snapshots available to you or all of the EBS snapshots available to you \cr
#'  \link[=ec2_describe_spot_datafeed_subscription]{describe_spot_datafeed_subscription} \tab Describes the data feed for Spot Instances \cr
#'  \link[=ec2_describe_spot_fleet_instances]{describe_spot_fleet_instances} \tab Describes the running instances for the specified Spot Fleet \cr
#'  \link[=ec2_describe_spot_fleet_request_history]{describe_spot_fleet_request_history} \tab Describes the events for the specified Spot Fleet request during the specified time \cr
#'  \link[=ec2_describe_spot_fleet_requests]{describe_spot_fleet_requests} \tab Describes your Spot Fleet requests \cr
#'  \link[=ec2_describe_spot_instance_requests]{describe_spot_instance_requests} \tab Describes the specified Spot Instance requests \cr
#'  \link[=ec2_describe_spot_price_history]{describe_spot_price_history} \tab Describes the Spot price history \cr
#'  \link[=ec2_describe_stale_security_groups]{describe_stale_security_groups} \tab &#91;VPC only&#93; Describes the stale security group rules for security groups in a specified VPC \cr
#'  \link[=ec2_describe_subnets]{describe_subnets} \tab Describes one or more of your subnets \cr
#'  \link[=ec2_describe_tags]{describe_tags} \tab Describes the specified tags for your EC2 resources \cr
#'  \link[=ec2_describe_transit_gateway_attachments]{describe_transit_gateway_attachments} \tab Describes one or more attachments between resources and transit gateways \cr
#'  \link[=ec2_describe_transit_gateway_route_tables]{describe_transit_gateway_route_tables} \tab Describes one or more transit gateway route tables \cr
#'  \link[=ec2_describe_transit_gateway_vpc_attachments]{describe_transit_gateway_vpc_attachments} \tab Describes one or more VPC attachments \cr
#'  \link[=ec2_describe_transit_gateways]{describe_transit_gateways} \tab Describes one or more transit gateways \cr
#'  \link[=ec2_describe_volume_attribute]{describe_volume_attribute} \tab Describes the specified attribute of the specified volume \cr
#'  \link[=ec2_describe_volume_status]{describe_volume_status} \tab Describes the status of the specified volumes \cr
#'  \link[=ec2_describe_volumes]{describe_volumes} \tab Describes the specified EBS volumes or all of your EBS volumes \cr
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
#'  \link[=ec2_disable_ebs_encryption_by_default]{disable_ebs_encryption_by_default} \tab Disables EBS encryption by default for your account in the current Region \cr
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
#'  \link[=ec2_enable_ebs_encryption_by_default]{enable_ebs_encryption_by_default} \tab Enables EBS encryption by default for your account in the current Region \cr
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
#'  \link[=ec2_get_ebs_default_kms_key_id]{get_ebs_default_kms_key_id} \tab Describes the default customer master key (CMK) for EBS encryption by default for your account in this Region \cr
#'  \link[=ec2_get_ebs_encryption_by_default]{get_ebs_encryption_by_default} \tab Describes whether EBS encryption by default is enabled for your account in the current Region \cr
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
#'  \link[=ec2_modify_ebs_default_kms_key_id]{modify_ebs_default_kms_key_id} \tab Changes the default customer master key (CMK) for EBS encryption by default for your account in this Region \cr
#'  \link[=ec2_modify_fleet]{modify_fleet} \tab Modifies the specified EC2 Fleet \cr
#'  \link[=ec2_modify_fpga_image_attribute]{modify_fpga_image_attribute} \tab Modifies the specified attribute of the specified Amazon FPGA Image (AFI) \cr
#'  \link[=ec2_modify_hosts]{modify_hosts} \tab Modify the auto-placement setting of a Dedicated Host \cr
#'  \link[=ec2_modify_id_format]{modify_id_format} \tab Modifies the ID format for the specified resource on a per-Region basis \cr
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
#'  \link[=ec2_modify_vpn_connection]{modify_vpn_connection} \tab Modifies the target gateway of a AWS Site-to-Site VPN connection \cr
#'  \link[=ec2_monitor_instances]{monitor_instances} \tab Enables detailed monitoring for a running instance \cr
#'  \link[=ec2_move_address_to_vpc]{move_address_to_vpc} \tab Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC platform \cr
#'  \link[=ec2_provision_byoip_cidr]{provision_byoip_cidr} \tab Provisions an address range for use with your AWS resources through bring your own IP addresses (BYOIP) and creates a corresponding address pool \cr
#'  \link[=ec2_purchase_host_reservation]{purchase_host_reservation} \tab Purchase a reservation with configurations that match those of your Dedicated Host \cr
#'  \link[=ec2_purchase_reserved_instances_offering]{purchase_reserved_instances_offering} \tab Purchases a Reserved Instance for use with your account \cr
#'  \link[=ec2_purchase_scheduled_instances]{purchase_scheduled_instances} \tab Purchases the Scheduled Instances with the specified schedule \cr
#'  \link[=ec2_reboot_instances]{reboot_instances} \tab Requests a reboot of the specified instances \cr
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
#'  \link[=ec2_reset_ebs_default_kms_key_id]{reset_ebs_default_kms_key_id} \tab Resets the default customer master key (CMK) for EBS encryption for your account in this Region to the AWS managed CMK for EBS \cr
#'  \link[=ec2_reset_fpga_image_attribute]{reset_fpga_image_attribute} \tab Resets the specified attribute of the specified Amazon FPGA Image (AFI) to its default value \cr
#'  \link[=ec2_reset_image_attribute]{reset_image_attribute} \tab Resets an attribute of an AMI to its default value \cr
#'  \link[=ec2_reset_instance_attribute]{reset_instance_attribute} \tab Resets an attribute of an instance to its default value \cr
#'  \link[=ec2_reset_network_interface_attribute]{reset_network_interface_attribute} \tab Resets a network interface attribute \cr
#'  \link[=ec2_reset_snapshot_attribute]{reset_snapshot_attribute} \tab Resets permission settings for the specified snapshot \cr
#'  \link[=ec2_restore_address_to_classic]{restore_address_to_classic} \tab Restores an Elastic IP address that was previously moved to the EC2-VPC platform back to the EC2-Classic platform \cr
#'  \link[=ec2_revoke_client_vpn_ingress]{revoke_client_vpn_ingress} \tab Removes an ingress authorization rule from a Client VPN endpoint \cr
#'  \link[=ec2_revoke_security_group_egress]{revoke_security_group_egress} \tab &#91;VPC only&#93; Removes the specified egress rules from a security group for EC2-VPC \cr
#'  \link[=ec2_revoke_security_group_ingress]{revoke_security_group_ingress} \tab Removes the specified ingress rules from a security group \cr
#'  \link[=ec2_run_instances]{run_instances} \tab Launches the specified number of instances using an AMI for which you have permissions \cr
#'  \link[=ec2_run_scheduled_instances]{run_scheduled_instances} \tab Launches the specified Scheduled Instances \cr
#'  \link[=ec2_search_transit_gateway_routes]{search_transit_gateway_routes} \tab Searches for routes in the specified transit gateway route table \cr
#'  \link[=ec2_start_instances]{start_instances} \tab Starts an Amazon EBS-backed instance that you've previously stopped \cr
#'  \link[=ec2_stop_instances]{stop_instances} \tab Stops an Amazon EBS-backed instance \cr
#'  \link[=ec2_terminate_client_vpn_connections]{terminate_client_vpn_connections} \tab Terminates active Client VPN endpoint connections \cr
#'  \link[=ec2_terminate_instances]{terminate_instances} \tab Shuts down the specified instances \cr
#'  \link[=ec2_unassign_ipv_6_addresses]{unassign_ipv_6_addresses} \tab Unassigns one or more IPv6 addresses from a network interface \cr
#'  \link[=ec2_unassign_private_ip_addresses]{unassign_private_ip_addresses} \tab Unassigns one or more secondary private IP addresses from a network interface \cr
#'  \link[=ec2_unmonitor_instances]{unmonitor_instances} \tab Disables detailed monitoring for a running instance \cr
#'  \link[=ec2_update_security_group_rule_descriptions_egress]{update_security_group_rule_descriptions_egress} \tab &#91;VPC only&#93; Updates the description of an egress (outbound) security group rule \cr
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
#' Types](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html).
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
#'  \link[=ecs_delete_account_setting]{delete_account_setting} \tab Disables an account setting for a specified IAM user, IAM role, or the root user for an account \cr
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
#'  \link[=ecs_list_account_settings]{list_account_settings} \tab Lists the account settings for a specified principal \cr
#'  \link[=ecs_list_attributes]{list_attributes} \tab Lists the attributes for Amazon ECS resources within a specified target type and cluster \cr
#'  \link[=ecs_list_clusters]{list_clusters} \tab Returns a list of existing clusters \cr
#'  \link[=ecs_list_container_instances]{list_container_instances} \tab Returns a list of container instances in a specified cluster \cr
#'  \link[=ecs_list_services]{list_services} \tab Lists the services that are running in a specified cluster \cr
#'  \link[=ecs_list_tags_for_resource]{list_tags_for_resource} \tab List the tags for an Amazon ECS resource \cr
#'  \link[=ecs_list_task_definition_families]{list_task_definition_families} \tab Returns a list of task definition families that are registered to your account (which may include task definition families that no longer have any ACTIVE task definition revisions)\cr
#'  \link[=ecs_list_task_definitions]{list_task_definitions} \tab Returns a list of task definitions that are registered to your account \cr
#'  \link[=ecs_list_tasks]{list_tasks} \tab Returns a list of tasks for a specified cluster \cr
#'  \link[=ecs_put_account_setting]{put_account_setting} \tab Modifies an account setting \cr
#'  \link[=ecs_put_account_setting_default]{put_account_setting_default} \tab Modifies an account setting for all IAM users on an account for whom no individual account setting has been specified \cr
#'  \link[=ecs_put_attributes]{put_attributes} \tab Create or update an attribute on an Amazon ECS resource \cr
#'  \link[=ecs_register_container_instance]{register_container_instance} \tab This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent \cr
#'  \link[=ecs_register_task_definition]{register_task_definition} \tab Registers a new task definition from the supplied family and containerDefinitions \cr
#'  \link[=ecs_run_task]{run_task} \tab Starts a new task using the specified task definition \cr
#'  \link[=ecs_start_task]{start_task} \tab Starts a new task from the specified task definition on the specified container instance or instances \cr
#'  \link[=ecs_stop_task]{stop_task} \tab Stops a running task \cr
#'  \link[=ecs_submit_attachment_state_changes]{submit_attachment_state_changes} \tab This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent \cr
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
#'  \link[=lambda_get_layer_version_by_arn]{get_layer_version_by_arn} \tab Returns information about a version of an AWS Lambda layer, with a link to download the layer archive that's valid for 10 minutes \cr
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
#'  \link[=lambda_update_function_configuration]{update_function_configuration} \tab Modify the version-specific settings of a Lambda function 
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
#'  \link[=s3_get_object_lock_configuration]{get_object_lock_configuration} \tab Gets the object lock configuration for a bucket \cr
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
#'  \link[=s3_put_bucket_policy]{put_bucket_policy} \tab Applies an Amazon S3 bucket policy to an Amazon S3 bucket \cr
#'  \link[=s3_put_bucket_replication]{put_bucket_replication} \tab Creates a replication configuration or replaces an existing one \cr
#'  \link[=s3_put_bucket_request_payment]{put_bucket_request_payment} \tab Sets the request payment configuration for a bucket \cr
#'  \link[=s3_put_bucket_tagging]{put_bucket_tagging} \tab Sets the tags for a bucket \cr
#'  \link[=s3_put_bucket_versioning]{put_bucket_versioning} \tab Sets the versioning state of an existing bucket \cr
#'  \link[=s3_put_bucket_website]{put_bucket_website} \tab Set the website configuration for a bucket \cr
#'  \link[=s3_put_object]{put_object} \tab Adds an object to a bucket \cr
#'  \link[=s3_put_object_acl]{put_object_acl} \tab uses the acl subresource to set the access control list (ACL) permissions for an object that already exists in a bucket \cr
#'  \link[=s3_put_object_legal_hold]{put_object_legal_hold} \tab Applies a Legal Hold configuration to the specified object \cr
#'  \link[=s3_put_object_lock_configuration]{put_object_lock_configuration} \tab Places an object lock configuration on the specified bucket \cr
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
#' svc$create_job(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=s3control_create_job]{create_job} \tab Creates an Amazon S3 batch operations job \cr
#'  \link[=s3control_delete_public_access_block]{delete_public_access_block} \tab Deletes the block public access configuration for the specified account \cr
#'  \link[=s3control_describe_job]{describe_job} \tab Retrieves the configuration parameters and status for a batch operations job \cr
#'  \link[=s3control_get_public_access_block]{get_public_access_block} \tab Get public access block \cr
#'  \link[=s3control_list_jobs]{list_jobs} \tab Lists current jobs and jobs that have ended within the last 30 days for the AWS account making the request\cr
#'  \link[=s3control_put_public_access_block]{put_public_access_block} \tab Put public access block \cr
#'  \link[=s3control_update_job_priority]{update_job_priority} \tab Updates an existing job's priority \cr
#'  \link[=s3control_update_job_status]{update_job_status} \tab Updates the status for the specified job 
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
#' the AWS storage infrastructure. The service enables you to securely
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
#'  \link[=storagegateway_assign_tape_pool]{assign_tape_pool} \tab Assigns a tape to a tape pool for archiving \cr
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
#'  \link[=storagegateway_update_smb_security_strategy]{update_smb_security_strategy} \tab Updates the SMB security strategy on a file gateway \cr
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
#'  \link[=elasticache_batch_apply_update_action]{batch_apply_update_action} \tab Apply the service update \cr
#'  \link[=elasticache_batch_stop_update_action]{batch_stop_update_action} \tab Stop the service update \cr
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
#'  \link[=elasticache_describe_service_updates]{describe_service_updates} \tab Returns details of the service updates \cr
#'  \link[=elasticache_describe_snapshots]{describe_snapshots} \tab Returns information about cluster or replication group snapshots \cr
#'  \link[=elasticache_describe_update_actions]{describe_update_actions} \tab Returns details of the update actions \cr
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
#'  \link[=neptune_promote_read_replica_db_cluster]{promote_read_replica_db_cluster} \tab Not supported \cr
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
#'  \link[=rds_start_activity_stream]{start_activity_stream} \tab Starts a database activity stream to monitor activity on the database \cr
#'  \link[=rds_start_db_cluster]{start_db_cluster} \tab Starts an Amazon Aurora DB cluster that was stopped using the AWS console, the stop-db-cluster AWS CLI command, or the StopDBCluster action \cr
#'  \link[=rds_start_db_instance]{start_db_instance} \tab Starts an Amazon RDS DB instance that was stopped using the AWS console, the stop-db-instance AWS CLI command, or the StopDBInstance action \cr
#'  \link[=rds_stop_activity_stream]{stop_activity_stream} \tab Stops a database activity stream that was started using the AWS console, the start-activity-stream AWS CLI command, or the StartActivityStream action\cr
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
#' Amazon RDS Data Service
#' 
#' Amazon RDS provides an HTTP endpoint to run SQL statements on an Amazon
#' Aurora Serverless DB cluster. To run these statements, you work with the
#' Data Service API.
#' 
#' For more information about the Data Service API, see [Using the Data API
#' for Aurora
#' Serverless](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html)
#' in the *Amazon Aurora User Guide*.
#'
#' @examples
#' \donttest{svc <- rdsdataservice()
#' svc$batch_execute_statement(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=rdsdataservice_batch_execute_statement]{batch_execute_statement} \tab Runs a batch SQL statement over an array of data \cr
#'  \link[=rdsdataservice_begin_transaction]{begin_transaction} \tab Starts a SQL transaction \cr
#'  \link[=rdsdataservice_commit_transaction]{commit_transaction} \tab Ends a SQL transaction started with the BeginTransaction operation and commits the changes\cr
#'  \link[=rdsdataservice_execute_sql]{execute_sql} \tab Runs one or more SQL statements \cr
#'  \link[=rdsdataservice_execute_statement]{execute_statement} \tab Runs a SQL statement against a database \cr
#'  \link[=rdsdataservice_rollback_transaction]{rollback_transaction} \tab Performs a rollback of a transaction 
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
#' Interfaces](https://docs.aws.amazon.com/redshift/latest/mgmt/using-aws-sdk.html).
#' 
#' Amazon Redshift manages all the work of setting up, operating, and
#' scaling a data warehouse: provisioning capacity, monitoring and backing
#' up the cluster, and applying patches and upgrades to the Amazon Redshift
#' engine. You can focus on using your data to acquire new insights for
#' your business and customers.
#' 
#' If you are a first-time user of Amazon Redshift, we recommend that you
#' begin by reading the [Amazon Redshift Getting Started
#' Guide](https://docs.aws.amazon.com/redshift/latest/gsg/getting-started.html).
#' 
#' If you are a database developer, the [Amazon Redshift Database Developer
#' Guide](https://docs.aws.amazon.com/redshift/latest/dg/welcome.html)
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

#' Amazon API Gateway
#'
#' @description
#' Amazon API Gateway helps developers deliver robust, secure, and scalable
#' mobile and web application back ends. API Gateway allows developers to
#' securely connect mobile and web applications to APIs that run on AWS
#' Lambda, Amazon EC2, or other publicly addressable web services that are
#' hosted outside of AWS.
#'
#' @examples
#' \donttest{svc <- apigateway()
#' svc$create_api_key(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=apigateway_create_api_key]{create_api_key} \tab Create an ApiKey resource \cr
#'  \link[=apigateway_create_authorizer]{create_authorizer} \tab Adds a new Authorizer resource to an existing RestApi resource \cr
#'  \link[=apigateway_create_base_path_mapping]{create_base_path_mapping} \tab Creates a new BasePathMapping resource \cr
#'  \link[=apigateway_create_deployment]{create_deployment} \tab Creates a Deployment resource, which makes a specified RestApi callable over the internet \cr
#'  \link[=apigateway_create_documentation_part]{create_documentation_part} \tab Create documentation part \cr
#'  \link[=apigateway_create_documentation_version]{create_documentation_version} \tab Create documentation version \cr
#'  \link[=apigateway_create_domain_name]{create_domain_name} \tab Creates a new domain name \cr
#'  \link[=apigateway_create_model]{create_model} \tab Adds a new Model resource to an existing RestApi resource \cr
#'  \link[=apigateway_create_request_validator]{create_request_validator} \tab Creates a ReqeustValidator of a given RestApi \cr
#'  \link[=apigateway_create_resource]{create_resource} \tab Creates a Resource resource \cr
#'  \link[=apigateway_create_rest_api]{create_rest_api} \tab Creates a new RestApi resource \cr
#'  \link[=apigateway_create_stage]{create_stage} \tab Creates a new Stage resource that references a pre-existing Deployment for the API \cr
#'  \link[=apigateway_create_usage_plan]{create_usage_plan} \tab Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload \cr
#'  \link[=apigateway_create_usage_plan_key]{create_usage_plan_key} \tab Creates a usage plan key for adding an existing API key to a usage plan \cr
#'  \link[=apigateway_create_vpc_link]{create_vpc_link} \tab Creates a VPC link, under the caller's account in a selected region, in an asynchronous operation that typically takes 2-4 minutes to complete and become operational\cr
#'  \link[=apigateway_delete_api_key]{delete_api_key} \tab Deletes the ApiKey resource \cr
#'  \link[=apigateway_delete_authorizer]{delete_authorizer} \tab Deletes an existing Authorizer resource \cr
#'  \link[=apigateway_delete_base_path_mapping]{delete_base_path_mapping} \tab Deletes the BasePathMapping resource \cr
#'  \link[=apigateway_delete_client_certificate]{delete_client_certificate} \tab Deletes the ClientCertificate resource \cr
#'  \link[=apigateway_delete_deployment]{delete_deployment} \tab Deletes a Deployment resource \cr
#'  \link[=apigateway_delete_documentation_part]{delete_documentation_part} \tab Delete documentation part \cr
#'  \link[=apigateway_delete_documentation_version]{delete_documentation_version} \tab Delete documentation version \cr
#'  \link[=apigateway_delete_domain_name]{delete_domain_name} \tab Deletes the DomainName resource \cr
#'  \link[=apigateway_delete_gateway_response]{delete_gateway_response} \tab Clears any customization of a GatewayResponse of a specified response type on the given RestApi and resets it with the default settings \cr
#'  \link[=apigateway_delete_integration]{delete_integration} \tab Represents a delete integration \cr
#'  \link[=apigateway_delete_integration_response]{delete_integration_response} \tab Represents a delete integration response \cr
#'  \link[=apigateway_delete_method]{delete_method} \tab Deletes an existing Method resource \cr
#'  \link[=apigateway_delete_method_response]{delete_method_response} \tab Deletes an existing MethodResponse resource \cr
#'  \link[=apigateway_delete_model]{delete_model} \tab Deletes a model \cr
#'  \link[=apigateway_delete_request_validator]{delete_request_validator} \tab Deletes a RequestValidator of a given RestApi \cr
#'  \link[=apigateway_delete_resource]{delete_resource} \tab Deletes a Resource resource \cr
#'  \link[=apigateway_delete_rest_api]{delete_rest_api} \tab Deletes the specified API \cr
#'  \link[=apigateway_delete_stage]{delete_stage} \tab Deletes a Stage resource \cr
#'  \link[=apigateway_delete_usage_plan]{delete_usage_plan} \tab Deletes a usage plan of a given plan Id \cr
#'  \link[=apigateway_delete_usage_plan_key]{delete_usage_plan_key} \tab Deletes a usage plan key and remove the underlying API key from the associated usage plan \cr
#'  \link[=apigateway_delete_vpc_link]{delete_vpc_link} \tab Deletes an existing VpcLink of a specified identifier \cr
#'  \link[=apigateway_flush_stage_authorizers_cache]{flush_stage_authorizers_cache} \tab Flushes all authorizer cache entries on a stage \cr
#'  \link[=apigateway_flush_stage_cache]{flush_stage_cache} \tab Flushes a stage's cache \cr
#'  \link[=apigateway_generate_client_certificate]{generate_client_certificate} \tab Generates a ClientCertificate resource \cr
#'  \link[=apigateway_get_account]{get_account} \tab Gets information about the current Account resource \cr
#'  \link[=apigateway_get_api_key]{get_api_key} \tab Gets information about the current ApiKey resource \cr
#'  \link[=apigateway_get_api_keys]{get_api_keys} \tab Gets information about the current ApiKeys resource \cr
#'  \link[=apigateway_get_authorizer]{get_authorizer} \tab Describe an existing Authorizer resource \cr
#'  \link[=apigateway_get_authorizers]{get_authorizers} \tab Describe an existing Authorizers resource \cr
#'  \link[=apigateway_get_base_path_mapping]{get_base_path_mapping} \tab Describe a BasePathMapping resource \cr
#'  \link[=apigateway_get_base_path_mappings]{get_base_path_mappings} \tab Represents a collection of BasePathMapping resources \cr
#'  \link[=apigateway_get_client_certificate]{get_client_certificate} \tab Gets information about the current ClientCertificate resource \cr
#'  \link[=apigateway_get_client_certificates]{get_client_certificates} \tab Gets a collection of ClientCertificate resources \cr
#'  \link[=apigateway_get_deployment]{get_deployment} \tab Gets information about a Deployment resource \cr
#'  \link[=apigateway_get_deployments]{get_deployments} \tab Gets information about a Deployments collection \cr
#'  \link[=apigateway_get_documentation_part]{get_documentation_part} \tab Get documentation part \cr
#'  \link[=apigateway_get_documentation_parts]{get_documentation_parts} \tab Get documentation parts \cr
#'  \link[=apigateway_get_documentation_version]{get_documentation_version} \tab Get documentation version \cr
#'  \link[=apigateway_get_documentation_versions]{get_documentation_versions} \tab Get documentation versions \cr
#'  \link[=apigateway_get_domain_name]{get_domain_name} \tab Represents a domain name that is contained in a simpler, more intuitive URL that can be called \cr
#'  \link[=apigateway_get_domain_names]{get_domain_names} \tab Represents a collection of DomainName resources \cr
#'  \link[=apigateway_get_export]{get_export} \tab Exports a deployed version of a RestApi in a specified format \cr
#'  \link[=apigateway_get_gateway_response]{get_gateway_response} \tab Gets a GatewayResponse of a specified response type on the given RestApi \cr
#'  \link[=apigateway_get_gateway_responses]{get_gateway_responses} \tab Gets the GatewayResponses collection on the given RestApi \cr
#'  \link[=apigateway_get_integration]{get_integration} \tab Get the integration settings \cr
#'  \link[=apigateway_get_integration_response]{get_integration_response} \tab Represents a get integration response \cr
#'  \link[=apigateway_get_method]{get_method} \tab Describe an existing Method resource \cr
#'  \link[=apigateway_get_method_response]{get_method_response} \tab Describes a MethodResponse resource \cr
#'  \link[=apigateway_get_model]{get_model} \tab Describes an existing model defined for a RestApi resource \cr
#'  \link[=apigateway_get_model_template]{get_model_template} \tab Generates a sample mapping template that can be used to transform a payload into the structure of a model \cr
#'  \link[=apigateway_get_models]{get_models} \tab Describes existing Models defined for a RestApi resource \cr
#'  \link[=apigateway_get_request_validator]{get_request_validator} \tab Gets a RequestValidator of a given RestApi \cr
#'  \link[=apigateway_get_request_validators]{get_request_validators} \tab Gets the RequestValidators collection of a given RestApi \cr
#'  \link[=apigateway_get_resource]{get_resource} \tab Lists information about a resource \cr
#'  \link[=apigateway_get_resources]{get_resources} \tab Lists information about a collection of Resource resources \cr
#'  \link[=apigateway_get_rest_api]{get_rest_api} \tab Lists the RestApi resource in the collection \cr
#'  \link[=apigateway_get_rest_apis]{get_rest_apis} \tab Lists the RestApis resources for your collection \cr
#'  \link[=apigateway_get_sdk]{get_sdk} \tab Generates a client SDK for a RestApi and Stage \cr
#'  \link[=apigateway_get_sdk_type]{get_sdk_type} \tab Get sdk type \cr
#'  \link[=apigateway_get_sdk_types]{get_sdk_types} \tab Get sdk types \cr
#'  \link[=apigateway_get_stage]{get_stage} \tab Gets information about a Stage resource \cr
#'  \link[=apigateway_get_stages]{get_stages} \tab Gets information about one or more Stage resources \cr
#'  \link[=apigateway_get_tags]{get_tags} \tab Gets the Tags collection for a given resource \cr
#'  \link[=apigateway_get_usage]{get_usage} \tab Gets the usage data of a usage plan in a specified time interval \cr
#'  \link[=apigateway_get_usage_plan]{get_usage_plan} \tab Gets a usage plan of a given plan identifier \cr
#'  \link[=apigateway_get_usage_plan_key]{get_usage_plan_key} \tab Gets a usage plan key of a given key identifier \cr
#'  \link[=apigateway_get_usage_plan_keys]{get_usage_plan_keys} \tab Gets all the usage plan keys representing the API keys added to a specified usage plan \cr
#'  \link[=apigateway_get_usage_plans]{get_usage_plans} \tab Gets all the usage plans of the caller's account \cr
#'  \link[=apigateway_get_vpc_link]{get_vpc_link} \tab Gets a specified VPC link under the caller's account in a region \cr
#'  \link[=apigateway_get_vpc_links]{get_vpc_links} \tab Gets the VpcLinks collection under the caller's account in a selected region \cr
#'  \link[=apigateway_import_api_keys]{import_api_keys} \tab Import API keys from an external source, such as a CSV-formatted file \cr
#'  \link[=apigateway_import_documentation_parts]{import_documentation_parts} \tab Import documentation parts \cr
#'  \link[=apigateway_import_rest_api]{import_rest_api} \tab A feature of the API Gateway control service for creating a new API from an external API definition file \cr
#'  \link[=apigateway_put_gateway_response]{put_gateway_response} \tab Creates a customization of a GatewayResponse of a specified response type and status code on the given RestApi \cr
#'  \link[=apigateway_put_integration]{put_integration} \tab Sets up a method's integration \cr
#'  \link[=apigateway_put_integration_response]{put_integration_response} \tab Represents a put integration \cr
#'  \link[=apigateway_put_method]{put_method} \tab Add a method to an existing Resource resource \cr
#'  \link[=apigateway_put_method_response]{put_method_response} \tab Adds a MethodResponse to an existing Method resource \cr
#'  \link[=apigateway_put_rest_api]{put_rest_api} \tab A feature of the API Gateway control service for updating an existing API with an input of external API definitions \cr
#'  \link[=apigateway_tag_resource]{tag_resource} \tab Adds or updates a tag on a given resource \cr
#'  \link[=apigateway_test_invoke_authorizer]{test_invoke_authorizer} \tab Simulate the execution of an Authorizer in your RestApi with headers, parameters, and an incoming request body \cr
#'  \link[=apigateway_test_invoke_method]{test_invoke_method} \tab Simulate the execution of a Method in your RestApi with headers, parameters, and an incoming request body \cr
#'  \link[=apigateway_untag_resource]{untag_resource} \tab Removes a tag from a given resource \cr
#'  \link[=apigateway_update_account]{update_account} \tab Changes information about the current Account resource \cr
#'  \link[=apigateway_update_api_key]{update_api_key} \tab Changes information about an ApiKey resource \cr
#'  \link[=apigateway_update_authorizer]{update_authorizer} \tab Updates an existing Authorizer resource \cr
#'  \link[=apigateway_update_base_path_mapping]{update_base_path_mapping} \tab Changes information about the BasePathMapping resource \cr
#'  \link[=apigateway_update_client_certificate]{update_client_certificate} \tab Changes information about an ClientCertificate resource \cr
#'  \link[=apigateway_update_deployment]{update_deployment} \tab Changes information about a Deployment resource \cr
#'  \link[=apigateway_update_documentation_part]{update_documentation_part} \tab Update documentation part \cr
#'  \link[=apigateway_update_documentation_version]{update_documentation_version} \tab Update documentation version \cr
#'  \link[=apigateway_update_domain_name]{update_domain_name} \tab Changes information about the DomainName resource \cr
#'  \link[=apigateway_update_gateway_response]{update_gateway_response} \tab Updates a GatewayResponse of a specified response type on the given RestApi \cr
#'  \link[=apigateway_update_integration]{update_integration} \tab Represents an update integration \cr
#'  \link[=apigateway_update_integration_response]{update_integration_response} \tab Represents an update integration response \cr
#'  \link[=apigateway_update_method]{update_method} \tab Updates an existing Method resource \cr
#'  \link[=apigateway_update_method_response]{update_method_response} \tab Updates an existing MethodResponse resource \cr
#'  \link[=apigateway_update_model]{update_model} \tab Changes information about a model \cr
#'  \link[=apigateway_update_request_validator]{update_request_validator} \tab Updates a RequestValidator of a given RestApi \cr
#'  \link[=apigateway_update_resource]{update_resource} \tab Changes information about a Resource resource \cr
#'  \link[=apigateway_update_rest_api]{update_rest_api} \tab Changes information about the specified API \cr
#'  \link[=apigateway_update_stage]{update_stage} \tab Changes information about a Stage resource \cr
#'  \link[=apigateway_update_usage]{update_usage} \tab Grants a temporary extension to the remaining quota of a usage plan associated with a specified API key \cr
#'  \link[=apigateway_update_usage_plan]{update_usage_plan} \tab Updates a usage plan of a given plan Id \cr
#'  \link[=apigateway_update_vpc_link]{update_vpc_link} \tab Updates an existing VpcLink of a specified identifier 
#' }
#'
#' @rdname apigateway
#' @export
apigateway <- function() {
  paws.networking::apigateway()
}

#' AmazonApiGatewayManagementApi
#'
#' @description
#' The Amazon API Gateway Management API allows you to directly manage
#' runtime aspects of your deployed APIs. To use it, you must explicitly
#' set the SDK\'s endpoint to point to the endpoint of your deployed API.
#' The endpoint will be of the form
#' https://\{api-id\}.execute-api.\{region\}.amazonaws.com/\{stage\}, or will be
#' the endpoint corresponding to your API\'s custom domain and base path,
#' if applicable.
#'
#' @examples
#' \donttest{svc <- apigatewaymanagementapi()
#' svc$post_to_connection(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=apigatewaymanagementapi_post_to_connection]{post_to_connection} \tab Sends the provided data to the specified connection
#' }
#'
#' @rdname apigatewaymanagementapi
#' @export
apigatewaymanagementapi <- function() {
  paws.networking::apigatewaymanagementapi()
}

#' AmazonApiGatewayV2
#'
#' @description
#' Amazon API Gateway V2
#'
#' @examples
#' \donttest{svc <- apigatewayv2()
#' svc$create_api(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=apigatewayv2_create_api]{create_api} \tab Creates an Api resource \cr
#'  \link[=apigatewayv2_create_api_mapping]{create_api_mapping} \tab Creates an API mapping \cr
#'  \link[=apigatewayv2_create_authorizer]{create_authorizer} \tab Creates an Authorizer for an API \cr
#'  \link[=apigatewayv2_create_deployment]{create_deployment} \tab Creates a Deployment for an API \cr
#'  \link[=apigatewayv2_create_domain_name]{create_domain_name} \tab Creates a domain name \cr
#'  \link[=apigatewayv2_create_integration]{create_integration} \tab Creates an Integration \cr
#'  \link[=apigatewayv2_create_integration_response]{create_integration_response} \tab Creates an IntegrationResponses \cr
#'  \link[=apigatewayv2_create_model]{create_model} \tab Creates a Model for an API \cr
#'  \link[=apigatewayv2_create_route]{create_route} \tab Creates a Route for an API \cr
#'  \link[=apigatewayv2_create_route_response]{create_route_response} \tab Creates a RouteResponse for a Route \cr
#'  \link[=apigatewayv2_create_stage]{create_stage} \tab Creates a Stage for an API \cr
#'  \link[=apigatewayv2_delete_api]{delete_api} \tab Deletes an Api resource \cr
#'  \link[=apigatewayv2_delete_api_mapping]{delete_api_mapping} \tab Deletes an API mapping \cr
#'  \link[=apigatewayv2_delete_authorizer]{delete_authorizer} \tab Deletes an Authorizer \cr
#'  \link[=apigatewayv2_delete_deployment]{delete_deployment} \tab Deletes a Deployment \cr
#'  \link[=apigatewayv2_delete_domain_name]{delete_domain_name} \tab Deletes a domain name \cr
#'  \link[=apigatewayv2_delete_integration]{delete_integration} \tab Deletes an Integration \cr
#'  \link[=apigatewayv2_delete_integration_response]{delete_integration_response} \tab Deletes an IntegrationResponses \cr
#'  \link[=apigatewayv2_delete_model]{delete_model} \tab Deletes a Model \cr
#'  \link[=apigatewayv2_delete_route]{delete_route} \tab Deletes a Route \cr
#'  \link[=apigatewayv2_delete_route_response]{delete_route_response} \tab Deletes a RouteResponse \cr
#'  \link[=apigatewayv2_delete_stage]{delete_stage} \tab Deletes a Stage \cr
#'  \link[=apigatewayv2_get_api]{get_api} \tab Gets an Api resource \cr
#'  \link[=apigatewayv2_get_api_mapping]{get_api_mapping} \tab The API mapping \cr
#'  \link[=apigatewayv2_get_api_mappings]{get_api_mappings} \tab The API mappings \cr
#'  \link[=apigatewayv2_get_apis]{get_apis} \tab Gets a collection of Api resources \cr
#'  \link[=apigatewayv2_get_authorizer]{get_authorizer} \tab Gets an Authorizer \cr
#'  \link[=apigatewayv2_get_authorizers]{get_authorizers} \tab Gets the Authorizers for an API \cr
#'  \link[=apigatewayv2_get_deployment]{get_deployment} \tab Gets a Deployment \cr
#'  \link[=apigatewayv2_get_deployments]{get_deployments} \tab Gets the Deployments for an API \cr
#'  \link[=apigatewayv2_get_domain_name]{get_domain_name} \tab Gets a domain name \cr
#'  \link[=apigatewayv2_get_domain_names]{get_domain_names} \tab Gets the domain names for an AWS account \cr
#'  \link[=apigatewayv2_get_integration]{get_integration} \tab Gets an Integration \cr
#'  \link[=apigatewayv2_get_integration_response]{get_integration_response} \tab Gets an IntegrationResponses \cr
#'  \link[=apigatewayv2_get_integration_responses]{get_integration_responses} \tab Gets the IntegrationResponses for an Integration\cr
#'  \link[=apigatewayv2_get_integrations]{get_integrations} \tab Gets the Integrations for an API \cr
#'  \link[=apigatewayv2_get_model]{get_model} \tab Gets a Model \cr
#'  \link[=apigatewayv2_get_model_template]{get_model_template} \tab Gets a model template \cr
#'  \link[=apigatewayv2_get_models]{get_models} \tab Gets the Models for an API \cr
#'  \link[=apigatewayv2_get_route]{get_route} \tab Gets a Route \cr
#'  \link[=apigatewayv2_get_route_response]{get_route_response} \tab Gets a RouteResponse \cr
#'  \link[=apigatewayv2_get_route_responses]{get_route_responses} \tab Gets the RouteResponses for a Route \cr
#'  \link[=apigatewayv2_get_routes]{get_routes} \tab Gets the Routes for an API \cr
#'  \link[=apigatewayv2_get_stage]{get_stage} \tab Gets a Stage \cr
#'  \link[=apigatewayv2_get_stages]{get_stages} \tab Gets the Stages for an API \cr
#'  \link[=apigatewayv2_update_api]{update_api} \tab Updates an Api resource \cr
#'  \link[=apigatewayv2_update_api_mapping]{update_api_mapping} \tab The API mapping \cr
#'  \link[=apigatewayv2_update_authorizer]{update_authorizer} \tab Updates an Authorizer \cr
#'  \link[=apigatewayv2_update_deployment]{update_deployment} \tab Updates a Deployment \cr
#'  \link[=apigatewayv2_update_domain_name]{update_domain_name} \tab Updates a domain name \cr
#'  \link[=apigatewayv2_update_integration]{update_integration} \tab Updates an Integration \cr
#'  \link[=apigatewayv2_update_integration_response]{update_integration_response} \tab Updates an IntegrationResponses \cr
#'  \link[=apigatewayv2_update_model]{update_model} \tab Updates a Model \cr
#'  \link[=apigatewayv2_update_route]{update_route} \tab Updates a Route \cr
#'  \link[=apigatewayv2_update_route_response]{update_route_response} \tab Updates a RouteResponse \cr
#'  \link[=apigatewayv2_update_stage]{update_stage} \tab Updates a Stage 
#' }
#'
#' @rdname apigatewayv2
#' @export
apigatewayv2 <- function() {
  paws.networking::apigatewayv2()
}

#' AWS App Mesh
#'
#' @description
#' AWS App Mesh is a service mesh based on the Envoy proxy that makes it
#' easy to monitor and control microservices. App Mesh standardizes how
#' your microservices communicate, giving you end-to-end visibility and
#' helping to ensure high availability for your applications.
#' 
#' App Mesh gives you consistent visibility and network traffic controls
#' for every microservice in an application. You can use App Mesh with AWS
#' Fargate, Amazon ECS, Amazon EKS, and Kubernetes on AWS.
#' 
#' App Mesh supports microservice applications that use service discovery
#' naming for their components. To use App Mesh, you must have an
#' application running on Amazon EC2 instances, hosted in either Amazon
#' ECS, Amazon EKS, or Kubernetes on AWS. For more information about
#' service discovery on Amazon ECS, see [Service
#' Discovery](http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html)
#' in the *Amazon Elastic Container Service Developer Guide*. Kubernetes
#' `kube-dns` and `coredns` are supported. For more information, see [DNS
#' for Services and
#' Pods](https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/)
#' in the Kubernetes documentation.
#'
#' @examples
#' \donttest{svc <- appmesh()
#' svc$create_mesh(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=appmesh_create_mesh]{create_mesh} \tab Creates a service mesh \cr
#'  \link[=appmesh_create_route]{create_route} \tab Creates a route that is associated with a virtual router \cr
#'  \link[=appmesh_create_virtual_node]{create_virtual_node} \tab Creates a virtual node within a service mesh \cr
#'  \link[=appmesh_create_virtual_router]{create_virtual_router} \tab Creates a virtual router within a service mesh \cr
#'  \link[=appmesh_create_virtual_service]{create_virtual_service} \tab Creates a virtual service within a service mesh \cr
#'  \link[=appmesh_delete_mesh]{delete_mesh} \tab Deletes an existing service mesh \cr
#'  \link[=appmesh_delete_route]{delete_route} \tab Deletes an existing route \cr
#'  \link[=appmesh_delete_virtual_node]{delete_virtual_node} \tab Deletes an existing virtual node \cr
#'  \link[=appmesh_delete_virtual_router]{delete_virtual_router} \tab Deletes an existing virtual router \cr
#'  \link[=appmesh_delete_virtual_service]{delete_virtual_service} \tab Deletes an existing virtual service \cr
#'  \link[=appmesh_describe_mesh]{describe_mesh} \tab Describes an existing service mesh \cr
#'  \link[=appmesh_describe_route]{describe_route} \tab Describes an existing route \cr
#'  \link[=appmesh_describe_virtual_node]{describe_virtual_node} \tab Describes an existing virtual node \cr
#'  \link[=appmesh_describe_virtual_router]{describe_virtual_router} \tab Describes an existing virtual router \cr
#'  \link[=appmesh_describe_virtual_service]{describe_virtual_service} \tab Describes an existing virtual service \cr
#'  \link[=appmesh_list_meshes]{list_meshes} \tab Returns a list of existing service meshes \cr
#'  \link[=appmesh_list_routes]{list_routes} \tab Returns a list of existing routes in a service mesh \cr
#'  \link[=appmesh_list_tags_for_resource]{list_tags_for_resource} \tab List the tags for an App Mesh resource \cr
#'  \link[=appmesh_list_virtual_nodes]{list_virtual_nodes} \tab Returns a list of existing virtual nodes \cr
#'  \link[=appmesh_list_virtual_routers]{list_virtual_routers} \tab Returns a list of existing virtual routers in a service mesh \cr
#'  \link[=appmesh_list_virtual_services]{list_virtual_services} \tab Returns a list of existing virtual services in a service mesh \cr
#'  \link[=appmesh_tag_resource]{tag_resource} \tab Associates the specified tags to a resource with the specified resourceArn\cr
#'  \link[=appmesh_untag_resource]{untag_resource} \tab Deletes specified tags from a resource \cr
#'  \link[=appmesh_update_mesh]{update_mesh} \tab Updates an existing service mesh \cr
#'  \link[=appmesh_update_route]{update_route} \tab Updates an existing route for a specified service mesh and virtual router \cr
#'  \link[=appmesh_update_virtual_node]{update_virtual_node} \tab Updates an existing virtual node in a specified service mesh \cr
#'  \link[=appmesh_update_virtual_router]{update_virtual_router} \tab Updates an existing virtual router in a specified service mesh \cr
#'  \link[=appmesh_update_virtual_service]{update_virtual_service} \tab Updates an existing virtual service in a specified service mesh 
#' }
#'
#' @rdname appmesh
#' @export
appmesh <- function() {
  paws.networking::appmesh()
}

#' Amazon CloudFront
#'
#' @description
#' This is the *Amazon CloudFront API Reference*. This guide is for
#' developers who need detailed information about CloudFront API actions,
#' data types, and errors. For detailed information about CloudFront
#' features, see the *Amazon CloudFront Developer Guide*.
#'
#' @examples
#' \donttest{svc <- cloudfront()
#' svc$create_cloud_front_origin_access_identity(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=cloudfront_create_cloud_front_origin_access_identity]{create_cloud_front_origin_access_identity} \tab Creates a new origin access identity \cr
#'  \link[=cloudfront_create_distribution]{create_distribution} \tab Creates a new web distribution \cr
#'  \link[=cloudfront_create_distribution_with_tags]{create_distribution_with_tags} \tab Create a new distribution with tags \cr
#'  \link[=cloudfront_create_field_level_encryption_config]{create_field_level_encryption_config} \tab Create a new field-level encryption configuration \cr
#'  \link[=cloudfront_create_field_level_encryption_profile]{create_field_level_encryption_profile} \tab Create a field-level encryption profile \cr
#'  \link[=cloudfront_create_invalidation]{create_invalidation} \tab Create a new invalidation \cr
#'  \link[=cloudfront_create_public_key]{create_public_key} \tab Add a new public key to CloudFront to use, for example, for field-level encryption \cr
#'  \link[=cloudfront_create_streaming_distribution]{create_streaming_distribution} \tab Creates a new RMTP distribution \cr
#'  \link[=cloudfront_create_streaming_distribution_with_tags]{create_streaming_distribution_with_tags} \tab Create a new streaming distribution with tags \cr
#'  \link[=cloudfront_delete_cloud_front_origin_access_identity]{delete_cloud_front_origin_access_identity} \tab Delete an origin access identity \cr
#'  \link[=cloudfront_delete_distribution]{delete_distribution} \tab Delete a distribution \cr
#'  \link[=cloudfront_delete_field_level_encryption_config]{delete_field_level_encryption_config} \tab Remove a field-level encryption configuration \cr
#'  \link[=cloudfront_delete_field_level_encryption_profile]{delete_field_level_encryption_profile} \tab Remove a field-level encryption profile \cr
#'  \link[=cloudfront_delete_public_key]{delete_public_key} \tab Remove a public key you previously added to CloudFront \cr
#'  \link[=cloudfront_delete_streaming_distribution]{delete_streaming_distribution} \tab Delete a streaming distribution \cr
#'  \link[=cloudfront_get_cloud_front_origin_access_identity]{get_cloud_front_origin_access_identity} \tab Get the information about an origin access identity \cr
#'  \link[=cloudfront_get_cloud_front_origin_access_identity_config]{get_cloud_front_origin_access_identity_config} \tab Get the configuration information about an origin access identity \cr
#'  \link[=cloudfront_get_distribution]{get_distribution} \tab Get the information about a distribution \cr
#'  \link[=cloudfront_get_distribution_config]{get_distribution_config} \tab Get the configuration information about a distribution \cr
#'  \link[=cloudfront_get_field_level_encryption]{get_field_level_encryption} \tab Get the field-level encryption configuration information \cr
#'  \link[=cloudfront_get_field_level_encryption_config]{get_field_level_encryption_config} \tab Get the field-level encryption configuration information \cr
#'  \link[=cloudfront_get_field_level_encryption_profile]{get_field_level_encryption_profile} \tab Get the field-level encryption profile information \cr
#'  \link[=cloudfront_get_field_level_encryption_profile_config]{get_field_level_encryption_profile_config} \tab Get the field-level encryption profile configuration information \cr
#'  \link[=cloudfront_get_invalidation]{get_invalidation} \tab Get the information about an invalidation \cr
#'  \link[=cloudfront_get_public_key]{get_public_key} \tab Get the public key information \cr
#'  \link[=cloudfront_get_public_key_config]{get_public_key_config} \tab Return public key configuration informaation \cr
#'  \link[=cloudfront_get_streaming_distribution]{get_streaming_distribution} \tab Gets information about a specified RTMP distribution, including the distribution configuration \cr
#'  \link[=cloudfront_get_streaming_distribution_config]{get_streaming_distribution_config} \tab Get the configuration information about a streaming distribution \cr
#'  \link[=cloudfront_list_cloud_front_origin_access_identities]{list_cloud_front_origin_access_identities} \tab Lists origin access identities \cr
#'  \link[=cloudfront_list_distributions]{list_distributions} \tab List distributions \cr
#'  \link[=cloudfront_list_distributions_by_web_acl_id]{list_distributions_by_web_acl_id} \tab List the distributions that are associated with a specified AWS WAF web ACL \cr
#'  \link[=cloudfront_list_field_level_encryption_configs]{list_field_level_encryption_configs} \tab List all field-level encryption configurations that have been created in CloudFront for this account \cr
#'  \link[=cloudfront_list_field_level_encryption_profiles]{list_field_level_encryption_profiles} \tab Request a list of field-level encryption profiles that have been created in CloudFront for this account\cr
#'  \link[=cloudfront_list_invalidations]{list_invalidations} \tab Lists invalidation batches \cr
#'  \link[=cloudfront_list_public_keys]{list_public_keys} \tab List all public keys that have been added to CloudFront for this account \cr
#'  \link[=cloudfront_list_streaming_distributions]{list_streaming_distributions} \tab List streaming distributions \cr
#'  \link[=cloudfront_list_tags_for_resource]{list_tags_for_resource} \tab List tags for a CloudFront resource \cr
#'  \link[=cloudfront_tag_resource]{tag_resource} \tab Add tags to a CloudFront resource \cr
#'  \link[=cloudfront_untag_resource]{untag_resource} \tab Remove tags from a CloudFront resource \cr
#'  \link[=cloudfront_update_cloud_front_origin_access_identity]{update_cloud_front_origin_access_identity} \tab Update an origin access identity \cr
#'  \link[=cloudfront_update_distribution]{update_distribution} \tab Updates the configuration for a web distribution \cr
#'  \link[=cloudfront_update_field_level_encryption_config]{update_field_level_encryption_config} \tab Update a field-level encryption configuration \cr
#'  \link[=cloudfront_update_field_level_encryption_profile]{update_field_level_encryption_profile} \tab Update a field-level encryption profile \cr
#'  \link[=cloudfront_update_public_key]{update_public_key} \tab Update public key information \cr
#'  \link[=cloudfront_update_streaming_distribution]{update_streaming_distribution} \tab Update a streaming distribution 
#' }
#'
#' @rdname cloudfront
#' @export
cloudfront <- function() {
  paws.networking::cloudfront()
}

#' AWS Direct Connect
#'
#' @description
#' AWS Direct Connect links your internal network to an AWS Direct Connect
#' location over a standard Ethernet fiber-optic cable. One end of the
#' cable is connected to your router, the other to an AWS Direct Connect
#' router. With this connection in place, you can create virtual interfaces
#' directly to the AWS cloud (for example, to Amazon EC2 and Amazon S3) and
#' to Amazon VPC, bypassing Internet service providers in your network
#' path. A connection provides access to all AWS Regions except the China
#' (Beijing) and (China) Ningxia Regions. AWS resources in the China
#' Regions can only be accessed through locations associated with those
#' Regions.
#'
#' @examples
#' \donttest{svc <- directconnect()
#' svc$accept_direct_connect_gateway_association_proposal(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=directconnect_accept_direct_connect_gateway_association_proposal]{accept_direct_connect_gateway_association_proposal} \tab Accepts a proposal request to attach a virtual private gateway or transit gateway to a Direct Connect gateway \cr
#'  \link[=directconnect_allocate_connection_on_interconnect]{allocate_connection_on_interconnect} \tab Deprecated \cr
#'  \link[=directconnect_allocate_hosted_connection]{allocate_hosted_connection} \tab Creates a hosted connection on the specified interconnect or a link aggregation group (LAG) of interconnects \cr
#'  \link[=directconnect_allocate_private_virtual_interface]{allocate_private_virtual_interface} \tab Provisions a private virtual interface to be owned by the specified AWS account \cr
#'  \link[=directconnect_allocate_public_virtual_interface]{allocate_public_virtual_interface} \tab Provisions a public virtual interface to be owned by the specified AWS account \cr
#'  \link[=directconnect_allocate_transit_virtual_interface]{allocate_transit_virtual_interface} \tab Provisions a transit virtual interface to be owned by the specified AWS account \cr
#'  \link[=directconnect_associate_connection_with_lag]{associate_connection_with_lag} \tab Associates an existing connection with a link aggregation group (LAG) \cr
#'  \link[=directconnect_associate_hosted_connection]{associate_hosted_connection} \tab Associates a hosted connection and its virtual interfaces with a link aggregation group (LAG) or interconnect \cr
#'  \link[=directconnect_associate_virtual_interface]{associate_virtual_interface} \tab Associates a virtual interface with a specified link aggregation group (LAG) or connection \cr
#'  \link[=directconnect_confirm_connection]{confirm_connection} \tab Confirms the creation of the specified hosted connection on an interconnect \cr
#'  \link[=directconnect_confirm_private_virtual_interface]{confirm_private_virtual_interface} \tab Accepts ownership of a private virtual interface created by another AWS account \cr
#'  \link[=directconnect_confirm_public_virtual_interface]{confirm_public_virtual_interface} \tab Accepts ownership of a public virtual interface created by another AWS account \cr
#'  \link[=directconnect_confirm_transit_virtual_interface]{confirm_transit_virtual_interface} \tab Accepts ownership of a transit virtual interface created by another AWS account \cr
#'  \link[=directconnect_create_bgp_peer]{create_bgp_peer} \tab Creates a BGP peer on the specified virtual interface \cr
#'  \link[=directconnect_create_connection]{create_connection} \tab Creates a connection between a customer network and a specific AWS Direct Connect location \cr
#'  \link[=directconnect_create_direct_connect_gateway]{create_direct_connect_gateway} \tab Creates a Direct Connect gateway, which is an intermediate object that enables you to connect a set of virtual interfaces and virtual private gateways \cr
#'  \link[=directconnect_create_direct_connect_gateway_association]{create_direct_connect_gateway_association} \tab Creates an association between a Direct Connect gateway and a virtual private gateway \cr
#'  \link[=directconnect_create_direct_connect_gateway_association_proposal]{create_direct_connect_gateway_association_proposal} \tab Creates a proposal to associate the specified virtual private gateway or transit gateway with the specified Direct Connect gateway \cr
#'  \link[=directconnect_create_interconnect]{create_interconnect} \tab Creates an interconnect between an AWS Direct Connect Partner's network and a specific AWS Direct Connect location \cr
#'  \link[=directconnect_create_lag]{create_lag} \tab Creates a link aggregation group (LAG) with the specified number of bundled physical connections between the customer network and a specific AWS Direct Connect location\cr
#'  \link[=directconnect_create_private_virtual_interface]{create_private_virtual_interface} \tab Creates a private virtual interface \cr
#'  \link[=directconnect_create_public_virtual_interface]{create_public_virtual_interface} \tab Creates a public virtual interface \cr
#'  \link[=directconnect_create_transit_virtual_interface]{create_transit_virtual_interface} \tab Creates a transit virtual interface \cr
#'  \link[=directconnect_delete_bgp_peer]{delete_bgp_peer} \tab Deletes the specified BGP peer on the specified virtual interface with the specified customer address and ASN \cr
#'  \link[=directconnect_delete_connection]{delete_connection} \tab Deletes the specified connection \cr
#'  \link[=directconnect_delete_direct_connect_gateway]{delete_direct_connect_gateway} \tab Deletes the specified Direct Connect gateway \cr
#'  \link[=directconnect_delete_direct_connect_gateway_association]{delete_direct_connect_gateway_association} \tab Deletes the association between the specified Direct Connect gateway and virtual private gateway \cr
#'  \link[=directconnect_delete_direct_connect_gateway_association_proposal]{delete_direct_connect_gateway_association_proposal} \tab Deletes the association proposal request between the specified Direct Connect gateway and virtual private gateway or transit gateway \cr
#'  \link[=directconnect_delete_interconnect]{delete_interconnect} \tab Deletes the specified interconnect \cr
#'  \link[=directconnect_delete_lag]{delete_lag} \tab Deletes the specified link aggregation group (LAG) \cr
#'  \link[=directconnect_delete_virtual_interface]{delete_virtual_interface} \tab Deletes a virtual interface \cr
#'  \link[=directconnect_describe_connection_loa]{describe_connection_loa} \tab Deprecated \cr
#'  \link[=directconnect_describe_connections]{describe_connections} \tab Displays the specified connection or all connections in this Region \cr
#'  \link[=directconnect_describe_connections_on_interconnect]{describe_connections_on_interconnect} \tab Deprecated \cr
#'  \link[=directconnect_describe_direct_connect_gateway_association_proposals]{describe_direct_connect_gateway_association_proposals} \tab Describes one or more association proposals for connection between a virtual private gateway or transit gateway and a Direct Connect gateway \cr
#'  \link[=directconnect_describe_direct_connect_gateway_associations]{describe_direct_connect_gateway_associations} \tab Lists the associations between your Direct Connect gateways and virtual private gateways \cr
#'  \link[=directconnect_describe_direct_connect_gateway_attachments]{describe_direct_connect_gateway_attachments} \tab Lists the attachments between your Direct Connect gateways and virtual interfaces \cr
#'  \link[=directconnect_describe_direct_connect_gateways]{describe_direct_connect_gateways} \tab Lists all your Direct Connect gateways or only the specified Direct Connect gateway \cr
#'  \link[=directconnect_describe_hosted_connections]{describe_hosted_connections} \tab Lists the hosted connections that have been provisioned on the specified interconnect or link aggregation group (LAG) \cr
#'  \link[=directconnect_describe_interconnect_loa]{describe_interconnect_loa} \tab Deprecated \cr
#'  \link[=directconnect_describe_interconnects]{describe_interconnects} \tab Lists the interconnects owned by the AWS account or only the specified interconnect \cr
#'  \link[=directconnect_describe_lags]{describe_lags} \tab Describes all your link aggregation groups (LAG) or the specified LAG \cr
#'  \link[=directconnect_describe_loa]{describe_loa} \tab Gets the LOA-CFA for a connection, interconnect, or link aggregation group (LAG) \cr
#'  \link[=directconnect_describe_locations]{describe_locations} \tab Lists the AWS Direct Connect locations in the current AWS Region \cr
#'  \link[=directconnect_describe_tags]{describe_tags} \tab Describes the tags associated with the specified AWS Direct Connect resources \cr
#'  \link[=directconnect_describe_virtual_gateways]{describe_virtual_gateways} \tab Lists the virtual private gateways owned by the AWS account \cr
#'  \link[=directconnect_describe_virtual_interfaces]{describe_virtual_interfaces} \tab Displays all virtual interfaces for an AWS account \cr
#'  \link[=directconnect_disassociate_connection_from_lag]{disassociate_connection_from_lag} \tab Disassociates a connection from a link aggregation group (LAG) \cr
#'  \link[=directconnect_tag_resource]{tag_resource} \tab Adds the specified tags to the specified AWS Direct Connect resource \cr
#'  \link[=directconnect_untag_resource]{untag_resource} \tab Removes one or more tags from the specified AWS Direct Connect resource \cr
#'  \link[=directconnect_update_direct_connect_gateway_association]{update_direct_connect_gateway_association} \tab Updates the specified attributes of the Direct Connect gateway association \cr
#'  \link[=directconnect_update_lag]{update_lag} \tab Updates the attributes of the specified link aggregation group (LAG) \cr
#'  \link[=directconnect_update_virtual_interface_attributes]{update_virtual_interface_attributes} \tab Updates the specified attributes of the specified virtual private interface 
#' }
#'
#' @rdname directconnect
#' @export
directconnect <- function() {
  paws.networking::directconnect()
}

#' Elastic Load Balancing
#'
#' @description
#' A load balancer can distribute incoming traffic across your EC2
#' instances. This enables you to increase the availability of your
#' application. The load balancer also monitors the health of its
#' registered instances and ensures that it routes traffic only to healthy
#' instances. You configure your load balancer to accept incoming traffic
#' by specifying one or more listeners, which are configured with a
#' protocol and port number for connections from clients to the load
#' balancer and a protocol and port number for connections from the load
#' balancer to the instances.
#' 
#' Elastic Load Balancing supports three types of load balancers:
#' Application Load Balancers, Network Load Balancers, and Classic Load
#' Balancers. You can select a load balancer based on your application
#' needs. For more information, see the [Elastic Load Balancing User
#' Guide](http://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/).
#' 
#' This reference covers the 2012-06-01 API, which supports Classic Load
#' Balancers. The 2015-12-01 API supports Application Load Balancers and
#' Network Load Balancers.
#' 
#' To get started, create a load balancer with one or more listeners using
#' CreateLoadBalancer. Register your instances with the load balancer using
#' RegisterInstancesWithLoadBalancer.
#' 
#' All Elastic Load Balancing operations are *idempotent*, which means that
#' they complete at most one time. If you repeat an operation, it succeeds
#' with a 200 OK response code.
#'
#' @examples
#' # This example adds two tags to the specified load balancer.
#' \donttest{svc <- elb()
#' svc$add_tags(
#'   LoadBalancerNames = list(
#'     "my-load-balancer"
#'   ),
#'   Tags = list(
#'     list(
#'       Key = "project",
#'       Value = "lima"
#'     ),
#'     list(
#'       Key = "department",
#'       Value = "digital-media"
#'     )
#'   )
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=elb_add_tags]{add_tags} \tab Adds the specified tags to the specified load balancer \cr
#'  \link[=elb_apply_security_groups_to_load_balancer]{apply_security_groups_to_load_balancer} \tab Associates one or more security groups with your load balancer in a virtual private cloud (VPC) \cr
#'  \link[=elb_attach_load_balancer_to_subnets]{attach_load_balancer_to_subnets} \tab Adds one or more subnets to the set of configured subnets for the specified load balancer \cr
#'  \link[=elb_configure_health_check]{configure_health_check} \tab Specifies the health check settings to use when evaluating the health state of your EC2 instances \cr
#'  \link[=elb_create_app_cookie_stickiness_policy]{create_app_cookie_stickiness_policy} \tab Generates a stickiness policy with sticky session lifetimes that follow that of an application-generated cookie \cr
#'  \link[=elb_create_lb_cookie_stickiness_policy]{create_lb_cookie_stickiness_policy} \tab Generates a stickiness policy with sticky session lifetimes controlled by the lifetime of the browser (user-agent) or a specified expiration period\cr
#'  \link[=elb_create_load_balancer]{create_load_balancer} \tab Creates a Classic Load Balancer \cr
#'  \link[=elb_create_load_balancer_listeners]{create_load_balancer_listeners} \tab Creates one or more listeners for the specified load balancer \cr
#'  \link[=elb_create_load_balancer_policy]{create_load_balancer_policy} \tab Creates a policy with the specified attributes for the specified load balancer \cr
#'  \link[=elb_delete_load_balancer]{delete_load_balancer} \tab Deletes the specified load balancer \cr
#'  \link[=elb_delete_load_balancer_listeners]{delete_load_balancer_listeners} \tab Deletes the specified listeners from the specified load balancer \cr
#'  \link[=elb_delete_load_balancer_policy]{delete_load_balancer_policy} \tab Deletes the specified policy from the specified load balancer \cr
#'  \link[=elb_deregister_instances_from_load_balancer]{deregister_instances_from_load_balancer} \tab Deregisters the specified instances from the specified load balancer \cr
#'  \link[=elb_describe_account_limits]{describe_account_limits} \tab Describes the current Elastic Load Balancing resource limits for your AWS account \cr
#'  \link[=elb_describe_instance_health]{describe_instance_health} \tab Describes the state of the specified instances with respect to the specified load balancer \cr
#'  \link[=elb_describe_load_balancer_attributes]{describe_load_balancer_attributes} \tab Describes the attributes for the specified load balancer \cr
#'  \link[=elb_describe_load_balancer_policies]{describe_load_balancer_policies} \tab Describes the specified policies \cr
#'  \link[=elb_describe_load_balancer_policy_types]{describe_load_balancer_policy_types} \tab Describes the specified load balancer policy types or all load balancer policy types \cr
#'  \link[=elb_describe_load_balancers]{describe_load_balancers} \tab Describes the specified the load balancers \cr
#'  \link[=elb_describe_tags]{describe_tags} \tab Describes the tags associated with the specified load balancers \cr
#'  \link[=elb_detach_load_balancer_from_subnets]{detach_load_balancer_from_subnets} \tab Removes the specified subnets from the set of configured subnets for the load balancer \cr
#'  \link[=elb_disable_availability_zones_for_load_balancer]{disable_availability_zones_for_load_balancer} \tab Removes the specified Availability Zones from the set of Availability Zones for the specified load balancer in EC2-Classic or a default VPC \cr
#'  \link[=elb_enable_availability_zones_for_load_balancer]{enable_availability_zones_for_load_balancer} \tab Adds the specified Availability Zones to the set of Availability Zones for the specified load balancer in EC2-Classic or a default VPC \cr
#'  \link[=elb_modify_load_balancer_attributes]{modify_load_balancer_attributes} \tab Modifies the attributes of the specified load balancer \cr
#'  \link[=elb_register_instances_with_load_balancer]{register_instances_with_load_balancer} \tab Adds the specified instances to the specified load balancer \cr
#'  \link[=elb_remove_tags]{remove_tags} \tab Removes one or more tags from the specified load balancer \cr
#'  \link[=elb_set_load_balancer_listener_ssl_certificate]{set_load_balancer_listener_ssl_certificate} \tab Sets the certificate that terminates the specified listener's SSL connections \cr
#'  \link[=elb_set_load_balancer_policies_for_backend_server]{set_load_balancer_policies_for_backend_server} \tab Replaces the set of policies associated with the specified port on which the EC2 instance is listening with a new set of policies \cr
#'  \link[=elb_set_load_balancer_policies_of_listener]{set_load_balancer_policies_of_listener} \tab Replaces the current set of policies for the specified load balancer port with the specified set of policies 
#' }
#'
#' @rdname elb
#' @export
elb <- function() {
  paws.networking::elb()
}

#' Elastic Load Balancing
#'
#' @description
#' A load balancer distributes incoming traffic across targets, such as
#' your EC2 instances. This enables you to increase the availability of
#' your application. The load balancer also monitors the health of its
#' registered targets and ensures that it routes traffic only to healthy
#' targets. You configure your load balancer to accept incoming traffic by
#' specifying one or more listeners, which are configured with a protocol
#' and port number for connections from clients to the load balancer. You
#' configure a target group with a protocol and port number for connections
#' from the load balancer to the targets, and with health check settings to
#' be used when checking the health status of the targets.
#' 
#' Elastic Load Balancing supports the following types of load balancers:
#' Application Load Balancers, Network Load Balancers, and Classic Load
#' Balancers.
#' 
#' An Application Load Balancer makes routing and load balancing decisions
#' at the application layer (HTTP/HTTPS). A Network Load Balancer makes
#' routing and load balancing decisions at the transport layer (TCP/TLS).
#' Both Application Load Balancers and Network Load Balancers can route
#' requests to one or more ports on each EC2 instance or container instance
#' in your virtual private cloud (VPC).
#' 
#' A Classic Load Balancer makes routing and load balancing decisions
#' either at the transport layer (TCP/SSL) or the application layer
#' (HTTP/HTTPS), and supports either EC2-Classic or a VPC. For more
#' information, see the [Elastic Load Balancing User
#' Guide](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/).
#' 
#' This reference covers the 2015-12-01 API, which supports Application
#' Load Balancers and Network Load Balancers. The 2012-06-01 API supports
#' Classic Load Balancers.
#' 
#' To get started, complete the following tasks:
#' 
#' 1.  Create a load balancer using CreateLoadBalancer.
#' 
#' 2.  Create a target group using CreateTargetGroup.
#' 
#' 3.  Register targets for the target group using RegisterTargets.
#' 
#' 4.  Create one or more listeners for your load balancer using
#'     CreateListener.
#' 
#' To delete a load balancer and its related resources, complete the
#' following tasks:
#' 
#' 1.  Delete the load balancer using DeleteLoadBalancer.
#' 
#' 2.  Delete the target group using DeleteTargetGroup.
#' 
#' All Elastic Load Balancing operations are idempotent, which means that
#' they complete at most one time. If you repeat an operation, it succeeds.
#'
#' @examples
#' # This example adds the specified tags to the specified load balancer.
#' \donttest{svc <- elbv2()
#' svc$add_tags(
#'   ResourceArns = list(
#'     "arn:aws:elasticloadbalancing:us-west-2:123456789012:loadbalancer/app/my-load-balancer/5..."
#'   ),
#'   Tags = list(
#'     list(
#'       Key = "project",
#'       Value = "lima"
#'     ),
#'     list(
#'       Key = "department",
#'       Value = "digital-media"
#'     )
#'   )
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=elbv2_add_listener_certificates]{add_listener_certificates} \tab Adds the specified certificate to the specified HTTPS listener \cr
#'  \link[=elbv2_add_tags]{add_tags} \tab Adds the specified tags to the specified Elastic Load Balancing resource \cr
#'  \link[=elbv2_create_listener]{create_listener} \tab Creates a listener for the specified Application Load Balancer or Network Load Balancer \cr
#'  \link[=elbv2_create_load_balancer]{create_load_balancer} \tab Creates an Application Load Balancer or a Network Load Balancer \cr
#'  \link[=elbv2_create_rule]{create_rule} \tab Creates a rule for the specified listener \cr
#'  \link[=elbv2_create_target_group]{create_target_group} \tab Creates a target group \cr
#'  \link[=elbv2_delete_listener]{delete_listener} \tab Deletes the specified listener \cr
#'  \link[=elbv2_delete_load_balancer]{delete_load_balancer} \tab Deletes the specified Application Load Balancer or Network Load Balancer and its attached listeners \cr
#'  \link[=elbv2_delete_rule]{delete_rule} \tab Deletes the specified rule \cr
#'  \link[=elbv2_delete_target_group]{delete_target_group} \tab Deletes the specified target group \cr
#'  \link[=elbv2_deregister_targets]{deregister_targets} \tab Deregisters the specified targets from the specified target group \cr
#'  \link[=elbv2_describe_account_limits]{describe_account_limits} \tab Describes the current Elastic Load Balancing resource limits for your AWS account \cr
#'  \link[=elbv2_describe_listener_certificates]{describe_listener_certificates} \tab Describes the certificates for the specified HTTPS listener \cr
#'  \link[=elbv2_describe_listeners]{describe_listeners} \tab Describes the specified listeners or the listeners for the specified Application Load Balancer or Network Load Balancer\cr
#'  \link[=elbv2_describe_load_balancer_attributes]{describe_load_balancer_attributes} \tab Describes the attributes for the specified Application Load Balancer or Network Load Balancer \cr
#'  \link[=elbv2_describe_load_balancers]{describe_load_balancers} \tab Describes the specified load balancers or all of your load balancers \cr
#'  \link[=elbv2_describe_rules]{describe_rules} \tab Describes the specified rules or the rules for the specified listener \cr
#'  \link[=elbv2_describe_ssl_policies]{describe_ssl_policies} \tab Describes the specified policies or all policies used for SSL negotiation \cr
#'  \link[=elbv2_describe_tags]{describe_tags} \tab Describes the tags for the specified resources \cr
#'  \link[=elbv2_describe_target_group_attributes]{describe_target_group_attributes} \tab Describes the attributes for the specified target group \cr
#'  \link[=elbv2_describe_target_groups]{describe_target_groups} \tab Describes the specified target groups or all of your target groups \cr
#'  \link[=elbv2_describe_target_health]{describe_target_health} \tab Describes the health of the specified targets or all of your targets \cr
#'  \link[=elbv2_modify_listener]{modify_listener} \tab Modifies the specified properties of the specified listener \cr
#'  \link[=elbv2_modify_load_balancer_attributes]{modify_load_balancer_attributes} \tab Modifies the specified attributes of the specified Application Load Balancer or Network Load Balancer \cr
#'  \link[=elbv2_modify_rule]{modify_rule} \tab Modifies the specified rule \cr
#'  \link[=elbv2_modify_target_group]{modify_target_group} \tab Modifies the health checks used when evaluating the health state of the targets in the specified target group \cr
#'  \link[=elbv2_modify_target_group_attributes]{modify_target_group_attributes} \tab Modifies the specified attributes of the specified target group \cr
#'  \link[=elbv2_register_targets]{register_targets} \tab Registers the specified targets with the specified target group \cr
#'  \link[=elbv2_remove_listener_certificates]{remove_listener_certificates} \tab Removes the specified certificate from the specified HTTPS listener \cr
#'  \link[=elbv2_remove_tags]{remove_tags} \tab Removes the specified tags from the specified Elastic Load Balancing resource \cr
#'  \link[=elbv2_set_ip_address_type]{set_ip_address_type} \tab Sets the type of IP addresses used by the subnets of the specified Application Load Balancer or Network Load Balancer \cr
#'  \link[=elbv2_set_rule_priorities]{set_rule_priorities} \tab Sets the priorities of the specified rules \cr
#'  \link[=elbv2_set_security_groups]{set_security_groups} \tab Associates the specified security groups with the specified Application Load Balancer \cr
#'  \link[=elbv2_set_subnets]{set_subnets} \tab Enables the Availability Zone for the specified public subnets for the specified Application Load Balancer 
#' }
#'
#' @rdname elbv2
#' @export
elbv2 <- function() {
  paws.networking::elbv2()
}

#' AWS Global Accelerator
#'
#' @description
#' This is the *AWS Global Accelerator API Reference*. This guide is for
#' developers who need detailed information about AWS Global Accelerator
#' API actions, data types, and errors. For more information about Global
#' Accelerator features, see the [AWS Global Accelerator Developer
#' Guide](https://docs.aws.amazon.com/global-accelerator/latest/dg/Welcome.html).
#' 
#' AWS Global Accelerator is a network layer service in which you create
#' accelerators to improve availability and performance for internet
#' applications used by a global audience.
#' 
#' Global Accelerator provides you with static IP addresses that you
#' associate with your accelerator. These IP addresses are anycast from the
#' AWS edge network and distribute incoming application traffic across
#' multiple endpoint resources in multiple AWS Regions, which increases the
#' availability of your applications. Endpoints can be Elastic IP
#' addresses, Network Load Balancers, and Application Load Balancers that
#' are located in one AWS Region or multiple Regions.
#' 
#' Global Accelerator uses the AWS global network to route traffic to the
#' optimal regional endpoint based on health, client location, and policies
#' that you configure. The service reacts instantly to changes in health or
#' configuration to ensure that internet traffic from clients is directed
#' to only healthy endpoints.
#' 
#' Global Accelerator includes components that work together to help you
#' improve performance and availability for your applications:
#' 
#' Static IP address
#' 
#' :   AWS Global Accelerator provides you with a set of static IP
#'     addresses which are anycast from the AWS edge network and serve as
#'     the single fixed entry points for your clients. If you already have
#'     Elastic Load Balancing or Elastic IP address resources set up for
#'     your applications, you can easily add those to Global Accelerator to
#'     allow the resources to be accessed by a Global Accelerator static IP
#'     address.
#' 
#' Accelerator
#' 
#' :   An accelerator directs traffic to optimal endpoints over the AWS
#'     global network to improve availability and performance for your
#'     internet applications that have a global audience. Each accelerator
#'     includes one or more listeners.
#' 
#' Network zone
#' 
#' :   A network zone services the static IP addresses for your accelerator
#'     from a unique IP subnet. Similar to an AWS Availability Zone, a
#'     network zone is an isolated unit with its own set of physical
#'     infrastructure. When you configure an accelerator, Global
#'     Accelerator allocates two IPv4 addresses for it. If one IP address
#'     from a network zone becomes unavailable due to IP address blocking
#'     by certain client networks, or network disruptions, then client
#'     applications can retry on the healthy static IP address from the
#'     other isolated network zone.
#' 
#' Listener
#' 
#' :   A listener processes inbound connections from clients to Global
#'     Accelerator, based on the protocol and port that you configure. Each
#'     listener has one or more endpoint groups associated with it, and
#'     traffic is forwarded to endpoints in one of the groups. You
#'     associate endpoint groups with listeners by specifying the Regions
#'     that you want to distribute traffic to. Traffic is distributed to
#'     optimal endpoints within the endpoint groups associated with a
#'     listener.
#' 
#' Endpoint group
#' 
#' :   Each endpoint group is associated with a specific AWS Region.
#'     Endpoint groups include one or more endpoints in the Region. You can
#'     increase or reduce the percentage of traffic that would be otherwise
#'     directed to an endpoint group by adjusting a setting called a
#'     *traffic dial*. The traffic dial lets you easily do performance
#'     testing or blue/green deployment testing for new releases across
#'     different AWS Regions, for example.
#' 
#' Endpoint
#' 
#' :   An endpoint is an Elastic IP address, Network Load Balancer, or
#'     Application Load Balancer. Traffic is routed to endpoints based on
#'     several factors, including the geo-proximity to the user, the health
#'     of the endpoint, and the configuration options that you choose, such
#'     as endpoint weights. For each endpoint, you can configure weights,
#'     which are numbers that you can use to specify the proportion of
#'     traffic to route to each one. This can be useful, for example, to do
#'     performance testing within a Region.
#'
#' @examples
#' \donttest{svc <- globalaccelerator()
#' svc$create_accelerator(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=globalaccelerator_create_accelerator]{create_accelerator} \tab Create an accelerator \cr
#'  \link[=globalaccelerator_create_endpoint_group]{create_endpoint_group} \tab Create an endpoint group for the specified listener \cr
#'  \link[=globalaccelerator_create_listener]{create_listener} \tab Create a listener to process inbound connections from clients to an accelerator\cr
#'  \link[=globalaccelerator_delete_accelerator]{delete_accelerator} \tab Delete an accelerator \cr
#'  \link[=globalaccelerator_delete_endpoint_group]{delete_endpoint_group} \tab Delete an endpoint group from a listener \cr
#'  \link[=globalaccelerator_delete_listener]{delete_listener} \tab Delete a listener from an accelerator \cr
#'  \link[=globalaccelerator_describe_accelerator]{describe_accelerator} \tab Describe an accelerator \cr
#'  \link[=globalaccelerator_describe_accelerator_attributes]{describe_accelerator_attributes} \tab Describe the attributes of an accelerator \cr
#'  \link[=globalaccelerator_describe_endpoint_group]{describe_endpoint_group} \tab Describe an endpoint group \cr
#'  \link[=globalaccelerator_describe_listener]{describe_listener} \tab Describe a listener \cr
#'  \link[=globalaccelerator_list_accelerators]{list_accelerators} \tab List the accelerators for an AWS account \cr
#'  \link[=globalaccelerator_list_endpoint_groups]{list_endpoint_groups} \tab List the endpoint groups that are associated with a listener \cr
#'  \link[=globalaccelerator_list_listeners]{list_listeners} \tab List the listeners for an accelerator \cr
#'  \link[=globalaccelerator_update_accelerator]{update_accelerator} \tab Update an accelerator \cr
#'  \link[=globalaccelerator_update_accelerator_attributes]{update_accelerator_attributes} \tab Update the attributes for an accelerator \cr
#'  \link[=globalaccelerator_update_endpoint_group]{update_endpoint_group} \tab Update an endpoint group \cr
#'  \link[=globalaccelerator_update_listener]{update_listener} \tab Update a listener 
#' }
#'
#' @rdname globalaccelerator
#' @export
globalaccelerator <- function() {
  paws.networking::globalaccelerator()
}

#' Amazon Route 53
#'
#' @description
#' Amazon Route 53 is a highly available and scalable Domain Name System
#' (DNS) web service.
#'
#' @examples
#' # The following example associates the VPC with ID vpc-1a2b3c4d with the
#' # hosted zone with ID Z3M3LMPEXAMPLE.
#' \donttest{svc <- route53()
#' svc$associate_vpc_with_hosted_zone(
#'   Comment = "",
#'   HostedZoneId = "Z3M3LMPEXAMPLE",
#'   VPC = list(
#'     VPCId = "vpc-1a2b3c4d",
#'     VPCRegion = "us-east-2"
#'   )
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=route53_associate_vpc_with_hosted_zone]{associate_vpc_with_hosted_zone} \tab Associates an Amazon VPC with a private hosted zone \cr
#'  \link[=route53_change_resource_record_sets]{change_resource_record_sets} \tab Creates, changes, or deletes a resource record set, which contains authoritative DNS information for a specified domain name or subdomain name \cr
#'  \link[=route53_change_tags_for_resource]{change_tags_for_resource} \tab Adds, edits, or deletes tags for a health check or a hosted zone \cr
#'  \link[=route53_create_health_check]{create_health_check} \tab Creates a new health check \cr
#'  \link[=route53_create_hosted_zone]{create_hosted_zone} \tab Creates a new public or private hosted zone \cr
#'  \link[=route53_create_query_logging_config]{create_query_logging_config} \tab Creates a configuration for DNS query logging \cr
#'  \link[=route53_create_reusable_delegation_set]{create_reusable_delegation_set} \tab Creates a delegation set (a group of four name servers) that can be reused by multiple hosted zones \cr
#'  \link[=route53_create_traffic_policy]{create_traffic_policy} \tab Creates a traffic policy, which you use to create multiple DNS resource record sets for one domain name (such as example \cr
#'  \link[=route53_create_traffic_policy_instance]{create_traffic_policy_instance} \tab Creates resource record sets in a specified hosted zone based on the settings in a specified traffic policy version \cr
#'  \link[=route53_create_traffic_policy_version]{create_traffic_policy_version} \tab Creates a new version of an existing traffic policy \cr
#'  \link[=route53_create_vpc_association_authorization]{create_vpc_association_authorization} \tab Authorizes the AWS account that created a specified VPC to submit an AssociateVPCWithHostedZone request to associate the VPC with a specified hosted zone that was created by a different account \cr
#'  \link[=route53_delete_health_check]{delete_health_check} \tab Deletes a health check \cr
#'  \link[=route53_delete_hosted_zone]{delete_hosted_zone} \tab Deletes a hosted zone \cr
#'  \link[=route53_delete_query_logging_config]{delete_query_logging_config} \tab Deletes a configuration for DNS query logging \cr
#'  \link[=route53_delete_reusable_delegation_set]{delete_reusable_delegation_set} \tab Deletes a reusable delegation set \cr
#'  \link[=route53_delete_traffic_policy]{delete_traffic_policy} \tab Deletes a traffic policy \cr
#'  \link[=route53_delete_traffic_policy_instance]{delete_traffic_policy_instance} \tab Deletes a traffic policy instance and all of the resource record sets that Amazon Route 53 created when you created the instance \cr
#'  \link[=route53_delete_vpc_association_authorization]{delete_vpc_association_authorization} \tab Removes authorization to submit an AssociateVPCWithHostedZone request to associate a specified VPC with a hosted zone that was created by a different account \cr
#'  \link[=route53_disassociate_vpc_from_hosted_zone]{disassociate_vpc_from_hosted_zone} \tab Disassociates a VPC from a Amazon Route 53 private hosted zone \cr
#'  \link[=route53_get_account_limit]{get_account_limit} \tab Gets the specified limit for the current account, for example, the maximum number of health checks that you can create using the account \cr
#'  \link[=route53_get_change]{get_change} \tab Returns the current status of a change batch request \cr
#'  \link[=route53_get_checker_ip_ranges]{get_checker_ip_ranges} \tab GetCheckerIpRanges still works, but we recommend that you download ip-ranges \cr
#'  \link[=route53_get_geo_location]{get_geo_location} \tab Gets information about whether a specified geographic location is supported for Amazon Route 53 geolocation resource record sets \cr
#'  \link[=route53_get_health_check]{get_health_check} \tab Gets information about a specified health check \cr
#'  \link[=route53_get_health_check_count]{get_health_check_count} \tab Retrieves the number of health checks that are associated with the current AWS account \cr
#'  \link[=route53_get_health_check_last_failure_reason]{get_health_check_last_failure_reason} \tab Gets the reason that a specified health check failed most recently \cr
#'  \link[=route53_get_health_check_status]{get_health_check_status} \tab Gets status of a specified health check \cr
#'  \link[=route53_get_hosted_zone]{get_hosted_zone} \tab Gets information about a specified hosted zone including the four name servers assigned to the hosted zone \cr
#'  \link[=route53_get_hosted_zone_count]{get_hosted_zone_count} \tab Retrieves the number of hosted zones that are associated with the current AWS account \cr
#'  \link[=route53_get_hosted_zone_limit]{get_hosted_zone_limit} \tab Gets the specified limit for a specified hosted zone, for example, the maximum number of records that you can create in the hosted zone \cr
#'  \link[=route53_get_query_logging_config]{get_query_logging_config} \tab Gets information about a specified configuration for DNS query logging \cr
#'  \link[=route53_get_reusable_delegation_set]{get_reusable_delegation_set} \tab Retrieves information about a specified reusable delegation set, including the four name servers that are assigned to the delegation set \cr
#'  \link[=route53_get_reusable_delegation_set_limit]{get_reusable_delegation_set_limit} \tab Gets the maximum number of hosted zones that you can associate with the specified reusable delegation set \cr
#'  \link[=route53_get_traffic_policy]{get_traffic_policy} \tab Gets information about a specific traffic policy version \cr
#'  \link[=route53_get_traffic_policy_instance]{get_traffic_policy_instance} \tab Gets information about a specified traffic policy instance \cr
#'  \link[=route53_get_traffic_policy_instance_count]{get_traffic_policy_instance_count} \tab Gets the number of traffic policy instances that are associated with the current AWS account \cr
#'  \link[=route53_list_geo_locations]{list_geo_locations} \tab Retrieves a list of supported geographic locations \cr
#'  \link[=route53_list_health_checks]{list_health_checks} \tab Retrieve a list of the health checks that are associated with the current AWS account \cr
#'  \link[=route53_list_hosted_zones]{list_hosted_zones} \tab Retrieves a list of the public and private hosted zones that are associated with the current AWS account \cr
#'  \link[=route53_list_hosted_zones_by_name]{list_hosted_zones_by_name} \tab Retrieves a list of your hosted zones in lexicographic order \cr
#'  \link[=route53_list_query_logging_configs]{list_query_logging_configs} \tab Lists the configurations for DNS query logging that are associated with the current AWS account or the configuration that is associated with a specified hosted zone \cr
#'  \link[=route53_list_resource_record_sets]{list_resource_record_sets} \tab Lists the resource record sets in a specified hosted zone \cr
#'  \link[=route53_list_reusable_delegation_sets]{list_reusable_delegation_sets} \tab Retrieves a list of the reusable delegation sets that are associated with the current AWS account \cr
#'  \link[=route53_list_tags_for_resource]{list_tags_for_resource} \tab Lists tags for one health check or hosted zone \cr
#'  \link[=route53_list_tags_for_resources]{list_tags_for_resources} \tab Lists tags for up to 10 health checks or hosted zones \cr
#'  \link[=route53_list_traffic_policies]{list_traffic_policies} \tab Gets information about the latest version for every traffic policy that is associated with the current AWS account \cr
#'  \link[=route53_list_traffic_policy_instances]{list_traffic_policy_instances} \tab Gets information about the traffic policy instances that you created by using the current AWS account \cr
#'  \link[=route53_list_traffic_policy_instances_by_hosted_zone]{list_traffic_policy_instances_by_hosted_zone} \tab Gets information about the traffic policy instances that you created in a specified hosted zone \cr
#'  \link[=route53_list_traffic_policy_instances_by_policy]{list_traffic_policy_instances_by_policy} \tab Gets information about the traffic policy instances that you created by using a specify traffic policy version \cr
#'  \link[=route53_list_traffic_policy_versions]{list_traffic_policy_versions} \tab Gets information about all of the versions for a specified traffic policy \cr
#'  \link[=route53_list_vpc_association_authorizations]{list_vpc_association_authorizations} \tab Gets a list of the VPCs that were created by other accounts and that can be associated with a specified hosted zone because you've submitted one or more CreateVPCAssociationAuthorization requests\cr
#'  \link[=route53_test_dns_answer]{test_dns_answer} \tab Gets the value that Amazon Route 53 returns in response to a DNS request for a specified record name and type \cr
#'  \link[=route53_update_health_check]{update_health_check} \tab Updates an existing health check \cr
#'  \link[=route53_update_hosted_zone_comment]{update_hosted_zone_comment} \tab Updates the comment for a specified hosted zone \cr
#'  \link[=route53_update_traffic_policy_comment]{update_traffic_policy_comment} \tab Updates the comment for a specified traffic policy version \cr
#'  \link[=route53_update_traffic_policy_instance]{update_traffic_policy_instance} \tab Updates the resource record sets in a specified hosted zone that were created based on the settings in a specified traffic policy version 
#' }
#'
#' @rdname route53
#' @export
route53 <- function() {
  paws.networking::route53()
}

#' Amazon Route 53 Domains
#'
#' @description
#' Amazon Route 53 API actions let you register domain names and perform
#' related operations.
#'
#' @examples
#' \donttest{svc <- route53domains()
#' svc$check_domain_availability(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=route53domains_check_domain_availability]{check_domain_availability} \tab This operation checks the availability of one domain name \cr
#'  \link[=route53domains_check_domain_transferability]{check_domain_transferability} \tab Checks whether a domain name can be transferred to Amazon Route 53 \cr
#'  \link[=route53domains_delete_tags_for_domain]{delete_tags_for_domain} \tab This operation deletes the specified tags for a domain \cr
#'  \link[=route53domains_disable_domain_auto_renew]{disable_domain_auto_renew} \tab This operation disables automatic renewal of domain registration for the specified domain \cr
#'  \link[=route53domains_disable_domain_transfer_lock]{disable_domain_transfer_lock} \tab This operation removes the transfer lock on the domain (specifically the clientTransferProhibited status) to allow domain transfers \cr
#'  \link[=route53domains_enable_domain_auto_renew]{enable_domain_auto_renew} \tab This operation configures Amazon Route 53 to automatically renew the specified domain before the domain registration expires \cr
#'  \link[=route53domains_enable_domain_transfer_lock]{enable_domain_transfer_lock} \tab This operation sets the transfer lock on the domain (specifically the clientTransferProhibited status) to prevent domain transfers \cr
#'  \link[=route53domains_get_contact_reachability_status]{get_contact_reachability_status} \tab For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation returns information about whether the registrant contact has responded \cr
#'  \link[=route53domains_get_domain_detail]{get_domain_detail} \tab This operation returns detailed information about a specified domain that is associated with the current AWS account \cr
#'  \link[=route53domains_get_domain_suggestions]{get_domain_suggestions} \tab The GetDomainSuggestions operation returns a list of suggested domain names given a string, which can either be a domain name or simply a word or phrase (without spaces) \cr
#'  \link[=route53domains_get_operation_detail]{get_operation_detail} \tab This operation returns the current status of an operation that is not completed \cr
#'  \link[=route53domains_list_domains]{list_domains} \tab This operation returns all the domain names registered with Amazon Route 53 for the current AWS account \cr
#'  \link[=route53domains_list_operations]{list_operations} \tab This operation returns the operation IDs of operations that are not yet complete \cr
#'  \link[=route53domains_list_tags_for_domain]{list_tags_for_domain} \tab This operation returns all of the tags that are associated with the specified domain \cr
#'  \link[=route53domains_register_domain]{register_domain} \tab This operation registers a domain \cr
#'  \link[=route53domains_renew_domain]{renew_domain} \tab This operation renews a domain for the specified number of years \cr
#'  \link[=route53domains_resend_contact_reachability_email]{resend_contact_reachability_email} \tab For operations that require confirmation that the email address for the registrant contact is valid, such as registering a new domain, this operation resends the confirmation email to the current email address for the registrant contact\cr
#'  \link[=route53domains_retrieve_domain_auth_code]{retrieve_domain_auth_code} \tab This operation returns the AuthCode for the domain \cr
#'  \link[=route53domains_transfer_domain]{transfer_domain} \tab This operation transfers a domain from another registrar to Amazon Route 53 \cr
#'  \link[=route53domains_update_domain_contact]{update_domain_contact} \tab This operation updates the contact information for a particular domain \cr
#'  \link[=route53domains_update_domain_contact_privacy]{update_domain_contact_privacy} \tab This operation updates the specified domain contact's privacy setting \cr
#'  \link[=route53domains_update_domain_nameservers]{update_domain_nameservers} \tab This operation replaces the current set of name servers for the domain with the specified set of name servers \cr
#'  \link[=route53domains_update_tags_for_domain]{update_tags_for_domain} \tab This operation adds or updates tags for a specified domain \cr
#'  \link[=route53domains_view_billing]{view_billing} \tab Returns all the domain-related billing records for the current AWS account for a specified period 
#' }
#'
#' @rdname route53domains
#' @export
route53domains <- function() {
  paws.networking::route53domains()
}

#' Amazon Route 53 Resolver
#'
#' @description
#' Here\'s how you set up to query an Amazon Route 53 private hosted zone
#' from your network:
#' 
#' 1.  Connect your network to a VPC using AWS Direct Connect or a VPN.
#' 
#' 2.  Run the following AWS CLI command to create a Resolver endpoint:
#' 
#'     `create-resolver-endpoint --name \\[endpoint_name\\] --direction INBOUND --creator-request-id \\[unique_string\\] --security-group-ids \\[security_group_with_inbound_rules\\] --ip-addresses SubnetId=\\[subnet_id\\] SubnetId=\\[subnet_id_in_different_AZ\\]`
#' 
#'     Note the resolver endpoint ID that appears in the response. You\'ll
#'     use it in step 3.
#' 
#' 3.  Get the IP addresses for the Resolver endpoints:
#' 
#'     `get-resolver-endpoint --resolver-endpoint-id \\[resolver_endpoint_id\\]`
#' 
#' 4.  In your network configuration, define the IP addresses that you got
#'     in step 3 as DNS servers.
#' 
#'     You can now query instance names in your VPCs and the names of
#'     records in your private hosted zone.
#' 
#' You can also perform the following operations using the AWS CLI:
#' 
#' -   `list-resolver-endpoints`: List all endpoints. The syntax includes
#'     options for pagination and filtering.
#' 
#' -   `update-resolver-endpoints`: Add IP addresses to an endpoint or
#'     remove IP addresses from an endpoint.
#' 
#' To delete an endpoint, use the following AWS CLI command:
#' 
#' `delete-resolver-endpoint --resolver-endpoint-id \\[resolver_endpoint_id\\]`
#'
#' @examples
#' \donttest{svc <- route53resolver()
#' svc$associate_resolver_endpoint_ip_address(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=route53resolver_associate_resolver_endpoint_ip_address]{associate_resolver_endpoint_ip_address} \tab Adds IP addresses to an inbound or an outbound resolver endpoint \cr
#'  \link[=route53resolver_associate_resolver_rule]{associate_resolver_rule} \tab Associates a resolver rule with a VPC \cr
#'  \link[=route53resolver_create_resolver_endpoint]{create_resolver_endpoint} \tab Creates a resolver endpoint \cr
#'  \link[=route53resolver_create_resolver_rule]{create_resolver_rule} \tab For DNS queries that originate in your VPCs, specifies which resolver endpoint the queries pass through, one domain name that you want to forward to your network, and the IP addresses of the DNS resolvers in your network\cr
#'  \link[=route53resolver_delete_resolver_endpoint]{delete_resolver_endpoint} \tab Deletes a resolver endpoint \cr
#'  \link[=route53resolver_delete_resolver_rule]{delete_resolver_rule} \tab Deletes a resolver rule \cr
#'  \link[=route53resolver_disassociate_resolver_endpoint_ip_address]{disassociate_resolver_endpoint_ip_address} \tab Removes IP addresses from an inbound or an outbound resolver endpoint \cr
#'  \link[=route53resolver_disassociate_resolver_rule]{disassociate_resolver_rule} \tab Removes the association between a specified resolver rule and a specified VPC \cr
#'  \link[=route53resolver_get_resolver_endpoint]{get_resolver_endpoint} \tab Gets information about a specified resolver endpoint, such as whether it's an inbound or an outbound resolver endpoint, and the current status of the endpoint \cr
#'  \link[=route53resolver_get_resolver_rule]{get_resolver_rule} \tab Gets information about a specified resolver rule, such as the domain name that the rule forwards DNS queries for and the ID of the outbound resolver endpoint that the rule is associated with \cr
#'  \link[=route53resolver_get_resolver_rule_association]{get_resolver_rule_association} \tab Gets information about an association between a specified resolver rule and a VPC \cr
#'  \link[=route53resolver_get_resolver_rule_policy]{get_resolver_rule_policy} \tab Gets information about a resolver rule policy \cr
#'  \link[=route53resolver_list_resolver_endpoint_ip_addresses]{list_resolver_endpoint_ip_addresses} \tab Gets the IP addresses for a specified resolver endpoint \cr
#'  \link[=route53resolver_list_resolver_endpoints]{list_resolver_endpoints} \tab Lists all the resolver endpoints that were created using the current AWS account \cr
#'  \link[=route53resolver_list_resolver_rule_associations]{list_resolver_rule_associations} \tab Lists the associations that were created between resolver rules and VPCs using the current AWS account \cr
#'  \link[=route53resolver_list_resolver_rules]{list_resolver_rules} \tab Lists the resolver rules that were created using the current AWS account \cr
#'  \link[=route53resolver_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags that you associated with the specified resource \cr
#'  \link[=route53resolver_put_resolver_rule_policy]{put_resolver_rule_policy} \tab Specifies the Resolver operations and resources that you want to allow another AWS account to be able to use \cr
#'  \link[=route53resolver_tag_resource]{tag_resource} \tab Adds one or more tags to a specified resource \cr
#'  \link[=route53resolver_untag_resource]{untag_resource} \tab Removes one or more tags from a specified resource \cr
#'  \link[=route53resolver_update_resolver_endpoint]{update_resolver_endpoint} \tab Updates the name of an inbound or an outbound resolver endpoint \cr
#'  \link[=route53resolver_update_resolver_rule]{update_resolver_rule} \tab Updates settings for a specified resolver rule 
#' }
#'
#' @rdname route53resolver
#' @export
route53resolver <- function() {
  paws.networking::route53resolver()
}

#' AWS Cloud Map
#'
#' @description
#' AWS Cloud Map lets you configure public DNS, private DNS, or HTTP
#' namespaces that your microservice applications run in. When an instance
#' of the service becomes available, you can call the AWS Cloud Map API to
#' register the instance with AWS Cloud Map. For public or private DNS
#' namespaces, AWS Cloud Map automatically creates DNS records and an
#' optional health check. Clients that submit public or private DNS
#' queries, or HTTP requests, for the service receive an answer that
#' contains up to eight healthy records.
#'
#' @examples
#' \donttest{svc <- servicediscovery()
#' svc$create_http_namespace(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=servicediscovery_create_http_namespace]{create_http_namespace} \tab Creates an HTTP namespace \cr
#'  \link[=servicediscovery_create_private_dns_namespace]{create_private_dns_namespace} \tab Creates a private namespace based on DNS, which will be visible only inside a specified Amazon VPC \cr
#'  \link[=servicediscovery_create_public_dns_namespace]{create_public_dns_namespace} \tab Creates a public namespace based on DNS, which will be visible on the internet \cr
#'  \link[=servicediscovery_create_service]{create_service} \tab Creates a service, which defines the configuration for the following entities: - For public and private DNS namespaces, one of the following combinations of DNS records in Amazon Route 53: - A - AAAA - A and AAAA - SRV - CNAME - Optionally, a health check After you create the service, you can submit a RegisterInstance request, and AWS Cloud Map uses the values in the configuration to create the specified entities\cr
#'  \link[=servicediscovery_delete_namespace]{delete_namespace} \tab Deletes a namespace from the current account \cr
#'  \link[=servicediscovery_delete_service]{delete_service} \tab Deletes a specified service \cr
#'  \link[=servicediscovery_deregister_instance]{deregister_instance} \tab Deletes the Amazon Route 53 DNS records and health check, if any, that AWS Cloud Map created for the specified instance \cr
#'  \link[=servicediscovery_discover_instances]{discover_instances} \tab Discovers registered instances for a specified namespace and service \cr
#'  \link[=servicediscovery_get_instance]{get_instance} \tab Gets information about a specified instance \cr
#'  \link[=servicediscovery_get_instances_health_status]{get_instances_health_status} \tab Gets the current health status (Healthy, Unhealthy, or Unknown) of one or more instances that are associated with a specified service \cr
#'  \link[=servicediscovery_get_namespace]{get_namespace} \tab Gets information about a namespace \cr
#'  \link[=servicediscovery_get_operation]{get_operation} \tab Gets information about any operation that returns an operation ID in the response, such as a CreateService request \cr
#'  \link[=servicediscovery_get_service]{get_service} \tab Gets the settings for a specified service \cr
#'  \link[=servicediscovery_list_instances]{list_instances} \tab Lists summary information about the instances that you registered by using a specified service \cr
#'  \link[=servicediscovery_list_namespaces]{list_namespaces} \tab Lists summary information about the namespaces that were created by the current AWS account \cr
#'  \link[=servicediscovery_list_operations]{list_operations} \tab Lists operations that match the criteria that you specify \cr
#'  \link[=servicediscovery_list_services]{list_services} \tab Lists summary information for all the services that are associated with one or more specified namespaces \cr
#'  \link[=servicediscovery_register_instance]{register_instance} \tab Creates or updates one or more records and, optionally, creates a health check based on the settings in a specified service \cr
#'  \link[=servicediscovery_update_instance_custom_health_status]{update_instance_custom_health_status} \tab Submits a request to change the health status of a custom health check to healthy or unhealthy \cr
#'  \link[=servicediscovery_update_service]{update_service} \tab Submits a request to perform the following operations: - Add or delete DnsRecords configurations - Update the TTL setting for existing DnsRecords configurations - Add, update, or delete HealthCheckConfig for a specified service For public and private DNS namespaces, you must specify all DnsRecords configurations (and, optionally, HealthCheckConfig) that you want to appear in the updated service 
#' }
#'
#' @rdname servicediscovery
#' @export
servicediscovery <- function() {
  paws.networking::servicediscovery()
}

#' Application Auto Scaling
#'
#' @description
#' With Application Auto Scaling, you can configure automatic scaling for
#' your scalable resources. You can use Application Auto Scaling to
#' accomplish the following tasks:
#' 
#' -   Define scaling policies to automatically scale your AWS or custom
#'     resources
#' 
#' -   Scale your resources in response to CloudWatch alarms
#' 
#' -   Schedule one-time or recurring scaling actions
#' 
#' -   View the history of your scaling events
#' 
#' Application Auto Scaling can scale the following resources:
#' 
#' -   Amazon ECS services. For more information, see [Service Auto
#'     Scaling](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-auto-scaling.html)
#'     in the *Amazon Elastic Container Service Developer Guide*.
#' 
#' -   Amazon EC2 Spot fleets. For more information, see [Automatic Scaling
#'     for Spot
#'     Fleet](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/fleet-auto-scaling.html)
#'     in the *Amazon EC2 User Guide*.
#' 
#' -   Amazon EMR clusters. For more information, see [Using Automatic
#'     Scaling in Amazon
#'     EMR](https://docs.aws.amazon.com/ElasticMapReduce/latest/ManagementGuide/emr-automatic-scaling.html)
#'     in the *Amazon EMR Management Guide*.
#' 
#' -   AppStream 2.0 fleets. For more information, see [Fleet Auto Scaling
#'     for Amazon AppStream
#'     2.0](https://docs.aws.amazon.com/appstream2/latest/developerguide/autoscaling.html)
#'     in the *Amazon AppStream 2.0 Developer Guide*.
#' 
#' -   Provisioned read and write capacity for Amazon DynamoDB tables and
#'     global secondary indexes. For more information, see [Managing
#'     Throughput Capacity Automatically with DynamoDB Auto
#'     Scaling](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/AutoScaling.html)
#'     in the *Amazon DynamoDB Developer Guide*.
#' 
#' -   Amazon Aurora Replicas. For more information, see [Using Amazon
#'     Aurora Auto Scaling with Aurora
#'     Replicas](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Integrating.AutoScaling.html).
#' 
#' -   Amazon SageMaker endpoint variants. For more information, see
#'     [Automatically Scaling Amazon SageMaker
#'     Models](https://docs.aws.amazon.com/sagemaker/latest/dg/endpoint-auto-scaling.html).
#' 
#' -   Custom resources provided by your own applications or services. More
#'     information is available in our [GitHub
#'     repository](https://github.com/aws/aws-auto-scaling-custom-resource).
#' 
#' To learn more about Application Auto Scaling, including information
#' about granting IAM users required permissions for Application Auto
#' Scaling actions, see the [Application Auto Scaling User
#' Guide](https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html).
#'
#' @examples
#' # This example deletes a scaling policy for the Amazon ECS service called
#' # web-app, which is running in the default cluster.
#' \donttest{svc <- applicationautoscaling()
#' svc$delete_scaling_policy(
#'   PolicyName = "web-app-cpu-lt-25",
#'   ResourceId = "service/default/web-app",
#'   ScalableDimension = "ecs:service:DesiredCount",
#'   ServiceNamespace = "ecs"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=applicationautoscaling_delete_scaling_policy]{delete_scaling_policy} \tab Deletes the specified Application Auto Scaling scaling policy \cr
#'  \link[=applicationautoscaling_delete_scheduled_action]{delete_scheduled_action} \tab Deletes the specified Application Auto Scaling scheduled action \cr
#'  \link[=applicationautoscaling_deregister_scalable_target]{deregister_scalable_target} \tab Deregisters a scalable target \cr
#'  \link[=applicationautoscaling_describe_scalable_targets]{describe_scalable_targets} \tab Gets information about the scalable targets in the specified namespace \cr
#'  \link[=applicationautoscaling_describe_scaling_activities]{describe_scaling_activities} \tab Provides descriptive information about the scaling activities in the specified namespace from the previous six weeks\cr
#'  \link[=applicationautoscaling_describe_scaling_policies]{describe_scaling_policies} \tab Describes the scaling policies for the specified service namespace \cr
#'  \link[=applicationautoscaling_describe_scheduled_actions]{describe_scheduled_actions} \tab Describes the scheduled actions for the specified service namespace \cr
#'  \link[=applicationautoscaling_put_scaling_policy]{put_scaling_policy} \tab Creates or updates a policy for an Application Auto Scaling scalable target \cr
#'  \link[=applicationautoscaling_put_scheduled_action]{put_scheduled_action} \tab Creates or updates a scheduled action for an Application Auto Scaling scalable target \cr
#'  \link[=applicationautoscaling_register_scalable_target]{register_scalable_target} \tab Registers or updates a scalable target 
#' }
#'
#' @rdname applicationautoscaling
#' @export
applicationautoscaling <- function() {
  paws.management::applicationautoscaling()
}

#' Auto Scaling
#'
#' @description
#' Amazon EC2 Auto Scaling
#' 
#' Amazon EC2 Auto Scaling is designed to automatically launch or terminate
#' EC2 instances based on user-defined policies, schedules, and health
#' checks. Use this service with AWS Auto Scaling, Amazon CloudWatch, and
#' Elastic Load Balancing.
#' 
#' For more information, including information about granting IAM users
#' required permissions for Amazon EC2 Auto Scaling actions, see the
#' [Amazon EC2 Auto Scaling User
#' Guide](https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html).
#'
#' @examples
#' # This example attaches the specified instance to the specified Auto
#' # Scaling group.
#' \donttest{svc <- autoscaling()
#' svc$attach_instances(
#'   AutoScalingGroupName = "my-auto-scaling-group",
#'   InstanceIds = list(
#'     "i-93633f9b"
#'   )
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=autoscaling_attach_instances]{attach_instances} \tab Attaches one or more EC2 instances to the specified Auto Scaling group \cr
#'  \link[=autoscaling_attach_load_balancer_target_groups]{attach_load_balancer_target_groups} \tab Attaches one or more target groups to the specified Auto Scaling group \cr
#'  \link[=autoscaling_attach_load_balancers]{attach_load_balancers} \tab Attaches one or more Classic Load Balancers to the specified Auto Scaling group \cr
#'  \link[=autoscaling_batch_delete_scheduled_action]{batch_delete_scheduled_action} \tab Deletes one or more scheduled actions for the specified Auto Scaling group \cr
#'  \link[=autoscaling_batch_put_scheduled_update_group_action]{batch_put_scheduled_update_group_action} \tab Creates or updates one or more scheduled scaling actions for an Auto Scaling group \cr
#'  \link[=autoscaling_complete_lifecycle_action]{complete_lifecycle_action} \tab Completes the lifecycle action for the specified token or instance with the specified result \cr
#'  \link[=autoscaling_create_auto_scaling_group]{create_auto_scaling_group} \tab Creates an Auto Scaling group with the specified name and attributes \cr
#'  \link[=autoscaling_create_launch_configuration]{create_launch_configuration} \tab Creates a launch configuration \cr
#'  \link[=autoscaling_create_or_update_tags]{create_or_update_tags} \tab Creates or updates tags for the specified Auto Scaling group \cr
#'  \link[=autoscaling_delete_auto_scaling_group]{delete_auto_scaling_group} \tab Deletes the specified Auto Scaling group \cr
#'  \link[=autoscaling_delete_launch_configuration]{delete_launch_configuration} \tab Deletes the specified launch configuration \cr
#'  \link[=autoscaling_delete_lifecycle_hook]{delete_lifecycle_hook} \tab Deletes the specified lifecycle hook \cr
#'  \link[=autoscaling_delete_notification_configuration]{delete_notification_configuration} \tab Deletes the specified notification \cr
#'  \link[=autoscaling_delete_policy]{delete_policy} \tab Deletes the specified scaling policy \cr
#'  \link[=autoscaling_delete_scheduled_action]{delete_scheduled_action} \tab Deletes the specified scheduled action \cr
#'  \link[=autoscaling_delete_tags]{delete_tags} \tab Deletes the specified tags \cr
#'  \link[=autoscaling_describe_account_limits]{describe_account_limits} \tab Describes the current Amazon EC2 Auto Scaling resource limits for your AWS account \cr
#'  \link[=autoscaling_describe_adjustment_types]{describe_adjustment_types} \tab Describes the policy adjustment types for use with PutScalingPolicy \cr
#'  \link[=autoscaling_describe_auto_scaling_groups]{describe_auto_scaling_groups} \tab Describes one or more Auto Scaling groups \cr
#'  \link[=autoscaling_describe_auto_scaling_instances]{describe_auto_scaling_instances} \tab Describes one or more Auto Scaling instances \cr
#'  \link[=autoscaling_describe_auto_scaling_notification_types]{describe_auto_scaling_notification_types} \tab Describes the notification types that are supported by Amazon EC2 Auto Scaling \cr
#'  \link[=autoscaling_describe_launch_configurations]{describe_launch_configurations} \tab Describes one or more launch configurations \cr
#'  \link[=autoscaling_describe_lifecycle_hook_types]{describe_lifecycle_hook_types} \tab Describes the available types of lifecycle hooks \cr
#'  \link[=autoscaling_describe_lifecycle_hooks]{describe_lifecycle_hooks} \tab Describes the lifecycle hooks for the specified Auto Scaling group \cr
#'  \link[=autoscaling_describe_load_balancer_target_groups]{describe_load_balancer_target_groups} \tab Describes the target groups for the specified Auto Scaling group \cr
#'  \link[=autoscaling_describe_load_balancers]{describe_load_balancers} \tab Describes the load balancers for the specified Auto Scaling group \cr
#'  \link[=autoscaling_describe_metric_collection_types]{describe_metric_collection_types} \tab Describes the available CloudWatch metrics for Amazon EC2 Auto Scaling \cr
#'  \link[=autoscaling_describe_notification_configurations]{describe_notification_configurations} \tab Describes the notification actions associated with the specified Auto Scaling group \cr
#'  \link[=autoscaling_describe_policies]{describe_policies} \tab Describes the policies for the specified Auto Scaling group \cr
#'  \link[=autoscaling_describe_scaling_activities]{describe_scaling_activities} \tab Describes one or more scaling activities for the specified Auto Scaling group \cr
#'  \link[=autoscaling_describe_scaling_process_types]{describe_scaling_process_types} \tab Describes the scaling process types for use with ResumeProcesses and SuspendProcesses \cr
#'  \link[=autoscaling_describe_scheduled_actions]{describe_scheduled_actions} \tab Describes the actions scheduled for your Auto Scaling group that haven't run \cr
#'  \link[=autoscaling_describe_tags]{describe_tags} \tab Describes the specified tags \cr
#'  \link[=autoscaling_describe_termination_policy_types]{describe_termination_policy_types} \tab Describes the termination policies supported by Amazon EC2 Auto Scaling \cr
#'  \link[=autoscaling_detach_instances]{detach_instances} \tab Removes one or more instances from the specified Auto Scaling group \cr
#'  \link[=autoscaling_detach_load_balancer_target_groups]{detach_load_balancer_target_groups} \tab Detaches one or more target groups from the specified Auto Scaling group \cr
#'  \link[=autoscaling_detach_load_balancers]{detach_load_balancers} \tab Detaches one or more Classic Load Balancers from the specified Auto Scaling group \cr
#'  \link[=autoscaling_disable_metrics_collection]{disable_metrics_collection} \tab Disables group metrics for the specified Auto Scaling group \cr
#'  \link[=autoscaling_enable_metrics_collection]{enable_metrics_collection} \tab Enables group metrics for the specified Auto Scaling group \cr
#'  \link[=autoscaling_enter_standby]{enter_standby} \tab Moves the specified instances into the standby state \cr
#'  \link[=autoscaling_execute_policy]{execute_policy} \tab Executes the specified policy \cr
#'  \link[=autoscaling_exit_standby]{exit_standby} \tab Moves the specified instances out of the standby state \cr
#'  \link[=autoscaling_put_lifecycle_hook]{put_lifecycle_hook} \tab Creates or updates a lifecycle hook for the specified Auto Scaling group \cr
#'  \link[=autoscaling_put_notification_configuration]{put_notification_configuration} \tab Configures an Auto Scaling group to send notifications when specified events take place \cr
#'  \link[=autoscaling_put_scaling_policy]{put_scaling_policy} \tab Creates or updates a policy for an Auto Scaling group \cr
#'  \link[=autoscaling_put_scheduled_update_group_action]{put_scheduled_update_group_action} \tab Creates or updates a scheduled scaling action for an Auto Scaling group \cr
#'  \link[=autoscaling_record_lifecycle_action_heartbeat]{record_lifecycle_action_heartbeat} \tab Records a heartbeat for the lifecycle action associated with the specified token or instance \cr
#'  \link[=autoscaling_resume_processes]{resume_processes} \tab Resumes the specified suspended automatic scaling processes, or all suspended process, for the specified Auto Scaling group\cr
#'  \link[=autoscaling_set_desired_capacity]{set_desired_capacity} \tab Sets the size of the specified Auto Scaling group \cr
#'  \link[=autoscaling_set_instance_health]{set_instance_health} \tab Sets the health status of the specified instance \cr
#'  \link[=autoscaling_set_instance_protection]{set_instance_protection} \tab Updates the instance protection settings of the specified instances \cr
#'  \link[=autoscaling_suspend_processes]{suspend_processes} \tab Suspends the specified automatic scaling processes, or all processes, for the specified Auto Scaling group \cr
#'  \link[=autoscaling_terminate_instance_in_auto_scaling_group]{terminate_instance_in_auto_scaling_group} \tab Terminates the specified instance and optionally adjusts the desired group size \cr
#'  \link[=autoscaling_update_auto_scaling_group]{update_auto_scaling_group} \tab Updates the configuration for the specified Auto Scaling group 
#' }
#'
#' @rdname autoscaling
#' @export
autoscaling <- function() {
  paws.management::autoscaling()
}

#' AWS Auto Scaling Plans
#'
#' @description
#' AWS Auto Scaling
#' 
#' Use AWS Auto Scaling to quickly discover all the scalable AWS resources
#' for your application and configure dynamic scaling and predictive
#' scaling for your resources using scaling plans. Use this service in
#' conjunction with the Amazon EC2 Auto Scaling, Application Auto Scaling,
#' Amazon CloudWatch, and AWS CloudFormation services.
#' 
#' Currently, predictive scaling is only available for Amazon EC2 Auto
#' Scaling groups.
#' 
#' For more information about AWS Auto Scaling, including information about
#' granting IAM users required permissions for AWS Auto Scaling actions,
#' see the [AWS Auto Scaling User
#' Guide](https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-aws-auto-scaling.html).
#'
#' @examples
#' \donttest{svc <- autoscalingplans()
#' svc$create_scaling_plan(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=autoscalingplans_create_scaling_plan]{create_scaling_plan} \tab Creates a scaling plan \cr
#'  \link[=autoscalingplans_delete_scaling_plan]{delete_scaling_plan} \tab Deletes the specified scaling plan \cr
#'  \link[=autoscalingplans_describe_scaling_plan_resources]{describe_scaling_plan_resources} \tab Describes the scalable resources in the specified scaling plan\cr
#'  \link[=autoscalingplans_describe_scaling_plans]{describe_scaling_plans} \tab Describes one or more of your scaling plans \cr
#'  \link[=autoscalingplans_get_scaling_plan_resource_forecast_data]{get_scaling_plan_resource_forecast_data} \tab Retrieves the forecast data for a scalable resource \cr
#'  \link[=autoscalingplans_update_scaling_plan]{update_scaling_plan} \tab Updates the specified scaling plan 
#' }
#'
#' @rdname autoscalingplans
#' @export
autoscalingplans <- function() {
  paws.management::autoscalingplans()
}

#' AWS CloudFormation
#'
#' @description
#' AWS CloudFormation allows you to create and manage AWS infrastructure
#' deployments predictably and repeatedly. You can use AWS CloudFormation
#' to leverage AWS products, such as Amazon Elastic Compute Cloud, Amazon
#' Elastic Block Store, Amazon Simple Notification Service, Elastic Load
#' Balancing, and Auto Scaling to build highly-reliable, highly scalable,
#' cost-effective applications without creating or configuring the
#' underlying AWS infrastructure.
#' 
#' With AWS CloudFormation, you declare all of your resources and
#' dependencies in a template file. The template defines a collection of
#' resources as a single unit called a stack. AWS CloudFormation creates
#' and deletes all member resources of the stack together and manages all
#' dependencies between the resources for you.
#' 
#' For more information about AWS CloudFormation, see the [AWS
#' CloudFormation Product Page](http://aws.amazon.com/cloudformation/).
#' 
#' Amazon CloudFormation makes use of other AWS products. If you need
#' additional technical information about a specific AWS product, you can
#' find the product\'s technical documentation at
#' [docs.aws.amazon.com](https://docs.aws.amazon.com/).
#'
#' @examples
#' \donttest{svc <- cloudformation()
#' svc$cancel_update_stack(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=cloudformation_cancel_update_stack]{cancel_update_stack} \tab Cancels an update on the specified stack \cr
#'  \link[=cloudformation_continue_update_rollback]{continue_update_rollback} \tab For a specified stack that is in the UPDATE_ROLLBACK_FAILED state, continues rolling it back to the UPDATE_ROLLBACK_COMPLETE state \cr
#'  \link[=cloudformation_create_change_set]{create_change_set} \tab Creates a list of changes that will be applied to a stack so that you can review the changes before executing them \cr
#'  \link[=cloudformation_create_stack]{create_stack} \tab Creates a stack as specified in the template \cr
#'  \link[=cloudformation_create_stack_instances]{create_stack_instances} \tab Creates stack instances for the specified accounts, within the specified regions \cr
#'  \link[=cloudformation_create_stack_set]{create_stack_set} \tab Creates a stack set \cr
#'  \link[=cloudformation_delete_change_set]{delete_change_set} \tab Deletes the specified change set \cr
#'  \link[=cloudformation_delete_stack]{delete_stack} \tab Deletes a specified stack \cr
#'  \link[=cloudformation_delete_stack_instances]{delete_stack_instances} \tab Deletes stack instances for the specified accounts, in the specified regions \cr
#'  \link[=cloudformation_delete_stack_set]{delete_stack_set} \tab Deletes a stack set \cr
#'  \link[=cloudformation_describe_account_limits]{describe_account_limits} \tab Retrieves your account's AWS CloudFormation limits, such as the maximum number of stacks that you can create in your account \cr
#'  \link[=cloudformation_describe_change_set]{describe_change_set} \tab Returns the inputs for the change set and a list of changes that AWS CloudFormation will make if you execute the change set \cr
#'  \link[=cloudformation_describe_stack_drift_detection_status]{describe_stack_drift_detection_status} \tab Returns information about a stack drift detection operation \cr
#'  \link[=cloudformation_describe_stack_events]{describe_stack_events} \tab Returns all stack related events for a specified stack in reverse chronological order \cr
#'  \link[=cloudformation_describe_stack_instance]{describe_stack_instance} \tab Returns the stack instance that's associated with the specified stack set, AWS account, and region \cr
#'  \link[=cloudformation_describe_stack_resource]{describe_stack_resource} \tab Returns a description of the specified resource in the specified stack \cr
#'  \link[=cloudformation_describe_stack_resource_drifts]{describe_stack_resource_drifts} \tab Returns drift information for the resources that have been checked for drift in the specified stack \cr
#'  \link[=cloudformation_describe_stack_resources]{describe_stack_resources} \tab Returns AWS resource descriptions for running and deleted stacks \cr
#'  \link[=cloudformation_describe_stack_set]{describe_stack_set} \tab Returns the description of the specified stack set \cr
#'  \link[=cloudformation_describe_stack_set_operation]{describe_stack_set_operation} \tab Returns the description of the specified stack set operation \cr
#'  \link[=cloudformation_describe_stacks]{describe_stacks} \tab Returns the description for the specified stack; if no stack name was specified, then it returns the description for all the stacks created \cr
#'  \link[=cloudformation_detect_stack_drift]{detect_stack_drift} \tab Detects whether a stack's actual configuration differs, or has _drifted_, from it's expected configuration, as defined in the stack template and any values specified as template parameters \cr
#'  \link[=cloudformation_detect_stack_resource_drift]{detect_stack_resource_drift} \tab Returns information about whether a resource's actual configuration differs, or has _drifted_, from it's expected configuration, as defined in the stack template and any values specified as template parameters\cr
#'  \link[=cloudformation_estimate_template_cost]{estimate_template_cost} \tab Returns the estimated monthly cost of a template \cr
#'  \link[=cloudformation_execute_change_set]{execute_change_set} \tab Updates a stack using the input information that was provided when the specified change set was created \cr
#'  \link[=cloudformation_get_stack_policy]{get_stack_policy} \tab Returns the stack policy for a specified stack \cr
#'  \link[=cloudformation_get_template]{get_template} \tab Returns the template body for a specified stack \cr
#'  \link[=cloudformation_get_template_summary]{get_template_summary} \tab Returns information about a new or existing template \cr
#'  \link[=cloudformation_list_change_sets]{list_change_sets} \tab Returns the ID and status of each active change set for a stack \cr
#'  \link[=cloudformation_list_exports]{list_exports} \tab Lists all exported output values in the account and region in which you call this action \cr
#'  \link[=cloudformation_list_imports]{list_imports} \tab Lists all stacks that are importing an exported output value \cr
#'  \link[=cloudformation_list_stack_instances]{list_stack_instances} \tab Returns summary information about stack instances that are associated with the specified stack set \cr
#'  \link[=cloudformation_list_stack_resources]{list_stack_resources} \tab Returns descriptions of all resources of the specified stack \cr
#'  \link[=cloudformation_list_stack_set_operation_results]{list_stack_set_operation_results} \tab Returns summary information about the results of a stack set operation \cr
#'  \link[=cloudformation_list_stack_set_operations]{list_stack_set_operations} \tab Returns summary information about operations performed on a stack set \cr
#'  \link[=cloudformation_list_stack_sets]{list_stack_sets} \tab Returns summary information about stack sets that are associated with the user \cr
#'  \link[=cloudformation_list_stacks]{list_stacks} \tab Returns the summary information for stacks whose status matches the specified StackStatusFilter \cr
#'  \link[=cloudformation_set_stack_policy]{set_stack_policy} \tab Sets a stack policy for a specified stack \cr
#'  \link[=cloudformation_signal_resource]{signal_resource} \tab Sends a signal to the specified resource with a success or failure status \cr
#'  \link[=cloudformation_stop_stack_set_operation]{stop_stack_set_operation} \tab Stops an in-progress operation on a stack set and its associated stack instances \cr
#'  \link[=cloudformation_update_stack]{update_stack} \tab Updates a stack as specified in the template \cr
#'  \link[=cloudformation_update_stack_instances]{update_stack_instances} \tab Updates the parameter values for stack instances for the specified accounts, within the specified regions \cr
#'  \link[=cloudformation_update_stack_set]{update_stack_set} \tab Updates the stack set, and associated stack instances in the specified accounts and regions \cr
#'  \link[=cloudformation_update_termination_protection]{update_termination_protection} \tab Updates termination protection for the specified stack \cr
#'  \link[=cloudformation_validate_template]{validate_template} \tab Validates a specified template 
#' }
#'
#' @rdname cloudformation
#' @export
cloudformation <- function() {
  paws.management::cloudformation()
}

#' AWS CloudTrail
#'
#' @description
#' This is the CloudTrail API Reference. It provides descriptions of
#' actions, data types, common parameters, and common errors for
#' CloudTrail.
#' 
#' CloudTrail is a web service that records AWS API calls for your AWS
#' account and delivers log files to an Amazon S3 bucket. The recorded
#' information includes the identity of the user, the start time of the AWS
#' API call, the source IP address, the request parameters, and the
#' response elements returned by the service.
#' 
#' As an alternative to the API, you can use one of the AWS SDKs, which
#' consist of libraries and sample code for various programming languages
#' and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide a
#' convenient way to create programmatic access to AWSCloudTrail. For
#' example, the SDKs take care of cryptographically signing requests,
#' managing errors, and retrying requests automatically. For information
#' about the AWS SDKs, including how to download and install them, see the
#' [Tools for Amazon Web Services page](http://aws.amazon.com/tools/).
#' 
#' See the [AWS CloudTrail User
#' Guide](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html)
#' for information about the data that is included with each AWS API call
#' listed in the log files.
#'
#' @examples
#' \donttest{svc <- cloudtrail()
#' svc$add_tags(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=cloudtrail_add_tags]{add_tags} \tab Adds one or more tags to a trail, up to a limit of 50 \cr
#'  \link[=cloudtrail_create_trail]{create_trail} \tab Creates a trail that specifies the settings for delivery of log data to an Amazon S3 bucket \cr
#'  \link[=cloudtrail_delete_trail]{delete_trail} \tab Deletes a trail \cr
#'  \link[=cloudtrail_describe_trails]{describe_trails} \tab Retrieves settings for the trail associated with the current region for your account \cr
#'  \link[=cloudtrail_get_event_selectors]{get_event_selectors} \tab Describes the settings for the event selectors that you configured for your trail \cr
#'  \link[=cloudtrail_get_trail_status]{get_trail_status} \tab Returns a JSON-formatted list of information about the specified trail \cr
#'  \link[=cloudtrail_list_public_keys]{list_public_keys} \tab Returns all public keys whose private keys were used to sign the digest files within the specified time range\cr
#'  \link[=cloudtrail_list_tags]{list_tags} \tab Lists the tags for the trail in the current region \cr
#'  \link[=cloudtrail_lookup_events]{lookup_events} \tab Looks up management events captured by CloudTrail \cr
#'  \link[=cloudtrail_put_event_selectors]{put_event_selectors} \tab Configures an event selector for your trail \cr
#'  \link[=cloudtrail_remove_tags]{remove_tags} \tab Removes the specified tags from a trail \cr
#'  \link[=cloudtrail_start_logging]{start_logging} \tab Starts the recording of AWS API calls and log file delivery for a trail \cr
#'  \link[=cloudtrail_stop_logging]{stop_logging} \tab Suspends the recording of AWS API calls and log file delivery for the specified trail \cr
#'  \link[=cloudtrail_update_trail]{update_trail} \tab Updates the settings that specify delivery of log files 
#' }
#'
#' @rdname cloudtrail
#' @export
cloudtrail <- function() {
  paws.management::cloudtrail()
}

#' Amazon CloudWatch
#'
#' @description
#' Amazon CloudWatch monitors your Amazon Web Services (AWS) resources and
#' the applications you run on AWS in real time. You can use CloudWatch to
#' collect and track metrics, which are the variables you want to measure
#' for your resources and applications.
#' 
#' CloudWatch alarms send notifications or automatically change the
#' resources you are monitoring based on rules that you define. For
#' example, you can monitor the CPU usage and disk reads and writes of your
#' Amazon EC2 instances. Then, use this data to determine whether you
#' should launch additional instances to handle increased load. You can
#' also use this data to stop under-used instances to save money.
#' 
#' In addition to monitoring the built-in metrics that come with AWS, you
#' can monitor your own custom metrics. With CloudWatch, you gain
#' system-wide visibility into resource utilization, application
#' performance, and operational health.
#'
#' @examples
#' \donttest{svc <- cloudwatch()
#' svc$delete_alarms(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=cloudwatch_delete_alarms]{delete_alarms} \tab Deletes the specified alarms \cr
#'  \link[=cloudwatch_delete_dashboards]{delete_dashboards} \tab Deletes all dashboards that you specify \cr
#'  \link[=cloudwatch_describe_alarm_history]{describe_alarm_history} \tab Retrieves the history for the specified alarm \cr
#'  \link[=cloudwatch_describe_alarms]{describe_alarms} \tab Retrieves the specified alarms \cr
#'  \link[=cloudwatch_describe_alarms_for_metric]{describe_alarms_for_metric} \tab Retrieves the alarms for the specified metric \cr
#'  \link[=cloudwatch_disable_alarm_actions]{disable_alarm_actions} \tab Disables the actions for the specified alarms \cr
#'  \link[=cloudwatch_enable_alarm_actions]{enable_alarm_actions} \tab Enables the actions for the specified alarms \cr
#'  \link[=cloudwatch_get_dashboard]{get_dashboard} \tab Displays the details of the dashboard that you specify \cr
#'  \link[=cloudwatch_get_metric_data]{get_metric_data} \tab You can use the GetMetricData API to retrieve as many as 100 different metrics in a single request, with a total of as many as 100,800 datapoints\cr
#'  \link[=cloudwatch_get_metric_statistics]{get_metric_statistics} \tab Gets statistics for the specified metric \cr
#'  \link[=cloudwatch_get_metric_widget_image]{get_metric_widget_image} \tab You can use the GetMetricWidgetImage API to retrieve a snapshot graph of one or more Amazon CloudWatch metrics as a bitmap image \cr
#'  \link[=cloudwatch_list_dashboards]{list_dashboards} \tab Returns a list of the dashboards for your account \cr
#'  \link[=cloudwatch_list_metrics]{list_metrics} \tab List the specified metrics \cr
#'  \link[=cloudwatch_list_tags_for_resource]{list_tags_for_resource} \tab Displays the tags associated with a CloudWatch resource \cr
#'  \link[=cloudwatch_put_dashboard]{put_dashboard} \tab Creates a dashboard if it does not already exist, or updates an existing dashboard \cr
#'  \link[=cloudwatch_put_metric_alarm]{put_metric_alarm} \tab Creates or updates an alarm and associates it with the specified metric or metric math expression \cr
#'  \link[=cloudwatch_put_metric_data]{put_metric_data} \tab Publishes metric data points to Amazon CloudWatch \cr
#'  \link[=cloudwatch_set_alarm_state]{set_alarm_state} \tab Temporarily sets the state of an alarm for testing purposes \cr
#'  \link[=cloudwatch_tag_resource]{tag_resource} \tab Assigns one or more tags (key-value pairs) to the specified CloudWatch resource \cr
#'  \link[=cloudwatch_untag_resource]{untag_resource} \tab Removes one or more tags from the specified resource 
#' }
#'
#' @rdname cloudwatch
#' @export
cloudwatch <- function() {
  paws.management::cloudwatch()
}

#' Amazon CloudWatch Events
#'
#' @description
#' Amazon CloudWatch Events helps you to respond to state changes in your
#' AWS resources. When your resources change state, they automatically send
#' events into an event stream. You can create rules that match selected
#' events in the stream and route them to targets to take action. You can
#' also use rules to take action on a predetermined schedule. For example,
#' you can configure rules to:
#' 
#' -   Automatically invoke an AWS Lambda function to update DNS entries
#'     when an event notifies you that Amazon EC2 instance enters the
#'     running state.
#' 
#' -   Direct specific API records from AWS CloudTrail to an Amazon Kinesis
#'     data stream for detailed analysis of potential security or
#'     availability risks.
#' 
#' -   Periodically invoke a built-in target to create a snapshot of an
#'     Amazon EBS volume.
#' 
#' For more information about the features of Amazon CloudWatch Events, see
#' the [Amazon CloudWatch Events User
#' Guide](https://docs.aws.amazon.com/AmazonCloudWatch/latest/events).
#'
#' @examples
#' \donttest{svc <- cloudwatchevents()
#' svc$delete_rule(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=cloudwatchevents_delete_rule]{delete_rule} \tab Deletes the specified rule \cr
#'  \link[=cloudwatchevents_describe_event_bus]{describe_event_bus} \tab Displays the external AWS accounts that are permitted to write events to your account using your account's event bus, and the associated policy\cr
#'  \link[=cloudwatchevents_describe_rule]{describe_rule} \tab Describes the specified rule \cr
#'  \link[=cloudwatchevents_disable_rule]{disable_rule} \tab Disables the specified rule \cr
#'  \link[=cloudwatchevents_enable_rule]{enable_rule} \tab Enables the specified rule \cr
#'  \link[=cloudwatchevents_list_rule_names_by_target]{list_rule_names_by_target} \tab Lists the rules for the specified target \cr
#'  \link[=cloudwatchevents_list_rules]{list_rules} \tab Lists your Amazon CloudWatch Events rules \cr
#'  \link[=cloudwatchevents_list_tags_for_resource]{list_tags_for_resource} \tab Displays the tags associated with a CloudWatch Events resource \cr
#'  \link[=cloudwatchevents_list_targets_by_rule]{list_targets_by_rule} \tab Lists the targets assigned to the specified rule \cr
#'  \link[=cloudwatchevents_put_events]{put_events} \tab Sends custom events to Amazon CloudWatch Events so that they can be matched to rules \cr
#'  \link[=cloudwatchevents_put_permission]{put_permission} \tab Running PutPermission permits the specified AWS account or AWS organization to put events to your account's default _event bus_ \cr
#'  \link[=cloudwatchevents_put_rule]{put_rule} \tab Creates or updates the specified rule \cr
#'  \link[=cloudwatchevents_put_targets]{put_targets} \tab Adds the specified targets to the specified rule, or updates the targets if they are already associated with the rule \cr
#'  \link[=cloudwatchevents_remove_permission]{remove_permission} \tab Revokes the permission of another AWS account to be able to put events to your default event bus \cr
#'  \link[=cloudwatchevents_remove_targets]{remove_targets} \tab Removes the specified targets from the specified rule \cr
#'  \link[=cloudwatchevents_tag_resource]{tag_resource} \tab Assigns one or more tags (key-value pairs) to the specified CloudWatch Events resource \cr
#'  \link[=cloudwatchevents_test_event_pattern]{test_event_pattern} \tab Tests whether the specified event pattern matches the provided event \cr
#'  \link[=cloudwatchevents_untag_resource]{untag_resource} \tab Removes one or more tags from the specified CloudWatch Events resource 
#' }
#'
#' @rdname cloudwatchevents
#' @export
cloudwatchevents <- function() {
  paws.management::cloudwatchevents()
}

#' Amazon CloudWatch Logs
#'
#' @description
#' You can use Amazon CloudWatch Logs to monitor, store, and access your
#' log files from Amazon EC2 instances, AWS CloudTrail, or other sources.
#' You can then retrieve the associated log data from CloudWatch Logs using
#' the CloudWatch console, CloudWatch Logs commands in the AWS CLI,
#' CloudWatch Logs API, or CloudWatch Logs SDK.
#' 
#' You can use CloudWatch Logs to:
#' 
#' -   **Monitor logs from EC2 instances in real-time**: You can use
#'     CloudWatch Logs to monitor applications and systems using log data.
#'     For example, CloudWatch Logs can track the number of errors that
#'     occur in your application logs and send you a notification whenever
#'     the rate of errors exceeds a threshold that you specify. CloudWatch
#'     Logs uses your log data for monitoring; so, no code changes are
#'     required. For example, you can monitor application logs for specific
#'     literal terms (such as \"NullReferenceException\") or count the
#'     number of occurrences of a literal term at a particular position in
#'     log data (such as \"404\" status codes in an Apache access log).
#'     When the term you are searching for is found, CloudWatch Logs
#'     reports the data to a CloudWatch metric that you specify.
#' 
#' -   **Monitor AWS CloudTrail logged events**: You can create alarms in
#'     CloudWatch and receive notifications of particular API activity as
#'     captured by CloudTrail and use the notification to perform
#'     troubleshooting.
#' 
#' -   **Archive log data**: You can use CloudWatch Logs to store your log
#'     data in highly durable storage. You can change the log retention
#'     setting so that any log events older than this setting are
#'     automatically deleted. The CloudWatch Logs agent makes it easy to
#'     quickly send both rotated and non-rotated log data off of a host and
#'     into the log service. You can then access the raw log data when you
#'     need it.
#'
#' @examples
#' \donttest{svc <- cloudwatchlogs()
#' svc$associate_kms_key(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=cloudwatchlogs_associate_kms_key]{associate_kms_key} \tab Associates the specified AWS Key Management Service (AWS KMS) customer master key (CMK) with the specified log group \cr
#'  \link[=cloudwatchlogs_cancel_export_task]{cancel_export_task} \tab Cancels the specified export task \cr
#'  \link[=cloudwatchlogs_create_export_task]{create_export_task} \tab Creates an export task, which allows you to efficiently export data from a log group to an Amazon S3 bucket \cr
#'  \link[=cloudwatchlogs_create_log_group]{create_log_group} \tab Creates a log group with the specified name \cr
#'  \link[=cloudwatchlogs_create_log_stream]{create_log_stream} \tab Creates a log stream for the specified log group \cr
#'  \link[=cloudwatchlogs_delete_destination]{delete_destination} \tab Deletes the specified destination, and eventually disables all the subscription filters that publish to it \cr
#'  \link[=cloudwatchlogs_delete_log_group]{delete_log_group} \tab Deletes the specified log group and permanently deletes all the archived log events associated with the log group \cr
#'  \link[=cloudwatchlogs_delete_log_stream]{delete_log_stream} \tab Deletes the specified log stream and permanently deletes all the archived log events associated with the log stream \cr
#'  \link[=cloudwatchlogs_delete_metric_filter]{delete_metric_filter} \tab Deletes the specified metric filter \cr
#'  \link[=cloudwatchlogs_delete_resource_policy]{delete_resource_policy} \tab Deletes a resource policy from this account \cr
#'  \link[=cloudwatchlogs_delete_retention_policy]{delete_retention_policy} \tab Deletes the specified retention policy \cr
#'  \link[=cloudwatchlogs_delete_subscription_filter]{delete_subscription_filter} \tab Deletes the specified subscription filter \cr
#'  \link[=cloudwatchlogs_describe_destinations]{describe_destinations} \tab Lists all your destinations \cr
#'  \link[=cloudwatchlogs_describe_export_tasks]{describe_export_tasks} \tab Lists the specified export tasks \cr
#'  \link[=cloudwatchlogs_describe_log_groups]{describe_log_groups} \tab Lists the specified log groups \cr
#'  \link[=cloudwatchlogs_describe_log_streams]{describe_log_streams} \tab Lists the log streams for the specified log group \cr
#'  \link[=cloudwatchlogs_describe_metric_filters]{describe_metric_filters} \tab Lists the specified metric filters \cr
#'  \link[=cloudwatchlogs_describe_queries]{describe_queries} \tab Returns a list of CloudWatch Logs Insights queries that are scheduled, executing, or have been executed recently in this account \cr
#'  \link[=cloudwatchlogs_describe_resource_policies]{describe_resource_policies} \tab Lists the resource policies in this account \cr
#'  \link[=cloudwatchlogs_describe_subscription_filters]{describe_subscription_filters} \tab Lists the subscription filters for the specified log group \cr
#'  \link[=cloudwatchlogs_disassociate_kms_key]{disassociate_kms_key} \tab Disassociates the associated AWS Key Management Service (AWS KMS) customer master key (CMK) from the specified log group \cr
#'  \link[=cloudwatchlogs_filter_log_events]{filter_log_events} \tab Lists log events from the specified log group \cr
#'  \link[=cloudwatchlogs_get_log_events]{get_log_events} \tab Lists log events from the specified log stream \cr
#'  \link[=cloudwatchlogs_get_log_group_fields]{get_log_group_fields} \tab Returns a list of the fields that are included in log events in the specified log group, along with the percentage of log events that contain each field\cr
#'  \link[=cloudwatchlogs_get_log_record]{get_log_record} \tab Retrieves all the fields and values of a single log event \cr
#'  \link[=cloudwatchlogs_get_query_results]{get_query_results} \tab Returns the results from the specified query \cr
#'  \link[=cloudwatchlogs_list_tags_log_group]{list_tags_log_group} \tab Lists the tags for the specified log group \cr
#'  \link[=cloudwatchlogs_put_destination]{put_destination} \tab Creates or updates a destination \cr
#'  \link[=cloudwatchlogs_put_destination_policy]{put_destination_policy} \tab Creates or updates an access policy associated with an existing destination \cr
#'  \link[=cloudwatchlogs_put_log_events]{put_log_events} \tab Uploads a batch of log events to the specified log stream \cr
#'  \link[=cloudwatchlogs_put_metric_filter]{put_metric_filter} \tab Creates or updates a metric filter and associates it with the specified log group \cr
#'  \link[=cloudwatchlogs_put_resource_policy]{put_resource_policy} \tab Creates or updates a resource policy allowing other AWS services to put log events to this account, such as Amazon Route 53 \cr
#'  \link[=cloudwatchlogs_put_retention_policy]{put_retention_policy} \tab Sets the retention of the specified log group \cr
#'  \link[=cloudwatchlogs_put_subscription_filter]{put_subscription_filter} \tab Creates or updates a subscription filter and associates it with the specified log group \cr
#'  \link[=cloudwatchlogs_start_query]{start_query} \tab Schedules a query of a log group using CloudWatch Logs Insights \cr
#'  \link[=cloudwatchlogs_stop_query]{stop_query} \tab Stops a CloudWatch Logs Insights query that is in progress \cr
#'  \link[=cloudwatchlogs_tag_log_group]{tag_log_group} \tab Adds or updates the specified tags for the specified log group \cr
#'  \link[=cloudwatchlogs_test_metric_filter]{test_metric_filter} \tab Tests the filter pattern of a metric filter against a sample of log event messages \cr
#'  \link[=cloudwatchlogs_untag_log_group]{untag_log_group} \tab Removes the specified tags from the specified log group 
#' }
#'
#' @rdname cloudwatchlogs
#' @export
cloudwatchlogs <- function() {
  paws.management::cloudwatchlogs()
}

#' AWS Config
#'
#' @description
#' AWS Config provides a way to keep track of the configurations of all the
#' AWS resources associated with your AWS account. You can use AWS Config
#' to get the current and historical configurations of each AWS resource
#' and also to get information about the relationship between the
#' resources. An AWS resource can be an Amazon Compute Cloud (Amazon EC2)
#' instance, an Elastic Block Store (EBS) volume, an elastic network
#' Interface (ENI), or a security group. For a complete list of resources
#' currently supported by AWS Config, see [Supported AWS
#' Resources](https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources).
#' 
#' You can access and manage AWS Config through the AWS Management Console,
#' the AWS Command Line Interface (AWS CLI), the AWS Config API, or the AWS
#' SDKs for AWS Config. This reference guide contains documentation for the
#' AWS Config API and the AWS CLI commands that you can use to manage AWS
#' Config. The AWS Config API uses the Signature Version 4 protocol for
#' signing requests. For more information about how to sign a request with
#' this protocol, see [Signature Version 4 Signing
#' Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
#' For detailed information about AWS Config features and their associated
#' actions or commands, as well as how to work with AWS Management Console,
#' see [What Is AWS
#' Config](https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html)
#' in the *AWS Config Developer Guide*.
#'
#' @examples
#' \donttest{svc <- configservice()
#' svc$batch_get_aggregate_resource_config(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=configservice_batch_get_aggregate_resource_config]{batch_get_aggregate_resource_config} \tab Returns the current configuration items for resources that are present in your AWS Config aggregator \cr
#'  \link[=configservice_batch_get_resource_config]{batch_get_resource_config} \tab Returns the current configuration for one or more requested resources \cr
#'  \link[=configservice_delete_aggregation_authorization]{delete_aggregation_authorization} \tab Deletes the authorization granted to the specified configuration aggregator account in a specified region \cr
#'  \link[=configservice_delete_config_rule]{delete_config_rule} \tab Deletes the specified AWS Config rule and all of its evaluation results \cr
#'  \link[=configservice_delete_configuration_aggregator]{delete_configuration_aggregator} \tab Deletes the specified configuration aggregator and the aggregated data associated with the aggregator \cr
#'  \link[=configservice_delete_configuration_recorder]{delete_configuration_recorder} \tab Deletes the configuration recorder \cr
#'  \link[=configservice_delete_delivery_channel]{delete_delivery_channel} \tab Deletes the delivery channel \cr
#'  \link[=configservice_delete_evaluation_results]{delete_evaluation_results} \tab Deletes the evaluation results for the specified AWS Config rule \cr
#'  \link[=configservice_delete_pending_aggregation_request]{delete_pending_aggregation_request} \tab Deletes pending authorization requests for a specified aggregator account in a specified region \cr
#'  \link[=configservice_delete_remediation_configuration]{delete_remediation_configuration} \tab Deletes the remediation configuration \cr
#'  \link[=configservice_delete_retention_configuration]{delete_retention_configuration} \tab Deletes the retention configuration \cr
#'  \link[=configservice_deliver_config_snapshot]{deliver_config_snapshot} \tab Schedules delivery of a configuration snapshot to the Amazon S3 bucket in the specified delivery channel \cr
#'  \link[=configservice_describe_aggregate_compliance_by_config_rules]{describe_aggregate_compliance_by_config_rules} \tab Returns a list of compliant and noncompliant rules with the number of resources for compliant and noncompliant rules \cr
#'  \link[=configservice_describe_aggregation_authorizations]{describe_aggregation_authorizations} \tab Returns a list of authorizations granted to various aggregator accounts and regions \cr
#'  \link[=configservice_describe_compliance_by_config_rule]{describe_compliance_by_config_rule} \tab Indicates whether the specified AWS Config rules are compliant \cr
#'  \link[=configservice_describe_compliance_by_resource]{describe_compliance_by_resource} \tab Indicates whether the specified AWS resources are compliant \cr
#'  \link[=configservice_describe_config_rule_evaluation_status]{describe_config_rule_evaluation_status} \tab Returns status information for each of your AWS managed Config rules \cr
#'  \link[=configservice_describe_config_rules]{describe_config_rules} \tab Returns details about your AWS Config rules \cr
#'  \link[=configservice_describe_configuration_aggregator_sources_status]{describe_configuration_aggregator_sources_status} \tab Returns status information for sources within an aggregator \cr
#'  \link[=configservice_describe_configuration_aggregators]{describe_configuration_aggregators} \tab Returns the details of one or more configuration aggregators \cr
#'  \link[=configservice_describe_configuration_recorder_status]{describe_configuration_recorder_status} \tab Returns the current status of the specified configuration recorder \cr
#'  \link[=configservice_describe_configuration_recorders]{describe_configuration_recorders} \tab Returns the details for the specified configuration recorders \cr
#'  \link[=configservice_describe_delivery_channel_status]{describe_delivery_channel_status} \tab Returns the current status of the specified delivery channel \cr
#'  \link[=configservice_describe_delivery_channels]{describe_delivery_channels} \tab Returns details about the specified delivery channel \cr
#'  \link[=configservice_describe_pending_aggregation_requests]{describe_pending_aggregation_requests} \tab Returns a list of all pending aggregation requests \cr
#'  \link[=configservice_describe_remediation_configurations]{describe_remediation_configurations} \tab Returns the details of one or more remediation configurations \cr
#'  \link[=configservice_describe_remediation_execution_status]{describe_remediation_execution_status} \tab Provides a detailed view of a Remediation Execution for a set of resources including state, timestamps for when steps for the remediation execution occur, and any error messages for steps that have failed\cr
#'  \link[=configservice_describe_retention_configurations]{describe_retention_configurations} \tab Returns the details of one or more retention configurations \cr
#'  \link[=configservice_get_aggregate_compliance_details_by_config_rule]{get_aggregate_compliance_details_by_config_rule} \tab Returns the evaluation results for the specified AWS Config rule for a specific resource in a rule \cr
#'  \link[=configservice_get_aggregate_config_rule_compliance_summary]{get_aggregate_config_rule_compliance_summary} \tab Returns the number of compliant and noncompliant rules for one or more accounts and regions in an aggregator \cr
#'  \link[=configservice_get_aggregate_discovered_resource_counts]{get_aggregate_discovered_resource_counts} \tab Returns the resource counts across accounts and regions that are present in your AWS Config aggregator \cr
#'  \link[=configservice_get_aggregate_resource_config]{get_aggregate_resource_config} \tab Returns configuration item that is aggregated for your specific resource in a specific source account and region \cr
#'  \link[=configservice_get_compliance_details_by_config_rule]{get_compliance_details_by_config_rule} \tab Returns the evaluation results for the specified AWS Config rule \cr
#'  \link[=configservice_get_compliance_details_by_resource]{get_compliance_details_by_resource} \tab Returns the evaluation results for the specified AWS resource \cr
#'  \link[=configservice_get_compliance_summary_by_config_rule]{get_compliance_summary_by_config_rule} \tab Returns the number of AWS Config rules that are compliant and noncompliant, up to a maximum of 25 for each \cr
#'  \link[=configservice_get_compliance_summary_by_resource_type]{get_compliance_summary_by_resource_type} \tab Returns the number of resources that are compliant and the number that are noncompliant \cr
#'  \link[=configservice_get_discovered_resource_counts]{get_discovered_resource_counts} \tab Returns the resource types, the number of each resource type, and the total number of resources that AWS Config is recording in this region for your AWS account \cr
#'  \link[=configservice_get_resource_config_history]{get_resource_config_history} \tab Returns a list of configuration items for the specified resource \cr
#'  \link[=configservice_list_aggregate_discovered_resources]{list_aggregate_discovered_resources} \tab Accepts a resource type and returns a list of resource identifiers that are aggregated for a specific resource type across accounts and regions \cr
#'  \link[=configservice_list_discovered_resources]{list_discovered_resources} \tab Accepts a resource type and returns a list of resource identifiers for the resources of that type \cr
#'  \link[=configservice_list_tags_for_resource]{list_tags_for_resource} \tab List the tags for AWS Config resource \cr
#'  \link[=configservice_put_aggregation_authorization]{put_aggregation_authorization} \tab Authorizes the aggregator account and region to collect data from the source account and region \cr
#'  \link[=configservice_put_config_rule]{put_config_rule} \tab Adds or updates an AWS Config rule for evaluating whether your AWS resources comply with your desired configurations \cr
#'  \link[=configservice_put_configuration_aggregator]{put_configuration_aggregator} \tab Creates and updates the configuration aggregator with the selected source accounts and regions \cr
#'  \link[=configservice_put_configuration_recorder]{put_configuration_recorder} \tab Creates a new configuration recorder to record the selected resource configurations \cr
#'  \link[=configservice_put_delivery_channel]{put_delivery_channel} \tab Creates a delivery channel object to deliver configuration information to an Amazon S3 bucket and Amazon SNS topic \cr
#'  \link[=configservice_put_evaluations]{put_evaluations} \tab Used by an AWS Lambda function to deliver evaluation results to AWS Config \cr
#'  \link[=configservice_put_remediation_configurations]{put_remediation_configurations} \tab Adds or updates the remediation configuration with a specific AWS Config rule with the selected target or action \cr
#'  \link[=configservice_put_retention_configuration]{put_retention_configuration} \tab Creates and updates the retention configuration with details about retention period (number of days) that AWS Config stores your historical information \cr
#'  \link[=configservice_select_resource_config]{select_resource_config} \tab Accepts a structured query language (SQL) SELECT command, performs the corresponding search, and returns resource configurations matching the properties \cr
#'  \link[=configservice_start_config_rules_evaluation]{start_config_rules_evaluation} \tab Runs an on-demand evaluation for the specified AWS Config rules against the last known configuration state of the resources \cr
#'  \link[=configservice_start_configuration_recorder]{start_configuration_recorder} \tab Starts recording configurations of the AWS resources you have selected to record in your AWS account \cr
#'  \link[=configservice_start_remediation_execution]{start_remediation_execution} \tab Runs an on-demand remediation for the specified AWS Config rules against the last known remediation configuration \cr
#'  \link[=configservice_stop_configuration_recorder]{stop_configuration_recorder} \tab Stops recording configurations of the AWS resources you have selected to record in your AWS account \cr
#'  \link[=configservice_tag_resource]{tag_resource} \tab Associates the specified tags to a resource with the specified resourceArn \cr
#'  \link[=configservice_untag_resource]{untag_resource} \tab Deletes specified tags from a resource 
#' }
#'
#' @rdname configservice
#' @export
configservice <- function() {
  paws.management::configservice()
}

#' AWS Health APIs and Notifications
#'
#' @description
#' AWS Health
#' 
#' The AWS Health API provides programmatic access to the AWS Health
#' information that is presented in the [AWS Personal Health
#' Dashboard](https://phd.aws.amazon.com/phd/home#/). You can get
#' information about events that affect your AWS resources:
#' 
#' -   DescribeEvents: Summary information about events.
#' 
#' -   DescribeEventDetails: Detailed information about one or more events.
#' 
#' -   DescribeAffectedEntities: Information about AWS resources that are
#'     affected by one or more events.
#' 
#' In addition, these operations provide information about event types and
#' summary counts of events or affected entities:
#' 
#' -   DescribeEventTypes: Information about the kinds of events that AWS
#'     Health tracks.
#' 
#' -   DescribeEventAggregates: A count of the number of events that meet
#'     specified criteria.
#' 
#' -   DescribeEntityAggregates: A count of the number of affected entities
#'     that meet specified criteria.
#' 
#' The Health API requires a Business or Enterprise support plan from [AWS
#' Support](http://aws.amazon.com/premiumsupport/). Calling the Health API
#' from an account that does not have a Business or Enterprise support plan
#' causes a `SubscriptionRequiredException`.
#' 
#' For authentication of requests, AWS Health uses the [Signature Version 4
#' Signing
#' Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
#' 
#' See the [AWS Health User
#' Guide](http://docs.aws.amazon.com/health/latest/ug/what-is-aws-health.html)
#' for information about how to use the API.
#' 
#' **Service Endpoint**
#' 
#' The HTTP endpoint for the AWS Health API is:
#' 
#' -   https://health.us-east-1.amazonaws.com
#'
#' @examples
#' \donttest{svc <- health()
#' svc$describe_affected_entities(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=health_describe_affected_entities]{describe_affected_entities} \tab Returns a list of entities that have been affected by the specified events, based on the specified filter criteria\cr
#'  \link[=health_describe_entity_aggregates]{describe_entity_aggregates} \tab Returns the number of entities that are affected by each of the specified events \cr
#'  \link[=health_describe_event_aggregates]{describe_event_aggregates} \tab Returns the number of events of each event type (issue, scheduled change, and account notification) \cr
#'  \link[=health_describe_event_details]{describe_event_details} \tab Returns detailed information about one or more specified events \cr
#'  \link[=health_describe_event_types]{describe_event_types} \tab Returns the event types that meet the specified filter criteria \cr
#'  \link[=health_describe_events]{describe_events} \tab Returns information about events that meet the specified filter criteria 
#' }
#'
#' @rdname health
#' @export
health <- function() {
  paws.management::health()
}

#' AWS License Manager
#'
#' @description
#' *This is the AWS License Manager API Reference.* It provides
#' descriptions, syntax, and usage examples for each of the actions and
#' data types for License Manager. The topic for each action shows the
#' Query API request parameters and the XML response. You can also view the
#' XML request elements in the WSDL.
#' 
#' Alternatively, you can use one of the AWS SDKs to access an API that\'s
#' tailored to the programming language or platform that you\'re using. For
#' more information, see [AWS SDKs](http://aws.amazon.com/tools/#SDKs).
#'
#' @examples
#' \donttest{svc <- licensemanager()
#' svc$create_license_configuration(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=licensemanager_create_license_configuration]{create_license_configuration} \tab Creates a new license configuration object \cr
#'  \link[=licensemanager_delete_license_configuration]{delete_license_configuration} \tab Deletes an existing license configuration \cr
#'  \link[=licensemanager_get_license_configuration]{get_license_configuration} \tab Returns a detailed description of a license configuration \cr
#'  \link[=licensemanager_get_service_settings]{get_service_settings} \tab Gets License Manager settings for a region \cr
#'  \link[=licensemanager_list_associations_for_license_configuration]{list_associations_for_license_configuration} \tab Lists the resource associations for a license configuration \cr
#'  \link[=licensemanager_list_license_configurations]{list_license_configurations} \tab Lists license configuration objects for an account, each containing the name, description, license type, and other license terms modeled from a license agreement\cr
#'  \link[=licensemanager_list_license_specifications_for_resource]{list_license_specifications_for_resource} \tab Returns the license configuration for a resource \cr
#'  \link[=licensemanager_list_resource_inventory]{list_resource_inventory} \tab Returns a detailed list of resources \cr
#'  \link[=licensemanager_list_tags_for_resource]{list_tags_for_resource} \tab Lists tags attached to a resource \cr
#'  \link[=licensemanager_list_usage_for_license_configuration]{list_usage_for_license_configuration} \tab Lists all license usage records for a license configuration, displaying license consumption details by resource at a selected point in time \cr
#'  \link[=licensemanager_tag_resource]{tag_resource} \tab Attach one of more tags to any resource \cr
#'  \link[=licensemanager_untag_resource]{untag_resource} \tab Remove tags from a resource \cr
#'  \link[=licensemanager_update_license_configuration]{update_license_configuration} \tab Modifies the attributes of an existing license configuration object \cr
#'  \link[=licensemanager_update_license_specifications_for_resource]{update_license_specifications_for_resource} \tab Adds or removes license configurations for a specified AWS resource \cr
#'  \link[=licensemanager_update_service_settings]{update_service_settings} \tab Updates License Manager service settings 
#' }
#'
#' @rdname licensemanager
#' @export
licensemanager <- function() {
  paws.management::licensemanager()
}

#' AWS OpsWorks
#'
#' @description
#' Welcome to the *AWS OpsWorks Stacks API Reference*. This guide provides
#' descriptions, syntax, and usage examples for AWS OpsWorks Stacks actions
#' and data types, including common parameters and error codes.
#' 
#' AWS OpsWorks Stacks is an application management service that provides
#' an integrated experience for overseeing the complete application
#' lifecycle. For information about this product, go to the [AWS
#' OpsWorks](http://aws.amazon.com/opsworks/) details page.
#' 
#' **SDKs and CLI**
#' 
#' The most common way to use the AWS OpsWorks Stacks API is by using the
#' AWS Command Line Interface (CLI) or by using one of the AWS SDKs to
#' implement applications in your preferred language. For more information,
#' see:
#' 
#' -   [AWS
#'     CLI](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)
#' 
#' -   [AWS SDK for
#'     Java](http://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html)
#' 
#' -   [AWS SDK for
#'     .NET](http://docs.aws.amazon.com/sdkfornet/latest/apidocs/html/N_Amazon_OpsWorks.htm)
#' 
#' -   [AWS SDK for PHP
#'     2](http://docs.aws.amazon.com/aws-sdk-php-2/latest/class-Aws.OpsWorks.OpsWorksClient.html)
#' 
#' -   [AWS SDK for Ruby](http://docs.aws.amazon.com/sdkforruby/api/)
#' 
#' -   [AWS SDK for
#'     Node.js](http://aws.amazon.com/documentation/sdkforjavascript/)
#' 
#' -   [AWS SDK for
#'     Python(Boto)](http://docs.pythonboto.org/en/latest/ref/opsworks.html)
#' 
#' **Endpoints**
#' 
#' AWS OpsWorks Stacks supports the following endpoints, all HTTPS. You
#' must connect to one of the following endpoints. Stacks can only be
#' accessed or managed within the endpoint in which they are created.
#' 
#' -   opsworks.us-east-1.amazonaws.com
#' 
#' -   opsworks.us-east-2.amazonaws.com
#' 
#' -   opsworks.us-west-1.amazonaws.com
#' 
#' -   opsworks.us-west-2.amazonaws.com
#' 
#' -   opsworks.ca-central-1.amazonaws.com (API only; not available in the
#'     AWS console)
#' 
#' -   opsworks.eu-west-1.amazonaws.com
#' 
#' -   opsworks.eu-west-2.amazonaws.com
#' 
#' -   opsworks.eu-west-3.amazonaws.com
#' 
#' -   opsworks.eu-central-1.amazonaws.com
#' 
#' -   opsworks.ap-northeast-1.amazonaws.com
#' 
#' -   opsworks.ap-northeast-2.amazonaws.com
#' 
#' -   opsworks.ap-south-1.amazonaws.com
#' 
#' -   opsworks.ap-southeast-1.amazonaws.com
#' 
#' -   opsworks.ap-southeast-2.amazonaws.com
#' 
#' -   opsworks.sa-east-1.amazonaws.com
#' 
#' **Chef Versions**
#' 
#' When you call CreateStack, CloneStack, or UpdateStack we recommend you
#' use the `ConfigurationManager` parameter to specify the Chef version.
#' The recommended and default value for Linux stacks is currently 12.
#' Windows stacks use Chef 12.2. For more information, see [Chef
#' Versions](http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html).
#' 
#' You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We
#' recommend migrating your existing Linux stacks to Chef 12 as soon as
#' possible.
#'
#' @examples
#' \donttest{svc <- opsworks()
#' svc$assign_instance(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=opsworks_assign_instance]{assign_instance} \tab Assign a registered instance to a layer \cr
#'  \link[=opsworks_assign_volume]{assign_volume} \tab Assigns one of the stack's registered Amazon EBS volumes to a specified instance \cr
#'  \link[=opsworks_associate_elastic_ip]{associate_elastic_ip} \tab Associates one of the stack's registered Elastic IP addresses with a specified instance \cr
#'  \link[=opsworks_attach_elastic_load_balancer]{attach_elastic_load_balancer} \tab Attaches an Elastic Load Balancing load balancer to a specified layer \cr
#'  \link[=opsworks_clone_stack]{clone_stack} \tab Creates a clone of a specified stack \cr
#'  \link[=opsworks_create_app]{create_app} \tab Creates an app for a specified stack \cr
#'  \link[=opsworks_create_deployment]{create_deployment} \tab Runs deployment or stack commands \cr
#'  \link[=opsworks_create_instance]{create_instance} \tab Creates an instance in a specified stack \cr
#'  \link[=opsworks_create_layer]{create_layer} \tab Creates a layer \cr
#'  \link[=opsworks_create_stack]{create_stack} \tab Creates a new stack \cr
#'  \link[=opsworks_create_user_profile]{create_user_profile} \tab Creates a new user profile \cr
#'  \link[=opsworks_delete_app]{delete_app} \tab Deletes a specified app \cr
#'  \link[=opsworks_delete_instance]{delete_instance} \tab Deletes a specified instance, which terminates the associated Amazon EC2 instance \cr
#'  \link[=opsworks_delete_layer]{delete_layer} \tab Deletes a specified layer \cr
#'  \link[=opsworks_delete_stack]{delete_stack} \tab Deletes a specified stack \cr
#'  \link[=opsworks_delete_user_profile]{delete_user_profile} \tab Deletes a user profile \cr
#'  \link[=opsworks_deregister_ecs_cluster]{deregister_ecs_cluster} \tab Deregisters a specified Amazon ECS cluster from a stack \cr
#'  \link[=opsworks_deregister_elastic_ip]{deregister_elastic_ip} \tab Deregisters a specified Elastic IP address \cr
#'  \link[=opsworks_deregister_instance]{deregister_instance} \tab Deregister a registered Amazon EC2 or on-premises instance \cr
#'  \link[=opsworks_deregister_rds_db_instance]{deregister_rds_db_instance} \tab Deregisters an Amazon RDS instance \cr
#'  \link[=opsworks_deregister_volume]{deregister_volume} \tab Deregisters an Amazon EBS volume \cr
#'  \link[=opsworks_describe_agent_versions]{describe_agent_versions} \tab Describes the available AWS OpsWorks Stacks agent versions \cr
#'  \link[=opsworks_describe_apps]{describe_apps} \tab Requests a description of a specified set of apps \cr
#'  \link[=opsworks_describe_commands]{describe_commands} \tab Describes the results of specified commands \cr
#'  \link[=opsworks_describe_deployments]{describe_deployments} \tab Requests a description of a specified set of deployments \cr
#'  \link[=opsworks_describe_ecs_clusters]{describe_ecs_clusters} \tab Describes Amazon ECS clusters that are registered with a stack \cr
#'  \link[=opsworks_describe_elastic_ips]{describe_elastic_ips} \tab Describes Elastic IP addresses \cr
#'  \link[=opsworks_describe_elastic_load_balancers]{describe_elastic_load_balancers} \tab Describes a stack's Elastic Load Balancing instances \cr
#'  \link[=opsworks_describe_instances]{describe_instances} \tab Requests a description of a set of instances \cr
#'  \link[=opsworks_describe_layers]{describe_layers} \tab Requests a description of one or more layers in a specified stack \cr
#'  \link[=opsworks_describe_load_based_auto_scaling]{describe_load_based_auto_scaling} \tab Describes load-based auto scaling configurations for specified layers \cr
#'  \link[=opsworks_describe_my_user_profile]{describe_my_user_profile} \tab Describes a user's SSH information \cr
#'  \link[=opsworks_describe_operating_systems]{describe_operating_systems} \tab Describes the operating systems that are supported by AWS OpsWorks Stacks \cr
#'  \link[=opsworks_describe_permissions]{describe_permissions} \tab Describes the permissions for a specified stack \cr
#'  \link[=opsworks_describe_raid_arrays]{describe_raid_arrays} \tab Describe an instance's RAID arrays \cr
#'  \link[=opsworks_describe_rds_db_instances]{describe_rds_db_instances} \tab Describes Amazon RDS instances \cr
#'  \link[=opsworks_describe_service_errors]{describe_service_errors} \tab Describes AWS OpsWorks Stacks service errors \cr
#'  \link[=opsworks_describe_stack_provisioning_parameters]{describe_stack_provisioning_parameters} \tab Requests a description of a stack's provisioning parameters \cr
#'  \link[=opsworks_describe_stack_summary]{describe_stack_summary} \tab Describes the number of layers and apps in a specified stack, and the number of instances in each state, such as running_setup or online\cr
#'  \link[=opsworks_describe_stacks]{describe_stacks} \tab Requests a description of one or more stacks \cr
#'  \link[=opsworks_describe_time_based_auto_scaling]{describe_time_based_auto_scaling} \tab Describes time-based auto scaling configurations for specified instances \cr
#'  \link[=opsworks_describe_user_profiles]{describe_user_profiles} \tab Describe specified users \cr
#'  \link[=opsworks_describe_volumes]{describe_volumes} \tab Describes an instance's Amazon EBS volumes \cr
#'  \link[=opsworks_detach_elastic_load_balancer]{detach_elastic_load_balancer} \tab Detaches a specified Elastic Load Balancing instance from its layer \cr
#'  \link[=opsworks_disassociate_elastic_ip]{disassociate_elastic_ip} \tab Disassociates an Elastic IP address from its instance \cr
#'  \link[=opsworks_get_hostname_suggestion]{get_hostname_suggestion} \tab Gets a generated host name for the specified layer, based on the current host name theme \cr
#'  \link[=opsworks_grant_access]{grant_access} \tab This action can be used only with Windows stacks \cr
#'  \link[=opsworks_list_tags]{list_tags} \tab Returns a list of tags that are applied to the specified stack or layer \cr
#'  \link[=opsworks_reboot_instance]{reboot_instance} \tab Reboots a specified instance \cr
#'  \link[=opsworks_register_ecs_cluster]{register_ecs_cluster} \tab Registers a specified Amazon ECS cluster with a stack \cr
#'  \link[=opsworks_register_elastic_ip]{register_elastic_ip} \tab Registers an Elastic IP address with a specified stack \cr
#'  \link[=opsworks_register_instance]{register_instance} \tab Registers instances that were created outside of AWS OpsWorks Stacks with a specified stack \cr
#'  \link[=opsworks_register_rds_db_instance]{register_rds_db_instance} \tab Registers an Amazon RDS instance with a stack \cr
#'  \link[=opsworks_register_volume]{register_volume} \tab Registers an Amazon EBS volume with a specified stack \cr
#'  \link[=opsworks_set_load_based_auto_scaling]{set_load_based_auto_scaling} \tab Specify the load-based auto scaling configuration for a specified layer \cr
#'  \link[=opsworks_set_permission]{set_permission} \tab Specifies a user's permissions \cr
#'  \link[=opsworks_set_time_based_auto_scaling]{set_time_based_auto_scaling} \tab Specify the time-based auto scaling configuration for a specified instance \cr
#'  \link[=opsworks_start_instance]{start_instance} \tab Starts a specified instance \cr
#'  \link[=opsworks_start_stack]{start_stack} \tab Starts a stack's instances \cr
#'  \link[=opsworks_stop_instance]{stop_instance} \tab Stops a specified instance \cr
#'  \link[=opsworks_stop_stack]{stop_stack} \tab Stops a specified stack \cr
#'  \link[=opsworks_tag_resource]{tag_resource} \tab Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks Stacks \cr
#'  \link[=opsworks_unassign_instance]{unassign_instance} \tab Unassigns a registered instance from all layers that are using the instance \cr
#'  \link[=opsworks_unassign_volume]{unassign_volume} \tab Unassigns an assigned Amazon EBS volume \cr
#'  \link[=opsworks_untag_resource]{untag_resource} \tab Removes tags from a specified stack or layer \cr
#'  \link[=opsworks_update_app]{update_app} \tab Updates a specified app \cr
#'  \link[=opsworks_update_elastic_ip]{update_elastic_ip} \tab Updates a registered Elastic IP address's name \cr
#'  \link[=opsworks_update_instance]{update_instance} \tab Updates a specified instance \cr
#'  \link[=opsworks_update_layer]{update_layer} \tab Updates a specified layer \cr
#'  \link[=opsworks_update_my_user_profile]{update_my_user_profile} \tab Updates a user's SSH public key \cr
#'  \link[=opsworks_update_rds_db_instance]{update_rds_db_instance} \tab Updates an Amazon RDS instance \cr
#'  \link[=opsworks_update_stack]{update_stack} \tab Updates a specified stack \cr
#'  \link[=opsworks_update_user_profile]{update_user_profile} \tab Updates a specified user profile \cr
#'  \link[=opsworks_update_volume]{update_volume} \tab Updates an Amazon EBS volume's name or mount point 
#' }
#'
#' @rdname opsworks
#' @export
opsworks <- function() {
  paws.management::opsworks()
}

#' AWS OpsWorks for Chef Automate
#'
#' @description
#' AWS OpsWorks CM
#' 
#' AWS OpsWorks for configuration management (CM) is a service that runs
#' and manages configuration management servers. You can use AWS OpsWorks
#' CM to create and manage AWS OpsWorks for Chef Automate and AWS OpsWorks
#' for Puppet Enterprise servers, and add or remove nodes for the servers
#' to manage.
#' 
#' **Glossary of terms**
#' 
#' -   **Server**: A configuration management server that can be
#'     highly-available. The configuration management server runs on an
#'     Amazon Elastic Compute Cloud (EC2) instance, and may use various
#'     other AWS services, such as Amazon Relational Database Service (RDS)
#'     and Elastic Load Balancing. A server is a generic abstraction over
#'     the configuration manager that you want to use, much like Amazon
#'     RDS. In AWS OpsWorks CM, you do not start or stop servers. After you
#'     create servers, they continue to run until they are deleted.
#' 
#' -   **Engine**: The engine is the specific configuration manager that
#'     you want to use. Valid values in this release include `ChefAutomate`
#'     and `Puppet`.
#' 
#' -   **Backup**: This is an application-level backup of the data that the
#'     configuration manager stores. AWS OpsWorks CM creates an S3 bucket
#'     for backups when you launch the first server. A backup maintains a
#'     snapshot of a server\'s configuration-related attributes at the time
#'     the backup starts.
#' 
#' -   **Events**: Events are always related to a server. Events are
#'     written during server creation, when health checks run, when backups
#'     are created, when system maintenance is performed, etc. When you
#'     delete a server, the server\'s events are also deleted.
#' 
#' -   **Account attributes**: Every account has attributes that are
#'     assigned in the AWS OpsWorks CM database. These attributes store
#'     information about configuration limits (servers, backups, etc.) and
#'     your customer account.
#' 
#' **Endpoints**
#' 
#' AWS OpsWorks CM supports the following endpoints, all HTTPS. You must
#' connect to one of the following endpoints. Your servers can only be
#' accessed or managed within the endpoint in which they are created.
#' 
#' -   opsworks-cm.us-east-1.amazonaws.com
#' 
#' -   opsworks-cm.us-east-2.amazonaws.com
#' 
#' -   opsworks-cm.us-west-1.amazonaws.com
#' 
#' -   opsworks-cm.us-west-2.amazonaws.com
#' 
#' -   opsworks-cm.ap-northeast-1.amazonaws.com
#' 
#' -   opsworks-cm.ap-southeast-1.amazonaws.com
#' 
#' -   opsworks-cm.ap-southeast-2.amazonaws.com
#' 
#' -   opsworks-cm.eu-central-1.amazonaws.com
#' 
#' -   opsworks-cm.eu-west-1.amazonaws.com
#' 
#' **Throttling limits**
#' 
#' All API operations allow for five requests per second with a burst of 10
#' requests per second.
#'
#' @examples
#' \donttest{svc <- opsworkscm()
#' svc$associate_node(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=opsworkscm_associate_node]{associate_node} \tab Associates a new node with the server \cr
#'  \link[=opsworkscm_create_backup]{create_backup} \tab Creates an application-level backup of a server \cr
#'  \link[=opsworkscm_create_server]{create_server} \tab Creates and immedately starts a new server \cr
#'  \link[=opsworkscm_delete_backup]{delete_backup} \tab Deletes a backup \cr
#'  \link[=opsworkscm_delete_server]{delete_server} \tab Deletes the server and the underlying AWS CloudFormation stacks (including the server's EC2 instance) \cr
#'  \link[=opsworkscm_describe_account_attributes]{describe_account_attributes} \tab Describes your OpsWorks-CM account attributes \cr
#'  \link[=opsworkscm_describe_backups]{describe_backups} \tab Describes backups \cr
#'  \link[=opsworkscm_describe_events]{describe_events} \tab Describes events for a specified server \cr
#'  \link[=opsworkscm_describe_node_association_status]{describe_node_association_status} \tab Returns the current status of an existing association or disassociation request \cr
#'  \link[=opsworkscm_describe_servers]{describe_servers} \tab Lists all configuration management servers that are identified with your account \cr
#'  \link[=opsworkscm_disassociate_node]{disassociate_node} \tab Disassociates a node from an AWS OpsWorks CM server, and removes the node from the server's managed nodes \cr
#'  \link[=opsworkscm_export_server_engine_attribute]{export_server_engine_attribute} \tab Exports a specified server engine attribute as a base64-encoded string \cr
#'  \link[=opsworkscm_restore_server]{restore_server} \tab Restores a backup to a server that is in a CONNECTION_LOST, HEALTHY, RUNNING, UNHEALTHY, or TERMINATED state\cr
#'  \link[=opsworkscm_start_maintenance]{start_maintenance} \tab Manually starts server maintenance \cr
#'  \link[=opsworkscm_update_server]{update_server} \tab Updates settings for a server \cr
#'  \link[=opsworkscm_update_server_engine_attributes]{update_server_engine_attributes} \tab Updates engine-specific attributes on a specified server 
#' }
#'
#' @rdname opsworkscm
#' @export
opsworkscm <- function() {
  paws.management::opsworkscm()
}

#' AWS Organizations
#'
#' @description
#' AWS Organizations API Reference
#' 
#' AWS Organizations is a web service that enables you to consolidate your
#' multiple AWS accounts into an *organization* and centrally manage your
#' accounts and their resources.
#' 
#' This guide provides descriptions of the Organizations API. For more
#' information about using this service, see the [AWS Organizations User
#' Guide](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html).
#' 
#' **API Version**
#' 
#' This version of the Organizations API Reference documents the
#' Organizations API version 2016-11-28.
#' 
#' As an alternative to using the API directly, you can use one of the AWS
#' SDKs, which consist of libraries and sample code for various programming
#' languages and platforms (Java, Ruby, .NET, iOS, Android, and more). The
#' SDKs provide a convenient way to create programmatic access to AWS
#' Organizations. For example, the SDKs take care of cryptographically
#' signing requests, managing errors, and retrying requests automatically.
#' For more information about the AWS SDKs, including how to download and
#' install them, see [Tools for Amazon Web
#' Services](http://aws.amazon.com/tools/).
#' 
#' We recommend that you use the AWS SDKs to make programmatic API calls to
#' Organizations. However, you also can use the Organizations Query API to
#' make direct calls to the Organizations web service. To learn more about
#' the Organizations Query API, see [Making Query
#' Requests](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_query-requests.html)
#' in the *AWS Organizations User Guide*. Organizations supports GET and
#' POST requests for all actions. That is, the API does not require you to
#' use GET for some actions and POST for others. However, GET requests are
#' subject to the limitation size of a URL. Therefore, for operations that
#' require larger sizes, use a POST request.
#' 
#' **Signing Requests**
#' 
#' When you send HTTP requests to AWS, you must sign the requests so that
#' AWS can identify who sent them. You sign requests with your AWS access
#' key, which consists of an access key ID and a secret access key. We
#' strongly recommend that you do not create an access key for your root
#' account. Anyone who has the access key for your root account has
#' unrestricted access to all the resources in your account. Instead,
#' create an access key for an IAM user account that has administrative
#' privileges. As another option, use AWS Security Token Service to
#' generate temporary security credentials, and use those credentials to
#' sign requests.
#' 
#' To sign requests, we recommend that you use [Signature Version
#' 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
#' If you have an existing application that uses Signature Version 2, you
#' do not have to update it to use Signature Version 4. However, some
#' operations now require Signature Version 4. The documentation for
#' operations that require version 4 indicate this requirement.
#' 
#' When you use the AWS Command Line Interface (AWS CLI) or one of the AWS
#' SDKs to make requests to AWS, these tools automatically sign the
#' requests for you with the access key that you specify when you configure
#' the tools.
#' 
#' In this release, each organization can have only one root. In a future
#' release, a single organization will support multiple roots.
#' 
#' **Support and Feedback for AWS Organizations**
#' 
#' We welcome your feedback. Send your comments to
#' <feedback-awsorganizations@amazon.com> or post your feedback and
#' questions in the [AWS Organizations support
#' forum](http://forums.aws.amazon.com/forum.jspa?forumID=219). For more
#' information about the AWS support forums, see [Forums
#' Help](http://forums.aws.amazon.com/help.jspa).
#' 
#' **Endpoint to Call When Using the CLI or the AWS API**
#' 
#' For the current release of Organizations, you must specify the
#' `us-east-1` region for all AWS API and CLI calls. You can do this in the
#' CLI by using these parameters and commands:
#' 
#' -   Use the following parameter with each command to specify both the
#'     endpoint and its region:
#' 
#'     `--endpoint-url https://organizations.us-east-1.amazonaws.com`
#' 
#' -   Use the default endpoint, but configure your default region with
#'     this command:
#' 
#'     `aws configure set default.region us-east-1`
#' 
#' -   Use the following parameter with each command to specify the
#'     endpoint:
#' 
#'     `--region us-east-1`
#' 
#' For the various SDKs used to call the APIs, see the documentation for
#' the SDK of interest to learn how to direct the requests to a specific
#' endpoint. For more information, see [Regions and
#' Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#sts_region)
#' in the *AWS General Reference*.
#' 
#' **How examples are presented**
#' 
#' The JSON returned by the AWS Organizations service as response to your
#' requests is returned as a single long string without line breaks or
#' formatting whitespace. Both line breaks and whitespace are included in
#' the examples in this guide to improve readability. When example input
#' parameters also would result in long strings that would extend beyond
#' the screen, we insert line breaks to enhance readability. You should
#' always submit the input as a single JSON text string.
#' 
#' **Recording API Requests**
#' 
#' AWS Organizations supports AWS CloudTrail, a service that records AWS
#' API calls for your AWS account and delivers log files to an Amazon S3
#' bucket. By using information collected by AWS CloudTrail, you can
#' determine which requests were successfully made to Organizations, who
#' made the request, when it was made, and so on. For more about AWS
#' Organizations and its support for AWS CloudTrail, see [Logging AWS
#' Organizations Events with AWS
#' CloudTrail](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html#orgs_cloudtrail-integration)
#' in the *AWS Organizations User Guide*. To learn more about CloudTrail,
#' including how to turn it on and find your log files, see the [AWS
#' CloudTrail User
#' Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html).
#'
#' @examples
#' # Bill is the owner of an organization, and he invites Juan's account
#' # (222222222222) to join his organization. The following example shows
#' # Juan's account accepting the handshake and thus agreeing to the
#' # invitation.
#' \donttest{svc <- organizations()
#' svc$accept_handshake(
#'   HandshakeId = "h-examplehandshakeid111"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=organizations_accept_handshake]{accept_handshake} \tab Sends a response to the originator of a handshake agreeing to the action proposed by the handshake request \cr
#'  \link[=organizations_attach_policy]{attach_policy} \tab Attaches a policy to a root, an organizational unit (OU), or an individual account \cr
#'  \link[=organizations_cancel_handshake]{cancel_handshake} \tab Cancels a handshake \cr
#'  \link[=organizations_create_account]{create_account} \tab Creates an AWS account that is automatically a member of the organization whose credentials made the request \cr
#'  \link[=organizations_create_gov_cloud_account]{create_gov_cloud_account} \tab This action is available if all of the following are true: - You're authorized to create accounts in the AWS GovCloud (US) Region\cr
#'  \link[=organizations_create_organization]{create_organization} \tab Creates an AWS organization \cr
#'  \link[=organizations_create_organizational_unit]{create_organizational_unit} \tab Creates an organizational unit (OU) within a root or parent OU \cr
#'  \link[=organizations_create_policy]{create_policy} \tab Creates a policy of a specified type that you can attach to a root, an organizational unit (OU), or an individual AWS account \cr
#'  \link[=organizations_decline_handshake]{decline_handshake} \tab Declines a handshake request \cr
#'  \link[=organizations_delete_organization]{delete_organization} \tab Deletes the organization \cr
#'  \link[=organizations_delete_organizational_unit]{delete_organizational_unit} \tab Deletes an organizational unit (OU) from a root or another OU \cr
#'  \link[=organizations_delete_policy]{delete_policy} \tab Deletes the specified policy from your organization \cr
#'  \link[=organizations_describe_account]{describe_account} \tab Retrieves AWS Organizations-related information about the specified account \cr
#'  \link[=organizations_describe_create_account_status]{describe_create_account_status} \tab Retrieves the current status of an asynchronous request to create an account \cr
#'  \link[=organizations_describe_handshake]{describe_handshake} \tab Retrieves information about a previously requested handshake \cr
#'  \link[=organizations_describe_organization]{describe_organization} \tab Retrieves information about the organization that the user's account belongs to \cr
#'  \link[=organizations_describe_organizational_unit]{describe_organizational_unit} \tab Retrieves information about an organizational unit (OU) \cr
#'  \link[=organizations_describe_policy]{describe_policy} \tab Retrieves information about a policy \cr
#'  \link[=organizations_detach_policy]{detach_policy} \tab Detaches a policy from a target root, organizational unit (OU), or account \cr
#'  \link[=organizations_disable_aws_service_access]{disable_aws_service_access} \tab Disables the integration of an AWS service (the service that is specified by ServicePrincipal) with AWS Organizations \cr
#'  \link[=organizations_disable_policy_type]{disable_policy_type} \tab Disables an organizational control policy type in a root \cr
#'  \link[=organizations_enable_aws_service_access]{enable_aws_service_access} \tab Enables the integration of an AWS service (the service that is specified by ServicePrincipal) with AWS Organizations \cr
#'  \link[=organizations_enable_all_features]{enable_all_features} \tab Enables all features in an organization \cr
#'  \link[=organizations_enable_policy_type]{enable_policy_type} \tab Enables a policy type in a root \cr
#'  \link[=organizations_invite_account_to_organization]{invite_account_to_organization} \tab Sends an invitation to another account to join your organization as a member account \cr
#'  \link[=organizations_leave_organization]{leave_organization} \tab Removes a member account from its parent organization \cr
#'  \link[=organizations_list_aws_service_access_for_organization]{list_aws_service_access_for_organization} \tab Returns a list of the AWS services that you enabled to integrate with your organization \cr
#'  \link[=organizations_list_accounts]{list_accounts} \tab Lists all the accounts in the organization \cr
#'  \link[=organizations_list_accounts_for_parent]{list_accounts_for_parent} \tab Lists the accounts in an organization that are contained by the specified target root or organizational unit (OU) \cr
#'  \link[=organizations_list_children]{list_children} \tab Lists all of the organizational units (OUs) or accounts that are contained in the specified parent OU or root \cr
#'  \link[=organizations_list_create_account_status]{list_create_account_status} \tab Lists the account creation requests that match the specified status that is currently being tracked for the organization \cr
#'  \link[=organizations_list_handshakes_for_account]{list_handshakes_for_account} \tab Lists the current handshakes that are associated with the account of the requesting user \cr
#'  \link[=organizations_list_handshakes_for_organization]{list_handshakes_for_organization} \tab Lists the handshakes that are associated with the organization that the requesting user is part of \cr
#'  \link[=organizations_list_organizational_units_for_parent]{list_organizational_units_for_parent} \tab Lists the organizational units (OUs) in a parent organizational unit or root \cr
#'  \link[=organizations_list_parents]{list_parents} \tab Lists the root or organizational units (OUs) that serve as the immediate parent of the specified child OU or account \cr
#'  \link[=organizations_list_policies]{list_policies} \tab Retrieves the list of all policies in an organization of a specified type \cr
#'  \link[=organizations_list_policies_for_target]{list_policies_for_target} \tab Lists the policies that are directly attached to the specified target root, organizational unit (OU), or account \cr
#'  \link[=organizations_list_roots]{list_roots} \tab Lists the roots that are defined in the current organization \cr
#'  \link[=organizations_list_tags_for_resource]{list_tags_for_resource} \tab Lists tags for the specified resource \cr
#'  \link[=organizations_list_targets_for_policy]{list_targets_for_policy} \tab Lists all the roots, organizational units (OUs), and accounts that the specified policy is attached to \cr
#'  \link[=organizations_move_account]{move_account} \tab Moves an account from its current source parent root or organizational unit (OU) to the specified destination parent root or OU \cr
#'  \link[=organizations_remove_account_from_organization]{remove_account_from_organization} \tab Removes the specified account from the organization \cr
#'  \link[=organizations_tag_resource]{tag_resource} \tab Adds one or more tags to the specified resource \cr
#'  \link[=organizations_untag_resource]{untag_resource} \tab Removes a tag from the specified resource \cr
#'  \link[=organizations_update_organizational_unit]{update_organizational_unit} \tab Renames the specified organizational unit (OU) \cr
#'  \link[=organizations_update_policy]{update_policy} \tab Updates an existing policy with a new name, description, or content 
#' }
#'
#' @rdname organizations
#' @export
organizations <- function() {
  paws.management::organizations()
}

#' AWS Performance Insights
#'
#' @description
#' AWS Performance Insights enables you to monitor and explore different
#' dimensions of database load based on data captured from a running RDS
#' instance. The guide provides detailed information about Performance
#' Insights data types, parameters and errors. For more information about
#' Performance Insights capabilities see [Using Amazon RDS Performance
#' Insights](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
#' in the *Amazon RDS User Guide*.
#' 
#' The AWS Performance Insights API provides visibility into the
#' performance of your RDS instance, when Performance Insights is enabled
#' for supported engine types. While Amazon CloudWatch provides the
#' authoritative source for AWS service vended monitoring metrics, AWS
#' Performance Insights offers a domain-specific view of database load
#' measured as Average Active Sessions and provided to API consumers as a
#' 2-dimensional time-series dataset. The time dimension of the data
#' provides DB load data for each time point in the queried time range, and
#' each time point decomposes overall load in relation to the requested
#' dimensions, such as SQL, Wait-event, User or Host, measured at that time
#' point.
#'
#' @examples
#' \donttest{svc <- pi()
#' svc$describe_dimension_keys(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=pi_describe_dimension_keys]{describe_dimension_keys} \tab For a specific time period, retrieve the top N dimension keys for a metric \cr
#'  \link[=pi_get_resource_metrics]{get_resource_metrics} \tab Retrieve Performance Insights metrics for a set of data sources, over a time period
#' }
#'
#' @rdname pi
#' @export
pi <- function() {
  paws.management::pi()
}

#' AWS Resource Groups
#'
#' @description
#' AWS Resource Groups lets you organize AWS resources such as Amazon EC2
#' instances, Amazon Relational Database Service databases, and Amazon S3
#' buckets into groups using criteria that you define as tags. A resource
#' group is a collection of resources that match the resource types
#' specified in a query, and share one or more tags or portions of tags.
#' You can create a group of resources based on their roles in your cloud
#' infrastructure, lifecycle stages, regions, application layers, or
#' virtually any criteria. Resource groups enable you to automate
#' management tasks, such as those in AWS Systems Manager Automation
#' documents, on tag-related resources in AWS Systems Manager. Groups of
#' tagged resources also let you quickly view a custom console in AWS
#' Systems Manager that shows AWS Config compliance and other monitoring
#' data about member resources.
#' 
#' To create a resource group, build a resource query, and specify tags
#' that identify the criteria that members of the group have in common.
#' Tags are key-value pairs.
#' 
#' For more information about Resource Groups, see the [AWS Resource Groups
#' User
#' Guide](https://docs.aws.amazon.com/ARG/latest/userguide/welcome.html).
#' 
#' AWS Resource Groups uses a REST-compliant API that you can use to
#' perform the following types of operations.
#' 
#' -   Create, Read, Update, and Delete (CRUD) operations on resource
#'     groups and resource query entities
#' 
#' -   Applying, editing, and removing tags from resource groups
#' 
#' -   Resolving resource group member ARNs so they can be returned as
#'     search results
#' 
#' -   Getting data about resources that are members of a group
#' 
#' -   Searching AWS resources based on a resource query
#'
#' @examples
#' \donttest{svc <- resourcegroups()
#' svc$create_group(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=resourcegroups_create_group]{create_group} \tab Creates a group with a specified name, description, and resource query \cr
#'  \link[=resourcegroups_delete_group]{delete_group} \tab Deletes a specified resource group \cr
#'  \link[=resourcegroups_get_group]{get_group} \tab Returns information about a specified resource group \cr
#'  \link[=resourcegroups_get_group_query]{get_group_query} \tab Returns the resource query associated with the specified resource group \cr
#'  \link[=resourcegroups_get_tags]{get_tags} \tab Returns a list of tags that are associated with a resource group, specified by an ARN\cr
#'  \link[=resourcegroups_list_group_resources]{list_group_resources} \tab Returns a list of ARNs of resources that are members of a specified resource group \cr
#'  \link[=resourcegroups_list_groups]{list_groups} \tab Returns a list of existing resource groups in your account \cr
#'  \link[=resourcegroups_search_resources]{search_resources} \tab Returns a list of AWS resource identifiers that matches a specified query \cr
#'  \link[=resourcegroups_tag]{tag} \tab Adds tags to a resource group with the specified ARN \cr
#'  \link[=resourcegroups_untag]{untag} \tab Deletes specified tags from a specified resource \cr
#'  \link[=resourcegroups_update_group]{update_group} \tab Updates an existing group with a new or changed description \cr
#'  \link[=resourcegroups_update_group_query]{update_group_query} \tab Updates the resource query of a group 
#' }
#'
#' @rdname resourcegroups
#' @export
resourcegroups <- function() {
  paws.management::resourcegroups()
}

#' AWS Resource Groups Tagging API
#'
#' @description
#' Resource Groups Tagging API
#' 
#' This guide describes the API operations for the resource groups tagging.
#' 
#' A tag is a label that you assign to an AWS resource. A tag consists of a
#' key and a value, both of which you define. For example, if you have two
#' Amazon EC2 instances, you might assign both a tag key of \"Stack.\" But
#' the value of \"Stack\" might be \"Testing\" for one and \"Production\"
#' for the other.
#' 
#' Tagging can help you organize your resources and enables you to simplify
#' resource management, access management and cost allocation. For more
#' information about tagging, see [Working with Tag
#' Editor](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/tag-editor.html)
#' and [Working with Resource
#' Groups](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/resource-groups.html).
#' For more information about permissions you need to use the resource
#' groups tagging APIs, see [Obtaining Permissions for Resource
#' Groups](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-resource-groups.html)
#' and [Obtaining Permissions for
#' Tagging](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-tagging.html).
#' 
#' You can use the resource groups tagging APIs to complete the following
#' tasks:
#' 
#' -   Tag and untag supported resources located in the specified region
#'     for the AWS account
#' 
#' -   Use tag-based filters to search for resources located in the
#'     specified region for the AWS account
#' 
#' -   List all existing tag keys in the specified region for the AWS
#'     account
#' 
#' -   List all existing values for the specified key in the specified
#'     region for the AWS account
#' 
#' Not all resources can have tags. For a lists of resources that you can
#' tag, see [Supported
#' Resources](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/supported-resources.html)
#' in the *AWS Resource Groups and Tag Editor User Guide*.
#' 
#' To make full use of the resource groups tagging APIs, you might need
#' additional IAM permissions, including permission to access the resources
#' of individual services as well as permission to view and apply tags to
#' those resources. For more information, see [Obtaining Permissions for
#' Tagging](http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-tagging.html)
#' in the *AWS Resource Groups and Tag Editor User Guide*.
#'
#' @examples
#' \donttest{svc <- resourcegroupstaggingapi()
#' svc$get_resources(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=resourcegroupstaggingapi_get_resources]{get_resources} \tab Returns all the tagged resources that are associated with the specified tags (keys and values) located in the specified region for the AWS account\cr
#'  \link[=resourcegroupstaggingapi_get_tag_keys]{get_tag_keys} \tab Returns all tag keys in the specified region for the AWS account \cr
#'  \link[=resourcegroupstaggingapi_get_tag_values]{get_tag_values} \tab Returns all tag values for the specified key in the specified region for the AWS account \cr
#'  \link[=resourcegroupstaggingapi_tag_resources]{tag_resources} \tab Applies one or more tags to the specified resources \cr
#'  \link[=resourcegroupstaggingapi_untag_resources]{untag_resources} \tab Removes the specified tags from the specified resources 
#' }
#'
#' @rdname resourcegroupstaggingapi
#' @export
resourcegroupstaggingapi <- function() {
  paws.management::resourcegroupstaggingapi()
}

#' AWS Service Catalog
#'
#' @description
#' [AWS Service Catalog](https://aws.amazon.com/servicecatalog/) enables
#' organizations to create and manage catalogs of IT services that are
#' approved for use on AWS. To get the most out of this documentation, you
#' should be familiar with the terminology discussed in [AWS Service
#' Catalog
#' Concepts](http://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html).
#'
#' @examples
#' \donttest{svc <- servicecatalog()
#' svc$accept_portfolio_share(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=servicecatalog_accept_portfolio_share]{accept_portfolio_share} \tab Accepts an offer to share the specified portfolio \cr
#'  \link[=servicecatalog_associate_budget_with_resource]{associate_budget_with_resource} \tab Associates the specified budget with the specified resource \cr
#'  \link[=servicecatalog_associate_principal_with_portfolio]{associate_principal_with_portfolio} \tab Associates the specified principal ARN with the specified portfolio \cr
#'  \link[=servicecatalog_associate_product_with_portfolio]{associate_product_with_portfolio} \tab Associates the specified product with the specified portfolio \cr
#'  \link[=servicecatalog_associate_service_action_with_provisioning_artifact]{associate_service_action_with_provisioning_artifact} \tab Associates a self-service action with a provisioning artifact \cr
#'  \link[=servicecatalog_associate_tag_option_with_resource]{associate_tag_option_with_resource} \tab Associate the specified TagOption with the specified portfolio or product \cr
#'  \link[=servicecatalog_batch_associate_service_action_with_provisioning_artifact]{batch_associate_service_action_with_provisioning_artifact} \tab Associates multiple self-service actions with provisioning artifacts \cr
#'  \link[=servicecatalog_batch_disassociate_service_action_from_provisioning_artifact]{batch_disassociate_service_action_from_provisioning_artifact} \tab Disassociates a batch of self-service actions from the specified provisioning artifact \cr
#'  \link[=servicecatalog_copy_product]{copy_product} \tab Copies the specified source product to the specified target product or a new product \cr
#'  \link[=servicecatalog_create_constraint]{create_constraint} \tab Creates a constraint \cr
#'  \link[=servicecatalog_create_portfolio]{create_portfolio} \tab Creates a portfolio \cr
#'  \link[=servicecatalog_create_portfolio_share]{create_portfolio_share} \tab Shares the specified portfolio with the specified account or organization node \cr
#'  \link[=servicecatalog_create_product]{create_product} \tab Creates a product \cr
#'  \link[=servicecatalog_create_provisioned_product_plan]{create_provisioned_product_plan} \tab Creates a plan \cr
#'  \link[=servicecatalog_create_provisioning_artifact]{create_provisioning_artifact} \tab Creates a provisioning artifact (also known as a version) for the specified product \cr
#'  \link[=servicecatalog_create_service_action]{create_service_action} \tab Creates a self-service action \cr
#'  \link[=servicecatalog_create_tag_option]{create_tag_option} \tab Creates a TagOption \cr
#'  \link[=servicecatalog_delete_constraint]{delete_constraint} \tab Deletes the specified constraint \cr
#'  \link[=servicecatalog_delete_portfolio]{delete_portfolio} \tab Deletes the specified portfolio \cr
#'  \link[=servicecatalog_delete_portfolio_share]{delete_portfolio_share} \tab Stops sharing the specified portfolio with the specified account or organization node \cr
#'  \link[=servicecatalog_delete_product]{delete_product} \tab Deletes the specified product \cr
#'  \link[=servicecatalog_delete_provisioned_product_plan]{delete_provisioned_product_plan} \tab Deletes the specified plan \cr
#'  \link[=servicecatalog_delete_provisioning_artifact]{delete_provisioning_artifact} \tab Deletes the specified provisioning artifact (also known as a version) for the specified product \cr
#'  \link[=servicecatalog_delete_service_action]{delete_service_action} \tab Deletes a self-service action \cr
#'  \link[=servicecatalog_delete_tag_option]{delete_tag_option} \tab Deletes the specified TagOption \cr
#'  \link[=servicecatalog_describe_constraint]{describe_constraint} \tab Gets information about the specified constraint \cr
#'  \link[=servicecatalog_describe_copy_product_status]{describe_copy_product_status} \tab Gets the status of the specified copy product operation \cr
#'  \link[=servicecatalog_describe_portfolio]{describe_portfolio} \tab Gets information about the specified portfolio \cr
#'  \link[=servicecatalog_describe_portfolio_share_status]{describe_portfolio_share_status} \tab Gets the status of the specified portfolio share operation \cr
#'  \link[=servicecatalog_describe_product]{describe_product} \tab Gets information about the specified product \cr
#'  \link[=servicecatalog_describe_product_as_admin]{describe_product_as_admin} \tab Gets information about the specified product \cr
#'  \link[=servicecatalog_describe_product_view]{describe_product_view} \tab Gets information about the specified product \cr
#'  \link[=servicecatalog_describe_provisioned_product]{describe_provisioned_product} \tab Gets information about the specified provisioned product \cr
#'  \link[=servicecatalog_describe_provisioned_product_plan]{describe_provisioned_product_plan} \tab Gets information about the resource changes for the specified plan \cr
#'  \link[=servicecatalog_describe_provisioning_artifact]{describe_provisioning_artifact} \tab Gets information about the specified provisioning artifact (also known as a version) for the specified product \cr
#'  \link[=servicecatalog_describe_provisioning_parameters]{describe_provisioning_parameters} \tab Gets information about the configuration required to provision the specified product using the specified provisioning artifact\cr
#'  \link[=servicecatalog_describe_record]{describe_record} \tab Gets information about the specified request operation \cr
#'  \link[=servicecatalog_describe_service_action]{describe_service_action} \tab Describes a self-service action \cr
#'  \link[=servicecatalog_describe_tag_option]{describe_tag_option} \tab Gets information about the specified TagOption \cr
#'  \link[=servicecatalog_disable_aws_organizations_access]{disable_aws_organizations_access} \tab Disable portfolio sharing through AWS Organizations feature \cr
#'  \link[=servicecatalog_disassociate_budget_from_resource]{disassociate_budget_from_resource} \tab Disassociates the specified budget from the specified resource \cr
#'  \link[=servicecatalog_disassociate_principal_from_portfolio]{disassociate_principal_from_portfolio} \tab Disassociates a previously associated principal ARN from a specified portfolio \cr
#'  \link[=servicecatalog_disassociate_product_from_portfolio]{disassociate_product_from_portfolio} \tab Disassociates the specified product from the specified portfolio \cr
#'  \link[=servicecatalog_disassociate_service_action_from_provisioning_artifact]{disassociate_service_action_from_provisioning_artifact} \tab Disassociates the specified self-service action association from the specified provisioning artifact \cr
#'  \link[=servicecatalog_disassociate_tag_option_from_resource]{disassociate_tag_option_from_resource} \tab Disassociates the specified TagOption from the specified resource \cr
#'  \link[=servicecatalog_enable_aws_organizations_access]{enable_aws_organizations_access} \tab Enable portfolio sharing feature through AWS Organizations \cr
#'  \link[=servicecatalog_execute_provisioned_product_plan]{execute_provisioned_product_plan} \tab Provisions or modifies a product based on the resource changes for the specified plan \cr
#'  \link[=servicecatalog_execute_provisioned_product_service_action]{execute_provisioned_product_service_action} \tab Executes a self-service action against a provisioned product \cr
#'  \link[=servicecatalog_get_aws_organizations_access_status]{get_aws_organizations_access_status} \tab Get the Access Status for AWS Organization portfolio share feature \cr
#'  \link[=servicecatalog_list_accepted_portfolio_shares]{list_accepted_portfolio_shares} \tab Lists all portfolios for which sharing was accepted by this account \cr
#'  \link[=servicecatalog_list_budgets_for_resource]{list_budgets_for_resource} \tab Lists all the budgets associated to the specified resource \cr
#'  \link[=servicecatalog_list_constraints_for_portfolio]{list_constraints_for_portfolio} \tab Lists the constraints for the specified portfolio and product \cr
#'  \link[=servicecatalog_list_launch_paths]{list_launch_paths} \tab Lists the paths to the specified product \cr
#'  \link[=servicecatalog_list_organization_portfolio_access]{list_organization_portfolio_access} \tab Lists the organization nodes that have access to the specified portfolio \cr
#'  \link[=servicecatalog_list_portfolio_access]{list_portfolio_access} \tab Lists the account IDs that have access to the specified portfolio \cr
#'  \link[=servicecatalog_list_portfolios]{list_portfolios} \tab Lists all portfolios in the catalog \cr
#'  \link[=servicecatalog_list_portfolios_for_product]{list_portfolios_for_product} \tab Lists all portfolios that the specified product is associated with \cr
#'  \link[=servicecatalog_list_principals_for_portfolio]{list_principals_for_portfolio} \tab Lists all principal ARNs associated with the specified portfolio \cr
#'  \link[=servicecatalog_list_provisioned_product_plans]{list_provisioned_product_plans} \tab Lists the plans for the specified provisioned product or all plans to which the user has access \cr
#'  \link[=servicecatalog_list_provisioning_artifacts]{list_provisioning_artifacts} \tab Lists all provisioning artifacts (also known as versions) for the specified product \cr
#'  \link[=servicecatalog_list_provisioning_artifacts_for_service_action]{list_provisioning_artifacts_for_service_action} \tab Lists all provisioning artifacts (also known as versions) for the specified self-service action \cr
#'  \link[=servicecatalog_list_record_history]{list_record_history} \tab Lists the specified requests or all performed requests \cr
#'  \link[=servicecatalog_list_resources_for_tag_option]{list_resources_for_tag_option} \tab Lists the resources associated with the specified TagOption \cr
#'  \link[=servicecatalog_list_service_actions]{list_service_actions} \tab Lists all self-service actions \cr
#'  \link[=servicecatalog_list_service_actions_for_provisioning_artifact]{list_service_actions_for_provisioning_artifact} \tab Returns a paginated list of self-service actions associated with the specified Product ID and Provisioning Artifact ID \cr
#'  \link[=servicecatalog_list_stack_instances_for_provisioned_product]{list_stack_instances_for_provisioned_product} \tab Returns summary information about stack instances that are associated with the specified CFN_STACKSET type provisioned product\cr
#'  \link[=servicecatalog_list_tag_options]{list_tag_options} \tab Lists the specified TagOptions or all TagOptions \cr
#'  \link[=servicecatalog_provision_product]{provision_product} \tab Provisions the specified product \cr
#'  \link[=servicecatalog_reject_portfolio_share]{reject_portfolio_share} \tab Rejects an offer to share the specified portfolio \cr
#'  \link[=servicecatalog_scan_provisioned_products]{scan_provisioned_products} \tab Lists the provisioned products that are available (not terminated) \cr
#'  \link[=servicecatalog_search_products]{search_products} \tab Gets information about the products to which the caller has access \cr
#'  \link[=servicecatalog_search_products_as_admin]{search_products_as_admin} \tab Gets information about the products for the specified portfolio or all products \cr
#'  \link[=servicecatalog_search_provisioned_products]{search_provisioned_products} \tab Gets information about the provisioned products that meet the specified criteria \cr
#'  \link[=servicecatalog_terminate_provisioned_product]{terminate_provisioned_product} \tab Terminates the specified provisioned product \cr
#'  \link[=servicecatalog_update_constraint]{update_constraint} \tab Updates the specified constraint \cr
#'  \link[=servicecatalog_update_portfolio]{update_portfolio} \tab Updates the specified portfolio \cr
#'  \link[=servicecatalog_update_product]{update_product} \tab Updates the specified product \cr
#'  \link[=servicecatalog_update_provisioned_product]{update_provisioned_product} \tab Requests updates to the configuration of the specified provisioned product \cr
#'  \link[=servicecatalog_update_provisioned_product_properties]{update_provisioned_product_properties} \tab Requests updates to the properties of the specified provisioned product \cr
#'  \link[=servicecatalog_update_provisioning_artifact]{update_provisioning_artifact} \tab Updates the specified provisioning artifact (also known as a version) for the specified product \cr
#'  \link[=servicecatalog_update_service_action]{update_service_action} \tab Updates a self-service action \cr
#'  \link[=servicecatalog_update_tag_option]{update_tag_option} \tab Updates the specified TagOption 
#' }
#'
#' @rdname servicecatalog
#' @export
servicecatalog <- function() {
  paws.management::servicecatalog()
}

#' Amazon Simple Systems Manager (SSM)
#'
#' @description
#' AWS Systems Manager
#' 
#' AWS Systems Manager is a collection of capabilities that helps you
#' automate management tasks such as collecting system inventory, applying
#' operating system (OS) patches, automating the creation of Amazon Machine
#' Images (AMIs), and configuring operating systems (OSs) and applications
#' at scale. Systems Manager lets you remotely and securely manage the
#' configuration of your managed instances. A *managed instance* is any
#' Amazon EC2 instance or on-premises machine in your hybrid environment
#' that has been configured for Systems Manager.
#' 
#' This reference is intended to be used with the [AWS Systems Manager User
#' Guide](http://docs.aws.amazon.com/systems-manager/latest/userguide/).
#' 
#' To get started, verify prerequisites and configure managed instances.
#' For more information, see [Setting Up AWS Systems
#' Manager](http://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html)
#' in the *AWS Systems Manager User Guide*.
#' 
#' For information about other API actions you can perform on Amazon EC2
#' instances, see the [Amazon EC2 API
#' Reference](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/). For
#' information about how to use a Query API, see [Making API
#' Requests](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/making-api-requests.html).
#'
#' @examples
#' \donttest{svc <- ssm()
#' svc$add_tags_to_resource(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=ssm_add_tags_to_resource]{add_tags_to_resource} \tab Adds or overwrites one or more tags for the specified resource \cr
#'  \link[=ssm_cancel_command]{cancel_command} \tab Attempts to cancel the command specified by the Command ID \cr
#'  \link[=ssm_cancel_maintenance_window_execution]{cancel_maintenance_window_execution} \tab Stops a maintenance window execution that is already in progress and cancels any tasks in the window that have not already starting running \cr
#'  \link[=ssm_create_activation]{create_activation} \tab Registers your on-premises server or virtual machine with Amazon EC2 so that you can manage these resources using Run Command \cr
#'  \link[=ssm_create_association]{create_association} \tab Associates the specified Systems Manager document with the specified instances or targets \cr
#'  \link[=ssm_create_association_batch]{create_association_batch} \tab Associates the specified Systems Manager document with the specified instances or targets \cr
#'  \link[=ssm_create_document]{create_document} \tab Creates a Systems Manager document \cr
#'  \link[=ssm_create_maintenance_window]{create_maintenance_window} \tab Creates a new maintenance window \cr
#'  \link[=ssm_create_ops_item]{create_ops_item} \tab Creates a new OpsItem \cr
#'  \link[=ssm_create_patch_baseline]{create_patch_baseline} \tab Creates a patch baseline \cr
#'  \link[=ssm_create_resource_data_sync]{create_resource_data_sync} \tab Creates a resource data sync configuration to a single bucket in Amazon S3 \cr
#'  \link[=ssm_delete_activation]{delete_activation} \tab Deletes an activation \cr
#'  \link[=ssm_delete_association]{delete_association} \tab Disassociates the specified Systems Manager document from the specified instance \cr
#'  \link[=ssm_delete_document]{delete_document} \tab Deletes the Systems Manager document and all instance associations to the document \cr
#'  \link[=ssm_delete_inventory]{delete_inventory} \tab Delete a custom inventory type, or the data associated with a custom Inventory type \cr
#'  \link[=ssm_delete_maintenance_window]{delete_maintenance_window} \tab Deletes a maintenance window \cr
#'  \link[=ssm_delete_parameter]{delete_parameter} \tab Delete a parameter from the system \cr
#'  \link[=ssm_delete_parameters]{delete_parameters} \tab Delete a list of parameters \cr
#'  \link[=ssm_delete_patch_baseline]{delete_patch_baseline} \tab Deletes a patch baseline \cr
#'  \link[=ssm_delete_resource_data_sync]{delete_resource_data_sync} \tab Deletes a Resource Data Sync configuration \cr
#'  \link[=ssm_deregister_managed_instance]{deregister_managed_instance} \tab Removes the server or virtual machine from the list of registered servers \cr
#'  \link[=ssm_deregister_patch_baseline_for_patch_group]{deregister_patch_baseline_for_patch_group} \tab Removes a patch group from a patch baseline \cr
#'  \link[=ssm_deregister_target_from_maintenance_window]{deregister_target_from_maintenance_window} \tab Removes a target from a maintenance window \cr
#'  \link[=ssm_deregister_task_from_maintenance_window]{deregister_task_from_maintenance_window} \tab Removes a task from a maintenance window \cr
#'  \link[=ssm_describe_activations]{describe_activations} \tab Details about the activation, including: the date and time the activation was created, the expiration date, the IAM role assigned to the instances in the activation, and the number of instances activated by this registration\cr
#'  \link[=ssm_describe_association]{describe_association} \tab Describes the association for the specified target or instance \cr
#'  \link[=ssm_describe_association_execution_targets]{describe_association_execution_targets} \tab Use this API action to view information about a specific execution of a specific association \cr
#'  \link[=ssm_describe_association_executions]{describe_association_executions} \tab Use this API action to view all executions for a specific association ID \cr
#'  \link[=ssm_describe_automation_executions]{describe_automation_executions} \tab Provides details about all active and terminated Automation executions \cr
#'  \link[=ssm_describe_automation_step_executions]{describe_automation_step_executions} \tab Information about all active and terminated step executions in an Automation workflow \cr
#'  \link[=ssm_describe_available_patches]{describe_available_patches} \tab Lists all patches that could possibly be included in a patch baseline \cr
#'  \link[=ssm_describe_document]{describe_document} \tab Describes the specified Systems Manager document \cr
#'  \link[=ssm_describe_document_permission]{describe_document_permission} \tab Describes the permissions for a Systems Manager document \cr
#'  \link[=ssm_describe_effective_instance_associations]{describe_effective_instance_associations} \tab All associations for the instance(s) \cr
#'  \link[=ssm_describe_effective_patches_for_patch_baseline]{describe_effective_patches_for_patch_baseline} \tab Retrieves the current effective patches (the patch and the approval state) for the specified patch baseline \cr
#'  \link[=ssm_describe_instance_associations_status]{describe_instance_associations_status} \tab The status of the associations for the instance(s) \cr
#'  \link[=ssm_describe_instance_information]{describe_instance_information} \tab Describes one or more of your instances \cr
#'  \link[=ssm_describe_instance_patch_states]{describe_instance_patch_states} \tab Retrieves the high-level patch state of one or more instances \cr
#'  \link[=ssm_describe_instance_patch_states_for_patch_group]{describe_instance_patch_states_for_patch_group} \tab Retrieves the high-level patch state for the instances in the specified patch group \cr
#'  \link[=ssm_describe_instance_patches]{describe_instance_patches} \tab Retrieves information about the patches on the specified instance and their state relative to the patch baseline being used for the instance \cr
#'  \link[=ssm_describe_inventory_deletions]{describe_inventory_deletions} \tab Describes a specific delete inventory operation \cr
#'  \link[=ssm_describe_maintenance_window_execution_task_invocations]{describe_maintenance_window_execution_task_invocations} \tab Retrieves the individual task executions (one per target) for a particular task run as part of a maintenance window execution \cr
#'  \link[=ssm_describe_maintenance_window_execution_tasks]{describe_maintenance_window_execution_tasks} \tab For a given maintenance window execution, lists the tasks that were run \cr
#'  \link[=ssm_describe_maintenance_window_executions]{describe_maintenance_window_executions} \tab Lists the executions of a maintenance window \cr
#'  \link[=ssm_describe_maintenance_window_schedule]{describe_maintenance_window_schedule} \tab Retrieves information about upcoming executions of a maintenance window \cr
#'  \link[=ssm_describe_maintenance_window_targets]{describe_maintenance_window_targets} \tab Lists the targets registered with the maintenance window \cr
#'  \link[=ssm_describe_maintenance_window_tasks]{describe_maintenance_window_tasks} \tab Lists the tasks in a maintenance window \cr
#'  \link[=ssm_describe_maintenance_windows]{describe_maintenance_windows} \tab Retrieves the maintenance windows in an AWS account \cr
#'  \link[=ssm_describe_maintenance_windows_for_target]{describe_maintenance_windows_for_target} \tab Retrieves information about the maintenance window targets or tasks that an instance is associated with \cr
#'  \link[=ssm_describe_ops_items]{describe_ops_items} \tab Query a set of OpsItems \cr
#'  \link[=ssm_describe_parameters]{describe_parameters} \tab Get information about a parameter \cr
#'  \link[=ssm_describe_patch_baselines]{describe_patch_baselines} \tab Lists the patch baselines in your AWS account \cr
#'  \link[=ssm_describe_patch_group_state]{describe_patch_group_state} \tab Returns high-level aggregated patch compliance state for a patch group \cr
#'  \link[=ssm_describe_patch_groups]{describe_patch_groups} \tab Lists all patch groups that have been registered with patch baselines \cr
#'  \link[=ssm_describe_patch_properties]{describe_patch_properties} \tab Lists the properties of available patches organized by product, product family, classification, severity, and other properties of available patches \cr
#'  \link[=ssm_describe_sessions]{describe_sessions} \tab Retrieves a list of all active sessions (both connected and disconnected) or terminated sessions from the past 30 days \cr
#'  \link[=ssm_get_automation_execution]{get_automation_execution} \tab Get detailed information about a particular Automation execution \cr
#'  \link[=ssm_get_command_invocation]{get_command_invocation} \tab Returns detailed information about command execution for an invocation or plugin \cr
#'  \link[=ssm_get_connection_status]{get_connection_status} \tab Retrieves the Session Manager connection status for an instance to determine whether it is connected and ready to receive Session Manager connections \cr
#'  \link[=ssm_get_default_patch_baseline]{get_default_patch_baseline} \tab Retrieves the default patch baseline \cr
#'  \link[=ssm_get_deployable_patch_snapshot_for_instance]{get_deployable_patch_snapshot_for_instance} \tab Retrieves the current snapshot for the patch baseline the instance uses \cr
#'  \link[=ssm_get_document]{get_document} \tab Gets the contents of the specified Systems Manager document \cr
#'  \link[=ssm_get_inventory]{get_inventory} \tab Query inventory information \cr
#'  \link[=ssm_get_inventory_schema]{get_inventory_schema} \tab Return a list of inventory type names for the account, or return a list of attribute names for a specific Inventory item type \cr
#'  \link[=ssm_get_maintenance_window]{get_maintenance_window} \tab Retrieves a maintenance window \cr
#'  \link[=ssm_get_maintenance_window_execution]{get_maintenance_window_execution} \tab Retrieves details about a specific task run as part of a maintenance window execution \cr
#'  \link[=ssm_get_maintenance_window_execution_task]{get_maintenance_window_execution_task} \tab Retrieves the details about a specific task run as part of a maintenance window execution \cr
#'  \link[=ssm_get_maintenance_window_execution_task_invocation]{get_maintenance_window_execution_task_invocation} \tab Retrieves a task invocation \cr
#'  \link[=ssm_get_maintenance_window_task]{get_maintenance_window_task} \tab Lists the tasks in a maintenance window \cr
#'  \link[=ssm_get_ops_item]{get_ops_item} \tab Get information about an OpsItem by using the ID \cr
#'  \link[=ssm_get_ops_summary]{get_ops_summary} \tab View a summary of OpsItems based on specified filters and aggregators \cr
#'  \link[=ssm_get_parameter]{get_parameter} \tab Get information about a parameter by using the parameter name \cr
#'  \link[=ssm_get_parameter_history]{get_parameter_history} \tab Query a list of all parameters used by the AWS account \cr
#'  \link[=ssm_get_parameters]{get_parameters} \tab Get details of a parameter \cr
#'  \link[=ssm_get_parameters_by_path]{get_parameters_by_path} \tab Retrieve parameters in a specific hierarchy \cr
#'  \link[=ssm_get_patch_baseline]{get_patch_baseline} \tab Retrieves information about a patch baseline \cr
#'  \link[=ssm_get_patch_baseline_for_patch_group]{get_patch_baseline_for_patch_group} \tab Retrieves the patch baseline that should be used for the specified patch group \cr
#'  \link[=ssm_get_service_setting]{get_service_setting} \tab ServiceSetting is an account-level setting for an AWS service \cr
#'  \link[=ssm_label_parameter_version]{label_parameter_version} \tab A parameter label is a user-defined alias to help you manage different versions of a parameter \cr
#'  \link[=ssm_list_association_versions]{list_association_versions} \tab Retrieves all versions of an association for a specific association ID \cr
#'  \link[=ssm_list_associations]{list_associations} \tab Lists the associations for the specified Systems Manager document or instance \cr
#'  \link[=ssm_list_command_invocations]{list_command_invocations} \tab An invocation is copy of a command sent to a specific instance \cr
#'  \link[=ssm_list_commands]{list_commands} \tab Lists the commands requested by users of the AWS account \cr
#'  \link[=ssm_list_compliance_items]{list_compliance_items} \tab For a specified resource ID, this API action returns a list of compliance statuses for different resource types \cr
#'  \link[=ssm_list_compliance_summaries]{list_compliance_summaries} \tab Returns a summary count of compliant and non-compliant resources for a compliance type \cr
#'  \link[=ssm_list_document_versions]{list_document_versions} \tab List all versions for a document \cr
#'  \link[=ssm_list_documents]{list_documents} \tab Describes one or more of your Systems Manager documents \cr
#'  \link[=ssm_list_inventory_entries]{list_inventory_entries} \tab A list of inventory items returned by the request \cr
#'  \link[=ssm_list_resource_compliance_summaries]{list_resource_compliance_summaries} \tab Returns a resource-level summary count \cr
#'  \link[=ssm_list_resource_data_sync]{list_resource_data_sync} \tab Lists your resource data sync configurations \cr
#'  \link[=ssm_list_tags_for_resource]{list_tags_for_resource} \tab Returns a list of the tags assigned to the specified resource \cr
#'  \link[=ssm_modify_document_permission]{modify_document_permission} \tab Shares a Systems Manager document publicly or privately \cr
#'  \link[=ssm_put_compliance_items]{put_compliance_items} \tab Registers a compliance type and other compliance details on a designated resource \cr
#'  \link[=ssm_put_inventory]{put_inventory} \tab Bulk update custom inventory items on one more instance \cr
#'  \link[=ssm_put_parameter]{put_parameter} \tab Add a parameter to the system \cr
#'  \link[=ssm_register_default_patch_baseline]{register_default_patch_baseline} \tab Defines the default patch baseline \cr
#'  \link[=ssm_register_patch_baseline_for_patch_group]{register_patch_baseline_for_patch_group} \tab Registers a patch baseline for a patch group \cr
#'  \link[=ssm_register_target_with_maintenance_window]{register_target_with_maintenance_window} \tab Registers a target with a maintenance window \cr
#'  \link[=ssm_register_task_with_maintenance_window]{register_task_with_maintenance_window} \tab Adds a new task to a maintenance window \cr
#'  \link[=ssm_remove_tags_from_resource]{remove_tags_from_resource} \tab Removes all tags from the specified resource \cr
#'  \link[=ssm_reset_service_setting]{reset_service_setting} \tab ServiceSetting is an account-level setting for an AWS service \cr
#'  \link[=ssm_resume_session]{resume_session} \tab Reconnects a session to an instance after it has been disconnected \cr
#'  \link[=ssm_send_automation_signal]{send_automation_signal} \tab Sends a signal to an Automation execution to change the current behavior or status of the execution \cr
#'  \link[=ssm_send_command]{send_command} \tab Runs commands on one or more managed instances \cr
#'  \link[=ssm_start_associations_once]{start_associations_once} \tab Use this API action to run an association immediately and only one time \cr
#'  \link[=ssm_start_automation_execution]{start_automation_execution} \tab Initiates execution of an Automation document \cr
#'  \link[=ssm_start_session]{start_session} \tab Initiates a connection to a target (for example, an instance) for a Session Manager session \cr
#'  \link[=ssm_stop_automation_execution]{stop_automation_execution} \tab Stop an Automation that is currently running \cr
#'  \link[=ssm_terminate_session]{terminate_session} \tab Permanently ends a session and closes the data connection between the Session Manager client and SSM Agent on the instance \cr
#'  \link[=ssm_update_association]{update_association} \tab Updates an association \cr
#'  \link[=ssm_update_association_status]{update_association_status} \tab Updates the status of the Systems Manager document associated with the specified instance \cr
#'  \link[=ssm_update_document]{update_document} \tab The document you want to update \cr
#'  \link[=ssm_update_document_default_version]{update_document_default_version} \tab Set the default version of a document \cr
#'  \link[=ssm_update_maintenance_window]{update_maintenance_window} \tab Updates an existing maintenance window \cr
#'  \link[=ssm_update_maintenance_window_target]{update_maintenance_window_target} \tab Modifies the target of an existing maintenance window \cr
#'  \link[=ssm_update_maintenance_window_task]{update_maintenance_window_task} \tab Modifies a task assigned to a maintenance window \cr
#'  \link[=ssm_update_managed_instance_role]{update_managed_instance_role} \tab Assigns or changes an Amazon Identity and Access Management (IAM) role to the managed instance \cr
#'  \link[=ssm_update_ops_item]{update_ops_item} \tab Edit or change an OpsItem \cr
#'  \link[=ssm_update_patch_baseline]{update_patch_baseline} \tab Modifies an existing patch baseline \cr
#'  \link[=ssm_update_service_setting]{update_service_setting} \tab ServiceSetting is an account-level setting for an AWS service 
#' }
#'
#' @rdname ssm
#' @export
ssm <- function() {
  paws.management::ssm()
}

#' AWS Support
#'
#' @description
#' The AWS Support API reference is intended for programmers who need
#' detailed information about the AWS Support operations and data types.
#' This service enables you to manage your AWS Support cases
#' programmatically. It uses HTTP methods that return results in JSON
#' format.
#' 
#' The AWS Support service also exposes a set of [Trusted
#' Advisor](http://aws.amazon.com/premiumsupport/trustedadvisor/) features.
#' You can retrieve a list of checks and their descriptions, get check
#' results, specify checks to refresh, and get the refresh status of
#' checks.
#' 
#' The following list describes the AWS Support case management operations:
#' 
#' -   **Service names, issue categories, and available severity levels.**
#'     The DescribeServices and DescribeSeverityLevels operations return
#'     AWS service names, service codes, service categories, and problem
#'     severity levels. You use these values when you call the CreateCase
#'     operation.
#' 
#' -   **Case creation, case details, and case resolution.** The
#'     CreateCase, DescribeCases, DescribeAttachment, and ResolveCase
#'     operations create AWS Support cases, retrieve information about
#'     cases, and resolve cases.
#' 
#' -   **Case communication.** The DescribeCommunications,
#'     AddCommunicationToCase, and AddAttachmentsToSet operations retrieve
#'     and add communications and attachments to AWS Support cases.
#' 
#' The following list describes the operations available from the AWS
#' Support service for Trusted Advisor:
#' 
#' -   DescribeTrustedAdvisorChecks returns the list of checks that run
#'     against your AWS resources.
#' 
#' -   Using the `checkId` for a specific check returned by
#'     DescribeTrustedAdvisorChecks, you can call
#'     DescribeTrustedAdvisorCheckResult to obtain the results for the
#'     check you specified.
#' 
#' -   DescribeTrustedAdvisorCheckSummaries returns summarized results for
#'     one or more Trusted Advisor checks.
#' 
#' -   RefreshTrustedAdvisorCheck requests that Trusted Advisor rerun a
#'     specified check.
#' 
#' -   DescribeTrustedAdvisorCheckRefreshStatuses reports the refresh
#'     status of one or more checks.
#' 
#' For authentication of requests, AWS Support uses [Signature Version 4
#' Signing
#' Process](http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
#' 
#' See [About the AWS Support
#' API](http://docs.aws.amazon.com/awssupport/latest/user/Welcome.html) in
#' the *AWS Support User Guide* for information about how to use this
#' service to create and manage your support cases, and how to call Trusted
#' Advisor for results of checks on your resources.
#'
#' @examples
#' \donttest{svc <- support()
#' svc$add_attachments_to_set(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=support_add_attachments_to_set]{add_attachments_to_set} \tab Adds one or more attachments to an attachment set \cr
#'  \link[=support_add_communication_to_case]{add_communication_to_case} \tab Adds additional customer communication to an AWS Support case \cr
#'  \link[=support_create_case]{create_case} \tab Creates a new case in the AWS Support Center \cr
#'  \link[=support_describe_attachment]{describe_attachment} \tab Returns the attachment that has the specified ID \cr
#'  \link[=support_describe_cases]{describe_cases} \tab Returns a list of cases that you specify by passing one or more case IDs \cr
#'  \link[=support_describe_communications]{describe_communications} \tab Returns communications (and attachments) for one or more support cases \cr
#'  \link[=support_describe_services]{describe_services} \tab Returns the current list of AWS services and a list of service categories that applies to each one \cr
#'  \link[=support_describe_severity_levels]{describe_severity_levels} \tab Returns the list of severity levels that you can assign to an AWS Support case \cr
#'  \link[=support_describe_trusted_advisor_check_refresh_statuses]{describe_trusted_advisor_check_refresh_statuses} \tab Returns the refresh status of the Trusted Advisor checks that have the specified check IDs \cr
#'  \link[=support_describe_trusted_advisor_check_result]{describe_trusted_advisor_check_result} \tab Returns the results of the Trusted Advisor check that has the specified check ID \cr
#'  \link[=support_describe_trusted_advisor_check_summaries]{describe_trusted_advisor_check_summaries} \tab Returns the summaries of the results of the Trusted Advisor checks that have the specified check IDs \cr
#'  \link[=support_describe_trusted_advisor_checks]{describe_trusted_advisor_checks} \tab Returns information about all available Trusted Advisor checks, including name, ID, category, description, and metadata \cr
#'  \link[=support_refresh_trusted_advisor_check]{refresh_trusted_advisor_check} \tab Requests a refresh of the Trusted Advisor check that has the specified check ID \cr
#'  \link[=support_resolve_case]{resolve_case} \tab Takes a caseId and returns the initial state of the case along with the state of the case after the call to ResolveCase completed
#' }
#'
#' @rdname support
#' @export
support <- function() {
  paws.management::support()
}

#' Amazon Comprehend
#'
#' @description
#' Amazon Comprehend is an AWS service for gaining insight into the content
#' of documents. Use these actions to determine the topics contained in
#' your documents, the topics they discuss, the predominant sentiment
#' expressed in them, the predominant language used, and more.
#'
#' @examples
#' \donttest{svc <- comprehend()
#' svc$batch_detect_dominant_language(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=comprehend_batch_detect_dominant_language]{batch_detect_dominant_language} \tab Determines the dominant language of the input text for a batch of documents \cr
#'  \link[=comprehend_batch_detect_entities]{batch_detect_entities} \tab Inspects the text of a batch of documents for named entities and returns information about them \cr
#'  \link[=comprehend_batch_detect_key_phrases]{batch_detect_key_phrases} \tab Detects the key noun phrases found in a batch of documents \cr
#'  \link[=comprehend_batch_detect_sentiment]{batch_detect_sentiment} \tab Inspects a batch of documents and returns an inference of the prevailing sentiment, POSITIVE, NEUTRAL, MIXED, or NEGATIVE, in each one \cr
#'  \link[=comprehend_batch_detect_syntax]{batch_detect_syntax} \tab Inspects the text of a batch of documents for the syntax and part of speech of the words in the document and returns information about them\cr
#'  \link[=comprehend_create_document_classifier]{create_document_classifier} \tab Creates a new document classifier that you can use to categorize documents \cr
#'  \link[=comprehend_create_entity_recognizer]{create_entity_recognizer} \tab Creates an entity recognizer using submitted files \cr
#'  \link[=comprehend_delete_document_classifier]{delete_document_classifier} \tab Deletes a previously created document classifier Only those classifiers that are in terminated states (IN_ERROR, TRAINED) will be deleted \cr
#'  \link[=comprehend_delete_entity_recognizer]{delete_entity_recognizer} \tab Deletes an entity recognizer \cr
#'  \link[=comprehend_describe_document_classification_job]{describe_document_classification_job} \tab Gets the properties associated with a document classification job \cr
#'  \link[=comprehend_describe_document_classifier]{describe_document_classifier} \tab Gets the properties associated with a document classifier \cr
#'  \link[=comprehend_describe_dominant_language_detection_job]{describe_dominant_language_detection_job} \tab Gets the properties associated with a dominant language detection job \cr
#'  \link[=comprehend_describe_entities_detection_job]{describe_entities_detection_job} \tab Gets the properties associated with an entities detection job \cr
#'  \link[=comprehend_describe_entity_recognizer]{describe_entity_recognizer} \tab Provides details about an entity recognizer including status, S3 buckets containing training data, recognizer metadata, metrics, and so on \cr
#'  \link[=comprehend_describe_key_phrases_detection_job]{describe_key_phrases_detection_job} \tab Gets the properties associated with a key phrases detection job \cr
#'  \link[=comprehend_describe_sentiment_detection_job]{describe_sentiment_detection_job} \tab Gets the properties associated with a sentiment detection job \cr
#'  \link[=comprehend_describe_topics_detection_job]{describe_topics_detection_job} \tab Gets the properties associated with a topic detection job \cr
#'  \link[=comprehend_detect_dominant_language]{detect_dominant_language} \tab Determines the dominant language of the input text \cr
#'  \link[=comprehend_detect_entities]{detect_entities} \tab Inspects text for named entities, and returns information about them \cr
#'  \link[=comprehend_detect_key_phrases]{detect_key_phrases} \tab Detects the key noun phrases found in the text \cr
#'  \link[=comprehend_detect_sentiment]{detect_sentiment} \tab Inspects text and returns an inference of the prevailing sentiment (POSITIVE, NEUTRAL, MIXED, or NEGATIVE) \cr
#'  \link[=comprehend_detect_syntax]{detect_syntax} \tab Inspects text for syntax and the part of speech of words in the document \cr
#'  \link[=comprehend_list_document_classification_jobs]{list_document_classification_jobs} \tab Gets a list of the documentation classification jobs that you have submitted \cr
#'  \link[=comprehend_list_document_classifiers]{list_document_classifiers} \tab Gets a list of the document classifiers that you have created \cr
#'  \link[=comprehend_list_dominant_language_detection_jobs]{list_dominant_language_detection_jobs} \tab Gets a list of the dominant language detection jobs that you have submitted \cr
#'  \link[=comprehend_list_entities_detection_jobs]{list_entities_detection_jobs} \tab Gets a list of the entity detection jobs that you have submitted \cr
#'  \link[=comprehend_list_entity_recognizers]{list_entity_recognizers} \tab Gets a list of the properties of all entity recognizers that you created, including recognizers currently in training \cr
#'  \link[=comprehend_list_key_phrases_detection_jobs]{list_key_phrases_detection_jobs} \tab Get a list of key phrase detection jobs that you have submitted \cr
#'  \link[=comprehend_list_sentiment_detection_jobs]{list_sentiment_detection_jobs} \tab Gets a list of sentiment detection jobs that you have submitted \cr
#'  \link[=comprehend_list_tags_for_resource]{list_tags_for_resource} \tab Lists all tags associated with a given Amazon Comprehend resource \cr
#'  \link[=comprehend_list_topics_detection_jobs]{list_topics_detection_jobs} \tab Gets a list of the topic detection jobs that you have submitted \cr
#'  \link[=comprehend_start_document_classification_job]{start_document_classification_job} \tab Starts an asynchronous document classification job \cr
#'  \link[=comprehend_start_dominant_language_detection_job]{start_dominant_language_detection_job} \tab Starts an asynchronous dominant language detection job for a collection of documents \cr
#'  \link[=comprehend_start_entities_detection_job]{start_entities_detection_job} \tab Starts an asynchronous entity detection job for a collection of documents \cr
#'  \link[=comprehend_start_key_phrases_detection_job]{start_key_phrases_detection_job} \tab Starts an asynchronous key phrase detection job for a collection of documents \cr
#'  \link[=comprehend_start_sentiment_detection_job]{start_sentiment_detection_job} \tab Starts an asynchronous sentiment detection job for a collection of documents \cr
#'  \link[=comprehend_start_topics_detection_job]{start_topics_detection_job} \tab Starts an asynchronous topic detection job \cr
#'  \link[=comprehend_stop_dominant_language_detection_job]{stop_dominant_language_detection_job} \tab Stops a dominant language detection job in progress \cr
#'  \link[=comprehend_stop_entities_detection_job]{stop_entities_detection_job} \tab Stops an entities detection job in progress \cr
#'  \link[=comprehend_stop_key_phrases_detection_job]{stop_key_phrases_detection_job} \tab Stops a key phrases detection job in progress \cr
#'  \link[=comprehend_stop_sentiment_detection_job]{stop_sentiment_detection_job} \tab Stops a sentiment detection job in progress \cr
#'  \link[=comprehend_stop_training_document_classifier]{stop_training_document_classifier} \tab Stops a document classifier training job while in progress \cr
#'  \link[=comprehend_stop_training_entity_recognizer]{stop_training_entity_recognizer} \tab Stops an entity recognizer training job while in progress \cr
#'  \link[=comprehend_tag_resource]{tag_resource} \tab Associates a specific tag with an Amazon Comprehend resource \cr
#'  \link[=comprehend_untag_resource]{untag_resource} \tab Removes a specific tag associated with an Amazon Comprehend resource 
#' }
#'
#' @rdname comprehend
#' @export
comprehend <- function() {
  paws.machine.learning::comprehend()
}

#' AWS Comprehend Medical
#'
#' @description
#' Comprehend Medical extracts structured information from unstructured
#' clinical text. Use these actions to gain insight in your documents.
#'
#' @examples
#' \donttest{svc <- comprehendmedical()
#' svc$detect_entities(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=comprehendmedical_detect_entities]{detect_entities} \tab Inspects the clinical text for a variety of medical entities and returns specific information about them such as entity category, location, and confidence score on that information \cr
#'  \link[=comprehendmedical_detect_phi]{detect_phi} \tab Inspects the clinical text for personal health information (PHI) entities and entity category, location, and confidence score on that information 
#' }
#'
#' @rdname comprehendmedical
#' @export
comprehendmedical <- function() {
  paws.machine.learning::comprehendmedical()
}

#' Amazon Lex Model Building Service
#'
#' @description
#' Amazon Lex Build-Time Actions
#' 
#' Amazon Lex is an AWS service for building conversational voice and text
#' interfaces. Use these actions to create, update, and delete
#' conversational bots for new and existing client applications.
#'
#' @examples
#' # This example shows how to get configuration information for a bot.
#' \donttest{svc <- lexmodelbuildingservice()
#' svc$get_bot(
#'   name = "DocOrderPizza",
#'   versionOrAlias = "$LATEST"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=lexmodelbuildingservice_create_bot_version]{create_bot_version} \tab Creates a new version of the bot based on the $LATEST version \cr
#'  \link[=lexmodelbuildingservice_create_intent_version]{create_intent_version} \tab Creates a new version of an intent based on the $LATEST version of the intent \cr
#'  \link[=lexmodelbuildingservice_create_slot_type_version]{create_slot_type_version} \tab Creates a new version of a slot type based on the $LATEST version of the specified slot type \cr
#'  \link[=lexmodelbuildingservice_delete_bot]{delete_bot} \tab Deletes all versions of the bot, including the $LATEST version \cr
#'  \link[=lexmodelbuildingservice_delete_bot_alias]{delete_bot_alias} \tab Deletes an alias for the specified bot \cr
#'  \link[=lexmodelbuildingservice_delete_bot_channel_association]{delete_bot_channel_association} \tab Deletes the association between an Amazon Lex bot and a messaging platform \cr
#'  \link[=lexmodelbuildingservice_delete_bot_version]{delete_bot_version} \tab Deletes a specific version of a bot \cr
#'  \link[=lexmodelbuildingservice_delete_intent]{delete_intent} \tab Deletes all versions of the intent, including the $LATEST version \cr
#'  \link[=lexmodelbuildingservice_delete_intent_version]{delete_intent_version} \tab Deletes a specific version of an intent \cr
#'  \link[=lexmodelbuildingservice_delete_slot_type]{delete_slot_type} \tab Deletes all versions of the slot type, including the $LATEST version \cr
#'  \link[=lexmodelbuildingservice_delete_slot_type_version]{delete_slot_type_version} \tab Deletes a specific version of a slot type \cr
#'  \link[=lexmodelbuildingservice_delete_utterances]{delete_utterances} \tab Deletes stored utterances \cr
#'  \link[=lexmodelbuildingservice_get_bot]{get_bot} \tab Returns metadata information for a specific bot \cr
#'  \link[=lexmodelbuildingservice_get_bot_alias]{get_bot_alias} \tab Returns information about an Amazon Lex bot alias \cr
#'  \link[=lexmodelbuildingservice_get_bot_aliases]{get_bot_aliases} \tab Returns a list of aliases for a specified Amazon Lex bot \cr
#'  \link[=lexmodelbuildingservice_get_bot_channel_association]{get_bot_channel_association} \tab Returns information about the association between an Amazon Lex bot and a messaging platform \cr
#'  \link[=lexmodelbuildingservice_get_bot_channel_associations]{get_bot_channel_associations} \tab Returns a list of all of the channels associated with the specified bot \cr
#'  \link[=lexmodelbuildingservice_get_bot_versions]{get_bot_versions} \tab Gets information about all of the versions of a bot \cr
#'  \link[=lexmodelbuildingservice_get_bots]{get_bots} \tab Returns bot information as follows: - If you provide the nameContains field, the response includes information for the $LATEST version of all bots whose name contains the specified string\cr
#'  \link[=lexmodelbuildingservice_get_builtin_intent]{get_builtin_intent} \tab Returns information about a built-in intent \cr
#'  \link[=lexmodelbuildingservice_get_builtin_intents]{get_builtin_intents} \tab Gets a list of built-in intents that meet the specified criteria \cr
#'  \link[=lexmodelbuildingservice_get_builtin_slot_types]{get_builtin_slot_types} \tab Gets a list of built-in slot types that meet the specified criteria \cr
#'  \link[=lexmodelbuildingservice_get_export]{get_export} \tab Exports the contents of a Amazon Lex resource in a specified format \cr
#'  \link[=lexmodelbuildingservice_get_import]{get_import} \tab Gets information about an import job started with the StartImport operation \cr
#'  \link[=lexmodelbuildingservice_get_intent]{get_intent} \tab Returns information about an intent \cr
#'  \link[=lexmodelbuildingservice_get_intent_versions]{get_intent_versions} \tab Gets information about all of the versions of an intent \cr
#'  \link[=lexmodelbuildingservice_get_intents]{get_intents} \tab Returns intent information as follows: - If you specify the nameContains field, returns the $LATEST version of all intents that contain the specified string \cr
#'  \link[=lexmodelbuildingservice_get_slot_type]{get_slot_type} \tab Returns information about a specific version of a slot type \cr
#'  \link[=lexmodelbuildingservice_get_slot_type_versions]{get_slot_type_versions} \tab Gets information about all versions of a slot type \cr
#'  \link[=lexmodelbuildingservice_get_slot_types]{get_slot_types} \tab Returns slot type information as follows: - If you specify the nameContains field, returns the $LATEST version of all slot types that contain the specified string \cr
#'  \link[=lexmodelbuildingservice_get_utterances_view]{get_utterances_view} \tab Use the GetUtterancesView operation to get information about the utterances that your users have made to your bot \cr
#'  \link[=lexmodelbuildingservice_put_bot]{put_bot} \tab Creates an Amazon Lex conversational bot or replaces an existing bot \cr
#'  \link[=lexmodelbuildingservice_put_bot_alias]{put_bot_alias} \tab Creates an alias for the specified version of the bot or replaces an alias for the specified bot \cr
#'  \link[=lexmodelbuildingservice_put_intent]{put_intent} \tab Creates an intent or replaces an existing intent \cr
#'  \link[=lexmodelbuildingservice_put_slot_type]{put_slot_type} \tab Creates a custom slot type or replaces an existing custom slot type \cr
#'  \link[=lexmodelbuildingservice_start_import]{start_import} \tab Starts a job to import a resource to Amazon Lex 
#' }
#'
#' @rdname lexmodelbuildingservice
#' @export
lexmodelbuildingservice <- function() {
  paws.machine.learning::lexmodelbuildingservice()
}

#' Amazon Lex Runtime Service
#'
#' @description
#' Amazon Lex provides both build and runtime endpoints. Each endpoint
#' provides a set of operations (API). Your conversational bot uses the
#' runtime API to understand user utterances (user input text or voice).
#' For example, suppose a user says \"I want pizza\", your bot sends this
#' input to Amazon Lex using the runtime API. Amazon Lex recognizes that
#' the user request is for the OrderPizza intent (one of the intents
#' defined in the bot). Then Amazon Lex engages in user conversation on
#' behalf of the bot to elicit required information (slot values, such as
#' pizza size and crust type), and then performs fulfillment activity (that
#' you configured when you created the bot). You use the build-time API to
#' create and manage your Amazon Lex bot. For a list of build-time
#' operations, see the build-time API, .
#'
#' @examples
#' \donttest{svc <- lexruntimeservice()
#' svc$post_content(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=lexruntimeservice_post_content]{post_content} \tab Sends user input (text or speech) to Amazon Lex\cr
#'  \link[=lexruntimeservice_post_text]{post_text} \tab Sends user input (text-only) to Amazon Lex 
#' }
#'
#' @rdname lexruntimeservice
#' @export
lexruntimeservice <- function() {
  paws.machine.learning::lexruntimeservice()
}

#' Amazon Machine Learning
#'
#' @description
#' Definition of the public APIs exposed by Amazon Machine Learning
#'
#' @examples
#' \donttest{svc <- machinelearning()
#' svc$add_tags(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=machinelearning_add_tags]{add_tags} \tab Adds one or more tags to an object, up to a limit of 10 \cr
#'  \link[=machinelearning_create_batch_prediction]{create_batch_prediction} \tab Generates predictions for a group of observations \cr
#'  \link[=machinelearning_create_data_source_from_rds]{create_data_source_from_rds} \tab Creates a DataSource object from an Amazon Relational Database Service (Amazon RDS) \cr
#'  \link[=machinelearning_create_data_source_from_redshift]{create_data_source_from_redshift} \tab Creates a DataSource from a database hosted on an Amazon Redshift cluster \cr
#'  \link[=machinelearning_create_data_source_from_s3]{create_data_source_from_s3} \tab Creates a DataSource object \cr
#'  \link[=machinelearning_create_evaluation]{create_evaluation} \tab Creates a new Evaluation of an MLModel \cr
#'  \link[=machinelearning_create_ml_model]{create_ml_model} \tab Creates a new MLModel using the DataSource and the recipe as information sources \cr
#'  \link[=machinelearning_create_realtime_endpoint]{create_realtime_endpoint} \tab Creates a real-time endpoint for the MLModel \cr
#'  \link[=machinelearning_delete_batch_prediction]{delete_batch_prediction} \tab Assigns the DELETED status to a BatchPrediction, rendering it unusable \cr
#'  \link[=machinelearning_delete_data_source]{delete_data_source} \tab Assigns the DELETED status to a DataSource, rendering it unusable \cr
#'  \link[=machinelearning_delete_evaluation]{delete_evaluation} \tab Assigns the DELETED status to an Evaluation, rendering it unusable \cr
#'  \link[=machinelearning_delete_ml_model]{delete_ml_model} \tab Assigns the DELETED status to an MLModel, rendering it unusable \cr
#'  \link[=machinelearning_delete_realtime_endpoint]{delete_realtime_endpoint} \tab Deletes a real time endpoint of an MLModel \cr
#'  \link[=machinelearning_delete_tags]{delete_tags} \tab Deletes the specified tags associated with an ML object \cr
#'  \link[=machinelearning_describe_batch_predictions]{describe_batch_predictions} \tab Returns a list of BatchPrediction operations that match the search criteria in the request \cr
#'  \link[=machinelearning_describe_data_sources]{describe_data_sources} \tab Returns a list of DataSource that match the search criteria in the request \cr
#'  \link[=machinelearning_describe_evaluations]{describe_evaluations} \tab Returns a list of DescribeEvaluations that match the search criteria in the request \cr
#'  \link[=machinelearning_describe_ml_models]{describe_ml_models} \tab Returns a list of MLModel that match the search criteria in the request \cr
#'  \link[=machinelearning_describe_tags]{describe_tags} \tab Describes one or more of the tags for your Amazon ML object \cr
#'  \link[=machinelearning_get_batch_prediction]{get_batch_prediction} \tab Returns a BatchPrediction that includes detailed metadata, status, and data file information for a Batch Prediction request\cr
#'  \link[=machinelearning_get_data_source]{get_data_source} \tab Returns a DataSource that includes metadata and data file information, as well as the current status of the DataSource \cr
#'  \link[=machinelearning_get_evaluation]{get_evaluation} \tab Returns an Evaluation that includes metadata as well as the current status of the Evaluation \cr
#'  \link[=machinelearning_get_ml_model]{get_ml_model} \tab Returns an MLModel that includes detailed metadata, data source information, and the current status of the MLModel \cr
#'  \link[=machinelearning_predict]{predict} \tab Generates a prediction for the observation using the specified ML Model \cr
#'  \link[=machinelearning_update_batch_prediction]{update_batch_prediction} \tab Updates the BatchPredictionName of a BatchPrediction \cr
#'  \link[=machinelearning_update_data_source]{update_data_source} \tab Updates the DataSourceName of a DataSource \cr
#'  \link[=machinelearning_update_evaluation]{update_evaluation} \tab Updates the EvaluationName of an Evaluation \cr
#'  \link[=machinelearning_update_ml_model]{update_ml_model} \tab Updates the MLModelName and the ScoreThreshold of an MLModel 
#' }
#'
#' @rdname machinelearning
#' @export
machinelearning <- function() {
  paws.machine.learning::machinelearning()
}

#' Amazon Polly
#'
#' @description
#' Amazon Polly is a web service that makes it easy to synthesize speech
#' from text.
#' 
#' The Amazon Polly service provides API operations for synthesizing
#' high-quality speech from plain text and Speech Synthesis Markup Language
#' (SSML), along with managing pronunciations lexicons that enable you to
#' get the best results for your application domain.
#'
#' @examples
#' # Deletes a specified pronunciation lexicon stored in an AWS Region.
#' \donttest{svc <- polly()
#' svc$delete_lexicon(
#'   Name = "example"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=polly_delete_lexicon]{delete_lexicon} \tab Deletes the specified pronunciation lexicon stored in an AWS Region \cr
#'  \link[=polly_describe_voices]{describe_voices} \tab Returns the list of voices that are available for use when requesting speech synthesis \cr
#'  \link[=polly_get_lexicon]{get_lexicon} \tab Returns the content of the specified pronunciation lexicon stored in an AWS Region \cr
#'  \link[=polly_get_speech_synthesis_task]{get_speech_synthesis_task} \tab Retrieves a specific SpeechSynthesisTask object based on its TaskID \cr
#'  \link[=polly_list_lexicons]{list_lexicons} \tab Returns a list of pronunciation lexicons stored in an AWS Region \cr
#'  \link[=polly_list_speech_synthesis_tasks]{list_speech_synthesis_tasks} \tab Returns a list of SpeechSynthesisTask objects ordered by their creation date \cr
#'  \link[=polly_put_lexicon]{put_lexicon} \tab Stores a pronunciation lexicon in an AWS Region \cr
#'  \link[=polly_start_speech_synthesis_task]{start_speech_synthesis_task} \tab Allows the creation of an asynchronous synthesis task, by starting a new SpeechSynthesisTask\cr
#'  \link[=polly_synthesize_speech]{synthesize_speech} \tab Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes 
#' }
#'
#' @rdname polly
#' @export
polly <- function() {
  paws.machine.learning::polly()
}

#' Amazon Rekognition
#'
#' @description
#' This is the Amazon Rekognition API reference.
#'
#' @examples
#' # This operation compares the largest face detected in the source image
#' # with each face detected in the target image.
#' \donttest{svc <- rekognition()
#' svc$compare_faces(
#'   SimilarityThreshold = 90L,
#'   SourceImage = list(
#'     S3Object = list(
#'       Bucket = "mybucket",
#'       Name = "mysourceimage"
#'     )
#'   ),
#'   TargetImage = list(
#'     S3Object = list(
#'       Bucket = "mybucket",
#'       Name = "mytargetimage"
#'     )
#'   )
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=rekognition_compare_faces]{compare_faces} \tab Compares a face in the _source_ input image with each of the 100 largest faces detected in the _target_ input image \cr
#'  \link[=rekognition_create_collection]{create_collection} \tab Creates a collection in an AWS Region \cr
#'  \link[=rekognition_create_stream_processor]{create_stream_processor} \tab Creates an Amazon Rekognition stream processor that you can use to detect and recognize faces in a streaming video \cr
#'  \link[=rekognition_delete_collection]{delete_collection} \tab Deletes the specified collection \cr
#'  \link[=rekognition_delete_faces]{delete_faces} \tab Deletes faces from a collection \cr
#'  \link[=rekognition_delete_stream_processor]{delete_stream_processor} \tab Deletes the stream processor identified by Name \cr
#'  \link[=rekognition_describe_collection]{describe_collection} \tab Describes the specified collection \cr
#'  \link[=rekognition_describe_stream_processor]{describe_stream_processor} \tab Provides information about a stream processor created by CreateStreamProcessor \cr
#'  \link[=rekognition_detect_faces]{detect_faces} \tab Detects faces within an image that is provided as input \cr
#'  \link[=rekognition_detect_labels]{detect_labels} \tab Detects instances of real-world entities within an image (JPEG or PNG) provided as input \cr
#'  \link[=rekognition_detect_moderation_labels]{detect_moderation_labels} \tab Detects explicit or suggestive adult content in a specified JPEG or PNG format image \cr
#'  \link[=rekognition_detect_text]{detect_text} \tab Detects text in the input image and converts it into machine-readable text \cr
#'  \link[=rekognition_get_celebrity_info]{get_celebrity_info} \tab Gets the name and additional information about a celebrity based on his or her Amazon Rekognition ID \cr
#'  \link[=rekognition_get_celebrity_recognition]{get_celebrity_recognition} \tab Gets the celebrity recognition results for a Amazon Rekognition Video analysis started by StartCelebrityRecognition \cr
#'  \link[=rekognition_get_content_moderation]{get_content_moderation} \tab Gets the content moderation analysis results for a Amazon Rekognition Video analysis started by StartContentModeration \cr
#'  \link[=rekognition_get_face_detection]{get_face_detection} \tab Gets face detection results for a Amazon Rekognition Video analysis started by StartFaceDetection \cr
#'  \link[=rekognition_get_face_search]{get_face_search} \tab Gets the face search results for Amazon Rekognition Video face search started by StartFaceSearch \cr
#'  \link[=rekognition_get_label_detection]{get_label_detection} \tab Gets the label detection results of a Amazon Rekognition Video analysis started by StartLabelDetection \cr
#'  \link[=rekognition_get_person_tracking]{get_person_tracking} \tab Gets the path tracking results of a Amazon Rekognition Video analysis started by StartPersonTracking \cr
#'  \link[=rekognition_index_faces]{index_faces} \tab Detects faces in the input image and adds them to the specified collection \cr
#'  \link[=rekognition_list_collections]{list_collections} \tab Returns list of collection IDs in your account \cr
#'  \link[=rekognition_list_faces]{list_faces} \tab Returns metadata for faces in the specified collection \cr
#'  \link[=rekognition_list_stream_processors]{list_stream_processors} \tab Gets a list of stream processors that you have created with CreateStreamProcessor \cr
#'  \link[=rekognition_recognize_celebrities]{recognize_celebrities} \tab Returns an array of celebrities recognized in the input image \cr
#'  \link[=rekognition_search_faces]{search_faces} \tab For a given input face ID, searches for matching faces in the collection the face belongs to \cr
#'  \link[=rekognition_search_faces_by_image]{search_faces_by_image} \tab For a given input image, first detects the largest face in the image, and then searches the specified collection for matching faces\cr
#'  \link[=rekognition_start_celebrity_recognition]{start_celebrity_recognition} \tab Starts asynchronous recognition of celebrities in a stored video \cr
#'  \link[=rekognition_start_content_moderation]{start_content_moderation} \tab Starts asynchronous detection of explicit or suggestive adult content in a stored video \cr
#'  \link[=rekognition_start_face_detection]{start_face_detection} \tab Starts asynchronous detection of faces in a stored video \cr
#'  \link[=rekognition_start_face_search]{start_face_search} \tab Starts the asynchronous search for faces in a collection that match the faces of persons detected in a stored video \cr
#'  \link[=rekognition_start_label_detection]{start_label_detection} \tab Starts asynchronous detection of labels in a stored video \cr
#'  \link[=rekognition_start_person_tracking]{start_person_tracking} \tab Starts the asynchronous tracking of a person's path in a stored video \cr
#'  \link[=rekognition_start_stream_processor]{start_stream_processor} \tab Starts processing a stream processor \cr
#'  \link[=rekognition_stop_stream_processor]{stop_stream_processor} \tab Stops a running stream processor that was created by CreateStreamProcessor 
#' }
#'
#' @rdname rekognition
#' @export
rekognition <- function() {
  paws.machine.learning::rekognition()
}

#' Amazon SageMaker Service
#'
#' @description
#' Provides APIs for creating and managing Amazon SageMaker resources.
#'
#' @examples
#' \donttest{svc <- sagemaker()
#' svc$add_tags(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=sagemaker_add_tags]{add_tags} \tab Adds or overwrites one or more tags for the specified Amazon SageMaker resource \cr
#'  \link[=sagemaker_create_algorithm]{create_algorithm} \tab Create a machine learning algorithm that you can use in Amazon SageMaker and list in the AWS Marketplace \cr
#'  \link[=sagemaker_create_code_repository]{create_code_repository} \tab Creates a Git repository as a resource in your Amazon SageMaker account \cr
#'  \link[=sagemaker_create_compilation_job]{create_compilation_job} \tab Starts a model compilation job \cr
#'  \link[=sagemaker_create_endpoint]{create_endpoint} \tab Creates an endpoint using the endpoint configuration specified in the request \cr
#'  \link[=sagemaker_create_endpoint_config]{create_endpoint_config} \tab Creates an endpoint configuration that Amazon SageMaker hosting services uses to deploy models \cr
#'  \link[=sagemaker_create_hyper_parameter_tuning_job]{create_hyper_parameter_tuning_job} \tab Starts a hyperparameter tuning job \cr
#'  \link[=sagemaker_create_labeling_job]{create_labeling_job} \tab Creates a job that uses workers to label the data objects in your input dataset \cr
#'  \link[=sagemaker_create_model]{create_model} \tab Creates a model in Amazon SageMaker \cr
#'  \link[=sagemaker_create_model_package]{create_model_package} \tab Creates a model package that you can use to create Amazon SageMaker models or list on AWS Marketplace \cr
#'  \link[=sagemaker_create_notebook_instance]{create_notebook_instance} \tab Creates an Amazon SageMaker notebook instance \cr
#'  \link[=sagemaker_create_notebook_instance_lifecycle_config]{create_notebook_instance_lifecycle_config} \tab Creates a lifecycle configuration that you can associate with a notebook instance \cr
#'  \link[=sagemaker_create_presigned_notebook_instance_url]{create_presigned_notebook_instance_url} \tab Returns a URL that you can use to connect to the Jupyter server from a notebook instance \cr
#'  \link[=sagemaker_create_training_job]{create_training_job} \tab Starts a model training job \cr
#'  \link[=sagemaker_create_transform_job]{create_transform_job} \tab Starts a transform job \cr
#'  \link[=sagemaker_create_workteam]{create_workteam} \tab Creates a new work team for labeling your data \cr
#'  \link[=sagemaker_delete_algorithm]{delete_algorithm} \tab Removes the specified algorithm from your account \cr
#'  \link[=sagemaker_delete_code_repository]{delete_code_repository} \tab Deletes the specified Git repository from your account \cr
#'  \link[=sagemaker_delete_endpoint]{delete_endpoint} \tab Deletes an endpoint \cr
#'  \link[=sagemaker_delete_endpoint_config]{delete_endpoint_config} \tab Deletes an endpoint configuration \cr
#'  \link[=sagemaker_delete_model]{delete_model} \tab Deletes a model \cr
#'  \link[=sagemaker_delete_model_package]{delete_model_package} \tab Deletes a model package \cr
#'  \link[=sagemaker_delete_notebook_instance]{delete_notebook_instance} \tab Deletes an Amazon SageMaker notebook instance \cr
#'  \link[=sagemaker_delete_notebook_instance_lifecycle_config]{delete_notebook_instance_lifecycle_config} \tab Deletes a notebook instance lifecycle configuration \cr
#'  \link[=sagemaker_delete_tags]{delete_tags} \tab Deletes the specified tags from an Amazon SageMaker resource \cr
#'  \link[=sagemaker_delete_workteam]{delete_workteam} \tab Deletes an existing work team \cr
#'  \link[=sagemaker_describe_algorithm]{describe_algorithm} \tab Returns a description of the specified algorithm that is in your account \cr
#'  \link[=sagemaker_describe_code_repository]{describe_code_repository} \tab Gets details about the specified Git repository \cr
#'  \link[=sagemaker_describe_compilation_job]{describe_compilation_job} \tab Returns information about a model compilation job \cr
#'  \link[=sagemaker_describe_endpoint]{describe_endpoint} \tab Returns the description of an endpoint \cr
#'  \link[=sagemaker_describe_endpoint_config]{describe_endpoint_config} \tab Returns the description of an endpoint configuration created using the CreateEndpointConfig API \cr
#'  \link[=sagemaker_describe_hyper_parameter_tuning_job]{describe_hyper_parameter_tuning_job} \tab Gets a description of a hyperparameter tuning job \cr
#'  \link[=sagemaker_describe_labeling_job]{describe_labeling_job} \tab Gets information about a labeling job \cr
#'  \link[=sagemaker_describe_model]{describe_model} \tab Describes a model that you created using the CreateModel API \cr
#'  \link[=sagemaker_describe_model_package]{describe_model_package} \tab Returns a description of the specified model package, which is used to create Amazon SageMaker models or list them on AWS Marketplace \cr
#'  \link[=sagemaker_describe_notebook_instance]{describe_notebook_instance} \tab Returns information about a notebook instance \cr
#'  \link[=sagemaker_describe_notebook_instance_lifecycle_config]{describe_notebook_instance_lifecycle_config} \tab Returns a description of a notebook instance lifecycle configuration \cr
#'  \link[=sagemaker_describe_subscribed_workteam]{describe_subscribed_workteam} \tab Gets information about a work team provided by a vendor \cr
#'  \link[=sagemaker_describe_training_job]{describe_training_job} \tab Returns information about a training job \cr
#'  \link[=sagemaker_describe_transform_job]{describe_transform_job} \tab Returns information about a transform job \cr
#'  \link[=sagemaker_describe_workteam]{describe_workteam} \tab Gets information about a specific work team \cr
#'  \link[=sagemaker_get_search_suggestions]{get_search_suggestions} \tab An auto-complete API for the search functionality in the Amazon SageMaker console \cr
#'  \link[=sagemaker_list_algorithms]{list_algorithms} \tab Lists the machine learning algorithms that have been created \cr
#'  \link[=sagemaker_list_code_repositories]{list_code_repositories} \tab Gets a list of the Git repositories in your account \cr
#'  \link[=sagemaker_list_compilation_jobs]{list_compilation_jobs} \tab Lists model compilation jobs that satisfy various filters \cr
#'  \link[=sagemaker_list_endpoint_configs]{list_endpoint_configs} \tab Lists endpoint configurations \cr
#'  \link[=sagemaker_list_endpoints]{list_endpoints} \tab Lists endpoints \cr
#'  \link[=sagemaker_list_hyper_parameter_tuning_jobs]{list_hyper_parameter_tuning_jobs} \tab Gets a list of HyperParameterTuningJobSummary objects that describe the hyperparameter tuning jobs launched in your account \cr
#'  \link[=sagemaker_list_labeling_jobs]{list_labeling_jobs} \tab Gets a list of labeling jobs \cr
#'  \link[=sagemaker_list_labeling_jobs_for_workteam]{list_labeling_jobs_for_workteam} \tab Gets a list of labeling jobs assigned to a specified work team \cr
#'  \link[=sagemaker_list_model_packages]{list_model_packages} \tab Lists the model packages that have been created \cr
#'  \link[=sagemaker_list_models]{list_models} \tab Lists models created with the CreateModel API \cr
#'  \link[=sagemaker_list_notebook_instance_lifecycle_configs]{list_notebook_instance_lifecycle_configs} \tab Lists notebook instance lifestyle configurations created with the CreateNotebookInstanceLifecycleConfig API \cr
#'  \link[=sagemaker_list_notebook_instances]{list_notebook_instances} \tab Returns a list of the Amazon SageMaker notebook instances in the requester's account in an AWS Region \cr
#'  \link[=sagemaker_list_subscribed_workteams]{list_subscribed_workteams} \tab Gets a list of the work teams that you are subscribed to in the AWS Marketplace \cr
#'  \link[=sagemaker_list_tags]{list_tags} \tab Returns the tags for the specified Amazon SageMaker resource \cr
#'  \link[=sagemaker_list_training_jobs]{list_training_jobs} \tab Lists training jobs \cr
#'  \link[=sagemaker_list_training_jobs_for_hyper_parameter_tuning_job]{list_training_jobs_for_hyper_parameter_tuning_job} \tab Gets a list of TrainingJobSummary objects that describe the training jobs that a hyperparameter tuning job launched \cr
#'  \link[=sagemaker_list_transform_jobs]{list_transform_jobs} \tab Lists transform jobs \cr
#'  \link[=sagemaker_list_workteams]{list_workteams} \tab Gets a list of work teams that you have defined in a region \cr
#'  \link[=sagemaker_render_ui_template]{render_ui_template} \tab Renders the UI template so that you can preview the worker's experience \cr
#'  \link[=sagemaker_search]{search} \tab Finds Amazon SageMaker resources that match a search query \cr
#'  \link[=sagemaker_start_notebook_instance]{start_notebook_instance} \tab Launches an ML compute instance with the latest version of the libraries and attaches your ML storage volume \cr
#'  \link[=sagemaker_stop_compilation_job]{stop_compilation_job} \tab Stops a model compilation job \cr
#'  \link[=sagemaker_stop_hyper_parameter_tuning_job]{stop_hyper_parameter_tuning_job} \tab Stops a running hyperparameter tuning job and all running training jobs that the tuning job launched \cr
#'  \link[=sagemaker_stop_labeling_job]{stop_labeling_job} \tab Stops a running labeling job \cr
#'  \link[=sagemaker_stop_notebook_instance]{stop_notebook_instance} \tab Terminates the ML compute instance \cr
#'  \link[=sagemaker_stop_training_job]{stop_training_job} \tab Stops a training job \cr
#'  \link[=sagemaker_stop_transform_job]{stop_transform_job} \tab Stops a transform job \cr
#'  \link[=sagemaker_update_code_repository]{update_code_repository} \tab Updates the specified Git repository with the specified values \cr
#'  \link[=sagemaker_update_endpoint]{update_endpoint} \tab Deploys the new EndpointConfig specified in the request, switches to using newly created endpoint, and then deletes resources provisioned for the endpoint using the previous EndpointConfig (there is no availability loss)\cr
#'  \link[=sagemaker_update_endpoint_weights_and_capacities]{update_endpoint_weights_and_capacities} \tab Updates variant weight of one or more variants associated with an existing endpoint, or capacity of one variant associated with an existing endpoint \cr
#'  \link[=sagemaker_update_notebook_instance]{update_notebook_instance} \tab Updates a notebook instance \cr
#'  \link[=sagemaker_update_notebook_instance_lifecycle_config]{update_notebook_instance_lifecycle_config} \tab Updates a notebook instance lifecycle configuration created with the CreateNotebookInstanceLifecycleConfig API \cr
#'  \link[=sagemaker_update_workteam]{update_workteam} \tab Updates an existing work team with new member definitions or description 
#' }
#'
#' @rdname sagemaker
#' @export
sagemaker <- function() {
  paws.machine.learning::sagemaker()
}

#' Amazon SageMaker Runtime
#'
#' @description
#' The Amazon SageMaker runtime API.
#'
#' @examples
#' \donttest{svc <- sagemakerruntime()
#' svc$invoke_endpoint(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=sagemakerruntime_invoke_endpoint]{invoke_endpoint} \tab After you deploy a model into production using Amazon SageMaker hosting services, your client applications use this API to get inferences from the model hosted at the specified endpoint
#' }
#'
#' @rdname sagemakerruntime
#' @export
sagemakerruntime <- function() {
  paws.machine.learning::sagemakerruntime()
}

#' Amazon Textract
#'
#' @description
#' Amazon Textract detects and analyzes text in documents and converts it
#' into machine-readable text. This is the API reference documentation for
#' Amazon Textract.
#'
#' @examples
#' \donttest{svc <- textract()
#' svc$analyze_document(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=textract_analyze_document]{analyze_document} \tab Analyzes an input document for relationships between detected items \cr
#'  \link[=textract_detect_document_text]{detect_document_text} \tab Detects text in the input document \cr
#'  \link[=textract_get_document_analysis]{get_document_analysis} \tab Gets the results for an Amazon Textract asynchronous operation that analyzes text in a document \cr
#'  \link[=textract_get_document_text_detection]{get_document_text_detection} \tab Gets the results for an Amazon Textract asynchronous operation that detects text in a document \cr
#'  \link[=textract_start_document_analysis]{start_document_analysis} \tab Starts asynchronous analysis of an input document for relationships between detected items such as key and value pairs, tables, and selection elements\cr
#'  \link[=textract_start_document_text_detection]{start_document_text_detection} \tab Starts the asynchronous detection of text in a document 
#' }
#'
#' @rdname textract
#' @export
textract <- function() {
  paws.machine.learning::textract()
}

#' Amazon Transcribe Service
#'
#' @description
#' Operations and objects for transcribing speech to text.
#'
#' @examples
#' \donttest{svc <- transcribeservice()
#' svc$create_vocabulary(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=transcribeservice_create_vocabulary]{create_vocabulary} \tab Creates a new custom vocabulary that you can use to change the way Amazon Transcribe handles transcription of an audio file \cr
#'  \link[=transcribeservice_delete_transcription_job]{delete_transcription_job} \tab Deletes a previously submitted transcription job along with any other generated results such as the transcription, models, and so on\cr
#'  \link[=transcribeservice_delete_vocabulary]{delete_vocabulary} \tab Deletes a vocabulary from Amazon Transcribe \cr
#'  \link[=transcribeservice_get_transcription_job]{get_transcription_job} \tab Returns information about a transcription job \cr
#'  \link[=transcribeservice_get_vocabulary]{get_vocabulary} \tab Gets information about a vocabulary \cr
#'  \link[=transcribeservice_list_transcription_jobs]{list_transcription_jobs} \tab Lists transcription jobs with the specified status \cr
#'  \link[=transcribeservice_list_vocabularies]{list_vocabularies} \tab Returns a list of vocabularies that match the specified criteria \cr
#'  \link[=transcribeservice_start_transcription_job]{start_transcription_job} \tab Starts an asynchronous job to transcribe speech to text \cr
#'  \link[=transcribeservice_update_vocabulary]{update_vocabulary} \tab Updates an existing vocabulary with new values 
#' }
#'
#' @rdname transcribeservice
#' @export
transcribeservice <- function() {
  paws.machine.learning::transcribeservice()
}

#' Amazon Translate
#'
#' @description
#' Provides translation between one source language and another of the same
#' set of languages.
#'
#' @examples
#' \donttest{svc <- translate()
#' svc$delete_terminology(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=translate_delete_terminology]{delete_terminology} \tab A synchronous action that deletes a custom terminology \cr
#'  \link[=translate_get_terminology]{get_terminology} \tab Retrieves a custom terminology \cr
#'  \link[=translate_import_terminology]{import_terminology} \tab Creates or updates a custom terminology, depending on whether or not one already exists for the given terminology name\cr
#'  \link[=translate_list_terminologies]{list_terminologies} \tab Provides a list of custom terminologies associated with your account \cr
#'  \link[=translate_translate_text]{translate_text} \tab Translates input text from the source language to the target language 
#' }
#'
#' @rdname translate
#' @export
translate <- function() {
  paws.machine.learning::translate()
}

#' Amazon Athena
#'
#' @description
#' Amazon Athena is an interactive query service that lets you use standard
#' SQL to analyze data directly in Amazon S3. You can point Athena at your
#' data in Amazon S3 and run ad-hoc queries and get results in seconds.
#' Athena is serverless, so there is no infrastructure to set up or manage.
#' You pay only for the queries you run. Athena scales
#' automatically---executing queries in parallel---so results are fast,
#' even with large datasets and complex queries. For more information, see
#' [What is Amazon
#' Athena](http://docs.aws.amazon.com/athena/latest/ug/what-is.html) in the
#' *Amazon Athena User Guide*.
#' 
#' If you connect to Athena using the JDBC driver, use version 1.1.0 of the
#' driver or later with the Amazon Athena API. Earlier version drivers do
#' not support the API. For more information and to download the driver,
#' see [Accessing Amazon Athena with
#' JDBC](https://docs.aws.amazon.com/athena/latest/ug/connect-with-jdbc.html).
#' 
#' For code samples using the AWS SDK for Java, see [Examples and Code
#' Samples](https://docs.aws.amazon.com/athena/latest/ug/code-samples.html)
#' in the *Amazon Athena User Guide*.
#'
#' @examples
#' \donttest{svc <- athena()
#' svc$batch_get_named_query(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=athena_batch_get_named_query]{batch_get_named_query} \tab Returns the details of a single named query or a list of up to 50 queries, which you provide as an array of query ID strings \cr
#'  \link[=athena_batch_get_query_execution]{batch_get_query_execution} \tab Returns the details of a single query execution or a list of up to 50 query executions, which you provide as an array of query execution ID strings\cr
#'  \link[=athena_create_named_query]{create_named_query} \tab Creates a named query in the specified workgroup \cr
#'  \link[=athena_create_work_group]{create_work_group} \tab Creates a workgroup with the specified name \cr
#'  \link[=athena_delete_named_query]{delete_named_query} \tab Deletes the named query if you have access to the workgroup in which the query was saved \cr
#'  \link[=athena_delete_work_group]{delete_work_group} \tab Deletes the workgroup with the specified name \cr
#'  \link[=athena_get_named_query]{get_named_query} \tab Returns information about a single query \cr
#'  \link[=athena_get_query_execution]{get_query_execution} \tab Returns information about a single execution of a query if you have access to the workgroup in which the query ran \cr
#'  \link[=athena_get_query_results]{get_query_results} \tab Returns the results of a single query execution specified by QueryExecutionId if you have access to the workgroup in which the query ran \cr
#'  \link[=athena_get_work_group]{get_work_group} \tab Returns information about the workgroup with the specified name \cr
#'  \link[=athena_list_named_queries]{list_named_queries} \tab Provides a list of available query IDs only for queries saved in the specified workgroup \cr
#'  \link[=athena_list_query_executions]{list_query_executions} \tab Provides a list of available query execution IDs for the queries in the specified workgroup \cr
#'  \link[=athena_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags associated with this workgroup \cr
#'  \link[=athena_list_work_groups]{list_work_groups} \tab Lists available workgroups for the account \cr
#'  \link[=athena_start_query_execution]{start_query_execution} \tab Runs the SQL query statements contained in the Query \cr
#'  \link[=athena_stop_query_execution]{stop_query_execution} \tab Stops a query execution \cr
#'  \link[=athena_tag_resource]{tag_resource} \tab Adds one or more tags to the resource, such as a workgroup \cr
#'  \link[=athena_untag_resource]{untag_resource} \tab Removes one or more tags from the workgroup resource \cr
#'  \link[=athena_update_work_group]{update_work_group} \tab Updates the workgroup with the specified name 
#' }
#'
#' @rdname athena
#' @export
athena <- function() {
  paws.analytics::athena()
}

#' Amazon CloudSearch
#'
#' @description
#' Amazon CloudSearch Configuration Service
#' 
#' You use the Amazon CloudSearch configuration service to create,
#' configure, and manage search domains. Configuration service requests are
#' submitted using the AWS Query protocol. AWS Query requests are HTTP or
#' HTTPS requests submitted via HTTP GET or POST with a query parameter
#' named Action.
#' 
#' The endpoint for configuration service requests is region-specific:
#' cloudsearch.*region*.amazonaws.com. For example,
#' cloudsearch.us-east-1.amazonaws.com. For a current list of supported
#' regions and endpoints, see [Regions and
#' Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#cloudsearch_region).
#'
#' @examples
#' \donttest{svc <- cloudsearch()
#' svc$build_suggesters(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=cloudsearch_build_suggesters]{build_suggesters} \tab Indexes the search suggestions \cr
#'  \link[=cloudsearch_create_domain]{create_domain} \tab Creates a new search domain \cr
#'  \link[=cloudsearch_define_analysis_scheme]{define_analysis_scheme} \tab Configures an analysis scheme that can be applied to a text or text-array field to define language-specific text processing options\cr
#'  \link[=cloudsearch_define_expression]{define_expression} \tab Configures an Expression for the search domain \cr
#'  \link[=cloudsearch_define_index_field]{define_index_field} \tab Configures an IndexField for the search domain \cr
#'  \link[=cloudsearch_define_suggester]{define_suggester} \tab Configures a suggester for a domain \cr
#'  \link[=cloudsearch_delete_analysis_scheme]{delete_analysis_scheme} \tab Deletes an analysis scheme \cr
#'  \link[=cloudsearch_delete_domain]{delete_domain} \tab Permanently deletes a search domain and all of its data \cr
#'  \link[=cloudsearch_delete_expression]{delete_expression} \tab Removes an Expression from the search domain \cr
#'  \link[=cloudsearch_delete_index_field]{delete_index_field} \tab Removes an IndexField from the search domain \cr
#'  \link[=cloudsearch_delete_suggester]{delete_suggester} \tab Deletes a suggester \cr
#'  \link[=cloudsearch_describe_analysis_schemes]{describe_analysis_schemes} \tab Gets the analysis schemes configured for a domain \cr
#'  \link[=cloudsearch_describe_availability_options]{describe_availability_options} \tab Gets the availability options configured for a domain \cr
#'  \link[=cloudsearch_describe_domains]{describe_domains} \tab Gets information about the search domains owned by this account \cr
#'  \link[=cloudsearch_describe_expressions]{describe_expressions} \tab Gets the expressions configured for the search domain \cr
#'  \link[=cloudsearch_describe_index_fields]{describe_index_fields} \tab Gets information about the index fields configured for the search domain \cr
#'  \link[=cloudsearch_describe_scaling_parameters]{describe_scaling_parameters} \tab Gets the scaling parameters configured for a domain \cr
#'  \link[=cloudsearch_describe_service_access_policies]{describe_service_access_policies} \tab Gets information about the access policies that control access to the domain's document and search endpoints \cr
#'  \link[=cloudsearch_describe_suggesters]{describe_suggesters} \tab Gets the suggesters configured for a domain \cr
#'  \link[=cloudsearch_index_documents]{index_documents} \tab Tells the search domain to start indexing its documents using the latest indexing options \cr
#'  \link[=cloudsearch_list_domain_names]{list_domain_names} \tab Lists all search domains owned by an account \cr
#'  \link[=cloudsearch_update_availability_options]{update_availability_options} \tab Configures the availability options for a domain \cr
#'  \link[=cloudsearch_update_scaling_parameters]{update_scaling_parameters} \tab Configures scaling parameters for a domain \cr
#'  \link[=cloudsearch_update_service_access_policies]{update_service_access_policies} \tab Configures the access rules that control access to the domain's document and search endpoints 
#' }
#'
#' @rdname cloudsearch
#' @export
cloudsearch <- function() {
  paws.analytics::cloudsearch()
}

#' Amazon CloudSearch Domain
#'
#' @description
#' You use the AmazonCloudSearch2013 API to upload documents to a search
#' domain and search those documents.
#' 
#' The endpoints for submitting `UploadDocuments`, `Search`, and `Suggest`
#' requests are domain-specific. To get the endpoints for your domain, use
#' the Amazon CloudSearch configuration service `DescribeDomains` action.
#' The domain endpoints are also displayed on the domain dashboard in the
#' Amazon CloudSearch console. You submit suggest requests to the search
#' endpoint.
#' 
#' For more information, see the [Amazon CloudSearch Developer
#' Guide](http://docs.aws.amazon.com/cloudsearch/latest/developerguide).
#'
#' @examples
#' \donttest{svc <- cloudsearchdomain()
#' svc$search(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=cloudsearchdomain_search]{search} \tab Retrieves a list of documents that match the specified search criteria\cr
#'  \link[=cloudsearchdomain_suggest]{suggest} \tab Retrieves autocomplete suggestions for a partial query string \cr
#'  \link[=cloudsearchdomain_upload_documents]{upload_documents} \tab Posts a batch of documents to a search domain for indexing 
#' }
#'
#' @rdname cloudsearchdomain
#' @export
cloudsearchdomain <- function() {
  paws.analytics::cloudsearchdomain()
}

#' AWS Data Pipeline
#'
#' @description
#' AWS Data Pipeline configures and manages a data-driven workflow called a
#' pipeline. AWS Data Pipeline handles the details of scheduling and
#' ensuring that data dependencies are met so that your application can
#' focus on processing the data.
#' 
#' AWS Data Pipeline provides a JAR implementation of a task runner called
#' AWS Data Pipeline Task Runner. AWS Data Pipeline Task Runner provides
#' logic for common data management scenarios, such as performing database
#' queries and running data analysis using Amazon Elastic MapReduce (Amazon
#' EMR). You can use AWS Data Pipeline Task Runner as your task runner, or
#' you can write your own task runner to provide custom data management.
#' 
#' AWS Data Pipeline implements two main sets of functionality. Use the
#' first set to create a pipeline and define data sources, schedules,
#' dependencies, and the transforms to be performed on the data. Use the
#' second set in your task runner application to receive the next task
#' ready for processing. The logic for performing the task, such as
#' querying the data, running data analysis, or converting the data from
#' one format to another, is contained within the task runner. The task
#' runner performs the task assigned to it by the web service, reporting
#' progress to the web service as it does so. When the task is done, the
#' task runner reports the final success or failure of the task to the web
#' service.
#'
#' @examples
#' \donttest{svc <- datapipeline()
#' svc$activate_pipeline(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=datapipeline_activate_pipeline]{activate_pipeline} \tab Validates the specified pipeline and starts processing pipeline tasks \cr
#'  \link[=datapipeline_add_tags]{add_tags} \tab Adds or modifies tags for the specified pipeline \cr
#'  \link[=datapipeline_create_pipeline]{create_pipeline} \tab Creates a new, empty pipeline \cr
#'  \link[=datapipeline_deactivate_pipeline]{deactivate_pipeline} \tab Deactivates the specified running pipeline \cr
#'  \link[=datapipeline_delete_pipeline]{delete_pipeline} \tab Deletes a pipeline, its pipeline definition, and its run history \cr
#'  \link[=datapipeline_describe_objects]{describe_objects} \tab Gets the object definitions for a set of objects associated with the pipeline \cr
#'  \link[=datapipeline_describe_pipelines]{describe_pipelines} \tab Retrieves metadata about one or more pipelines \cr
#'  \link[=datapipeline_evaluate_expression]{evaluate_expression} \tab Task runners call EvaluateExpression to evaluate a string in the context of the specified object \cr
#'  \link[=datapipeline_get_pipeline_definition]{get_pipeline_definition} \tab Gets the definition of the specified pipeline \cr
#'  \link[=datapipeline_list_pipelines]{list_pipelines} \tab Lists the pipeline identifiers for all active pipelines that you have permission to access \cr
#'  \link[=datapipeline_poll_for_task]{poll_for_task} \tab Task runners call PollForTask to receive a task to perform from AWS Data Pipeline \cr
#'  \link[=datapipeline_put_pipeline_definition]{put_pipeline_definition} \tab Adds tasks, schedules, and preconditions to the specified pipeline \cr
#'  \link[=datapipeline_query_objects]{query_objects} \tab Queries the specified pipeline for the names of objects that match the specified set of conditions \cr
#'  \link[=datapipeline_remove_tags]{remove_tags} \tab Removes existing tags from the specified pipeline \cr
#'  \link[=datapipeline_report_task_progress]{report_task_progress} \tab Task runners call ReportTaskProgress when assigned a task to acknowledge that it has the task \cr
#'  \link[=datapipeline_report_task_runner_heartbeat]{report_task_runner_heartbeat} \tab Task runners call ReportTaskRunnerHeartbeat every 15 minutes to indicate that they are operational \cr
#'  \link[=datapipeline_set_status]{set_status} \tab Requests that the status of the specified physical or logical pipeline objects be updated in the specified pipeline \cr
#'  \link[=datapipeline_set_task_status]{set_task_status} \tab Task runners call SetTaskStatus to notify AWS Data Pipeline that a task is completed and provide information about the final status\cr
#'  \link[=datapipeline_validate_pipeline_definition]{validate_pipeline_definition} \tab Validates the specified pipeline definition to ensure that it is well formed and can be run without error 
#' }
#'
#' @rdname datapipeline
#' @export
datapipeline <- function() {
  paws.analytics::datapipeline()
}

#' Amazon Elasticsearch Service
#'
#' @description
#' Amazon Elasticsearch Configuration Service
#' 
#' Use the Amazon Elasticsearch configuration API to create, configure, and
#' manage Elasticsearch domains.
#' 
#' The endpoint for configuration service requests is region-specific:
#' es.*region*.amazonaws.com. For example, es.us-east-1.amazonaws.com. For
#' a current list of supported regions and endpoints, see [Regions and
#' Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticsearch-service-regions).
#'
#' @examples
#' \donttest{svc <- elasticsearchservice()
#' svc$add_tags(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=elasticsearchservice_add_tags]{add_tags} \tab Attaches tags to an existing Elasticsearch domain \cr
#'  \link[=elasticsearchservice_cancel_elasticsearch_service_software_update]{cancel_elasticsearch_service_software_update} \tab Cancels a scheduled service software update for an Amazon ES domain \cr
#'  \link[=elasticsearchservice_create_elasticsearch_domain]{create_elasticsearch_domain} \tab Creates a new Elasticsearch domain \cr
#'  \link[=elasticsearchservice_delete_elasticsearch_domain]{delete_elasticsearch_domain} \tab Permanently deletes the specified Elasticsearch domain and all of its data \cr
#'  \link[=elasticsearchservice_delete_elasticsearch_service_role]{delete_elasticsearch_service_role} \tab Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains \cr
#'  \link[=elasticsearchservice_describe_elasticsearch_domain]{describe_elasticsearch_domain} \tab Returns domain configuration information about the specified Elasticsearch domain, including the domain ID, domain endpoint, and domain ARN \cr
#'  \link[=elasticsearchservice_describe_elasticsearch_domain_config]{describe_elasticsearch_domain_config} \tab Provides cluster configuration information about the specified Elasticsearch domain, such as the state, creation date, update version, and update date for cluster options\cr
#'  \link[=elasticsearchservice_describe_elasticsearch_domains]{describe_elasticsearch_domains} \tab Returns domain configuration information about the specified Elasticsearch domains, including the domain ID, domain endpoint, and domain ARN \cr
#'  \link[=elasticsearchservice_describe_elasticsearch_instance_type_limits]{describe_elasticsearch_instance_type_limits} \tab Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion \cr
#'  \link[=elasticsearchservice_describe_reserved_elasticsearch_instance_offerings]{describe_reserved_elasticsearch_instance_offerings} \tab Lists available reserved Elasticsearch instance offerings \cr
#'  \link[=elasticsearchservice_describe_reserved_elasticsearch_instances]{describe_reserved_elasticsearch_instances} \tab Returns information about reserved Elasticsearch instances for this account \cr
#'  \link[=elasticsearchservice_get_compatible_elasticsearch_versions]{get_compatible_elasticsearch_versions} \tab Returns a list of upgrade compatible Elastisearch versions \cr
#'  \link[=elasticsearchservice_get_upgrade_history]{get_upgrade_history} \tab Retrieves the complete history of the last 10 upgrades that were performed on the domain \cr
#'  \link[=elasticsearchservice_get_upgrade_status]{get_upgrade_status} \tab Retrieves the latest status of the last upgrade or upgrade eligibility check that was performed on the domain \cr
#'  \link[=elasticsearchservice_list_domain_names]{list_domain_names} \tab Returns the name of all Elasticsearch domains owned by the current user's account \cr
#'  \link[=elasticsearchservice_list_elasticsearch_instance_types]{list_elasticsearch_instance_types} \tab List all Elasticsearch instance types that are supported for given ElasticsearchVersion \cr
#'  \link[=elasticsearchservice_list_elasticsearch_versions]{list_elasticsearch_versions} \tab List all supported Elasticsearch versions \cr
#'  \link[=elasticsearchservice_list_tags]{list_tags} \tab Returns all tags for the given Elasticsearch domain \cr
#'  \link[=elasticsearchservice_purchase_reserved_elasticsearch_instance_offering]{purchase_reserved_elasticsearch_instance_offering} \tab Allows you to purchase reserved Elasticsearch instances \cr
#'  \link[=elasticsearchservice_remove_tags]{remove_tags} \tab Removes the specified set of tags from the specified Elasticsearch domain \cr
#'  \link[=elasticsearchservice_start_elasticsearch_service_software_update]{start_elasticsearch_service_software_update} \tab Schedules a service software update for an Amazon ES domain \cr
#'  \link[=elasticsearchservice_update_elasticsearch_domain_config]{update_elasticsearch_domain_config} \tab Modifies the cluster configuration of the specified Elasticsearch domain, setting as setting the instance type and the number of instances \cr
#'  \link[=elasticsearchservice_upgrade_elasticsearch_domain]{upgrade_elasticsearch_domain} \tab Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version 
#' }
#'
#' @rdname elasticsearchservice
#' @export
elasticsearchservice <- function() {
  paws.analytics::elasticsearchservice()
}

#' Amazon Elastic MapReduce
#'
#' @description
#' Amazon EMR is a web service that makes it easy to process large amounts
#' of data efficiently. Amazon EMR uses Hadoop processing combined with
#' several AWS products to do tasks such as web indexing, data mining, log
#' file analysis, machine learning, scientific simulation, and data
#' warehousing.
#'
#' @examples
#' \donttest{svc <- emr()
#' svc$add_instance_fleet(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=emr_add_instance_fleet]{add_instance_fleet} \tab Adds an instance fleet to a running cluster \cr
#'  \link[=emr_add_instance_groups]{add_instance_groups} \tab Adds one or more instance groups to a running cluster \cr
#'  \link[=emr_add_job_flow_steps]{add_job_flow_steps} \tab AddJobFlowSteps adds new steps to a running cluster \cr
#'  \link[=emr_add_tags]{add_tags} \tab Adds tags to an Amazon EMR resource \cr
#'  \link[=emr_cancel_steps]{cancel_steps} \tab Cancels a pending step or steps in a running cluster \cr
#'  \link[=emr_create_security_configuration]{create_security_configuration} \tab Creates a security configuration, which is stored in the service and can be specified when a cluster is created \cr
#'  \link[=emr_delete_security_configuration]{delete_security_configuration} \tab Deletes a security configuration \cr
#'  \link[=emr_describe_cluster]{describe_cluster} \tab Provides cluster-level details including status, hardware and software configuration, VPC settings, and so on \cr
#'  \link[=emr_describe_job_flows]{describe_job_flows} \tab This API is deprecated and will eventually be removed \cr
#'  \link[=emr_describe_security_configuration]{describe_security_configuration} \tab Provides the details of a security configuration by returning the configuration JSON \cr
#'  \link[=emr_describe_step]{describe_step} \tab Provides more detail about the cluster step \cr
#'  \link[=emr_list_bootstrap_actions]{list_bootstrap_actions} \tab Provides information about the bootstrap actions associated with a cluster \cr
#'  \link[=emr_list_clusters]{list_clusters} \tab Provides the status of all clusters visible to this AWS account \cr
#'  \link[=emr_list_instance_fleets]{list_instance_fleets} \tab Lists all available details about the instance fleets in a cluster \cr
#'  \link[=emr_list_instance_groups]{list_instance_groups} \tab Provides all available details about the instance groups in a cluster \cr
#'  \link[=emr_list_instances]{list_instances} \tab Provides information for all active EC2 instances and EC2 instances terminated in the last 30 days, up to a maximum of 2,000 \cr
#'  \link[=emr_list_security_configurations]{list_security_configurations} \tab Lists all the security configurations visible to this account, providing their creation dates and times, and their names \cr
#'  \link[=emr_list_steps]{list_steps} \tab Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request \cr
#'  \link[=emr_modify_instance_fleet]{modify_instance_fleet} \tab Modifies the target On-Demand and target Spot capacities for the instance fleet with the specified InstanceFleetID within the cluster specified using ClusterID \cr
#'  \link[=emr_modify_instance_groups]{modify_instance_groups} \tab ModifyInstanceGroups modifies the number of nodes and configuration settings of an instance group \cr
#'  \link[=emr_put_auto_scaling_policy]{put_auto_scaling_policy} \tab Creates or updates an automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster \cr
#'  \link[=emr_remove_auto_scaling_policy]{remove_auto_scaling_policy} \tab Removes an automatic scaling policy from a specified instance group within an EMR cluster \cr
#'  \link[=emr_remove_tags]{remove_tags} \tab Removes tags from an Amazon EMR resource \cr
#'  \link[=emr_run_job_flow]{run_job_flow} \tab RunJobFlow creates and starts running a new cluster (job flow) \cr
#'  \link[=emr_set_termination_protection]{set_termination_protection} \tab SetTerminationProtection locks a cluster (job flow) so the EC2 instances in the cluster cannot be terminated by user intervention, an API call, or in the event of a job-flow error\cr
#'  \link[=emr_set_visible_to_all_users]{set_visible_to_all_users} \tab Sets whether all AWS Identity and Access Management (IAM) users under your account can access the specified clusters (job flows) \cr
#'  \link[=emr_terminate_job_flows]{terminate_job_flows} \tab TerminateJobFlows shuts a list of clusters (job flows) down 
#' }
#'
#' @rdname emr
#' @export
emr <- function() {
  paws.analytics::emr()
}

#' Amazon Kinesis Firehose
#'
#' @description
#' Amazon Kinesis Data Firehose API Reference
#' 
#' Amazon Kinesis Data Firehose is a fully managed service that delivers
#' real-time streaming data to destinations such as Amazon Simple Storage
#' Service (Amazon S3), Amazon Elasticsearch Service (Amazon ES), Amazon
#' Redshift, and Splunk.
#'
#' @examples
#' \donttest{svc <- firehose()
#' svc$create_delivery_stream(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=firehose_create_delivery_stream]{create_delivery_stream} \tab Creates a Kinesis Data Firehose delivery stream \cr
#'  \link[=firehose_delete_delivery_stream]{delete_delivery_stream} \tab Deletes a delivery stream and its data \cr
#'  \link[=firehose_describe_delivery_stream]{describe_delivery_stream} \tab Describes the specified delivery stream and gets the status \cr
#'  \link[=firehose_list_delivery_streams]{list_delivery_streams} \tab Lists your delivery streams in alphabetical order of their names \cr
#'  \link[=firehose_list_tags_for_delivery_stream]{list_tags_for_delivery_stream} \tab Lists the tags for the specified delivery stream \cr
#'  \link[=firehose_put_record]{put_record} \tab Writes a single data record into an Amazon Kinesis Data Firehose delivery stream \cr
#'  \link[=firehose_put_record_batch]{put_record_batch} \tab Writes multiple data records into a delivery stream in a single call, which can achieve higher throughput per producer than when writing single records\cr
#'  \link[=firehose_start_delivery_stream_encryption]{start_delivery_stream_encryption} \tab Enables server-side encryption (SSE) for the delivery stream \cr
#'  \link[=firehose_stop_delivery_stream_encryption]{stop_delivery_stream_encryption} \tab Disables server-side encryption (SSE) for the delivery stream \cr
#'  \link[=firehose_tag_delivery_stream]{tag_delivery_stream} \tab Adds or updates tags for the specified delivery stream \cr
#'  \link[=firehose_untag_delivery_stream]{untag_delivery_stream} \tab Removes tags from the specified delivery stream \cr
#'  \link[=firehose_update_destination]{update_destination} \tab Updates the specified destination of the specified delivery stream 
#' }
#'
#' @rdname firehose
#' @export
firehose <- function() {
  paws.analytics::firehose()
}

#' AWS Glue
#'
#' @description
#' Defines the public endpoint for the AWS Glue service.
#'
#' @examples
#' \donttest{svc <- glue()
#' svc$batch_create_partition(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=glue_batch_create_partition]{batch_create_partition} \tab Creates one or more partitions in a batch operation \cr
#'  \link[=glue_batch_delete_connection]{batch_delete_connection} \tab Deletes a list of connection definitions from the Data Catalog \cr
#'  \link[=glue_batch_delete_partition]{batch_delete_partition} \tab Deletes one or more partitions in a batch operation \cr
#'  \link[=glue_batch_delete_table]{batch_delete_table} \tab Deletes multiple tables at once \cr
#'  \link[=glue_batch_delete_table_version]{batch_delete_table_version} \tab Deletes a specified batch of versions of a table \cr
#'  \link[=glue_batch_get_crawlers]{batch_get_crawlers} \tab Returns a list of resource metadata for a given list of crawler names \cr
#'  \link[=glue_batch_get_dev_endpoints]{batch_get_dev_endpoints} \tab Returns a list of resource metadata for a given list of DevEndpoint names \cr
#'  \link[=glue_batch_get_jobs]{batch_get_jobs} \tab Returns a list of resource metadata for a given list of job names \cr
#'  \link[=glue_batch_get_partition]{batch_get_partition} \tab Retrieves partitions in a batch request \cr
#'  \link[=glue_batch_get_triggers]{batch_get_triggers} \tab Returns a list of resource metadata for a given list of trigger names \cr
#'  \link[=glue_batch_stop_job_run]{batch_stop_job_run} \tab Stops one or more job runs for a specified job definition \cr
#'  \link[=glue_create_classifier]{create_classifier} \tab Creates a classifier in the user's account \cr
#'  \link[=glue_create_connection]{create_connection} \tab Creates a connection definition in the Data Catalog \cr
#'  \link[=glue_create_crawler]{create_crawler} \tab Creates a new crawler with specified targets, role, configuration, and optional schedule \cr
#'  \link[=glue_create_database]{create_database} \tab Creates a new database in a Data Catalog \cr
#'  \link[=glue_create_dev_endpoint]{create_dev_endpoint} \tab Creates a new DevEndpoint \cr
#'  \link[=glue_create_job]{create_job} \tab Creates a new job definition \cr
#'  \link[=glue_create_partition]{create_partition} \tab Creates a new partition \cr
#'  \link[=glue_create_script]{create_script} \tab Transforms a directed acyclic graph (DAG) into code \cr
#'  \link[=glue_create_security_configuration]{create_security_configuration} \tab Creates a new security configuration \cr
#'  \link[=glue_create_table]{create_table} \tab Creates a new table definition in the Data Catalog \cr
#'  \link[=glue_create_trigger]{create_trigger} \tab Creates a new trigger \cr
#'  \link[=glue_create_user_defined_function]{create_user_defined_function} \tab Creates a new function definition in the Data Catalog \cr
#'  \link[=glue_delete_classifier]{delete_classifier} \tab Removes a classifier from the Data Catalog \cr
#'  \link[=glue_delete_connection]{delete_connection} \tab Deletes a connection from the Data Catalog \cr
#'  \link[=glue_delete_crawler]{delete_crawler} \tab Removes a specified crawler from the AWS Glue Data Catalog, unless the crawler state is RUNNING \cr
#'  \link[=glue_delete_database]{delete_database} \tab Removes a specified Database from a Data Catalog \cr
#'  \link[=glue_delete_dev_endpoint]{delete_dev_endpoint} \tab Deletes a specified DevEndpoint \cr
#'  \link[=glue_delete_job]{delete_job} \tab Deletes a specified job definition \cr
#'  \link[=glue_delete_partition]{delete_partition} \tab Deletes a specified partition \cr
#'  \link[=glue_delete_resource_policy]{delete_resource_policy} \tab Deletes a specified policy \cr
#'  \link[=glue_delete_security_configuration]{delete_security_configuration} \tab Deletes a specified security configuration \cr
#'  \link[=glue_delete_table]{delete_table} \tab Removes a table definition from the Data Catalog \cr
#'  \link[=glue_delete_table_version]{delete_table_version} \tab Deletes a specified version of a table \cr
#'  \link[=glue_delete_trigger]{delete_trigger} \tab Deletes a specified trigger \cr
#'  \link[=glue_delete_user_defined_function]{delete_user_defined_function} \tab Deletes an existing function definition from the Data Catalog \cr
#'  \link[=glue_get_catalog_import_status]{get_catalog_import_status} \tab Retrieves the status of a migration operation \cr
#'  \link[=glue_get_classifier]{get_classifier} \tab Retrieve a classifier by name \cr
#'  \link[=glue_get_classifiers]{get_classifiers} \tab Lists all classifier objects in the Data Catalog \cr
#'  \link[=glue_get_connection]{get_connection} \tab Retrieves a connection definition from the Data Catalog \cr
#'  \link[=glue_get_connections]{get_connections} \tab Retrieves a list of connection definitions from the Data Catalog \cr
#'  \link[=glue_get_crawler]{get_crawler} \tab Retrieves metadata for a specified crawler \cr
#'  \link[=glue_get_crawler_metrics]{get_crawler_metrics} \tab Retrieves metrics about specified crawlers \cr
#'  \link[=glue_get_crawlers]{get_crawlers} \tab Retrieves metadata for all crawlers defined in the customer account \cr
#'  \link[=glue_get_data_catalog_encryption_settings]{get_data_catalog_encryption_settings} \tab Retrieves the security configuration for a specified catalog \cr
#'  \link[=glue_get_database]{get_database} \tab Retrieves the definition of a specified database \cr
#'  \link[=glue_get_databases]{get_databases} \tab Retrieves all Databases defined in a given Data Catalog \cr
#'  \link[=glue_get_dataflow_graph]{get_dataflow_graph} \tab Transforms a Python script into a directed acyclic graph (DAG) \cr
#'  \link[=glue_get_dev_endpoint]{get_dev_endpoint} \tab Retrieves information about a specified DevEndpoint \cr
#'  \link[=glue_get_dev_endpoints]{get_dev_endpoints} \tab Retrieves all the DevEndpoints in this AWS account \cr
#'  \link[=glue_get_job]{get_job} \tab Retrieves an existing job definition \cr
#'  \link[=glue_get_job_run]{get_job_run} \tab Retrieves the metadata for a given job run \cr
#'  \link[=glue_get_job_runs]{get_job_runs} \tab Retrieves metadata for all runs of a given job definition \cr
#'  \link[=glue_get_jobs]{get_jobs} \tab Retrieves all current job definitions \cr
#'  \link[=glue_get_mapping]{get_mapping} \tab Creates mappings \cr
#'  \link[=glue_get_partition]{get_partition} \tab Retrieves information about a specified partition \cr
#'  \link[=glue_get_partitions]{get_partitions} \tab Retrieves information about the partitions in a table \cr
#'  \link[=glue_get_plan]{get_plan} \tab Gets code to perform a specified mapping \cr
#'  \link[=glue_get_resource_policy]{get_resource_policy} \tab Retrieves a specified resource policy \cr
#'  \link[=glue_get_security_configuration]{get_security_configuration} \tab Retrieves a specified security configuration \cr
#'  \link[=glue_get_security_configurations]{get_security_configurations} \tab Retrieves a list of all security configurations \cr
#'  \link[=glue_get_table]{get_table} \tab Retrieves the Table definition in a Data Catalog for a specified table \cr
#'  \link[=glue_get_table_version]{get_table_version} \tab Retrieves a specified version of a table \cr
#'  \link[=glue_get_table_versions]{get_table_versions} \tab Retrieves a list of strings that identify available versions of a specified table \cr
#'  \link[=glue_get_tables]{get_tables} \tab Retrieves the definitions of some or all of the tables in a given Database \cr
#'  \link[=glue_get_tags]{get_tags} \tab Retrieves a list of tags associated with a resource \cr
#'  \link[=glue_get_trigger]{get_trigger} \tab Retrieves the definition of a trigger \cr
#'  \link[=glue_get_triggers]{get_triggers} \tab Gets all the triggers associated with a job \cr
#'  \link[=glue_get_user_defined_function]{get_user_defined_function} \tab Retrieves a specified function definition from the Data Catalog \cr
#'  \link[=glue_get_user_defined_functions]{get_user_defined_functions} \tab Retrieves a multiple function definitions from the Data Catalog \cr
#'  \link[=glue_import_catalog_to_glue]{import_catalog_to_glue} \tab Imports an existing Athena Data Catalog to AWS Glue \cr
#'  \link[=glue_list_crawlers]{list_crawlers} \tab Retrieves the names of all crawler resources in this AWS account, or the resources with the specified tag \cr
#'  \link[=glue_list_dev_endpoints]{list_dev_endpoints} \tab Retrieves the names of all DevEndpoint resources in this AWS account, or the resources with the specified tag \cr
#'  \link[=glue_list_jobs]{list_jobs} \tab Retrieves the names of all job resources in this AWS account, or the resources with the specified tag \cr
#'  \link[=glue_list_triggers]{list_triggers} \tab Retrieves the names of all trigger resources in this AWS account, or the resources with the specified tag \cr
#'  \link[=glue_put_data_catalog_encryption_settings]{put_data_catalog_encryption_settings} \tab Sets the security configuration for a specified catalog \cr
#'  \link[=glue_put_resource_policy]{put_resource_policy} \tab Sets the Data Catalog resource policy for access control \cr
#'  \link[=glue_reset_job_bookmark]{reset_job_bookmark} \tab Resets a bookmark entry \cr
#'  \link[=glue_start_crawler]{start_crawler} \tab Starts a crawl using the specified crawler, regardless of what is scheduled \cr
#'  \link[=glue_start_crawler_schedule]{start_crawler_schedule} \tab Changes the schedule state of the specified crawler to SCHEDULED, unless the crawler is already running or the schedule state is already SCHEDULED\cr
#'  \link[=glue_start_job_run]{start_job_run} \tab Starts a job run using a job definition \cr
#'  \link[=glue_start_trigger]{start_trigger} \tab Starts an existing trigger \cr
#'  \link[=glue_stop_crawler]{stop_crawler} \tab If the specified crawler is running, stops the crawl \cr
#'  \link[=glue_stop_crawler_schedule]{stop_crawler_schedule} \tab Sets the schedule state of the specified crawler to NOT_SCHEDULED, but does not stop the crawler if it is already running \cr
#'  \link[=glue_stop_trigger]{stop_trigger} \tab Stops a specified trigger \cr
#'  \link[=glue_tag_resource]{tag_resource} \tab Adds tags to a resource \cr
#'  \link[=glue_untag_resource]{untag_resource} \tab Removes tags from a resource \cr
#'  \link[=glue_update_classifier]{update_classifier} \tab Modifies an existing classifier (a GrokClassifier, an XMLClassifier, a JsonClassifier, or a CsvClassifier, depending on which field is present) \cr
#'  \link[=glue_update_connection]{update_connection} \tab Updates a connection definition in the Data Catalog \cr
#'  \link[=glue_update_crawler]{update_crawler} \tab Updates a crawler \cr
#'  \link[=glue_update_crawler_schedule]{update_crawler_schedule} \tab Updates the schedule of a crawler using a cron expression \cr
#'  \link[=glue_update_database]{update_database} \tab Updates an existing database definition in a Data Catalog \cr
#'  \link[=glue_update_dev_endpoint]{update_dev_endpoint} \tab Updates a specified DevEndpoint \cr
#'  \link[=glue_update_job]{update_job} \tab Updates an existing job definition \cr
#'  \link[=glue_update_partition]{update_partition} \tab Updates a partition \cr
#'  \link[=glue_update_table]{update_table} \tab Updates a metadata table in the Data Catalog \cr
#'  \link[=glue_update_trigger]{update_trigger} \tab Updates a trigger definition \cr
#'  \link[=glue_update_user_defined_function]{update_user_defined_function} \tab Updates an existing function definition in the Data Catalog 
#' }
#'
#' @rdname glue
#' @export
glue <- function() {
  paws.analytics::glue()
}

#' Managed Streaming for Kafka
#'
#' 
#'
#' @examples
#' \donttest{svc <- kafka()
#' svc$create_cluster(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=kafka_create_cluster]{create_cluster} \tab Creates a new MSK cluster \cr
#'  \link[=kafka_create_configuration]{create_configuration} \tab Creates a new MSK configuration \cr
#'  \link[=kafka_delete_cluster]{delete_cluster} \tab Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request \cr
#'  \link[=kafka_describe_cluster]{describe_cluster} \tab Returns a description of the MSK cluster whose Amazon Resource Name (ARN) is specified in the request\cr
#'  \link[=kafka_describe_cluster_operation]{describe_cluster_operation} \tab Returns a description of the cluster operation specified by the ARN \cr
#'  \link[=kafka_describe_configuration]{describe_configuration} \tab Returns a description of this MSK configuration \cr
#'  \link[=kafka_describe_configuration_revision]{describe_configuration_revision} \tab Returns a description of this revision of the configuration \cr
#'  \link[=kafka_get_bootstrap_brokers]{get_bootstrap_brokers} \tab A list of brokers that a client application can use to bootstrap \cr
#'  \link[=kafka_list_cluster_operations]{list_cluster_operations} \tab Returns a list of all the operations that have been performed on the specified MSK cluster \cr
#'  \link[=kafka_list_clusters]{list_clusters} \tab Returns a list of all the MSK clusters in the current Region \cr
#'  \link[=kafka_list_configuration_revisions]{list_configuration_revisions} \tab Returns a list of all the MSK configurations in this Region \cr
#'  \link[=kafka_list_configurations]{list_configurations} \tab Returns a list of all the MSK configurations in this Region \cr
#'  \link[=kafka_list_nodes]{list_nodes} \tab Returns a list of the broker nodes in the cluster \cr
#'  \link[=kafka_list_tags_for_resource]{list_tags_for_resource} \tab Returns a list of the tags associated with the specified resource \cr
#'  \link[=kafka_tag_resource]{tag_resource} \tab Adds tags to the specified MSK resource \cr
#'  \link[=kafka_untag_resource]{untag_resource} \tab Removes the tags associated with the keys that are provided in the query \cr
#'  \link[=kafka_update_broker_storage]{update_broker_storage} \tab Updates the EBS storage associated with MSK brokers \cr
#'  \link[=kafka_update_cluster_configuration]{update_cluster_configuration} \tab Updates the cluster with the configuration that is specified in the request body 
#' }
#'
#' @rdname kafka
#' @export
kafka <- function() {
  paws.analytics::kafka()
}

#' Amazon Kinesis
#'
#' @description
#' Amazon Kinesis Data Streams Service API Reference
#' 
#' Amazon Kinesis Data Streams is a managed service that scales elastically
#' for real-time processing of streaming big data.
#'
#' @examples
#' \donttest{svc <- kinesis()
#' svc$add_tags_to_stream(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=kinesis_add_tags_to_stream]{add_tags_to_stream} \tab Adds or updates tags for the specified Kinesis data stream \cr
#'  \link[=kinesis_create_stream]{create_stream} \tab Creates a Kinesis data stream \cr
#'  \link[=kinesis_decrease_stream_retention_period]{decrease_stream_retention_period} \tab Decreases the Kinesis data stream's retention period, which is the length of time data records are accessible after they are added to the stream \cr
#'  \link[=kinesis_delete_stream]{delete_stream} \tab Deletes a Kinesis data stream and all its shards and data \cr
#'  \link[=kinesis_deregister_stream_consumer]{deregister_stream_consumer} \tab To deregister a consumer, provide its ARN \cr
#'  \link[=kinesis_describe_limits]{describe_limits} \tab Describes the shard limits and usage for the account \cr
#'  \link[=kinesis_describe_stream]{describe_stream} \tab Describes the specified Kinesis data stream \cr
#'  \link[=kinesis_describe_stream_consumer]{describe_stream_consumer} \tab To get the description of a registered consumer, provide the ARN of the consumer \cr
#'  \link[=kinesis_describe_stream_summary]{describe_stream_summary} \tab Provides a summarized description of the specified Kinesis data stream without the shard list \cr
#'  \link[=kinesis_disable_enhanced_monitoring]{disable_enhanced_monitoring} \tab Disables enhanced monitoring \cr
#'  \link[=kinesis_enable_enhanced_monitoring]{enable_enhanced_monitoring} \tab Enables enhanced Kinesis data stream monitoring for shard-level metrics \cr
#'  \link[=kinesis_get_records]{get_records} \tab Gets data records from a Kinesis data stream's shard \cr
#'  \link[=kinesis_get_shard_iterator]{get_shard_iterator} \tab Gets an Amazon Kinesis shard iterator \cr
#'  \link[=kinesis_increase_stream_retention_period]{increase_stream_retention_period} \tab Increases the Kinesis data stream's retention period, which is the length of time data records are accessible after they are added to the stream \cr
#'  \link[=kinesis_list_shards]{list_shards} \tab Lists the shards in a stream and provides information about each shard \cr
#'  \link[=kinesis_list_stream_consumers]{list_stream_consumers} \tab Lists the consumers registered to receive data from a stream using enhanced fan-out, and provides information about each consumer \cr
#'  \link[=kinesis_list_streams]{list_streams} \tab Lists your Kinesis data streams \cr
#'  \link[=kinesis_list_tags_for_stream]{list_tags_for_stream} \tab Lists the tags for the specified Kinesis data stream \cr
#'  \link[=kinesis_merge_shards]{merge_shards} \tab Merges two adjacent shards in a Kinesis data stream and combines them into a single shard to reduce the stream's capacity to ingest and transport data\cr
#'  \link[=kinesis_put_record]{put_record} \tab Writes a single data record into an Amazon Kinesis data stream \cr
#'  \link[=kinesis_put_records]{put_records} \tab Writes multiple data records into a Kinesis data stream in a single call (also referred to as a PutRecords request) \cr
#'  \link[=kinesis_register_stream_consumer]{register_stream_consumer} \tab Registers a consumer with a Kinesis data stream \cr
#'  \link[=kinesis_remove_tags_from_stream]{remove_tags_from_stream} \tab Removes tags from the specified Kinesis data stream \cr
#'  \link[=kinesis_split_shard]{split_shard} \tab Splits a shard into two new shards in the Kinesis data stream, to increase the stream's capacity to ingest and transport data \cr
#'  \link[=kinesis_start_stream_encryption]{start_stream_encryption} \tab Enables or updates server-side encryption using an AWS KMS key for a specified stream \cr
#'  \link[=kinesis_stop_stream_encryption]{stop_stream_encryption} \tab Disables server-side encryption for a specified stream \cr
#'  \link[=kinesis_update_shard_count]{update_shard_count} \tab Updates the shard count of the specified stream to the specified number of shards 
#' }
#'
#' @rdname kinesis
#' @export
kinesis <- function() {
  paws.analytics::kinesis()
}

#' Amazon Kinesis Analytics
#'
#' @description
#' **Overview**
#' 
#' This documentation is for version 1 of the Amazon Kinesis Data Analytics
#' API, which only supports SQL applications. Version 2 of the API supports
#' SQL and Java applications. For more information about version 2, see
#' Amazon Kinesis Data Analytics API V2 Documentation.
#' 
#' This is the *Amazon Kinesis Analytics v1 API Reference*. The Amazon
#' Kinesis Analytics Developer Guide provides additional information.
#'
#' @examples
#' \donttest{svc <- kinesisanalytics()
#' svc$add_application_cloud_watch_logging_option(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=kinesisanalytics_add_application_cloud_watch_logging_option]{add_application_cloud_watch_logging_option} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications\cr
#'  \link[=kinesisanalytics_add_application_input]{add_application_input} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications\cr
#'  \link[=kinesisanalytics_add_application_input_processing_configuration]{add_application_input_processing_configuration} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications\cr
#'  \link[=kinesisanalytics_add_application_output]{add_application_output} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications\cr
#'  \link[=kinesisanalytics_add_application_reference_data_source]{add_application_reference_data_source} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications\cr
#'  \link[=kinesisanalytics_create_application]{create_application} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications\cr
#'  \link[=kinesisanalytics_delete_application]{delete_application} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications\cr
#'  \link[=kinesisanalytics_delete_application_cloud_watch_logging_option]{delete_application_cloud_watch_logging_option} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications\cr
#'  \link[=kinesisanalytics_delete_application_input_processing_configuration]{delete_application_input_processing_configuration} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications\cr
#'  \link[=kinesisanalytics_delete_application_output]{delete_application_output} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications\cr
#'  \link[=kinesisanalytics_delete_application_reference_data_source]{delete_application_reference_data_source} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications\cr
#'  \link[=kinesisanalytics_describe_application]{describe_application} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications\cr
#'  \link[=kinesisanalytics_discover_input_schema]{discover_input_schema} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications\cr
#'  \link[=kinesisanalytics_list_applications]{list_applications} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications\cr
#'  \link[=kinesisanalytics_list_tags_for_resource]{list_tags_for_resource} \tab Retrieves the list of key-value tags assigned to the application \cr
#'  \link[=kinesisanalytics_start_application]{start_application} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications\cr
#'  \link[=kinesisanalytics_stop_application]{stop_application} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications\cr
#'  \link[=kinesisanalytics_tag_resource]{tag_resource} \tab Adds one or more key-value tags to a Kinesis Analytics application \cr
#'  \link[=kinesisanalytics_untag_resource]{untag_resource} \tab Removes one or more tags from a Kinesis Analytics application \cr
#'  \link[=kinesisanalytics_update_application]{update_application} \tab This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications
#' }
#'
#' @rdname kinesisanalytics
#' @export
kinesisanalytics <- function() {
  paws.analytics::kinesisanalytics()
}

#' Amazon Kinesis Analytics
#'
#' @description
#' Amazon Kinesis Data Analytics is a fully managed service that you can
#' use to process and analyze streaming data using SQL or Java. The service
#' enables you to quickly author and run SQL or Java code against streaming
#' sources to perform time series analytics, feed real-time dashboards, and
#' create real-time metrics.
#'
#' @examples
#' \donttest{svc <- kinesisanalyticsv2()
#' svc$add_application_cloud_watch_logging_option(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=kinesisanalyticsv2_add_application_cloud_watch_logging_option]{add_application_cloud_watch_logging_option} \tab Adds an Amazon CloudWatch log stream to monitor application configuration errors \cr
#'  \link[=kinesisanalyticsv2_add_application_input]{add_application_input} \tab Adds a streaming source to your SQL-based Amazon Kinesis Data Analytics application \cr
#'  \link[=kinesisanalyticsv2_add_application_input_processing_configuration]{add_application_input_processing_configuration} \tab Adds an InputProcessingConfiguration to an SQL-based Kinesis Data Analytics application \cr
#'  \link[=kinesisanalyticsv2_add_application_output]{add_application_output} \tab Adds an external destination to your SQL-based Amazon Kinesis Data Analytics application \cr
#'  \link[=kinesisanalyticsv2_add_application_reference_data_source]{add_application_reference_data_source} \tab Adds a reference data source to an existing SQL-based Amazon Kinesis Data Analytics application \cr
#'  \link[=kinesisanalyticsv2_create_application]{create_application} \tab Creates an Amazon Kinesis Data Analytics application \cr
#'  \link[=kinesisanalyticsv2_create_application_snapshot]{create_application_snapshot} \tab Creates a snapshot of the application's state data \cr
#'  \link[=kinesisanalyticsv2_delete_application]{delete_application} \tab Deletes the specified application \cr
#'  \link[=kinesisanalyticsv2_delete_application_cloud_watch_logging_option]{delete_application_cloud_watch_logging_option} \tab Deletes an Amazon CloudWatch log stream from an Amazon Kinesis Data Analytics application \cr
#'  \link[=kinesisanalyticsv2_delete_application_input_processing_configuration]{delete_application_input_processing_configuration} \tab Deletes an InputProcessingConfiguration from an input \cr
#'  \link[=kinesisanalyticsv2_delete_application_output]{delete_application_output} \tab Deletes the output destination configuration from your SQL-based Amazon Kinesis Data Analytics application's configuration \cr
#'  \link[=kinesisanalyticsv2_delete_application_reference_data_source]{delete_application_reference_data_source} \tab Deletes a reference data source configuration from the specified SQL-based Amazon Kinesis Data Analytics application's configuration \cr
#'  \link[=kinesisanalyticsv2_delete_application_snapshot]{delete_application_snapshot} \tab Deletes a snapshot of application state \cr
#'  \link[=kinesisanalyticsv2_describe_application]{describe_application} \tab Returns information about a specific Amazon Kinesis Data Analytics application \cr
#'  \link[=kinesisanalyticsv2_describe_application_snapshot]{describe_application_snapshot} \tab Returns information about a snapshot of application state data \cr
#'  \link[=kinesisanalyticsv2_discover_input_schema]{discover_input_schema} \tab Infers a schema for an SQL-based Amazon Kinesis Data Analytics application by evaluating sample records on the specified streaming source (Kinesis data stream or Kinesis Data Firehose delivery stream) or Amazon S3 object\cr
#'  \link[=kinesisanalyticsv2_list_application_snapshots]{list_application_snapshots} \tab Lists information about the current application snapshots \cr
#'  \link[=kinesisanalyticsv2_list_applications]{list_applications} \tab Returns a list of Amazon Kinesis Data Analytics applications in your account \cr
#'  \link[=kinesisanalyticsv2_list_tags_for_resource]{list_tags_for_resource} \tab Retrieves the list of key-value tags assigned to the application \cr
#'  \link[=kinesisanalyticsv2_start_application]{start_application} \tab Starts the specified Amazon Kinesis Data Analytics application \cr
#'  \link[=kinesisanalyticsv2_stop_application]{stop_application} \tab Stops the application from processing data \cr
#'  \link[=kinesisanalyticsv2_tag_resource]{tag_resource} \tab Adds one or more key-value tags to a Kinesis Analytics application \cr
#'  \link[=kinesisanalyticsv2_untag_resource]{untag_resource} \tab Removes one or more tags from a Kinesis Analytics application \cr
#'  \link[=kinesisanalyticsv2_update_application]{update_application} \tab Updates an existing Amazon Kinesis Data Analytics application 
#' }
#'
#' @rdname kinesisanalyticsv2
#' @export
kinesisanalyticsv2 <- function() {
  paws.analytics::kinesisanalyticsv2()
}

#' Amazon Mechanical Turk
#'
#' @description
#' Amazon Mechanical Turk API Reference
#'
#' @examples
#' \donttest{svc <- mturk()
#' svc$accept_qualification_request(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=mturk_accept_qualification_request]{accept_qualification_request} \tab The AcceptQualificationRequest operation approves a Worker's request for a Qualification \cr
#'  \link[=mturk_approve_assignment]{approve_assignment} \tab The ApproveAssignment operation approves the results of a completed assignment \cr
#'  \link[=mturk_associate_qualification_with_worker]{associate_qualification_with_worker} \tab The AssociateQualificationWithWorker operation gives a Worker a Qualification \cr
#'  \link[=mturk_create_additional_assignments_for_hit]{create_additional_assignments_for_hit} \tab The CreateAdditionalAssignmentsForHIT operation increases the maximum number of assignments of an existing HIT \cr
#'  \link[=mturk_create_hit]{create_hit} \tab The CreateHIT operation creates a new Human Intelligence Task (HIT) \cr
#'  \link[=mturk_create_hit_type]{create_hit_type} \tab The CreateHITType operation creates a new HIT type \cr
#'  \link[=mturk_create_hit_with_hit_type]{create_hit_with_hit_type} \tab The CreateHITWithHITType operation creates a new Human Intelligence Task (HIT) using an existing HITTypeID generated by the CreateHITType operation \cr
#'  \link[=mturk_create_qualification_type]{create_qualification_type} \tab The CreateQualificationType operation creates a new Qualification type, which is represented by a QualificationType data structure \cr
#'  \link[=mturk_create_worker_block]{create_worker_block} \tab The CreateWorkerBlock operation allows you to prevent a Worker from working on your HITs \cr
#'  \link[=mturk_delete_hit]{delete_hit} \tab The DeleteHIT operation is used to delete HIT that is no longer needed \cr
#'  \link[=mturk_delete_qualification_type]{delete_qualification_type} \tab The DeleteQualificationType deletes a Qualification type and deletes any HIT types that are associated with the Qualification type \cr
#'  \link[=mturk_delete_worker_block]{delete_worker_block} \tab The DeleteWorkerBlock operation allows you to reinstate a blocked Worker to work on your HITs \cr
#'  \link[=mturk_disassociate_qualification_from_worker]{disassociate_qualification_from_worker} \tab The DisassociateQualificationFromWorker revokes a previously granted Qualification from a user \cr
#'  \link[=mturk_get_account_balance]{get_account_balance} \tab The GetAccountBalance operation retrieves the amount of money in your Amazon Mechanical Turk account \cr
#'  \link[=mturk_get_assignment]{get_assignment} \tab The GetAssignment operation retrieves the details of the specified Assignment \cr
#'  \link[=mturk_get_file_upload_url]{get_file_upload_url} \tab The GetFileUploadURL operation generates and returns a temporary URL \cr
#'  \link[=mturk_get_hit]{get_hit} \tab The GetHIT operation retrieves the details of the specified HIT \cr
#'  \link[=mturk_get_qualification_score]{get_qualification_score} \tab The GetQualificationScore operation returns the value of a Worker's Qualification for a given Qualification type \cr
#'  \link[=mturk_get_qualification_type]{get_qualification_type} \tab The GetQualificationTypeoperation retrieves information about a Qualification type using its ID \cr
#'  \link[=mturk_list_assignments_for_hit]{list_assignments_for_hit} \tab The ListAssignmentsForHIT operation retrieves completed assignments for a HIT \cr
#'  \link[=mturk_list_bonus_payments]{list_bonus_payments} \tab The ListBonusPayments operation retrieves the amounts of bonuses you have paid to Workers for a given HIT or assignment \cr
#'  \link[=mturk_list_hi_ts]{list_hi_ts} \tab The ListHITs operation returns all of a Requester's HITs \cr
#'  \link[=mturk_list_hi_ts_for_qualification_type]{list_hi_ts_for_qualification_type} \tab The ListHITsForQualificationType operation returns the HITs that use the given Qualification type for a Qualification requirement \cr
#'  \link[=mturk_list_qualification_requests]{list_qualification_requests} \tab The ListQualificationRequests operation retrieves requests for Qualifications of a particular Qualification type \cr
#'  \link[=mturk_list_qualification_types]{list_qualification_types} \tab The ListQualificationTypes operation returns a list of Qualification types, filtered by an optional search term \cr
#'  \link[=mturk_list_review_policy_results_for_hit]{list_review_policy_results_for_hit} \tab The ListReviewPolicyResultsForHIT operation retrieves the computed results and the actions taken in the course of executing your Review Policies for a given HIT \cr
#'  \link[=mturk_list_reviewable_hi_ts]{list_reviewable_hi_ts} \tab The ListReviewableHITs operation retrieves the HITs with Status equal to Reviewable or Status equal to Reviewing that belong to the Requester calling the operation \cr
#'  \link[=mturk_list_worker_blocks]{list_worker_blocks} \tab The ListWorkersBlocks operation retrieves a list of Workers who are blocked from working on your HITs \cr
#'  \link[=mturk_list_workers_with_qualification_type]{list_workers_with_qualification_type} \tab The ListWorkersWithQualificationType operation returns all of the Workers that have been associated with a given Qualification type \cr
#'  \link[=mturk_notify_workers]{notify_workers} \tab The NotifyWorkers operation sends an email to one or more Workers that you specify with the Worker ID \cr
#'  \link[=mturk_reject_assignment]{reject_assignment} \tab The RejectAssignment operation rejects the results of a completed assignment \cr
#'  \link[=mturk_reject_qualification_request]{reject_qualification_request} \tab The RejectQualificationRequest operation rejects a user's request for a Qualification \cr
#'  \link[=mturk_send_bonus]{send_bonus} \tab The SendBonus operation issues a payment of money from your account to a Worker \cr
#'  \link[=mturk_send_test_event_notification]{send_test_event_notification} \tab The SendTestEventNotification operation causes Amazon Mechanical Turk to send a notification message as if a HIT event occurred, according to the provided notification specification\cr
#'  \link[=mturk_update_expiration_for_hit]{update_expiration_for_hit} \tab The UpdateExpirationForHIT operation allows you update the expiration time of a HIT \cr
#'  \link[=mturk_update_hit_review_status]{update_hit_review_status} \tab The UpdateHITReviewStatus operation updates the status of a HIT \cr
#'  \link[=mturk_update_hit_type_of_hit]{update_hit_type_of_hit} \tab The UpdateHITTypeOfHIT operation allows you to change the HITType properties of a HIT \cr
#'  \link[=mturk_update_notification_settings]{update_notification_settings} \tab The UpdateNotificationSettings operation creates, updates, disables or re-enables notifications for a HIT type \cr
#'  \link[=mturk_update_qualification_type]{update_qualification_type} \tab The UpdateQualificationType operation modifies the attributes of an existing Qualification type, which is represented by a QualificationType data structure 
#' }
#'
#' @rdname mturk
#' @export
mturk <- function() {
  paws.analytics::mturk()
}

#' Amazon QuickSight
#'
#' @description
#' Amazon QuickSight API Reference
#' 
#' Amazon QuickSight is a fully managed, serverless, cloud business
#' intelligence service that makes it easy to extend data and insights to
#' every user in your organization. This API interface reference contains
#' documentation for a programming interface that you can use to manage
#' Amazon QuickSight.
#'
#' @examples
#' \donttest{svc <- quicksight()
#' svc$create_group(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=quicksight_create_group]{create_group} \tab Creates an Amazon QuickSight group \cr
#'  \link[=quicksight_create_group_membership]{create_group_membership} \tab Adds an Amazon QuickSight user to an Amazon QuickSight group \cr
#'  \link[=quicksight_delete_group]{delete_group} \tab Removes a user group from Amazon QuickSight \cr
#'  \link[=quicksight_delete_group_membership]{delete_group_membership} \tab Removes a user from a group so that the user is no longer a member of the group \cr
#'  \link[=quicksight_delete_user]{delete_user} \tab Deletes the Amazon QuickSight user that is associated with the identity of the AWS Identity and Access Management (IAM) user or role that's making the call\cr
#'  \link[=quicksight_delete_user_by_principal_id]{delete_user_by_principal_id} \tab Deletes a user after locating the user by its principal ID \cr
#'  \link[=quicksight_describe_group]{describe_group} \tab Returns an Amazon QuickSight group's description and Amazon Resource Name (ARN) \cr
#'  \link[=quicksight_describe_user]{describe_user} \tab Returns information about a user, given the user name \cr
#'  \link[=quicksight_get_dashboard_embed_url]{get_dashboard_embed_url} \tab Generates a server-side embeddable URL and authorization code \cr
#'  \link[=quicksight_list_group_memberships]{list_group_memberships} \tab Lists member users in a group \cr
#'  \link[=quicksight_list_groups]{list_groups} \tab Lists all user groups in Amazon QuickSight \cr
#'  \link[=quicksight_list_user_groups]{list_user_groups} \tab Lists the Amazon QuickSight groups that an Amazon QuickSight user is a member of \cr
#'  \link[=quicksight_list_users]{list_users} \tab Returns a list of all of the Amazon QuickSight users belonging to this account \cr
#'  \link[=quicksight_register_user]{register_user} \tab Creates an Amazon QuickSight user, whose identity is associated with the AWS Identity and Access Management (IAM) identity or role specified in the request\cr
#'  \link[=quicksight_update_group]{update_group} \tab Changes a group description \cr
#'  \link[=quicksight_update_user]{update_user} \tab Updates an Amazon QuickSight user 
#' }
#'
#' @rdname quicksight
#' @export
quicksight <- function() {
  paws.analytics::quicksight()
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
#'  \link[=cognitoidentityprovider_admin_set_user_password]{admin_set_user_password} \tab Admin set user password \cr
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
#' Amazon GuardDuty is a continuous security monitoring service that
#' analyzes and processes the following data sources: VPC Flow Logs, AWS
#' CloudTrail event logs, and DNS logs. It uses threat intelligence feeds,
#' such as lists of malicious IPs and domains, and machine learning to
#' identify unexpected and potentially unauthorized and malicious activity
#' within your AWS environment. This can include issues like escalations of
#' privileges, uses of exposed credentials, or communication with malicious
#' IPs, URLs, or domains. For example, GuardDuty can detect compromised EC2
#' instances serving malware or mining bitcoin. It also monitors AWS
#' account access behavior for signs of compromise, such as unauthorized
#' infrastructure deployments, like instances deployed in a region that has
#' never been used, or unusual API calls, like a password policy change to
#' reduce password strength. GuardDuty informs you of the status of your
#' AWS environment by producing security findings that you can view in the
#' GuardDuty console or through Amazon CloudWatch events. For more
#' information, see [Amazon GuardDuty User
#' Guide](https://docs.aws.amazon.com/guardduty/latest/ug/what-is-guardduty.html).
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
#' IAM](https://docs.aws.amazon.com/IAM/latest/UserGuide/).
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
#' Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
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
#' 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
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
#'     Credentials](https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html).
#'     This topic provides general information about the types of
#'     credentials used for accessing AWS.
#' 
#' -   [IAM Best
#'     Practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAMBestPractices.html).
#'     This topic presents a list of suggestions for using the IAM service
#'     to help secure your AWS resources.
#' 
#' -   [Signing AWS API
#'     Requests](https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html).
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
#'  \link[=iam_set_security_token_service_preferences]{set_security_token_service_preferences} \tab Sets the specified version of the global endpoint token as the token version used for the AWS account \cr
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
#' Guide](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_introduction.html).
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
#' Guide*](https://docs.aws.amazon.com/kms/latest/developerguide/).
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
#' use the access key ID and secret access key for an IAM user. You can
#' also use the AWS Security Token Service to generate temporary security
#' credentials that you can use to sign requests.
#' 
#' All AWS KMS operations require [Signature Version
#' 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
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
#' Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/).
#' 
#' **Additional Resources**
#' 
#' For more information about credentials and request signing, see the
#' following:
#' 
#' -   [AWS Security
#'     Credentials](https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html) -
#'     This topic provides general information about the types of
#'     credentials used for accessing AWS.
#' 
#' -   [Temporary Security
#'     Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html) -
#'     This section of the *IAM User Guide* describes how to create and use
#'     temporary security credentials.
#' 
#' -   [Signature Version 4 Signing
#'     Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html) -
#'     This set of topics walks you through the process of signing a
#'     request using an access key ID and a secret access key.
#' 
#' **Commonly Used API Operations**
#' 
#' Of the API operations discussed in this guide, the following will prove
#' the most useful for most applications. You will likely perform
#' operations other than these, such as creating keys and assigning
#' policies, by using the console.
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
#'  \link[=kms_create_alias]{create_alias} \tab Creates a display name for a customer managed customer master key (CMK) \cr
#'  \link[=kms_create_custom_key_store]{create_custom_key_store} \tab Creates a custom key store that is associated with an AWS CloudHSM cluster that you own and manage \cr
#'  \link[=kms_create_grant]{create_grant} \tab Adds a grant to a customer master key (CMK) \cr
#'  \link[=kms_create_key]{create_key} \tab Creates a customer managed customer master key (CMK) in your AWS account \cr
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
#'  \link[=kms_generate_data_key]{generate_data_key} \tab Generates a unique data key \cr
#'  \link[=kms_generate_data_key_without_plaintext]{generate_data_key_without_plaintext} \tab Generates a unique data key \cr
#'  \link[=kms_generate_random]{generate_random} \tab Returns a random byte string that is cryptographically secure \cr
#'  \link[=kms_get_key_policy]{get_key_policy} \tab Gets a key policy attached to the specified customer master key (CMK) \cr
#'  \link[=kms_get_key_rotation_status]{get_key_rotation_status} \tab Gets a Boolean value that indicates whether automatic rotation of the key material is enabled for the specified customer master key (CMK)\cr
#'  \link[=kms_get_parameters_for_import]{get_parameters_for_import} \tab Returns the items you need in order to import key material into AWS KMS from your existing key management infrastructure \cr
#'  \link[=kms_import_key_material]{import_key_material} \tab Imports key material into an existing AWS KMS customer master key (CMK) that was created without key material \cr
#'  \link[=kms_list_aliases]{list_aliases} \tab Gets a list of aliases in the caller's AWS account and region \cr
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
#' state in AWS and your compliance with the security industry standards
#' and best practices. Security Hub collects security data from across AWS
#' accounts, services, and supported third-party partners and helps you
#' analyze your security trends and identify the highest priority security
#' issues. For more information, see [AWS Security Hub User
#' Guide](https://docs.aws.amazon.com/securityhub/latest/userguide/what-is-securityhub.html).
#' 
#' Important: AWS Security Hub is currently in Preview release.
#'
#' @examples
#' \donttest{svc <- securityhub()
#' svc$accept_invitation(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=securityhub_accept_invitation]{accept_invitation} \tab Accepts the invitation to be monitored by a Security Hub master account \cr
#'  \link[=securityhub_batch_disable_standards]{batch_disable_standards} \tab Disables the standards specified by the standards subscription ARNs \cr
#'  \link[=securityhub_batch_enable_standards]{batch_enable_standards} \tab Enables the standards specified by the standards ARNs \cr
#'  \link[=securityhub_batch_import_findings]{batch_import_findings} \tab Imports security findings generated from an integrated third-party product into Security Hub \cr
#'  \link[=securityhub_create_insight]{create_insight} \tab Creates an insight, which is a consolidation of findings that identifies a security area that requires attention or intervention \cr
#'  \link[=securityhub_create_members]{create_members} \tab Creates Security Hub member accounts associated with the account used for this action, which becomes the Security Hub Master account \cr
#'  \link[=securityhub_decline_invitations]{decline_invitations} \tab Declines invitations that are sent to this AWS account (invitee) from the AWS accounts (inviters) that are specified by the provided AccountIds \cr
#'  \link[=securityhub_delete_insight]{delete_insight} \tab Deletes the insight specified by the InsightArn \cr
#'  \link[=securityhub_delete_invitations]{delete_invitations} \tab Deletes invitations that were sent to theis AWS account (invitee) by the AWS accounts (inviters) that are specified by their account IDs \cr
#'  \link[=securityhub_delete_members]{delete_members} \tab Deletes the Security Hub member accounts that the account IDs specify \cr
#'  \link[=securityhub_describe_products]{describe_products} \tab Returns information about the products available that you can subscribe to \cr
#'  \link[=securityhub_disable_import_findings_for_product]{disable_import_findings_for_product} \tab Cancels the subscription that allows a findings-generating solution (product) to import its findings into Security Hub \cr
#'  \link[=securityhub_disable_security_hub]{disable_security_hub} \tab Disables the Security Hub service \cr
#'  \link[=securityhub_disassociate_from_master_account]{disassociate_from_master_account} \tab Disassociates the current Security Hub member account from its master account \cr
#'  \link[=securityhub_disassociate_members]{disassociate_members} \tab Disassociates the Security Hub member accounts that are specified by the account IDs from their master account \cr
#'  \link[=securityhub_enable_import_findings_for_product]{enable_import_findings_for_product} \tab Sets up the subscription that enables a findings-generating solution (product) to import its findings into Security Hub \cr
#'  \link[=securityhub_enable_security_hub]{enable_security_hub} \tab Enables the Security Hub service \cr
#'  \link[=securityhub_get_enabled_standards]{get_enabled_standards} \tab Lists and describes enabled standards \cr
#'  \link[=securityhub_get_findings]{get_findings} \tab Lists and describes Security Hub-aggregated findings that filter attributes specify \cr
#'  \link[=securityhub_get_insight_results]{get_insight_results} \tab Lists the results of the Security Hub insight that the insight ARN specifies \cr
#'  \link[=securityhub_get_insights]{get_insights} \tab Lists and describes insights that insight ARNs specify \cr
#'  \link[=securityhub_get_invitations_count]{get_invitations_count} \tab Returns the count of all Security Hub membership invitations that were sent to the current member account, not including the currently accepted invitation\cr
#'  \link[=securityhub_get_master_account]{get_master_account} \tab Provides the details for the Security Hub master account to the current member account \cr
#'  \link[=securityhub_get_members]{get_members} \tab Returns the details on the Security Hub member accounts that the account IDs specify \cr
#'  \link[=securityhub_invite_members]{invite_members} \tab Invites other AWS accounts to enable Security Hub and become Security Hub member accounts \cr
#'  \link[=securityhub_list_enabled_products_for_import]{list_enabled_products_for_import} \tab Lists all findings-generating solutions (products) whose findings you have subscribed to receive in Security Hub \cr
#'  \link[=securityhub_list_invitations]{list_invitations} \tab Lists all Security Hub membership invitations that were sent to the current AWS account \cr
#'  \link[=securityhub_list_members]{list_members} \tab Lists details about all member accounts for the current Security Hub master account \cr
#'  \link[=securityhub_list_product_subscribers]{list_product_subscribers} \tab Returns a list of account IDs that are subscribed to the product \cr
#'  \link[=securityhub_update_findings]{update_findings} \tab Updates the Note and RecordState of the Security Hub-aggregated findings that the filter attributes specify \cr
#'  \link[=securityhub_update_insight]{update_insight} \tab Updates the Security Hub insight that the insight ARN specifies 
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
#' Credentials](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp.html).
#' 
#' For information about setting up signatures and authorization through
#' the API, go to [Signing AWS API
#' Requests](https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html)
#' in the *AWS General Reference*. For general information about the Query
#' API, go to [Making Query
#' Requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html)
#' in *Using IAM*. For information about using security tokens with other
#' AWS products, go to [AWS Services That Work with
#' IAM](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html)
#' in the *IAM User Guide*.
#' 
#' If you\'re new to AWS and need additional technical information about a
#' specific AWS product, you can find the product\'s technical
#' documentation at <http://aws.amazon.com/documentation/>.
#' 
#' **Endpoints**
#' 
#' By default, AWS Security Token Service (STS) is available as a global
#' service, and all AWS STS requests go to a single endpoint at
#' `https://sts.amazonaws.com`. Global requests map to the US East (N.
#' Virginia) region. AWS recommends using Regional AWS STS endpoints
#' instead of the global endpoint to reduce latency, build in redundancy,
#' and increase session token validity. For more information, see [Managing
#' AWS STS in an AWS
#' Region](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html)
#' in the *IAM User Guide*.
#' 
#' Most AWS Regions are enabled for operations in all AWS services by
#' default. Those Regions are automatically activated for use with AWS STS.
#' Some Regions, such as Asia Pacific (Hong Kong), must be manually
#' enabled. To learn more about enabling and disabling AWS Regions, see
#' [Managing AWS
#' Regions](https://docs.aws.amazon.com/general/latest/gr/rande-manage.html)
#' in the *AWS General Reference*. When you enable these AWS Regions, they
#' are automatically activated for use with AWS STS. You cannot activate
#' the STS endpoint for a Region that is disabled. Tokens that are valid in
#' all AWS Regions are longer than tokens that are valid in Regions that
#' are enabled by default. Changing this setting might affect existing
#' systems where you temporarily store tokens. For more information, see
#' [Managing Global Endpoint Session
#' Tokens](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html#sts-regions-manage-tokens)
#' in the *IAM User Guide*.
#' 
#' After you activate a Region for use with AWS STS, you can direct AWS STS
#' API calls to that Region. AWS STS recommends that you provide both the
#' Region and endpoint when you make calls to a Regional endpoint. You can
#' provide the Region alone for manually enabled Regions, such as Asia
#' Pacific (Hong Kong). In this case, the calls are directed to the STS
#' Regional endpoint. However, if you provide the Region alone for Regions
#' enabled by default, the calls are directed to the global endpoint of
#' `https://sts.amazonaws.com`.
#' 
#' To view the list of AWS STS endpoints and whether they are active by
#' default, see [Writing Code to Use AWS STS
#' Regions](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html#id_credentials_temp_enable-regions_writing_code)
#' in the *IAM User Guide*.
#' 
#' **Recording API requests**
#' 
#' STS supports AWS CloudTrail, which is a service that records AWS calls
#' for your AWS account and delivers log files to an Amazon S3 bucket. By
#' using information collected by CloudTrail, you can determine what
#' requests were successfully made to STS, who made the request, when it
#' was made, and so on.
#' 
#' If you activate AWS STS endpoints in Regions other than the default
#' global endpoint, then you must also turn on CloudTrail logging in those
#' Regions. This is necessary to record any AWS STS API calls that are made
#' in those Regions. For more information, see [Turning On CloudTrail in
#' Additional
#' Regions](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/aggregating_logs_regions_turn_on_ct.html)
#' in the *AWS CloudTrail User Guide*.
#' 
#' AWS Security Token Service (STS) is a global service with a single
#' endpoint at `https://sts.amazonaws.com`. Calls to this endpoint are
#' logged as calls to a global service. However, because this endpoint is
#' physically located in the US East (N. Virginia) Region, your logs list
#' `us-east-1` as the event Region. CloudTrail does not write these logs to
#' the US East (Ohio) Region unless you choose to include global service
#' logs in that Region. CloudTrail writes calls to all Regional endpoints
#' to their respective Regions. For example, calls to
#' sts.us-east-2.amazonaws.com are published to the US East (Ohio) Region
#' and calls to sts.eu-central-1.amazonaws.com are published to the EU
#' (Frankfurt) Region.
#' 
#' To learn more about CloudTrail, including how to turn it on and find
#' your log files, see the [AWS CloudTrail User
#' Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html).
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
#'  \link[=sts_assume_role]{assume_role} \tab Returns a set of temporary security credentials that you can use to access AWS resources that you might not normally have access to \cr
#'  \link[=sts_assume_role_with_saml]{assume_role_with_saml} \tab Returns a set of temporary security credentials for users who have been authenticated via a SAML authentication response \cr
#'  \link[=sts_assume_role_with_web_identity]{assume_role_with_web_identity} \tab Returns a set of temporary security credentials for users who have been authenticated in a mobile or web application with a web identity provider\cr
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
#'  \link[=mq_delete_tags]{delete_tags} \tab Removes a tag from a resource \cr
#'  \link[=mq_delete_user]{delete_user} \tab Deletes an ActiveMQ user \cr
#'  \link[=mq_describe_broker]{describe_broker} \tab Returns information about the specified broker \cr
#'  \link[=mq_describe_broker_engine_types]{describe_broker_engine_types} \tab Describe available engine types and versions \cr
#'  \link[=mq_describe_broker_instance_options]{describe_broker_instance_options} \tab Describe available broker instance options \cr
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
#' [https://aws.amazon.com/sns](http://aws.amazon.com/sns/). For detailed
#' information about Amazon SNS features and their associated API calls,
#' see the [Amazon SNS Developer
#' Guide](https://docs.aws.amazon.com/sns/latest/dg/).
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
#'  \link[=sns_create_platform_application]{create_platform_application} \tab Creates a platform application object for one of the supported push notification services, such as APNS and FCM, to which devices and mobile apps may register\cr
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
#'  \link[=sns_list_tags_for_resource]{list_tags_for_resource} \tab List all tags added to the specified Amazon SNS topic \cr
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
#'  \link[=sns_tag_resource]{tag_resource} \tab Add tags to the specified Amazon SNS topic \cr
#'  \link[=sns_unsubscribe]{unsubscribe} \tab Deletes a subscription \cr
#'  \link[=sns_untag_resource]{untag_resource} \tab Remove tags from the specified Amazon SNS topic 
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

#' AWS Budgets
#'
#' @description
#' The AWS Budgets API enables you to use AWS Budgets to plan your service
#' usage, service costs, and instance reservations. The API reference
#' provides descriptions, syntax, and usage examples for each of the
#' actions and data types for AWS Budgets.
#' 
#' Budgets provide you with a way to see the following information:
#' 
#' -   How close your plan is to your budgeted amount or to the free tier
#'     limits
#' 
#' -   Your usage-to-date, including how much you\'ve used of your Reserved
#'     Instances (RIs)
#' 
#' -   Your current estimated charges from AWS, and how much your predicted
#'     usage will accrue in charges by the end of the month
#' 
#' -   How much of your budget has been used
#' 
#' AWS updates your budget status several times a day. Budgets track your
#' unblended costs, subscriptions, refunds, and RIs. You can create the
#' following types of budgets:
#' 
#' -   **Cost budgets** - Plan how much you want to spend on a service.
#' 
#' -   **Usage budgets** - Plan how much you want to use one or more
#'     services.
#' 
#' -   **RI utilization budgets** - Define a utilization threshold, and
#'     receive alerts when your RI usage falls below that threshold. This
#'     lets you see if your RIs are unused or under-utilized.
#' 
#' -   **RI coverage budgets** - Define a coverage threshold, and receive
#'     alerts when the number of your instance hours that are covered by
#'     RIs fall below that threshold. This lets you see how much of your
#'     instance usage is covered by a reservation.
#' 
#' Service Endpoint
#' 
#' The AWS Budgets API provides the following endpoint:
#' 
#' -   https://budgets.amazonaws.com
#' 
#' For information about costs that are associated with the AWS Budgets
#' API, see [AWS Cost Management
#' Pricing](https://aws.amazon.com/aws-cost-management/pricing/).
#'
#' @examples
#' \donttest{svc <- budgets()
#' svc$create_budget(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=budgets_create_budget]{create_budget} \tab Creates a budget and, if included, notifications and subscribers\cr
#'  \link[=budgets_create_notification]{create_notification} \tab Creates a notification \cr
#'  \link[=budgets_create_subscriber]{create_subscriber} \tab Creates a subscriber \cr
#'  \link[=budgets_delete_budget]{delete_budget} \tab Deletes a budget \cr
#'  \link[=budgets_delete_notification]{delete_notification} \tab Deletes a notification \cr
#'  \link[=budgets_delete_subscriber]{delete_subscriber} \tab Deletes a subscriber \cr
#'  \link[=budgets_describe_budget]{describe_budget} \tab Describes a budget \cr
#'  \link[=budgets_describe_budget_performance_history]{describe_budget_performance_history} \tab Describes the history for DAILY, MONTHLY, and QUARTERLY budgets \cr
#'  \link[=budgets_describe_budgets]{describe_budgets} \tab Lists the budgets that are associated with an account \cr
#'  \link[=budgets_describe_notifications_for_budget]{describe_notifications_for_budget} \tab Lists the notifications that are associated with a budget \cr
#'  \link[=budgets_describe_subscribers_for_notification]{describe_subscribers_for_notification} \tab Lists the subscribers that are associated with a notification \cr
#'  \link[=budgets_update_budget]{update_budget} \tab Updates a budget \cr
#'  \link[=budgets_update_notification]{update_notification} \tab Updates a notification \cr
#'  \link[=budgets_update_subscriber]{update_subscriber} \tab Updates a subscriber 
#' }
#'
#' @rdname budgets
#' @export
budgets <- function() {
  paws.cost.management::budgets()
}

#' AWS Cost and Usage Report Service
#'
#' @description
#' The AWS Cost and Usage Report API enables you to programmatically
#' create, query, and delete AWS Cost and Usage report definitions.
#' 
#' AWS Cost and Usage reports track the monthly AWS costs and usage
#' associated with your AWS account. The report contains line items for
#' each unique combination of AWS product, usage type, and operation that
#' your AWS account uses. You can configure the AWS Cost and Usage report
#' to show only the data that you want, using the AWS Cost and Usage API.
#' 
#' Service Endpoint
#' 
#' The AWS Cost and Usage Report API provides the following endpoint:
#' 
#' -   cur.us-east-1.amazonaws.com
#'
#' @examples
#' # The following example deletes the AWS Cost and Usage report named
#' # ExampleReport.
#' \donttest{svc <- costandusagereportservice()
#' svc$delete_report_definition(
#'   ReportName = "ExampleReport"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=costandusagereportservice_delete_report_definition]{delete_report_definition} \tab Deletes the specified report \cr
#'  \link[=costandusagereportservice_describe_report_definitions]{describe_report_definitions} \tab Lists the AWS Cost and Usage reports available to this account\cr
#'  \link[=costandusagereportservice_put_report_definition]{put_report_definition} \tab Creates a new report using the description that you provide 
#' }
#'
#' @rdname costandusagereportservice
#' @export
costandusagereportservice <- function() {
  paws.cost.management::costandusagereportservice()
}

#' AWS Cost Explorer Service
#'
#' @description
#' The Cost Explorer API enables you to programmatically query your cost
#' and usage data. You can query for aggregated data such as total monthly
#' costs or total daily usage. You can also query for granular data, such
#' as the number of daily write operations for Amazon DynamoDB database
#' tables in your production environment.
#' 
#' Service Endpoint
#' 
#' The Cost Explorer API provides the following endpoint:
#' 
#' -   `https://ce.us-east-1.amazonaws.com`
#' 
#' For information about costs associated with the Cost Explorer API, see
#' [AWS Cost Management
#' Pricing](https://aws.amazon.com/aws-cost-management/pricing/).
#'
#' @examples
#' \donttest{svc <- costexplorer()
#' svc$get_cost_and_usage(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=costexplorer_get_cost_and_usage]{get_cost_and_usage} \tab Retrieves cost and usage metrics for your account \cr
#'  \link[=costexplorer_get_cost_forecast]{get_cost_forecast} \tab Retrieves a forecast for how much Amazon Web Services predicts that you will spend over the forecast time period that you select, based on your past costs\cr
#'  \link[=costexplorer_get_dimension_values]{get_dimension_values} \tab Retrieves all available filter values for a specified filter over a period of time \cr
#'  \link[=costexplorer_get_reservation_coverage]{get_reservation_coverage} \tab Retrieves the reservation coverage for your account \cr
#'  \link[=costexplorer_get_reservation_purchase_recommendation]{get_reservation_purchase_recommendation} \tab Gets recommendations for which reservations to purchase \cr
#'  \link[=costexplorer_get_reservation_utilization]{get_reservation_utilization} \tab Retrieves the reservation utilization for your account \cr
#'  \link[=costexplorer_get_tags]{get_tags} \tab Queries for available tag keys and tag values for a specified period 
#' }
#'
#' @rdname costexplorer
#' @export
costexplorer <- function() {
  paws.cost.management::costexplorer()
}

#' AWS Marketplace Commerce Analytics
#'
#' @description
#' Provides AWS Marketplace business intelligence data on-demand.
#'
#' @examples
#' \donttest{svc <- marketplacecommerceanalytics()
#' svc$generate_data_set(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=marketplacecommerceanalytics_generate_data_set]{generate_data_set} \tab Given a data set type and data set publication date, asynchronously publishes the requested data set to the specified S3 bucket and notifies the specified SNS topic once the data is available\cr
#'  \link[=marketplacecommerceanalytics_start_support_data_export]{start_support_data_export} \tab Given a data set type and a from date, asynchronously publishes the requested customer support data to the specified S3 bucket and notifies the specified SNS topic once the data is available 
#' }
#'
#' @rdname marketplacecommerceanalytics
#' @export
marketplacecommerceanalytics <- function() {
  paws.cost.management::marketplacecommerceanalytics()
}

#' AWS Marketplace Entitlement Service
#'
#' @description
#' This reference provides descriptions of the AWS Marketplace Entitlement
#' Service API.
#' 
#' AWS Marketplace Entitlement Service is used to determine the entitlement
#' of a customer to a given product. An entitlement represents capacity in
#' a product owned by the customer. For example, a customer might own some
#' number of users or seats in an SaaS application or some amount of data
#' capacity in a multi-tenant database.
#' 
#' **Getting Entitlement Records**
#' 
#' -   *GetEntitlements*- Gets the entitlements for a Marketplace product.
#'
#' @examples
#' \donttest{svc <- marketplaceentitlementservice()
#' svc$get_entitlements(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=marketplaceentitlementservice_get_entitlements]{get_entitlements} \tab GetEntitlements retrieves entitlement values for a given product
#' }
#'
#' @rdname marketplaceentitlementservice
#' @export
marketplaceentitlementservice <- function() {
  paws.cost.management::marketplaceentitlementservice()
}

#' AWSMarketplace Metering
#'
#' @description
#' AWS Marketplace Metering Service
#' 
#' This reference provides descriptions of the low-level AWS Marketplace
#' Metering Service API.
#' 
#' AWS Marketplace sellers can use this API to submit usage data for custom
#' usage dimensions.
#' 
#' **Submitting Metering Records**
#' 
#' -   *MeterUsage*- Submits the metering record for a Marketplace product.
#'     MeterUsage is called from an EC2 instance.
#' 
#' -   *BatchMeterUsage*- Submits the metering record for a set of
#'     customers. BatchMeterUsage is called from a software-as-a-service
#'     (SaaS) application.
#' 
#' **Accepting New Customers**
#' 
#' -   *ResolveCustomer*- Called by a SaaS application during the
#'     registration process. When a buyer visits your website during the
#'     registration process, the buyer submits a Registration Token through
#'     the browser. The Registration Token is resolved through this API to
#'     obtain a CustomerIdentifier and Product Code.
#' 
#' **Entitlement and Metering for Paid Container Products**
#' 
#' -   Paid container software products sold through AWS Marketplace must
#'     integrate with the AWS Marketplace Metering Service and call the
#'     RegisterUsage operation for software entitlement and metering.
#'     Calling RegisterUsage from containers running outside of Amazon
#'     Elastic Container Service (Amazon ECR) isn\'t supported. Free and
#'     BYOL products for ECS aren\'t required to call RegisterUsage, but
#'     you can do so if you want to receive usage data in your seller
#'     reports. For more information on using the RegisterUsage operation,
#'     see [Container-Based
#'     Products](https://docs.aws.amazon.com/marketplace/latest/userguide/container-based-products.html).
#' 
#' BatchMeterUsage API calls are captured by AWS CloudTrail. You can use
#' Cloudtrail to verify that the SaaS metering records that you sent are
#' accurate by searching for records with the eventName of BatchMeterUsage.
#' You can also use CloudTrail to audit records over time. For more
#' information, see the *[AWS CloudTrail User
#' Guide](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html)*
#' .
#'
#' @examples
#' \donttest{svc <- marketplacemetering()
#' svc$batch_meter_usage(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=marketplacemetering_batch_meter_usage]{batch_meter_usage} \tab BatchMeterUsage is called from a SaaS application listed on the AWS Marketplace to post metering records for a set of customers \cr
#'  \link[=marketplacemetering_meter_usage]{meter_usage} \tab API to emit metering records \cr
#'  \link[=marketplacemetering_register_usage]{register_usage} \tab Paid container software products sold through AWS Marketplace must integrate with the AWS Marketplace Metering Service and call the RegisterUsage operation for software entitlement and metering\cr
#'  \link[=marketplacemetering_resolve_customer]{resolve_customer} \tab ResolveCustomer is called by a SaaS application during the registration process 
#' }
#'
#' @rdname marketplacemetering
#' @export
marketplacemetering <- function() {
  paws.cost.management::marketplacemetering()
}

#' AWS Price List Service
#'
#' @description
#' AWS Price List Service API (AWS Price List Service) is a centralized and
#' convenient way to programmatically query Amazon Web Services for
#' services, products, and pricing information. The AWS Price List Service
#' uses standardized product attributes such as `Location`,
#' `Storage Class`, and `Operating System`, and provides prices at the SKU
#' level. You can use the AWS Price List Service to build cost control and
#' scenario planning tools, reconcile billing data, forecast future spend
#' for budgeting purposes, and provide cost benefit analysis that compare
#' your internal workloads with AWS.
#' 
#' Use `GetServices` without a service code to retrieve the service codes
#' for all AWS services, then `GetServices` with a service code to retreive
#' the attribute names for that service. After you have the service code
#' and attribute names, you can use `GetAttributeValues` to see what values
#' are available for an attribute. With the service code and an attribute
#' name and value, you can use `GetProducts` to find specific products that
#' you\'re interested in, such as an `AmazonEC2` instance, with a
#' `Provisioned IOPS` `volumeType`.
#' 
#' Service Endpoint
#' 
#' AWS Price List Service API provides the following two endpoints:
#' 
#' -   https://api.pricing.us-east-1.amazonaws.com
#' 
#' -   https://api.pricing.ap-south-1.amazonaws.com
#'
#' @examples
#' \donttest{svc <- pricing()
#' svc$describe_services(
#'   FormatVersion = "aws_v1",
#'   MaxResults = 1L,
#'   ServiceCode = "AmazonEC2"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=pricing_describe_services]{describe_services} \tab Returns the metadata for one service or a list of the metadata for all services\cr
#'  \link[=pricing_get_attribute_values]{get_attribute_values} \tab Returns a list of attribute values \cr
#'  \link[=pricing_get_products]{get_products} \tab Returns a list of all products that match the filter criteria 
#' }
#'
#' @rdname pricing
#' @export
pricing <- function() {
  paws.cost.management::pricing()
}

#' Amazon Connect Service
#'
#' @description
#' The Amazon Connect API Reference provides descriptions, syntax, and
#' usage examples for each of the Amazon Connect actions, data types,
#' parameters, and errors. Amazon Connect is a cloud-based contact center
#' solution that makes it easy to set up and manage a customer contact
#' center and provide reliable customer engagement at any scale.
#' 
#' Throttling limits for the Amazon Connect API operations:
#' 
#' For the `GetMetricData` and `GetCurrentMetricData` operations, a
#' RateLimit of 5 per second, and a BurstLimit of 8 per second.
#' 
#' For all other operations, a RateLimit of 2 per second, and a BurstLimit
#' of 5 per second.
#' 
#' You can request an increase to the throttling limits by submitting a
#' [Amazon Connect service limits increase
#' form](https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase).
#' You must be signed in to your AWS account to access the form.
#'
#' @examples
#' \donttest{svc <- connect()
#' svc$create_user(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=connect_create_user]{create_user} \tab Creates a new user account in your Amazon Connect instance \cr
#'  \link[=connect_delete_user]{delete_user} \tab Deletes a user account from Amazon Connect \cr
#'  \link[=connect_describe_user]{describe_user} \tab Returns a User object that contains information about the user account specified by the UserId \cr
#'  \link[=connect_describe_user_hierarchy_group]{describe_user_hierarchy_group} \tab Returns a HierarchyGroup object that includes information about a hierarchy group in your instance \cr
#'  \link[=connect_describe_user_hierarchy_structure]{describe_user_hierarchy_structure} \tab Returns a HiearchyGroupStructure object, which contains data about the levels in the agent hierarchy \cr
#'  \link[=connect_get_contact_attributes]{get_contact_attributes} \tab Retrieves the contact attributes associated with a contact \cr
#'  \link[=connect_get_current_metric_data]{get_current_metric_data} \tab The GetCurrentMetricData operation retrieves current metric data from your Amazon Connect instance \cr
#'  \link[=connect_get_federation_token]{get_federation_token} \tab Retrieves a token for federation \cr
#'  \link[=connect_get_metric_data]{get_metric_data} \tab The GetMetricData operation retrieves historical metrics data from your Amazon Connect instance \cr
#'  \link[=connect_list_routing_profiles]{list_routing_profiles} \tab Returns an array of RoutingProfileSummary objects that includes information about the routing profiles in your instance \cr
#'  \link[=connect_list_security_profiles]{list_security_profiles} \tab Returns an array of SecurityProfileSummary objects that contain information about the security profiles in your instance, including the ARN, Id, and Name of the security profile\cr
#'  \link[=connect_list_user_hierarchy_groups]{list_user_hierarchy_groups} \tab Returns a UserHierarchyGroupSummaryList, which is an array of HierarchyGroupSummary objects that contain information about the hierarchy groups in your instance \cr
#'  \link[=connect_list_users]{list_users} \tab Returns a UserSummaryList, which is an array of UserSummary objects \cr
#'  \link[=connect_start_outbound_voice_contact]{start_outbound_voice_contact} \tab The StartOutboundVoiceContact operation initiates a contact flow to place an outbound call to a customer \cr
#'  \link[=connect_stop_contact]{stop_contact} \tab Ends the contact initiated by the StartOutboundVoiceContact operation \cr
#'  \link[=connect_update_contact_attributes]{update_contact_attributes} \tab The UpdateContactAttributes operation lets you programmatically create new, or update existing, contact attributes associated with a contact \cr
#'  \link[=connect_update_user_hierarchy]{update_user_hierarchy} \tab Assigns the specified hierarchy group to the user \cr
#'  \link[=connect_update_user_identity_info]{update_user_identity_info} \tab Updates the identity information for the specified user in a UserIdentityInfo object, including email, first name, and last name \cr
#'  \link[=connect_update_user_phone_config]{update_user_phone_config} \tab Updates the phone configuration settings in the UserPhoneConfig object for the specified user \cr
#'  \link[=connect_update_user_routing_profile]{update_user_routing_profile} \tab Assigns the specified routing profile to a user \cr
#'  \link[=connect_update_user_security_profiles]{update_user_security_profiles} \tab Updates the security profiles assigned to the user 
#' }
#'
#' @rdname connect
#' @export
connect <- function() {
  paws.customer.engagement::connect()
}

#' Amazon Pinpoint
#'
#' @description
#' Amazon Pinpoint
#'
#' @examples
#' \donttest{svc <- pinpoint()
#' svc$create_app(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=pinpoint_create_app]{create_app} \tab Creates or updates an app \cr
#'  \link[=pinpoint_create_campaign]{create_campaign} \tab Creates or updates a campaign \cr
#'  \link[=pinpoint_create_export_job]{create_export_job} \tab Creates an export job \cr
#'  \link[=pinpoint_create_import_job]{create_import_job} \tab Creates or updates an import job \cr
#'  \link[=pinpoint_create_segment]{create_segment} \tab Used to create or update a segment \cr
#'  \link[=pinpoint_delete_adm_channel]{delete_adm_channel} \tab Delete an ADM channel \cr
#'  \link[=pinpoint_delete_apns_channel]{delete_apns_channel} \tab Deletes the APNs channel for an app \cr
#'  \link[=pinpoint_delete_apns_sandbox_channel]{delete_apns_sandbox_channel} \tab Delete an APNS sandbox channel \cr
#'  \link[=pinpoint_delete_apns_voip_channel]{delete_apns_voip_channel} \tab Delete an APNS VoIP channel \cr
#'  \link[=pinpoint_delete_apns_voip_sandbox_channel]{delete_apns_voip_sandbox_channel} \tab Delete an APNS VoIP sandbox channel \cr
#'  \link[=pinpoint_delete_app]{delete_app} \tab Deletes an app \cr
#'  \link[=pinpoint_delete_baidu_channel]{delete_baidu_channel} \tab Delete a BAIDU GCM channel \cr
#'  \link[=pinpoint_delete_campaign]{delete_campaign} \tab Deletes a campaign \cr
#'  \link[=pinpoint_delete_email_channel]{delete_email_channel} \tab Delete an email channel \cr
#'  \link[=pinpoint_delete_endpoint]{delete_endpoint} \tab Deletes an endpoint \cr
#'  \link[=pinpoint_delete_event_stream]{delete_event_stream} \tab Deletes the event stream for an app \cr
#'  \link[=pinpoint_delete_gcm_channel]{delete_gcm_channel} \tab Deletes the GCM channel for an app \cr
#'  \link[=pinpoint_delete_segment]{delete_segment} \tab Deletes a segment \cr
#'  \link[=pinpoint_delete_sms_channel]{delete_sms_channel} \tab Delete an SMS channel \cr
#'  \link[=pinpoint_delete_user_endpoints]{delete_user_endpoints} \tab Deletes endpoints that are associated with a User ID \cr
#'  \link[=pinpoint_delete_voice_channel]{delete_voice_channel} \tab Delete an Voice channel \cr
#'  \link[=pinpoint_get_adm_channel]{get_adm_channel} \tab Get an ADM channel \cr
#'  \link[=pinpoint_get_apns_channel]{get_apns_channel} \tab Returns information about the APNs channel for an app \cr
#'  \link[=pinpoint_get_apns_sandbox_channel]{get_apns_sandbox_channel} \tab Get an APNS sandbox channel \cr
#'  \link[=pinpoint_get_apns_voip_channel]{get_apns_voip_channel} \tab Get an APNS VoIP channel \cr
#'  \link[=pinpoint_get_apns_voip_sandbox_channel]{get_apns_voip_sandbox_channel} \tab Get an APNS VoIPSandbox channel \cr
#'  \link[=pinpoint_get_app]{get_app} \tab Returns information about an app \cr
#'  \link[=pinpoint_get_application_settings]{get_application_settings} \tab Used to request the settings for an app \cr
#'  \link[=pinpoint_get_apps]{get_apps} \tab Returns information about your apps \cr
#'  \link[=pinpoint_get_baidu_channel]{get_baidu_channel} \tab Get a BAIDU GCM channel \cr
#'  \link[=pinpoint_get_campaign]{get_campaign} \tab Returns information about a campaign \cr
#'  \link[=pinpoint_get_campaign_activities]{get_campaign_activities} \tab Returns information about the activity performed by a campaign \cr
#'  \link[=pinpoint_get_campaign_version]{get_campaign_version} \tab Returns information about a specific version of a campaign \cr
#'  \link[=pinpoint_get_campaign_versions]{get_campaign_versions} \tab Returns information about your campaign versions \cr
#'  \link[=pinpoint_get_campaigns]{get_campaigns} \tab Returns information about your campaigns \cr
#'  \link[=pinpoint_get_channels]{get_channels} \tab Get all channels \cr
#'  \link[=pinpoint_get_email_channel]{get_email_channel} \tab Get an email channel \cr
#'  \link[=pinpoint_get_endpoint]{get_endpoint} \tab Returns information about an endpoint \cr
#'  \link[=pinpoint_get_event_stream]{get_event_stream} \tab Returns the event stream for an app \cr
#'  \link[=pinpoint_get_export_job]{get_export_job} \tab Returns information about an export job \cr
#'  \link[=pinpoint_get_export_jobs]{get_export_jobs} \tab Returns information about your export jobs \cr
#'  \link[=pinpoint_get_gcm_channel]{get_gcm_channel} \tab Returns information about the GCM channel for an app \cr
#'  \link[=pinpoint_get_import_job]{get_import_job} \tab Returns information about an import job \cr
#'  \link[=pinpoint_get_import_jobs]{get_import_jobs} \tab Returns information about your import jobs \cr
#'  \link[=pinpoint_get_segment]{get_segment} \tab Returns information about a segment \cr
#'  \link[=pinpoint_get_segment_export_jobs]{get_segment_export_jobs} \tab Returns a list of export jobs for a specific segment \cr
#'  \link[=pinpoint_get_segment_import_jobs]{get_segment_import_jobs} \tab Returns a list of import jobs for a specific segment \cr
#'  \link[=pinpoint_get_segment_version]{get_segment_version} \tab Returns information about a segment version \cr
#'  \link[=pinpoint_get_segment_versions]{get_segment_versions} \tab Returns information about your segment versions \cr
#'  \link[=pinpoint_get_segments]{get_segments} \tab Used to get information about your segments \cr
#'  \link[=pinpoint_get_sms_channel]{get_sms_channel} \tab Get an SMS channel \cr
#'  \link[=pinpoint_get_user_endpoints]{get_user_endpoints} \tab Returns information about the endpoints that are associated with a User ID\cr
#'  \link[=pinpoint_get_voice_channel]{get_voice_channel} \tab Get a Voice Channel \cr
#'  \link[=pinpoint_list_tags_for_resource]{list_tags_for_resource} \tab List tags for resource \cr
#'  \link[=pinpoint_phone_number_validate]{phone_number_validate} \tab Returns information about the specified phone number \cr
#'  \link[=pinpoint_put_event_stream]{put_event_stream} \tab Use to create or update the event stream for an app \cr
#'  \link[=pinpoint_put_events]{put_events} \tab Use to record events for endpoints \cr
#'  \link[=pinpoint_remove_attributes]{remove_attributes} \tab Used to remove the attributes for an app \cr
#'  \link[=pinpoint_send_messages]{send_messages} \tab Used to send a direct message \cr
#'  \link[=pinpoint_send_users_messages]{send_users_messages} \tab Used to send a message to a list of users \cr
#'  \link[=pinpoint_tag_resource]{tag_resource} \tab Tag resource \cr
#'  \link[=pinpoint_untag_resource]{untag_resource} \tab Untag resource \cr
#'  \link[=pinpoint_update_adm_channel]{update_adm_channel} \tab Update an ADM channel \cr
#'  \link[=pinpoint_update_apns_channel]{update_apns_channel} \tab Use to update the APNs channel for an app \cr
#'  \link[=pinpoint_update_apns_sandbox_channel]{update_apns_sandbox_channel} \tab Update an APNS sandbox channel \cr
#'  \link[=pinpoint_update_apns_voip_channel]{update_apns_voip_channel} \tab Update an APNS VoIP channel \cr
#'  \link[=pinpoint_update_apns_voip_sandbox_channel]{update_apns_voip_sandbox_channel} \tab Update an APNS VoIP sandbox channel \cr
#'  \link[=pinpoint_update_application_settings]{update_application_settings} \tab Used to update the settings for an app \cr
#'  \link[=pinpoint_update_baidu_channel]{update_baidu_channel} \tab Update a BAIDU GCM channel \cr
#'  \link[=pinpoint_update_campaign]{update_campaign} \tab Use to update a campaign \cr
#'  \link[=pinpoint_update_email_channel]{update_email_channel} \tab Update an email channel \cr
#'  \link[=pinpoint_update_endpoint]{update_endpoint} \tab Creates or updates an endpoint \cr
#'  \link[=pinpoint_update_endpoints_batch]{update_endpoints_batch} \tab Use to update a batch of endpoints \cr
#'  \link[=pinpoint_update_gcm_channel]{update_gcm_channel} \tab Use to update the GCM channel for an app \cr
#'  \link[=pinpoint_update_segment]{update_segment} \tab Used to update a segment \cr
#'  \link[=pinpoint_update_sms_channel]{update_sms_channel} \tab Update an SMS channel \cr
#'  \link[=pinpoint_update_voice_channel]{update_voice_channel} \tab Update an Voice channel 
#' }
#'
#' @rdname pinpoint
#' @export
pinpoint <- function() {
  paws.customer.engagement::pinpoint()
}

#' Amazon Pinpoint Email Service
#'
#' @description
#' This document contains reference information for the [Amazon
#' Pinpoint](https://aws.amazon.com/pinpoint) Email API, version 1.0. This
#' document is best used in conjunction with the [Amazon Pinpoint Developer
#' Guide](https://docs.aws.amazon.com/pinpoint/latest/developerguide/welcome.html).
#' 
#' The Amazon Pinpoint Email API is available in several AWS Regions and it
#' provides an endpoint for each of these Regions. For a list of all the
#' Regions and endpoints where the API is currently available, see [AWS
#' Regions and
#' Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#pinpoint_region)
#' in the *Amazon Web Services General Reference*.
#' 
#' In each Region, AWS maintains multiple Availability Zones. These
#' Availability Zones are physically isolated from each other, but are
#' united by private, low-latency, high-throughput, and highly redundant
#' network connections. These Availability Zones enable us to provide very
#' high levels of availability and redundancy, while also minimizing
#' latency. To learn more about the number of Availability Zones that are
#' available in each Region, see [AWS Global
#' Infrastructure](http://aws.amazon.com/about-aws/global-infrastructure/).
#'
#' @examples
#' \donttest{svc <- pinpointemail()
#' svc$create_configuration_set(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=pinpointemail_create_configuration_set]{create_configuration_set} \tab Create a configuration set \cr
#'  \link[=pinpointemail_create_configuration_set_event_destination]{create_configuration_set_event_destination} \tab Create an event destination \cr
#'  \link[=pinpointemail_create_dedicated_ip_pool]{create_dedicated_ip_pool} \tab Create a new pool of dedicated IP addresses \cr
#'  \link[=pinpointemail_create_deliverability_test_report]{create_deliverability_test_report} \tab Create a new predictive inbox placement test \cr
#'  \link[=pinpointemail_create_email_identity]{create_email_identity} \tab Verifies an email identity for use with Amazon Pinpoint \cr
#'  \link[=pinpointemail_delete_configuration_set]{delete_configuration_set} \tab Delete an existing configuration set \cr
#'  \link[=pinpointemail_delete_configuration_set_event_destination]{delete_configuration_set_event_destination} \tab Delete an event destination \cr
#'  \link[=pinpointemail_delete_dedicated_ip_pool]{delete_dedicated_ip_pool} \tab Delete a dedicated IP pool \cr
#'  \link[=pinpointemail_delete_email_identity]{delete_email_identity} \tab Deletes an email identity that you previously verified for use with Amazon Pinpoint \cr
#'  \link[=pinpointemail_get_account]{get_account} \tab Obtain information about the email-sending status and capabilities of your Amazon Pinpoint account in the current AWS Region \cr
#'  \link[=pinpointemail_get_blacklist_reports]{get_blacklist_reports} \tab Retrieve a list of the blacklists that your dedicated IP addresses appear on \cr
#'  \link[=pinpointemail_get_configuration_set]{get_configuration_set} \tab Get information about an existing configuration set, including the dedicated IP pool that it's associated with, whether or not it's enabled for sending email, and more \cr
#'  \link[=pinpointemail_get_configuration_set_event_destinations]{get_configuration_set_event_destinations} \tab Retrieve a list of event destinations that are associated with a configuration set \cr
#'  \link[=pinpointemail_get_dedicated_ip]{get_dedicated_ip} \tab Get information about a dedicated IP address, including the name of the dedicated IP pool that it's associated with, as well information about the automatic warm-up process for the address \cr
#'  \link[=pinpointemail_get_dedicated_ips]{get_dedicated_ips} \tab List the dedicated IP addresses that are associated with your Amazon Pinpoint account \cr
#'  \link[=pinpointemail_get_deliverability_dashboard_options]{get_deliverability_dashboard_options} \tab Retrieve information about the status of the Deliverability dashboard for your Amazon Pinpoint account \cr
#'  \link[=pinpointemail_get_deliverability_test_report]{get_deliverability_test_report} \tab Retrieve the results of a predictive inbox placement test \cr
#'  \link[=pinpointemail_get_domain_deliverability_campaign]{get_domain_deliverability_campaign} \tab Retrieve all the deliverability data for a specific campaign \cr
#'  \link[=pinpointemail_get_domain_statistics_report]{get_domain_statistics_report} \tab Retrieve inbox placement and engagement rates for the domains that you use to send email \cr
#'  \link[=pinpointemail_get_email_identity]{get_email_identity} \tab Provides information about a specific identity associated with your Amazon Pinpoint account, including the identity's verification status, its DKIM authentication status, and its custom Mail-From settings\cr
#'  \link[=pinpointemail_list_configuration_sets]{list_configuration_sets} \tab List all of the configuration sets associated with your Amazon Pinpoint account in the current region \cr
#'  \link[=pinpointemail_list_dedicated_ip_pools]{list_dedicated_ip_pools} \tab List all of the dedicated IP pools that exist in your Amazon Pinpoint account in the current AWS Region \cr
#'  \link[=pinpointemail_list_deliverability_test_reports]{list_deliverability_test_reports} \tab Show a list of the predictive inbox placement tests that you've performed, regardless of their statuses \cr
#'  \link[=pinpointemail_list_domain_deliverability_campaigns]{list_domain_deliverability_campaigns} \tab Retrieve deliverability data for all the campaigns that used a specific domain to send email during a specified time range \cr
#'  \link[=pinpointemail_list_email_identities]{list_email_identities} \tab Returns a list of all of the email identities that are associated with your Amazon Pinpoint account \cr
#'  \link[=pinpointemail_list_tags_for_resource]{list_tags_for_resource} \tab Retrieve a list of the tags (keys and values) that are associated with a specified resource \cr
#'  \link[=pinpointemail_put_account_dedicated_ip_warmup_attributes]{put_account_dedicated_ip_warmup_attributes} \tab Enable or disable the automatic warm-up feature for dedicated IP addresses \cr
#'  \link[=pinpointemail_put_account_sending_attributes]{put_account_sending_attributes} \tab Enable or disable the ability of your account to send email \cr
#'  \link[=pinpointemail_put_configuration_set_delivery_options]{put_configuration_set_delivery_options} \tab Associate a configuration set with a dedicated IP pool \cr
#'  \link[=pinpointemail_put_configuration_set_reputation_options]{put_configuration_set_reputation_options} \tab Enable or disable collection of reputation metrics for emails that you send using a particular configuration set in a specific AWS Region \cr
#'  \link[=pinpointemail_put_configuration_set_sending_options]{put_configuration_set_sending_options} \tab Enable or disable email sending for messages that use a particular configuration set in a specific AWS Region \cr
#'  \link[=pinpointemail_put_configuration_set_tracking_options]{put_configuration_set_tracking_options} \tab Specify a custom domain to use for open and click tracking elements in email that you send using Amazon Pinpoint \cr
#'  \link[=pinpointemail_put_dedicated_ip_in_pool]{put_dedicated_ip_in_pool} \tab Move a dedicated IP address to an existing dedicated IP pool \cr
#'  \link[=pinpointemail_put_dedicated_ip_warmup_attributes]{put_dedicated_ip_warmup_attributes} \tab Put dedicated ip warmup attributes \cr
#'  \link[=pinpointemail_put_deliverability_dashboard_option]{put_deliverability_dashboard_option} \tab Enable or disable the Deliverability dashboard for your Amazon Pinpoint account \cr
#'  \link[=pinpointemail_put_email_identity_dkim_attributes]{put_email_identity_dkim_attributes} \tab Used to enable or disable DKIM authentication for an email identity \cr
#'  \link[=pinpointemail_put_email_identity_feedback_attributes]{put_email_identity_feedback_attributes} \tab Used to enable or disable feedback forwarding for an identity \cr
#'  \link[=pinpointemail_put_email_identity_mail_from_attributes]{put_email_identity_mail_from_attributes} \tab Used to enable or disable the custom Mail-From domain configuration for an email identity \cr
#'  \link[=pinpointemail_send_email]{send_email} \tab Sends an email message \cr
#'  \link[=pinpointemail_tag_resource]{tag_resource} \tab Add one or more tags (keys and values) to a specified resource \cr
#'  \link[=pinpointemail_untag_resource]{untag_resource} \tab Remove one or more tags (keys and values) from a specified resource \cr
#'  \link[=pinpointemail_update_configuration_set_event_destination]{update_configuration_set_event_destination} \tab Update the configuration of an event destination for a configuration set 
#' }
#'
#' @rdname pinpointemail
#' @export
pinpointemail <- function() {
  paws.customer.engagement::pinpointemail()
}

#' Amazon Pinpoint SMS and Voice Service
#'
#' @description
#' Pinpoint SMS and Voice Messaging public facing APIs
#'
#' @examples
#' \donttest{svc <- pinpointsmsvoice()
#' svc$create_configuration_set(
#'   Foo = 123
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=pinpointsmsvoice_create_configuration_set]{create_configuration_set} \tab Create a new configuration set \cr
#'  \link[=pinpointsmsvoice_create_configuration_set_event_destination]{create_configuration_set_event_destination} \tab Create a new event destination in a configuration set \cr
#'  \link[=pinpointsmsvoice_delete_configuration_set]{delete_configuration_set} \tab Deletes an existing configuration set \cr
#'  \link[=pinpointsmsvoice_delete_configuration_set_event_destination]{delete_configuration_set_event_destination} \tab Deletes an event destination in a configuration set \cr
#'  \link[=pinpointsmsvoice_get_configuration_set_event_destinations]{get_configuration_set_event_destinations} \tab Obtain information about an event destination, including the types of events it reports, the Amazon Resource Name (ARN) of the destination, and the name of the event destination\cr
#'  \link[=pinpointsmsvoice_list_configuration_sets]{list_configuration_sets} \tab List all of the configuration sets associated with your Amazon Pinpoint account in the current region \cr
#'  \link[=pinpointsmsvoice_send_voice_message]{send_voice_message} \tab Create a new voice message and send it to a recipient's phone number \cr
#'  \link[=pinpointsmsvoice_update_configuration_set_event_destination]{update_configuration_set_event_destination} \tab Update an event destination in a configuration set 
#' }
#'
#' @rdname pinpointsmsvoice
#' @export
pinpointsmsvoice <- function() {
  paws.customer.engagement::pinpointsmsvoice()
}

#' Amazon Simple Email Service
#'
#' @description
#' This document contains reference information for the [Amazon Simple
#' Email Service](https://aws.amazon.com/ses/) (Amazon SES) API, version
#' 2010-12-01. This document is best used in conjunction with the [Amazon
#' SES Developer
#' Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html).
#' 
#' For a list of Amazon SES endpoints to use in service requests, see
#' [Regions and Amazon
#' SES](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/regions.html)
#' in the [Amazon SES Developer
#' Guide](https://docs.aws.amazon.com/ses/latest/DeveloperGuide/Welcome.html).
#'
#' @examples
#' # The following example creates a receipt rule set by cloning an existing
#' # one:
#' \donttest{svc <- ses()
#' svc$clone_receipt_rule_set(
#'   OriginalRuleSetName = "RuleSetToClone",
#'   RuleSetName = "RuleSetToCreate"
#' )}
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=ses_clone_receipt_rule_set]{clone_receipt_rule_set} \tab Creates a receipt rule set by cloning an existing one \cr
#'  \link[=ses_create_configuration_set]{create_configuration_set} \tab Creates a configuration set \cr
#'  \link[=ses_create_configuration_set_event_destination]{create_configuration_set_event_destination} \tab Creates a configuration set event destination \cr
#'  \link[=ses_create_configuration_set_tracking_options]{create_configuration_set_tracking_options} \tab Creates an association between a configuration set and a custom domain for open and click event tracking \cr
#'  \link[=ses_create_custom_verification_email_template]{create_custom_verification_email_template} \tab Creates a new custom verification email template \cr
#'  \link[=ses_create_receipt_filter]{create_receipt_filter} \tab Creates a new IP address filter \cr
#'  \link[=ses_create_receipt_rule]{create_receipt_rule} \tab Creates a receipt rule \cr
#'  \link[=ses_create_receipt_rule_set]{create_receipt_rule_set} \tab Creates an empty receipt rule set \cr
#'  \link[=ses_create_template]{create_template} \tab Creates an email template \cr
#'  \link[=ses_delete_configuration_set]{delete_configuration_set} \tab Deletes a configuration set \cr
#'  \link[=ses_delete_configuration_set_event_destination]{delete_configuration_set_event_destination} \tab Deletes a configuration set event destination \cr
#'  \link[=ses_delete_configuration_set_tracking_options]{delete_configuration_set_tracking_options} \tab Deletes an association between a configuration set and a custom domain for open and click event tracking \cr
#'  \link[=ses_delete_custom_verification_email_template]{delete_custom_verification_email_template} \tab Deletes an existing custom verification email template \cr
#'  \link[=ses_delete_identity]{delete_identity} \tab Deletes the specified identity (an email address or a domain) from the list of verified identities \cr
#'  \link[=ses_delete_identity_policy]{delete_identity_policy} \tab Deletes the specified sending authorization policy for the given identity (an email address or a domain) \cr
#'  \link[=ses_delete_receipt_filter]{delete_receipt_filter} \tab Deletes the specified IP address filter \cr
#'  \link[=ses_delete_receipt_rule]{delete_receipt_rule} \tab Deletes the specified receipt rule \cr
#'  \link[=ses_delete_receipt_rule_set]{delete_receipt_rule_set} \tab Deletes the specified receipt rule set and all of the receipt rules it contains \cr
#'  \link[=ses_delete_template]{delete_template} \tab Deletes an email template \cr
#'  \link[=ses_delete_verified_email_address]{delete_verified_email_address} \tab Deprecated \cr
#'  \link[=ses_describe_active_receipt_rule_set]{describe_active_receipt_rule_set} \tab Returns the metadata and receipt rules for the receipt rule set that is currently active \cr
#'  \link[=ses_describe_configuration_set]{describe_configuration_set} \tab Returns the details of the specified configuration set \cr
#'  \link[=ses_describe_receipt_rule]{describe_receipt_rule} \tab Returns the details of the specified receipt rule \cr
#'  \link[=ses_describe_receipt_rule_set]{describe_receipt_rule_set} \tab Returns the details of the specified receipt rule set \cr
#'  \link[=ses_get_account_sending_enabled]{get_account_sending_enabled} \tab Returns the email sending status of the Amazon SES account for the current region \cr
#'  \link[=ses_get_custom_verification_email_template]{get_custom_verification_email_template} \tab Returns the custom email verification template for the template name you specify \cr
#'  \link[=ses_get_identity_dkim_attributes]{get_identity_dkim_attributes} \tab Returns the current status of Easy DKIM signing for an entity \cr
#'  \link[=ses_get_identity_mail_from_domain_attributes]{get_identity_mail_from_domain_attributes} \tab Returns the custom MAIL FROM attributes for a list of identities (email addresses : domains) \cr
#'  \link[=ses_get_identity_notification_attributes]{get_identity_notification_attributes} \tab Given a list of verified identities (email addresses and/or domains), returns a structure describing identity notification attributes \cr
#'  \link[=ses_get_identity_policies]{get_identity_policies} \tab Returns the requested sending authorization policies for the given identity (an email address or a domain) \cr
#'  \link[=ses_get_identity_verification_attributes]{get_identity_verification_attributes} \tab Given a list of identities (email addresses and/or domains), returns the verification status and (for domain identities) the verification token for each identity \cr
#'  \link[=ses_get_send_quota]{get_send_quota} \tab Provides the sending limits for the Amazon SES account \cr
#'  \link[=ses_get_send_statistics]{get_send_statistics} \tab Provides sending statistics for the current AWS Region \cr
#'  \link[=ses_get_template]{get_template} \tab Displays the template object (which includes the Subject line, HTML part and text part) for the template you specify \cr
#'  \link[=ses_list_configuration_sets]{list_configuration_sets} \tab Provides a list of the configuration sets associated with your Amazon SES account in the current AWS Region \cr
#'  \link[=ses_list_custom_verification_email_templates]{list_custom_verification_email_templates} \tab Lists the existing custom verification email templates for your account in the current AWS Region \cr
#'  \link[=ses_list_identities]{list_identities} \tab Returns a list containing all of the identities (email addresses and domains) for your AWS account in the current AWS Region, regardless of verification status \cr
#'  \link[=ses_list_identity_policies]{list_identity_policies} \tab Returns a list of sending authorization policies that are attached to the given identity (an email address or a domain) \cr
#'  \link[=ses_list_receipt_filters]{list_receipt_filters} \tab Lists the IP address filters associated with your AWS account in the current AWS Region \cr
#'  \link[=ses_list_receipt_rule_sets]{list_receipt_rule_sets} \tab Lists the receipt rule sets that exist under your AWS account in the current AWS Region \cr
#'  \link[=ses_list_templates]{list_templates} \tab Lists the email templates present in your Amazon SES account in the current AWS Region \cr
#'  \link[=ses_list_verified_email_addresses]{list_verified_email_addresses} \tab Deprecated \cr
#'  \link[=ses_put_configuration_set_delivery_options]{put_configuration_set_delivery_options} \tab Adds or updates the delivery options for a configuration set \cr
#'  \link[=ses_put_identity_policy]{put_identity_policy} \tab Adds or updates a sending authorization policy for the specified identity (an email address or a domain) \cr
#'  \link[=ses_reorder_receipt_rule_set]{reorder_receipt_rule_set} \tab Reorders the receipt rules within a receipt rule set \cr
#'  \link[=ses_send_bounce]{send_bounce} \tab Generates and sends a bounce message to the sender of an email you received through Amazon SES \cr
#'  \link[=ses_send_bulk_templated_email]{send_bulk_templated_email} \tab Composes an email message to multiple destinations \cr
#'  \link[=ses_send_custom_verification_email]{send_custom_verification_email} \tab Adds an email address to the list of identities for your Amazon SES account in the current AWS Region and attempts to verify it \cr
#'  \link[=ses_send_email]{send_email} \tab Composes an email message and immediately queues it for sending \cr
#'  \link[=ses_send_raw_email]{send_raw_email} \tab Composes an email message and immediately queues it for sending \cr
#'  \link[=ses_send_templated_email]{send_templated_email} \tab Composes an email message using an email template and immediately queues it for sending \cr
#'  \link[=ses_set_active_receipt_rule_set]{set_active_receipt_rule_set} \tab Sets the specified receipt rule set as the active receipt rule set \cr
#'  \link[=ses_set_identity_dkim_enabled]{set_identity_dkim_enabled} \tab Enables or disables Easy DKIM signing of email sent from an identity: - If Easy DKIM signing is enabled for a domain name identity (such as example \cr
#'  \link[=ses_set_identity_feedback_forwarding_enabled]{set_identity_feedback_forwarding_enabled} \tab Given an identity (an email address or a domain), enables or disables whether Amazon SES forwards bounce and complaint notifications as email \cr
#'  \link[=ses_set_identity_headers_in_notifications_enabled]{set_identity_headers_in_notifications_enabled} \tab Given an identity (an email address or a domain), sets whether Amazon SES includes the original email headers in the Amazon Simple Notification Service (Amazon SNS) notifications of a specified type\cr
#'  \link[=ses_set_identity_mail_from_domain]{set_identity_mail_from_domain} \tab Enables or disables the custom MAIL FROM domain setup for a verified identity (an email address or a domain) \cr
#'  \link[=ses_set_identity_notification_topic]{set_identity_notification_topic} \tab Sets an Amazon Simple Notification Service (Amazon SNS) topic to use when delivering notifications \cr
#'  \link[=ses_set_receipt_rule_position]{set_receipt_rule_position} \tab Sets the position of the specified receipt rule in the receipt rule set \cr
#'  \link[=ses_test_render_template]{test_render_template} \tab Creates a preview of the MIME content of an email when provided with a template and a set of replacement data \cr
#'  \link[=ses_update_account_sending_enabled]{update_account_sending_enabled} \tab Enables or disables email sending across your entire Amazon SES account in the current AWS Region \cr
#'  \link[=ses_update_configuration_set_event_destination]{update_configuration_set_event_destination} \tab Updates the event destination of a configuration set \cr
#'  \link[=ses_update_configuration_set_reputation_metrics_enabled]{update_configuration_set_reputation_metrics_enabled} \tab Enables or disables the publishing of reputation metrics for emails sent using a specific configuration set in a given AWS Region \cr
#'  \link[=ses_update_configuration_set_sending_enabled]{update_configuration_set_sending_enabled} \tab Enables or disables email sending for messages sent using a specific configuration set in a given AWS Region \cr
#'  \link[=ses_update_configuration_set_tracking_options]{update_configuration_set_tracking_options} \tab Modifies an association between a configuration set and a custom domain for open and click event tracking \cr
#'  \link[=ses_update_custom_verification_email_template]{update_custom_verification_email_template} \tab Updates an existing custom verification email template \cr
#'  \link[=ses_update_receipt_rule]{update_receipt_rule} \tab Updates a receipt rule \cr
#'  \link[=ses_update_template]{update_template} \tab Updates an email template \cr
#'  \link[=ses_verify_domain_dkim]{verify_domain_dkim} \tab Returns a set of DKIM tokens for a domain identity \cr
#'  \link[=ses_verify_domain_identity]{verify_domain_identity} \tab Adds a domain to the list of identities for your Amazon SES account in the current AWS Region and attempts to verify it \cr
#'  \link[=ses_verify_email_address]{verify_email_address} \tab Deprecated \cr
#'  \link[=ses_verify_email_identity]{verify_email_identity} \tab Adds an email address to the list of identities for your Amazon SES account in the current AWS region and attempts to verify it 
#' }
#'
#' @rdname ses
#' @export
ses <- function() {
  paws.customer.engagement::ses()
}
