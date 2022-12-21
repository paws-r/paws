#' Amazon Elastic Compute Cloud
#'
#' @description
#' Amazon Elastic Compute Cloud (Amazon EC2) provides secure and resizable
#' computing capacity in the Amazon Web Services Cloud. Using Amazon EC2
#' eliminates the need to invest in hardware up front, so you can develop
#' and deploy applications faster. Amazon Virtual Private Cloud (Amazon
#' VPC) enables you to provision a logically isolated section of the Amazon
#' Web Services Cloud where you can launch Amazon Web Services resources in
#' a virtual network that you've defined. Amazon Elastic Block Store
#' (Amazon EBS) provides block level storage volumes for use with EC2
#' instances. EBS volumes are highly available and reliable storage volumes
#' that can be attached to any running instance and used like a hard drive.
#' 
#' To learn more, see the following resources:
#' 
#' -   Amazon EC2: [AmazonEC2 product page](https://aws.amazon.com/ec2/),
#'     [Amazon EC2
#'     documentation](https://docs.aws.amazon.com/ec2/index.html)
#' 
#' -   Amazon EBS: [Amazon EBS product page](https://aws.amazon.com/ebs/),
#'     Amazon EBS documentation
#' 
#' -   Amazon VPC: [Amazon VPC product page](https://aws.amazon.com/vpc/),
#'     [Amazon VPC
#'     documentation](https://docs.aws.amazon.com/vpc/index.html)
#' 
#' -   Amazon Web Services VPN: [Amazon Web Services VPN product
#'     page](https://aws.amazon.com/vpn/), Amazon Web Services VPN
#'     documentation
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- ec2(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- ec2()
#' # This example allocates an Elastic IP address to use with an instance in
#' # a VPC.
#' svc$allocate_address(
#'   Domain = "vpc"
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=ec2_accept_reserved_instances_exchange_quote]{accept_reserved_instances_exchange_quote} \tab Accepts the Convertible Reserved Instance exchange quote described in the GetReservedInstancesExchangeQuote call\cr
#'  \link[=ec2_accept_transit_gateway_multicast_domain_associations]{accept_transit_gateway_multicast_domain_associations} \tab Accepts a request to associate subnets with a transit gateway multicast domain\cr
#'  \link[=ec2_accept_transit_gateway_peering_attachment]{accept_transit_gateway_peering_attachment} \tab Accepts a transit gateway peering attachment request\cr
#'  \link[=ec2_accept_transit_gateway_vpc_attachment]{accept_transit_gateway_vpc_attachment} \tab Accepts a request to attach a VPC to a transit gateway\cr
#'  \link[=ec2_accept_vpc_endpoint_connections]{accept_vpc_endpoint_connections} \tab Accepts one or more interface VPC endpoint connection requests to your VPC endpoint service\cr
#'  \link[=ec2_accept_vpc_peering_connection]{accept_vpc_peering_connection} \tab Accept a VPC peering connection request\cr
#'  \link[=ec2_advertise_byoip_cidr]{advertise_byoip_cidr} \tab Advertises an IPv4 or IPv6 address range that is provisioned for use with your Amazon Web Services resources through bring your own IP addresses (BYOIP)\cr
#'  \link[=ec2_allocate_address]{allocate_address} \tab Allocates an Elastic IP address to your Amazon Web Services account\cr
#'  \link[=ec2_allocate_hosts]{allocate_hosts} \tab Allocates a Dedicated Host to your account\cr
#'  \link[=ec2_allocate_ipam_pool_cidr]{allocate_ipam_pool_cidr} \tab Allocate a CIDR from an IPAM pool\cr
#'  \link[=ec2_apply_security_groups_to_client_vpn_target_network]{apply_security_groups_to_client_vpn_target_network} \tab Applies a security group to the association between the target network and the Client VPN endpoint\cr
#'  \link[=ec2_assign_ipv_6_addresses]{assign_ipv_6_addresses} \tab Assigns one or more IPv6 addresses to the specified network interface\cr
#'  \link[=ec2_assign_private_ip_addresses]{assign_private_ip_addresses} \tab Assigns one or more secondary private IP addresses to the specified network interface\cr
#'  \link[=ec2_associate_address]{associate_address} \tab Associates an Elastic IP address, or carrier IP address (for instances that are in subnets in Wavelength Zones) with an instance or a network interface\cr
#'  \link[=ec2_associate_client_vpn_target_network]{associate_client_vpn_target_network} \tab Associates a target network with a Client VPN endpoint\cr
#'  \link[=ec2_associate_dhcp_options]{associate_dhcp_options} \tab Associates a set of DHCP options (that you've previously created) with the specified VPC, or associates no DHCP options with the VPC\cr
#'  \link[=ec2_associate_enclave_certificate_iam_role]{associate_enclave_certificate_iam_role} \tab Associates an Identity and Access Management (IAM) role with an Certificate Manager (ACM) certificate\cr
#'  \link[=ec2_associate_iam_instance_profile]{associate_iam_instance_profile} \tab Associates an IAM instance profile with a running or stopped instance\cr
#'  \link[=ec2_associate_instance_event_window]{associate_instance_event_window} \tab Associates one or more targets with an event window\cr
#'  \link[=ec2_associate_route_table]{associate_route_table} \tab Associates a subnet in your VPC or an internet gateway or virtual private gateway attached to your VPC with a route table in your VPC\cr
#'  \link[=ec2_associate_subnet_cidr_block]{associate_subnet_cidr_block} \tab Associates a CIDR block with your subnet\cr
#'  \link[=ec2_associate_transit_gateway_multicast_domain]{associate_transit_gateway_multicast_domain} \tab Associates the specified subnets and transit gateway attachments with the specified transit gateway multicast domain\cr
#'  \link[=ec2_associate_transit_gateway_policy_table]{associate_transit_gateway_policy_table} \tab Associates the specified transit gateway attachment with a transit gateway policy table\cr
#'  \link[=ec2_associate_transit_gateway_route_table]{associate_transit_gateway_route_table} \tab Associates the specified attachment with the specified transit gateway route table\cr
#'  \link[=ec2_associate_trunk_interface]{associate_trunk_interface} \tab This API action is currently in limited preview only\cr
#'  \link[=ec2_associate_vpc_cidr_block]{associate_vpc_cidr_block} \tab Associates a CIDR block with your VPC\cr
#'  \link[=ec2_attach_classic_link_vpc]{attach_classic_link_vpc} \tab We are retiring EC2-Classic on August 15, 2022\cr
#'  \link[=ec2_attach_internet_gateway]{attach_internet_gateway} \tab Attaches an internet gateway or a virtual private gateway to a VPC, enabling connectivity between the internet and the VPC\cr
#'  \link[=ec2_attach_network_interface]{attach_network_interface} \tab Attaches a network interface to an instance\cr
#'  \link[=ec2_attach_volume]{attach_volume} \tab Attaches an EBS volume to a running or stopped instance and exposes it to the instance with the specified device name\cr
#'  \link[=ec2_attach_vpn_gateway]{attach_vpn_gateway} \tab Attaches a virtual private gateway to a VPC\cr
#'  \link[=ec2_authorize_client_vpn_ingress]{authorize_client_vpn_ingress} \tab Adds an ingress authorization rule to a Client VPN endpoint\cr
#'  \link[=ec2_authorize_security_group_egress]{authorize_security_group_egress} \tab &#91;VPC only&#93; Adds the specified outbound (egress) rules to a security group for use with a VPC\cr
#'  \link[=ec2_authorize_security_group_ingress]{authorize_security_group_ingress} \tab Adds the specified inbound (ingress) rules to a security group\cr
#'  \link[=ec2_bundle_instance]{bundle_instance} \tab Bundles an Amazon instance store-backed Windows instance\cr
#'  \link[=ec2_cancel_bundle_task]{cancel_bundle_task} \tab Cancels a bundling operation for an instance store-backed Windows instance\cr
#'  \link[=ec2_cancel_capacity_reservation]{cancel_capacity_reservation} \tab Cancels the specified Capacity Reservation, releases the reserved capacity, and changes the Capacity Reservation's state to cancelled\cr
#'  \link[=ec2_cancel_capacity_reservation_fleets]{cancel_capacity_reservation_fleets} \tab Cancels one or more Capacity Reservation Fleets\cr
#'  \link[=ec2_cancel_conversion_task]{cancel_conversion_task} \tab Cancels an active conversion task\cr
#'  \link[=ec2_cancel_export_task]{cancel_export_task} \tab Cancels an active export task\cr
#'  \link[=ec2_cancel_import_task]{cancel_import_task} \tab Cancels an in-process import virtual machine or import snapshot task\cr
#'  \link[=ec2_cancel_reserved_instances_listing]{cancel_reserved_instances_listing} \tab Cancels the specified Reserved Instance listing in the Reserved Instance Marketplace\cr
#'  \link[=ec2_cancel_spot_fleet_requests]{cancel_spot_fleet_requests} \tab Cancels the specified Spot Fleet requests\cr
#'  \link[=ec2_cancel_spot_instance_requests]{cancel_spot_instance_requests} \tab Cancels one or more Spot Instance requests\cr
#'  \link[=ec2_confirm_product_instance]{confirm_product_instance} \tab Determines whether a product code is associated with an instance\cr
#'  \link[=ec2_copy_fpga_image]{copy_fpga_image} \tab Copies the specified Amazon FPGA Image (AFI) to the current Region\cr
#'  \link[=ec2_copy_image]{copy_image} \tab Initiates the copy of an AMI\cr
#'  \link[=ec2_copy_snapshot]{copy_snapshot} \tab Copies a point-in-time snapshot of an EBS volume and stores it in Amazon S3\cr
#'  \link[=ec2_create_capacity_reservation]{create_capacity_reservation} \tab Creates a new Capacity Reservation with the specified attributes\cr
#'  \link[=ec2_create_capacity_reservation_fleet]{create_capacity_reservation_fleet} \tab Creates a Capacity Reservation Fleet\cr
#'  \link[=ec2_create_carrier_gateway]{create_carrier_gateway} \tab Creates a carrier gateway\cr
#'  \link[=ec2_create_client_vpn_endpoint]{create_client_vpn_endpoint} \tab Creates a Client VPN endpoint\cr
#'  \link[=ec2_create_client_vpn_route]{create_client_vpn_route} \tab Adds a route to a network to a Client VPN endpoint\cr
#'  \link[=ec2_create_customer_gateway]{create_customer_gateway} \tab Provides information to Amazon Web Services about your customer gateway device\cr
#'  \link[=ec2_create_default_subnet]{create_default_subnet} \tab Creates a default subnet with a size /20 IPv4 CIDR block in the specified Availability Zone in your default VPC\cr
#'  \link[=ec2_create_default_vpc]{create_default_vpc} \tab Creates a default VPC with a size /16 IPv4 CIDR block and a default subnet in each Availability Zone\cr
#'  \link[=ec2_create_dhcp_options]{create_dhcp_options} \tab Creates a set of DHCP options for your VPC\cr
#'  \link[=ec2_create_egress_only_internet_gateway]{create_egress_only_internet_gateway} \tab &#91;IPv6 only&#93; Creates an egress-only internet gateway for your VPC\cr
#'  \link[=ec2_create_fleet]{create_fleet} \tab Launches an EC2 Fleet\cr
#'  \link[=ec2_create_flow_logs]{create_flow_logs} \tab Creates one or more flow logs to capture information about IP traffic for a specific network interface, subnet, or VPC\cr
#'  \link[=ec2_create_fpga_image]{create_fpga_image} \tab Creates an Amazon FPGA Image (AFI) from the specified design checkpoint (DCP)\cr
#'  \link[=ec2_create_image]{create_image} \tab Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance that is either running or stopped\cr
#'  \link[=ec2_create_instance_event_window]{create_instance_event_window} \tab Creates an event window in which scheduled events for the associated Amazon EC2 instances can run\cr
#'  \link[=ec2_create_instance_export_task]{create_instance_export_task} \tab Exports a running or stopped instance to an Amazon S3 bucket\cr
#'  \link[=ec2_create_internet_gateway]{create_internet_gateway} \tab Creates an internet gateway for use with a VPC\cr
#'  \link[=ec2_create_ipam]{create_ipam} \tab Create an IPAM\cr
#'  \link[=ec2_create_ipam_pool]{create_ipam_pool} \tab Create an IP address pool for Amazon VPC IP Address Manager (IPAM)\cr
#'  \link[=ec2_create_ipam_scope]{create_ipam_scope} \tab Create an IPAM scope\cr
#'  \link[=ec2_create_key_pair]{create_key_pair} \tab Creates an ED25519 or 2048-bit RSA key pair with the specified name and in the specified PEM or PPK format\cr
#'  \link[=ec2_create_launch_template]{create_launch_template} \tab Creates a launch template\cr
#'  \link[=ec2_create_launch_template_version]{create_launch_template_version} \tab Creates a new version of a launch template\cr
#'  \link[=ec2_create_local_gateway_route]{create_local_gateway_route} \tab Creates a static route for the specified local gateway route table\cr
#'  \link[=ec2_create_local_gateway_route_table_vpc_association]{create_local_gateway_route_table_vpc_association} \tab Associates the specified VPC with the specified local gateway route table\cr
#'  \link[=ec2_create_managed_prefix_list]{create_managed_prefix_list} \tab Creates a managed prefix list\cr
#'  \link[=ec2_create_nat_gateway]{create_nat_gateway} \tab Creates a NAT gateway in the specified subnet\cr
#'  \link[=ec2_create_network_acl]{create_network_acl} \tab Creates a network ACL in a VPC\cr
#'  \link[=ec2_create_network_acl_entry]{create_network_acl_entry} \tab Creates an entry (a rule) in a network ACL with the specified rule number\cr
#'  \link[=ec2_create_network_insights_access_scope]{create_network_insights_access_scope} \tab Creates a Network Access Scope\cr
#'  \link[=ec2_create_network_insights_path]{create_network_insights_path} \tab Creates a path to analyze for reachability\cr
#'  \link[=ec2_create_network_interface]{create_network_interface} \tab Creates a network interface in the specified subnet\cr
#'  \link[=ec2_create_network_interface_permission]{create_network_interface_permission} \tab Grants an Amazon Web Services-authorized account permission to attach the specified network interface to an instance in their account\cr
#'  \link[=ec2_create_placement_group]{create_placement_group} \tab Creates a placement group in which to launch instances\cr
#'  \link[=ec2_create_public_ipv_4_pool]{create_public_ipv_4_pool} \tab Creates a public IPv4 address pool\cr
#'  \link[=ec2_create_replace_root_volume_task]{create_replace_root_volume_task} \tab Creates a root volume replacement task for an Amazon EC2 instance\cr
#'  \link[=ec2_create_reserved_instances_listing]{create_reserved_instances_listing} \tab Creates a listing for Amazon EC2 Standard Reserved Instances to be sold in the Reserved Instance Marketplace\cr
#'  \link[=ec2_create_restore_image_task]{create_restore_image_task} \tab Starts a task that restores an AMI from an Amazon S3 object that was previously created by using CreateStoreImageTask\cr
#'  \link[=ec2_create_route]{create_route} \tab Creates a route in a route table within a VPC\cr
#'  \link[=ec2_create_route_table]{create_route_table} \tab Creates a route table for the specified VPC\cr
#'  \link[=ec2_create_security_group]{create_security_group} \tab Creates a security group\cr
#'  \link[=ec2_create_snapshot]{create_snapshot} \tab Creates a snapshot of an EBS volume and stores it in Amazon S3\cr
#'  \link[=ec2_create_snapshots]{create_snapshots} \tab Creates crash-consistent snapshots of multiple EBS volumes and stores the data in S3\cr
#'  \link[=ec2_create_spot_datafeed_subscription]{create_spot_datafeed_subscription} \tab Creates a data feed for Spot Instances, enabling you to view Spot Instance usage logs\cr
#'  \link[=ec2_create_store_image_task]{create_store_image_task} \tab Stores an AMI as a single object in an Amazon S3 bucket\cr
#'  \link[=ec2_create_subnet]{create_subnet} \tab Creates a subnet in a specified VPC\cr
#'  \link[=ec2_create_subnet_cidr_reservation]{create_subnet_cidr_reservation} \tab Creates a subnet CIDR reservation\cr
#'  \link[=ec2_create_tags]{create_tags} \tab Adds or overwrites only the specified tags for the specified Amazon EC2 resource or resources\cr
#'  \link[=ec2_create_traffic_mirror_filter]{create_traffic_mirror_filter} \tab Creates a Traffic Mirror filter\cr
#'  \link[=ec2_create_traffic_mirror_filter_rule]{create_traffic_mirror_filter_rule} \tab Creates a Traffic Mirror filter rule\cr
#'  \link[=ec2_create_traffic_mirror_session]{create_traffic_mirror_session} \tab Creates a Traffic Mirror session\cr
#'  \link[=ec2_create_traffic_mirror_target]{create_traffic_mirror_target} \tab Creates a target for your Traffic Mirror session\cr
#'  \link[=ec2_create_transit_gateway]{create_transit_gateway} \tab Creates a transit gateway\cr
#'  \link[=ec2_create_transit_gateway_connect]{create_transit_gateway_connect} \tab Creates a Connect attachment from a specified transit gateway attachment\cr
#'  \link[=ec2_create_transit_gateway_connect_peer]{create_transit_gateway_connect_peer} \tab Creates a Connect peer for a specified transit gateway Connect attachment between a transit gateway and an appliance\cr
#'  \link[=ec2_create_transit_gateway_multicast_domain]{create_transit_gateway_multicast_domain} \tab Creates a multicast domain using the specified transit gateway\cr
#'  \link[=ec2_create_transit_gateway_peering_attachment]{create_transit_gateway_peering_attachment} \tab Requests a transit gateway peering attachment between the specified transit gateway (requester) and a peer transit gateway (accepter)\cr
#'  \link[=ec2_create_transit_gateway_policy_table]{create_transit_gateway_policy_table} \tab Creates a transit gateway policy table\cr
#'  \link[=ec2_create_transit_gateway_prefix_list_reference]{create_transit_gateway_prefix_list_reference} \tab Creates a reference (route) to a prefix list in a specified transit gateway route table\cr
#'  \link[=ec2_create_transit_gateway_route]{create_transit_gateway_route} \tab Creates a static route for the specified transit gateway route table\cr
#'  \link[=ec2_create_transit_gateway_route_table]{create_transit_gateway_route_table} \tab Creates a route table for the specified transit gateway\cr
#'  \link[=ec2_create_transit_gateway_route_table_announcement]{create_transit_gateway_route_table_announcement} \tab Advertises a new transit gateway route table\cr
#'  \link[=ec2_create_transit_gateway_vpc_attachment]{create_transit_gateway_vpc_attachment} \tab Attaches the specified VPC to the specified transit gateway\cr
#'  \link[=ec2_create_volume]{create_volume} \tab Creates an EBS volume that can be attached to an instance in the same Availability Zone\cr
#'  \link[=ec2_create_vpc]{create_vpc} \tab Creates a VPC with the specified IPv4 CIDR block\cr
#'  \link[=ec2_create_vpc_endpoint]{create_vpc_endpoint} \tab Creates a VPC endpoint for a specified service\cr
#'  \link[=ec2_create_vpc_endpoint_connection_notification]{create_vpc_endpoint_connection_notification} \tab Creates a connection notification for a specified VPC endpoint or VPC endpoint service\cr
#'  \link[=ec2_create_vpc_endpoint_service_configuration]{create_vpc_endpoint_service_configuration} \tab Creates a VPC endpoint service to which service consumers (Amazon Web Services accounts, IAM users, and IAM roles) can connect\cr
#'  \link[=ec2_create_vpc_peering_connection]{create_vpc_peering_connection} \tab Requests a VPC peering connection between two VPCs: a requester VPC that you own and an accepter VPC with which to create the connection\cr
#'  \link[=ec2_create_vpn_connection]{create_vpn_connection} \tab Creates a VPN connection between an existing virtual private gateway or transit gateway and a customer gateway\cr
#'  \link[=ec2_create_vpn_connection_route]{create_vpn_connection_route} \tab Creates a static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway\cr
#'  \link[=ec2_create_vpn_gateway]{create_vpn_gateway} \tab Creates a virtual private gateway\cr
#'  \link[=ec2_delete_carrier_gateway]{delete_carrier_gateway} \tab Deletes a carrier gateway\cr
#'  \link[=ec2_delete_client_vpn_endpoint]{delete_client_vpn_endpoint} \tab Deletes the specified Client VPN endpoint\cr
#'  \link[=ec2_delete_client_vpn_route]{delete_client_vpn_route} \tab Deletes a route from a Client VPN endpoint\cr
#'  \link[=ec2_delete_customer_gateway]{delete_customer_gateway} \tab Deletes the specified customer gateway\cr
#'  \link[=ec2_delete_dhcp_options]{delete_dhcp_options} \tab Deletes the specified set of DHCP options\cr
#'  \link[=ec2_delete_egress_only_internet_gateway]{delete_egress_only_internet_gateway} \tab Deletes an egress-only internet gateway\cr
#'  \link[=ec2_delete_fleets]{delete_fleets} \tab Deletes the specified EC2 Fleet\cr
#'  \link[=ec2_delete_flow_logs]{delete_flow_logs} \tab Deletes one or more flow logs\cr
#'  \link[=ec2_delete_fpga_image]{delete_fpga_image} \tab Deletes the specified Amazon FPGA Image (AFI)\cr
#'  \link[=ec2_delete_instance_event_window]{delete_instance_event_window} \tab Deletes the specified event window\cr
#'  \link[=ec2_delete_internet_gateway]{delete_internet_gateway} \tab Deletes the specified internet gateway\cr
#'  \link[=ec2_delete_ipam]{delete_ipam} \tab Delete an IPAM\cr
#'  \link[=ec2_delete_ipam_pool]{delete_ipam_pool} \tab Delete an IPAM pool\cr
#'  \link[=ec2_delete_ipam_scope]{delete_ipam_scope} \tab Delete the scope for an IPAM\cr
#'  \link[=ec2_delete_key_pair]{delete_key_pair} \tab Deletes the specified key pair, by removing the public key from Amazon EC2\cr
#'  \link[=ec2_delete_launch_template]{delete_launch_template} \tab Deletes a launch template\cr
#'  \link[=ec2_delete_launch_template_versions]{delete_launch_template_versions} \tab Deletes one or more versions of a launch template\cr
#'  \link[=ec2_delete_local_gateway_route]{delete_local_gateway_route} \tab Deletes the specified route from the specified local gateway route table\cr
#'  \link[=ec2_delete_local_gateway_route_table_vpc_association]{delete_local_gateway_route_table_vpc_association} \tab Deletes the specified association between a VPC and local gateway route table\cr
#'  \link[=ec2_delete_managed_prefix_list]{delete_managed_prefix_list} \tab Deletes the specified managed prefix list\cr
#'  \link[=ec2_delete_nat_gateway]{delete_nat_gateway} \tab Deletes the specified NAT gateway\cr
#'  \link[=ec2_delete_network_acl]{delete_network_acl} \tab Deletes the specified network ACL\cr
#'  \link[=ec2_delete_network_acl_entry]{delete_network_acl_entry} \tab Deletes the specified ingress or egress entry (rule) from the specified network ACL\cr
#'  \link[=ec2_delete_network_insights_access_scope]{delete_network_insights_access_scope} \tab Deletes the specified Network Access Scope\cr
#'  \link[=ec2_delete_network_insights_access_scope_analysis]{delete_network_insights_access_scope_analysis} \tab Deletes the specified Network Access Scope analysis\cr
#'  \link[=ec2_delete_network_insights_analysis]{delete_network_insights_analysis} \tab Deletes the specified network insights analysis\cr
#'  \link[=ec2_delete_network_insights_path]{delete_network_insights_path} \tab Deletes the specified path\cr
#'  \link[=ec2_delete_network_interface]{delete_network_interface} \tab Deletes the specified network interface\cr
#'  \link[=ec2_delete_network_interface_permission]{delete_network_interface_permission} \tab Deletes a permission for a network interface\cr
#'  \link[=ec2_delete_placement_group]{delete_placement_group} \tab Deletes the specified placement group\cr
#'  \link[=ec2_delete_public_ipv_4_pool]{delete_public_ipv_4_pool} \tab Delete a public IPv4 pool\cr
#'  \link[=ec2_delete_queued_reserved_instances]{delete_queued_reserved_instances} \tab Deletes the queued purchases for the specified Reserved Instances\cr
#'  \link[=ec2_delete_route]{delete_route} \tab Deletes the specified route from the specified route table\cr
#'  \link[=ec2_delete_route_table]{delete_route_table} \tab Deletes the specified route table\cr
#'  \link[=ec2_delete_security_group]{delete_security_group} \tab Deletes a security group\cr
#'  \link[=ec2_delete_snapshot]{delete_snapshot} \tab Deletes the specified snapshot\cr
#'  \link[=ec2_delete_spot_datafeed_subscription]{delete_spot_datafeed_subscription} \tab Deletes the data feed for Spot Instances\cr
#'  \link[=ec2_delete_subnet]{delete_subnet} \tab Deletes the specified subnet\cr
#'  \link[=ec2_delete_subnet_cidr_reservation]{delete_subnet_cidr_reservation} \tab Deletes a subnet CIDR reservation\cr
#'  \link[=ec2_delete_tags]{delete_tags} \tab Deletes the specified set of tags from the specified set of resources\cr
#'  \link[=ec2_delete_traffic_mirror_filter]{delete_traffic_mirror_filter} \tab Deletes the specified Traffic Mirror filter\cr
#'  \link[=ec2_delete_traffic_mirror_filter_rule]{delete_traffic_mirror_filter_rule} \tab Deletes the specified Traffic Mirror rule\cr
#'  \link[=ec2_delete_traffic_mirror_session]{delete_traffic_mirror_session} \tab Deletes the specified Traffic Mirror session\cr
#'  \link[=ec2_delete_traffic_mirror_target]{delete_traffic_mirror_target} \tab Deletes the specified Traffic Mirror target\cr
#'  \link[=ec2_delete_transit_gateway]{delete_transit_gateway} \tab Deletes the specified transit gateway\cr
#'  \link[=ec2_delete_transit_gateway_connect]{delete_transit_gateway_connect} \tab Deletes the specified Connect attachment\cr
#'  \link[=ec2_delete_transit_gateway_connect_peer]{delete_transit_gateway_connect_peer} \tab Deletes the specified Connect peer\cr
#'  \link[=ec2_delete_transit_gateway_multicast_domain]{delete_transit_gateway_multicast_domain} \tab Deletes the specified transit gateway multicast domain\cr
#'  \link[=ec2_delete_transit_gateway_peering_attachment]{delete_transit_gateway_peering_attachment} \tab Deletes a transit gateway peering attachment\cr
#'  \link[=ec2_delete_transit_gateway_policy_table]{delete_transit_gateway_policy_table} \tab Deletes the specified transit gateway policy table\cr
#'  \link[=ec2_delete_transit_gateway_prefix_list_reference]{delete_transit_gateway_prefix_list_reference} \tab Deletes a reference (route) to a prefix list in a specified transit gateway route table\cr
#'  \link[=ec2_delete_transit_gateway_route]{delete_transit_gateway_route} \tab Deletes the specified route from the specified transit gateway route table\cr
#'  \link[=ec2_delete_transit_gateway_route_table]{delete_transit_gateway_route_table} \tab Deletes the specified transit gateway route table\cr
#'  \link[=ec2_delete_transit_gateway_route_table_announcement]{delete_transit_gateway_route_table_announcement} \tab Advertises to the transit gateway that a transit gateway route table is deleted\cr
#'  \link[=ec2_delete_transit_gateway_vpc_attachment]{delete_transit_gateway_vpc_attachment} \tab Deletes the specified VPC attachment\cr
#'  \link[=ec2_delete_volume]{delete_volume} \tab Deletes the specified EBS volume\cr
#'  \link[=ec2_delete_vpc]{delete_vpc} \tab Deletes the specified VPC\cr
#'  \link[=ec2_delete_vpc_endpoint_connection_notifications]{delete_vpc_endpoint_connection_notifications} \tab Deletes one or more VPC endpoint connection notifications\cr
#'  \link[=ec2_delete_vpc_endpoints]{delete_vpc_endpoints} \tab Deletes one or more specified VPC endpoints\cr
#'  \link[=ec2_delete_vpc_endpoint_service_configurations]{delete_vpc_endpoint_service_configurations} \tab Deletes one or more VPC endpoint service configurations in your account\cr
#'  \link[=ec2_delete_vpc_peering_connection]{delete_vpc_peering_connection} \tab Deletes a VPC peering connection\cr
#'  \link[=ec2_delete_vpn_connection]{delete_vpn_connection} \tab Deletes the specified VPN connection\cr
#'  \link[=ec2_delete_vpn_connection_route]{delete_vpn_connection_route} \tab Deletes the specified static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway\cr
#'  \link[=ec2_delete_vpn_gateway]{delete_vpn_gateway} \tab Deletes the specified virtual private gateway\cr
#'  \link[=ec2_deprovision_byoip_cidr]{deprovision_byoip_cidr} \tab Releases the specified address range that you provisioned for use with your Amazon Web Services resources through bring your own IP addresses (BYOIP) and deletes the corresponding address pool\cr
#'  \link[=ec2_deprovision_ipam_pool_cidr]{deprovision_ipam_pool_cidr} \tab Deprovision a CIDR provisioned from an IPAM pool\cr
#'  \link[=ec2_deprovision_public_ipv_4_pool_cidr]{deprovision_public_ipv_4_pool_cidr} \tab Deprovision a CIDR from a public IPv4 pool\cr
#'  \link[=ec2_deregister_image]{deregister_image} \tab Deregisters the specified AMI\cr
#'  \link[=ec2_deregister_instance_event_notification_attributes]{deregister_instance_event_notification_attributes} \tab Deregisters tag keys to prevent tags that have the specified tag keys from being included in scheduled event notifications for resources in the Region\cr
#'  \link[=ec2_deregister_transit_gateway_multicast_group_members]{deregister_transit_gateway_multicast_group_members} \tab Deregisters the specified members (network interfaces) from the transit gateway multicast group\cr
#'  \link[=ec2_deregister_transit_gateway_multicast_group_sources]{deregister_transit_gateway_multicast_group_sources} \tab Deregisters the specified sources (network interfaces) from the transit gateway multicast group\cr
#'  \link[=ec2_describe_account_attributes]{describe_account_attributes} \tab Describes attributes of your Amazon Web Services account\cr
#'  \link[=ec2_describe_addresses]{describe_addresses} \tab Describes the specified Elastic IP addresses or all of your Elastic IP addresses\cr
#'  \link[=ec2_describe_addresses_attribute]{describe_addresses_attribute} \tab Describes the attributes of the specified Elastic IP addresses\cr
#'  \link[=ec2_describe_aggregate_id_format]{describe_aggregate_id_format} \tab Describes the longer ID format settings for all resource types in a specific Region\cr
#'  \link[=ec2_describe_availability_zones]{describe_availability_zones} \tab Describes the Availability Zones, Local Zones, and Wavelength Zones that are available to you\cr
#'  \link[=ec2_describe_bundle_tasks]{describe_bundle_tasks} \tab Describes the specified bundle tasks or all of your bundle tasks\cr
#'  \link[=ec2_describe_byoip_cidrs]{describe_byoip_cidrs} \tab Describes the IP address ranges that were specified in calls to ProvisionByoipCidr\cr
#'  \link[=ec2_describe_capacity_reservation_fleets]{describe_capacity_reservation_fleets} \tab Describes one or more Capacity Reservation Fleets\cr
#'  \link[=ec2_describe_capacity_reservations]{describe_capacity_reservations} \tab Describes one or more of your Capacity Reservations\cr
#'  \link[=ec2_describe_carrier_gateways]{describe_carrier_gateways} \tab Describes one or more of your carrier gateways\cr
#'  \link[=ec2_describe_classic_link_instances]{describe_classic_link_instances} \tab Describes one or more of your linked EC2-Classic instances\cr
#'  \link[=ec2_describe_client_vpn_authorization_rules]{describe_client_vpn_authorization_rules} \tab Describes the authorization rules for a specified Client VPN endpoint\cr
#'  \link[=ec2_describe_client_vpn_connections]{describe_client_vpn_connections} \tab Describes active client connections and connections that have been terminated within the last 60 minutes for the specified Client VPN endpoint\cr
#'  \link[=ec2_describe_client_vpn_endpoints]{describe_client_vpn_endpoints} \tab Describes one or more Client VPN endpoints in the account\cr
#'  \link[=ec2_describe_client_vpn_routes]{describe_client_vpn_routes} \tab Describes the routes for the specified Client VPN endpoint\cr
#'  \link[=ec2_describe_client_vpn_target_networks]{describe_client_vpn_target_networks} \tab Describes the target networks associated with the specified Client VPN endpoint\cr
#'  \link[=ec2_describe_coip_pools]{describe_coip_pools} \tab Describes the specified customer-owned address pools or all of your customer-owned address pools\cr
#'  \link[=ec2_describe_conversion_tasks]{describe_conversion_tasks} \tab Describes the specified conversion tasks or all your conversion tasks\cr
#'  \link[=ec2_describe_customer_gateways]{describe_customer_gateways} \tab Describes one or more of your VPN customer gateways\cr
#'  \link[=ec2_describe_dhcp_options]{describe_dhcp_options} \tab Describes one or more of your DHCP options sets\cr
#'  \link[=ec2_describe_egress_only_internet_gateways]{describe_egress_only_internet_gateways} \tab Describes one or more of your egress-only internet gateways\cr
#'  \link[=ec2_describe_elastic_gpus]{describe_elastic_gpus} \tab Describes the Elastic Graphics accelerator associated with your instances\cr
#'  \link[=ec2_describe_export_image_tasks]{describe_export_image_tasks} \tab Describes the specified export image tasks or all of your export image tasks\cr
#'  \link[=ec2_describe_export_tasks]{describe_export_tasks} \tab Describes the specified export instance tasks or all of your export instance tasks\cr
#'  \link[=ec2_describe_fast_launch_images]{describe_fast_launch_images} \tab Describe details for Windows AMIs that are configured for faster launching\cr
#'  \link[=ec2_describe_fast_snapshot_restores]{describe_fast_snapshot_restores} \tab Describes the state of fast snapshot restores for your snapshots\cr
#'  \link[=ec2_describe_fleet_history]{describe_fleet_history} \tab Describes the events for the specified EC2 Fleet during the specified time\cr
#'  \link[=ec2_describe_fleet_instances]{describe_fleet_instances} \tab Describes the running instances for the specified EC2 Fleet\cr
#'  \link[=ec2_describe_fleets]{describe_fleets} \tab Describes the specified EC2 Fleets or all of your EC2 Fleets\cr
#'  \link[=ec2_describe_flow_logs]{describe_flow_logs} \tab Describes one or more flow logs\cr
#'  \link[=ec2_describe_fpga_image_attribute]{describe_fpga_image_attribute} \tab Describes the specified attribute of the specified Amazon FPGA Image (AFI)\cr
#'  \link[=ec2_describe_fpga_images]{describe_fpga_images} \tab Describes the Amazon FPGA Images (AFIs) available to you\cr
#'  \link[=ec2_describe_host_reservation_offerings]{describe_host_reservation_offerings} \tab Describes the Dedicated Host reservations that are available to purchase\cr
#'  \link[=ec2_describe_host_reservations]{describe_host_reservations} \tab Describes reservations that are associated with Dedicated Hosts in your account\cr
#'  \link[=ec2_describe_hosts]{describe_hosts} \tab Describes the specified Dedicated Hosts or all your Dedicated Hosts\cr
#'  \link[=ec2_describe_iam_instance_profile_associations]{describe_iam_instance_profile_associations} \tab Describes your IAM instance profile associations\cr
#'  \link[=ec2_describe_identity_id_format]{describe_identity_id_format} \tab Describes the ID format settings for resources for the specified IAM user, IAM role, or root user\cr
#'  \link[=ec2_describe_id_format]{describe_id_format} \tab Describes the ID format settings for your resources on a per-Region basis, for example, to view which resource types are enabled for longer IDs\cr
#'  \link[=ec2_describe_image_attribute]{describe_image_attribute} \tab Describes the specified attribute of the specified AMI\cr
#'  \link[=ec2_describe_images]{describe_images} \tab Describes the specified images (AMIs, AKIs, and ARIs) available to you or all of the images available to you\cr
#'  \link[=ec2_describe_import_image_tasks]{describe_import_image_tasks} \tab Displays details about an import virtual machine or import snapshot tasks that are already created\cr
#'  \link[=ec2_describe_import_snapshot_tasks]{describe_import_snapshot_tasks} \tab Describes your import snapshot tasks\cr
#'  \link[=ec2_describe_instance_attribute]{describe_instance_attribute} \tab Describes the specified attribute of the specified instance\cr
#'  \link[=ec2_describe_instance_credit_specifications]{describe_instance_credit_specifications} \tab Describes the credit option for CPU usage of the specified burstable performance instances\cr
#'  \link[=ec2_describe_instance_event_notification_attributes]{describe_instance_event_notification_attributes} \tab Describes the tag keys that are registered to appear in scheduled event notifications for resources in the current Region\cr
#'  \link[=ec2_describe_instance_event_windows]{describe_instance_event_windows} \tab Describes the specified event windows or all event windows\cr
#'  \link[=ec2_describe_instances]{describe_instances} \tab Describes the specified instances or all instances\cr
#'  \link[=ec2_describe_instance_status]{describe_instance_status} \tab Describes the status of the specified instances or all of your instances\cr
#'  \link[=ec2_describe_instance_type_offerings]{describe_instance_type_offerings} \tab Returns a list of all instance types offered\cr
#'  \link[=ec2_describe_instance_types]{describe_instance_types} \tab Describes the details of the instance types that are offered in a location\cr
#'  \link[=ec2_describe_internet_gateways]{describe_internet_gateways} \tab Describes one or more of your internet gateways\cr
#'  \link[=ec2_describe_ipam_pools]{describe_ipam_pools} \tab Get information about your IPAM pools\cr
#'  \link[=ec2_describe_ipams]{describe_ipams} \tab Get information about your IPAM pools\cr
#'  \link[=ec2_describe_ipam_scopes]{describe_ipam_scopes} \tab Get information about your IPAM scopes\cr
#'  \link[=ec2_describe_ipv_6_pools]{describe_ipv_6_pools} \tab Describes your IPv6 address pools\cr
#'  \link[=ec2_describe_key_pairs]{describe_key_pairs} \tab Describes the specified key pairs or all of your key pairs\cr
#'  \link[=ec2_describe_launch_templates]{describe_launch_templates} \tab Describes one or more launch templates\cr
#'  \link[=ec2_describe_launch_template_versions]{describe_launch_template_versions} \tab Describes one or more versions of a specified launch template\cr
#'  \link[=ec2_describe_local_gateway_route_tables]{describe_local_gateway_route_tables} \tab Describes one or more local gateway route tables\cr
#'  \link[=ec2_describe_local_gateway_route_table_virtual_interface_group_associations]{describe_local_gateway_route_table_virtual_interface_group_associations} \tab Describes the associations between virtual interface groups and local gateway route tables\cr
#'  \link[=ec2_describe_local_gateway_route_table_vpc_associations]{describe_local_gateway_route_table_vpc_associations} \tab Describes the specified associations between VPCs and local gateway route tables\cr
#'  \link[=ec2_describe_local_gateways]{describe_local_gateways} \tab Describes one or more local gateways\cr
#'  \link[=ec2_describe_local_gateway_virtual_interface_groups]{describe_local_gateway_virtual_interface_groups} \tab Describes the specified local gateway virtual interface groups\cr
#'  \link[=ec2_describe_local_gateway_virtual_interfaces]{describe_local_gateway_virtual_interfaces} \tab Describes the specified local gateway virtual interfaces\cr
#'  \link[=ec2_describe_managed_prefix_lists]{describe_managed_prefix_lists} \tab Describes your managed prefix lists and any Amazon Web Services-managed prefix lists\cr
#'  \link[=ec2_describe_moving_addresses]{describe_moving_addresses} \tab Describes your Elastic IP addresses that are being moved to the EC2-VPC platform, or that are being restored to the EC2-Classic platform\cr
#'  \link[=ec2_describe_nat_gateways]{describe_nat_gateways} \tab Describes one or more of your NAT gateways\cr
#'  \link[=ec2_describe_network_acls]{describe_network_acls} \tab Describes one or more of your network ACLs\cr
#'  \link[=ec2_describe_network_insights_access_scope_analyses]{describe_network_insights_access_scope_analyses} \tab Describes the specified Network Access Scope analyses\cr
#'  \link[=ec2_describe_network_insights_access_scopes]{describe_network_insights_access_scopes} \tab Describes the specified Network Access Scopes\cr
#'  \link[=ec2_describe_network_insights_analyses]{describe_network_insights_analyses} \tab Describes one or more of your network insights analyses\cr
#'  \link[=ec2_describe_network_insights_paths]{describe_network_insights_paths} \tab Describes one or more of your paths\cr
#'  \link[=ec2_describe_network_interface_attribute]{describe_network_interface_attribute} \tab Describes a network interface attribute\cr
#'  \link[=ec2_describe_network_interface_permissions]{describe_network_interface_permissions} \tab Describes the permissions for your network interfaces\cr
#'  \link[=ec2_describe_network_interfaces]{describe_network_interfaces} \tab Describes one or more of your network interfaces\cr
#'  \link[=ec2_describe_placement_groups]{describe_placement_groups} \tab Describes the specified placement groups or all of your placement groups\cr
#'  \link[=ec2_describe_prefix_lists]{describe_prefix_lists} \tab Describes available Amazon Web Services services in a prefix list format, which includes the prefix list name and prefix list ID of the service and the IP address range for the service\cr
#'  \link[=ec2_describe_principal_id_format]{describe_principal_id_format} \tab Describes the ID format settings for the root user and all IAM roles and IAM users that have explicitly specified a longer ID (17-character ID) preference\cr
#'  \link[=ec2_describe_public_ipv_4_pools]{describe_public_ipv_4_pools} \tab Describes the specified IPv4 address pools\cr
#'  \link[=ec2_describe_regions]{describe_regions} \tab Describes the Regions that are enabled for your account, or all Regions\cr
#'  \link[=ec2_describe_replace_root_volume_tasks]{describe_replace_root_volume_tasks} \tab Describes a root volume replacement task\cr
#'  \link[=ec2_describe_reserved_instances]{describe_reserved_instances} \tab Describes one or more of the Reserved Instances that you purchased\cr
#'  \link[=ec2_describe_reserved_instances_listings]{describe_reserved_instances_listings} \tab Describes your account's Reserved Instance listings in the Reserved Instance Marketplace\cr
#'  \link[=ec2_describe_reserved_instances_modifications]{describe_reserved_instances_modifications} \tab Describes the modifications made to your Reserved Instances\cr
#'  \link[=ec2_describe_reserved_instances_offerings]{describe_reserved_instances_offerings} \tab Describes Reserved Instance offerings that are available for purchase\cr
#'  \link[=ec2_describe_route_tables]{describe_route_tables} \tab Describes one or more of your route tables\cr
#'  \link[=ec2_describe_scheduled_instance_availability]{describe_scheduled_instance_availability} \tab Finds available schedules that meet the specified criteria\cr
#'  \link[=ec2_describe_scheduled_instances]{describe_scheduled_instances} \tab Describes the specified Scheduled Instances or all your Scheduled Instances\cr
#'  \link[=ec2_describe_security_group_references]{describe_security_group_references} \tab &#91;VPC only&#93; Describes the VPCs on the other side of a VPC peering connection that are referencing the security groups you've specified in this request\cr
#'  \link[=ec2_describe_security_group_rules]{describe_security_group_rules} \tab Describes one or more of your security group rules\cr
#'  \link[=ec2_describe_security_groups]{describe_security_groups} \tab Describes the specified security groups or all of your security groups\cr
#'  \link[=ec2_describe_snapshot_attribute]{describe_snapshot_attribute} \tab Describes the specified attribute of the specified snapshot\cr
#'  \link[=ec2_describe_snapshots]{describe_snapshots} \tab Describes the specified EBS snapshots available to you or all of the EBS snapshots available to you\cr
#'  \link[=ec2_describe_snapshot_tier_status]{describe_snapshot_tier_status} \tab Describes the storage tier status of one or more Amazon EBS snapshots\cr
#'  \link[=ec2_describe_spot_datafeed_subscription]{describe_spot_datafeed_subscription} \tab Describes the data feed for Spot Instances\cr
#'  \link[=ec2_describe_spot_fleet_instances]{describe_spot_fleet_instances} \tab Describes the running instances for the specified Spot Fleet\cr
#'  \link[=ec2_describe_spot_fleet_request_history]{describe_spot_fleet_request_history} \tab Describes the events for the specified Spot Fleet request during the specified time\cr
#'  \link[=ec2_describe_spot_fleet_requests]{describe_spot_fleet_requests} \tab Describes your Spot Fleet requests\cr
#'  \link[=ec2_describe_spot_instance_requests]{describe_spot_instance_requests} \tab Describes the specified Spot Instance requests\cr
#'  \link[=ec2_describe_spot_price_history]{describe_spot_price_history} \tab Describes the Spot price history\cr
#'  \link[=ec2_describe_stale_security_groups]{describe_stale_security_groups} \tab &#91;VPC only&#93; Describes the stale security group rules for security groups in a specified VPC\cr
#'  \link[=ec2_describe_store_image_tasks]{describe_store_image_tasks} \tab Describes the progress of the AMI store tasks\cr
#'  \link[=ec2_describe_subnets]{describe_subnets} \tab Describes one or more of your subnets\cr
#'  \link[=ec2_describe_tags]{describe_tags} \tab Describes the specified tags for your EC2 resources\cr
#'  \link[=ec2_describe_traffic_mirror_filters]{describe_traffic_mirror_filters} \tab Describes one or more Traffic Mirror filters\cr
#'  \link[=ec2_describe_traffic_mirror_sessions]{describe_traffic_mirror_sessions} \tab Describes one or more Traffic Mirror sessions\cr
#'  \link[=ec2_describe_traffic_mirror_targets]{describe_traffic_mirror_targets} \tab Information about one or more Traffic Mirror targets\cr
#'  \link[=ec2_describe_transit_gateway_attachments]{describe_transit_gateway_attachments} \tab Describes one or more attachments between resources and transit gateways\cr
#'  \link[=ec2_describe_transit_gateway_connect_peers]{describe_transit_gateway_connect_peers} \tab Describes one or more Connect peers\cr
#'  \link[=ec2_describe_transit_gateway_connects]{describe_transit_gateway_connects} \tab Describes one or more Connect attachments\cr
#'  \link[=ec2_describe_transit_gateway_multicast_domains]{describe_transit_gateway_multicast_domains} \tab Describes one or more transit gateway multicast domains\cr
#'  \link[=ec2_describe_transit_gateway_peering_attachments]{describe_transit_gateway_peering_attachments} \tab Describes your transit gateway peering attachments\cr
#'  \link[=ec2_describe_transit_gateway_policy_tables]{describe_transit_gateway_policy_tables} \tab Describes one or more transit gateway route policy tables\cr
#'  \link[=ec2_describe_transit_gateway_route_table_announcements]{describe_transit_gateway_route_table_announcements} \tab Describes one or more transit gateway route table advertisements\cr
#'  \link[=ec2_describe_transit_gateway_route_tables]{describe_transit_gateway_route_tables} \tab Describes one or more transit gateway route tables\cr
#'  \link[=ec2_describe_transit_gateways]{describe_transit_gateways} \tab Describes one or more transit gateways\cr
#'  \link[=ec2_describe_transit_gateway_vpc_attachments]{describe_transit_gateway_vpc_attachments} \tab Describes one or more VPC attachments\cr
#'  \link[=ec2_describe_trunk_interface_associations]{describe_trunk_interface_associations} \tab This API action is currently in limited preview only\cr
#'  \link[=ec2_describe_volume_attribute]{describe_volume_attribute} \tab Describes the specified attribute of the specified volume\cr
#'  \link[=ec2_describe_volumes]{describe_volumes} \tab Describes the specified EBS volumes or all of your EBS volumes\cr
#'  \link[=ec2_describe_volumes_modifications]{describe_volumes_modifications} \tab Describes the most recent volume modification request for the specified EBS volumes\cr
#'  \link[=ec2_describe_volume_status]{describe_volume_status} \tab Describes the status of the specified volumes\cr
#'  \link[=ec2_describe_vpc_attribute]{describe_vpc_attribute} \tab Describes the specified attribute of the specified VPC\cr
#'  \link[=ec2_describe_vpc_classic_link]{describe_vpc_classic_link} \tab Describes the ClassicLink status of one or more VPCs\cr
#'  \link[=ec2_describe_vpc_classic_link_dns_support]{describe_vpc_classic_link_dns_support} \tab We are retiring EC2-Classic on August 15, 2022\cr
#'  \link[=ec2_describe_vpc_endpoint_connection_notifications]{describe_vpc_endpoint_connection_notifications} \tab Describes the connection notifications for VPC endpoints and VPC endpoint services\cr
#'  \link[=ec2_describe_vpc_endpoint_connections]{describe_vpc_endpoint_connections} \tab Describes the VPC endpoint connections to your VPC endpoint services, including any endpoints that are pending your acceptance\cr
#'  \link[=ec2_describe_vpc_endpoints]{describe_vpc_endpoints} \tab Describes one or more of your VPC endpoints\cr
#'  \link[=ec2_describe_vpc_endpoint_service_configurations]{describe_vpc_endpoint_service_configurations} \tab Describes the VPC endpoint service configurations in your account (your services)\cr
#'  \link[=ec2_describe_vpc_endpoint_service_permissions]{describe_vpc_endpoint_service_permissions} \tab Describes the principals (service consumers) that are permitted to discover your VPC endpoint service\cr
#'  \link[=ec2_describe_vpc_endpoint_services]{describe_vpc_endpoint_services} \tab Describes available services to which you can create a VPC endpoint\cr
#'  \link[=ec2_describe_vpc_peering_connections]{describe_vpc_peering_connections} \tab Describes one or more of your VPC peering connections\cr
#'  \link[=ec2_describe_vpcs]{describe_vpcs} \tab Describes one or more of your VPCs\cr
#'  \link[=ec2_describe_vpn_connections]{describe_vpn_connections} \tab Describes one or more of your VPN connections\cr
#'  \link[=ec2_describe_vpn_gateways]{describe_vpn_gateways} \tab Describes one or more of your virtual private gateways\cr
#'  \link[=ec2_detach_classic_link_vpc]{detach_classic_link_vpc} \tab We are retiring EC2-Classic on August 15, 2022\cr
#'  \link[=ec2_detach_internet_gateway]{detach_internet_gateway} \tab Detaches an internet gateway from a VPC, disabling connectivity between the internet and the VPC\cr
#'  \link[=ec2_detach_network_interface]{detach_network_interface} \tab Detaches a network interface from an instance\cr
#'  \link[=ec2_detach_volume]{detach_volume} \tab Detaches an EBS volume from an instance\cr
#'  \link[=ec2_detach_vpn_gateway]{detach_vpn_gateway} \tab Detaches a virtual private gateway from a VPC\cr
#'  \link[=ec2_disable_ebs_encryption_by_default]{disable_ebs_encryption_by_default} \tab Disables EBS encryption by default for your account in the current Region\cr
#'  \link[=ec2_disable_fast_launch]{disable_fast_launch} \tab Discontinue faster launching for a Windows AMI, and clean up existing pre-provisioned snapshots\cr
#'  \link[=ec2_disable_fast_snapshot_restores]{disable_fast_snapshot_restores} \tab Disables fast snapshot restores for the specified snapshots in the specified Availability Zones\cr
#'  \link[=ec2_disable_image_deprecation]{disable_image_deprecation} \tab Cancels the deprecation of the specified AMI\cr
#'  \link[=ec2_disable_ipam_organization_admin_account]{disable_ipam_organization_admin_account} \tab Disable the IPAM account\cr
#'  \link[=ec2_disable_serial_console_access]{disable_serial_console_access} \tab Disables access to the EC2 serial console of all instances for your account\cr
#'  \link[=ec2_disable_transit_gateway_route_table_propagation]{disable_transit_gateway_route_table_propagation} \tab Disables the specified resource attachment from propagating routes to the specified propagation route table\cr
#'  \link[=ec2_disable_vgw_route_propagation]{disable_vgw_route_propagation} \tab Disables a virtual private gateway (VGW) from propagating routes to a specified route table of a VPC\cr
#'  \link[=ec2_disable_vpc_classic_link]{disable_vpc_classic_link} \tab Disables ClassicLink for a VPC\cr
#'  \link[=ec2_disable_vpc_classic_link_dns_support]{disable_vpc_classic_link_dns_support} \tab Disables ClassicLink DNS support for a VPC\cr
#'  \link[=ec2_disassociate_address]{disassociate_address} \tab Disassociates an Elastic IP address from the instance or network interface it's associated with\cr
#'  \link[=ec2_disassociate_client_vpn_target_network]{disassociate_client_vpn_target_network} \tab Disassociates a target network from the specified Client VPN endpoint\cr
#'  \link[=ec2_disassociate_enclave_certificate_iam_role]{disassociate_enclave_certificate_iam_role} \tab Disassociates an IAM role from an Certificate Manager (ACM) certificate\cr
#'  \link[=ec2_disassociate_iam_instance_profile]{disassociate_iam_instance_profile} \tab Disassociates an IAM instance profile from a running or stopped instance\cr
#'  \link[=ec2_disassociate_instance_event_window]{disassociate_instance_event_window} \tab Disassociates one or more targets from an event window\cr
#'  \link[=ec2_disassociate_route_table]{disassociate_route_table} \tab Disassociates a subnet or gateway from a route table\cr
#'  \link[=ec2_disassociate_subnet_cidr_block]{disassociate_subnet_cidr_block} \tab Disassociates a CIDR block from a subnet\cr
#'  \link[=ec2_disassociate_transit_gateway_multicast_domain]{disassociate_transit_gateway_multicast_domain} \tab Disassociates the specified subnets from the transit gateway multicast domain\cr
#'  \link[=ec2_disassociate_transit_gateway_policy_table]{disassociate_transit_gateway_policy_table} \tab Removes the association between an an attachment and a policy table\cr
#'  \link[=ec2_disassociate_transit_gateway_route_table]{disassociate_transit_gateway_route_table} \tab Disassociates a resource attachment from a transit gateway route table\cr
#'  \link[=ec2_disassociate_trunk_interface]{disassociate_trunk_interface} \tab This API action is currently in limited preview only\cr
#'  \link[=ec2_disassociate_vpc_cidr_block]{disassociate_vpc_cidr_block} \tab Disassociates a CIDR block from a VPC\cr
#'  \link[=ec2_enable_ebs_encryption_by_default]{enable_ebs_encryption_by_default} \tab Enables EBS encryption by default for your account in the current Region\cr
#'  \link[=ec2_enable_fast_launch]{enable_fast_launch} \tab When you enable faster launching for a Windows AMI, images are pre-provisioned, using snapshots to launch instances up to 65% faster\cr
#'  \link[=ec2_enable_fast_snapshot_restores]{enable_fast_snapshot_restores} \tab Enables fast snapshot restores for the specified snapshots in the specified Availability Zones\cr
#'  \link[=ec2_enable_image_deprecation]{enable_image_deprecation} \tab Enables deprecation of the specified AMI at the specified date and time\cr
#'  \link[=ec2_enable_ipam_organization_admin_account]{enable_ipam_organization_admin_account} \tab Enable an Organizations member account as the IPAM admin account\cr
#'  \link[=ec2_enable_serial_console_access]{enable_serial_console_access} \tab Enables access to the EC2 serial console of all instances for your account\cr
#'  \link[=ec2_enable_transit_gateway_route_table_propagation]{enable_transit_gateway_route_table_propagation} \tab Enables the specified attachment to propagate routes to the specified propagation route table\cr
#'  \link[=ec2_enable_vgw_route_propagation]{enable_vgw_route_propagation} \tab Enables a virtual private gateway (VGW) to propagate routes to the specified route table of a VPC\cr
#'  \link[=ec2_enable_volume_io]{enable_volume_io} \tab Enables I/O operations for a volume that had I/O operations disabled because the data on the volume was potentially inconsistent\cr
#'  \link[=ec2_enable_vpc_classic_link]{enable_vpc_classic_link} \tab We are retiring EC2-Classic on August 15, 2022\cr
#'  \link[=ec2_enable_vpc_classic_link_dns_support]{enable_vpc_classic_link_dns_support} \tab We are retiring EC2-Classic on August 15, 2022\cr
#'  \link[=ec2_export_client_vpn_client_certificate_revocation_list]{export_client_vpn_client_certificate_revocation_list} \tab Downloads the client certificate revocation list for the specified Client VPN endpoint\cr
#'  \link[=ec2_export_client_vpn_client_configuration]{export_client_vpn_client_configuration} \tab Downloads the contents of the Client VPN endpoint configuration file for the specified Client VPN endpoint\cr
#'  \link[=ec2_export_image]{export_image} \tab Exports an Amazon Machine Image (AMI) to a VM file\cr
#'  \link[=ec2_export_transit_gateway_routes]{export_transit_gateway_routes} \tab Exports routes from the specified transit gateway route table to the specified S3 bucket\cr
#'  \link[=ec2_get_associated_enclave_certificate_iam_roles]{get_associated_enclave_certificate_iam_roles} \tab Returns the IAM roles that are associated with the specified ACM (ACM) certificate\cr
#'  \link[=ec2_get_associated_ipv_6_pool_cidrs]{get_associated_ipv_6_pool_cidrs} \tab Gets information about the IPv6 CIDR block associations for a specified IPv6 address pool\cr
#'  \link[=ec2_get_capacity_reservation_usage]{get_capacity_reservation_usage} \tab Gets usage information about a Capacity Reservation\cr
#'  \link[=ec2_get_coip_pool_usage]{get_coip_pool_usage} \tab Describes the allocations from the specified customer-owned address pool\cr
#'  \link[=ec2_get_console_output]{get_console_output} \tab Gets the console output for the specified instance\cr
#'  \link[=ec2_get_console_screenshot]{get_console_screenshot} \tab Retrieve a JPG-format screenshot of a running instance to help with troubleshooting\cr
#'  \link[=ec2_get_default_credit_specification]{get_default_credit_specification} \tab Describes the default credit option for CPU usage of a burstable performance instance family\cr
#'  \link[=ec2_get_ebs_default_kms_key_id]{get_ebs_default_kms_key_id} \tab Describes the default KMS key for EBS encryption by default for your account in this Region\cr
#'  \link[=ec2_get_ebs_encryption_by_default]{get_ebs_encryption_by_default} \tab Describes whether EBS encryption by default is enabled for your account in the current Region\cr
#'  \link[=ec2_get_flow_logs_integration_template]{get_flow_logs_integration_template} \tab Generates a CloudFormation template that streamlines and automates the integration of VPC flow logs with Amazon Athena\cr
#'  \link[=ec2_get_groups_for_capacity_reservation]{get_groups_for_capacity_reservation} \tab Lists the resource groups to which a Capacity Reservation has been added\cr
#'  \link[=ec2_get_host_reservation_purchase_preview]{get_host_reservation_purchase_preview} \tab Preview a reservation purchase with configurations that match those of your Dedicated Host\cr
#'  \link[=ec2_get_instance_types_from_instance_requirements]{get_instance_types_from_instance_requirements} \tab Returns a list of instance types with the specified instance attributes\cr
#'  \link[=ec2_get_instance_uefi_data]{get_instance_uefi_data} \tab A binary representation of the UEFI variable store\cr
#'  \link[=ec2_get_ipam_address_history]{get_ipam_address_history} \tab Retrieve historical information about a CIDR within an IPAM scope\cr
#'  \link[=ec2_get_ipam_pool_allocations]{get_ipam_pool_allocations} \tab Get a list of all the CIDR allocations in an IPAM pool\cr
#'  \link[=ec2_get_ipam_pool_cidrs]{get_ipam_pool_cidrs} \tab Get the CIDRs provisioned to an IPAM pool\cr
#'  \link[=ec2_get_ipam_resource_cidrs]{get_ipam_resource_cidrs} \tab Get information about the resources in a scope\cr
#'  \link[=ec2_get_launch_template_data]{get_launch_template_data} \tab Retrieves the configuration data of the specified instance\cr
#'  \link[=ec2_get_managed_prefix_list_associations]{get_managed_prefix_list_associations} \tab Gets information about the resources that are associated with the specified managed prefix list\cr
#'  \link[=ec2_get_managed_prefix_list_entries]{get_managed_prefix_list_entries} \tab Gets information about the entries for a specified managed prefix list\cr
#'  \link[=ec2_get_network_insights_access_scope_analysis_findings]{get_network_insights_access_scope_analysis_findings} \tab Gets the findings for the specified Network Access Scope analysis\cr
#'  \link[=ec2_get_network_insights_access_scope_content]{get_network_insights_access_scope_content} \tab Gets the content for the specified Network Access Scope\cr
#'  \link[=ec2_get_password_data]{get_password_data} \tab Retrieves the encrypted administrator password for a running Windows instance\cr
#'  \link[=ec2_get_reserved_instances_exchange_quote]{get_reserved_instances_exchange_quote} \tab Returns a quote and exchange information for exchanging one or more specified Convertible Reserved Instances for a new Convertible Reserved Instance\cr
#'  \link[=ec2_get_serial_console_access_status]{get_serial_console_access_status} \tab Retrieves the access status of your account to the EC2 serial console of all instances\cr
#'  \link[=ec2_get_spot_placement_scores]{get_spot_placement_scores} \tab Calculates the Spot placement score for a Region or Availability Zone based on the specified target capacity and compute requirements\cr
#'  \link[=ec2_get_subnet_cidr_reservations]{get_subnet_cidr_reservations} \tab Gets information about the subnet CIDR reservations\cr
#'  \link[=ec2_get_transit_gateway_attachment_propagations]{get_transit_gateway_attachment_propagations} \tab Lists the route tables to which the specified resource attachment propagates routes\cr
#'  \link[=ec2_get_transit_gateway_multicast_domain_associations]{get_transit_gateway_multicast_domain_associations} \tab Gets information about the associations for the transit gateway multicast domain\cr
#'  \link[=ec2_get_transit_gateway_policy_table_associations]{get_transit_gateway_policy_table_associations} \tab Gets a list of the transit gateway policy table associations\cr
#'  \link[=ec2_get_transit_gateway_policy_table_entries]{get_transit_gateway_policy_table_entries} \tab Returns a list of transit gateway policy table entries\cr
#'  \link[=ec2_get_transit_gateway_prefix_list_references]{get_transit_gateway_prefix_list_references} \tab Gets information about the prefix list references in a specified transit gateway route table\cr
#'  \link[=ec2_get_transit_gateway_route_table_associations]{get_transit_gateway_route_table_associations} \tab Gets information about the associations for the specified transit gateway route table\cr
#'  \link[=ec2_get_transit_gateway_route_table_propagations]{get_transit_gateway_route_table_propagations} \tab Gets information about the route table propagations for the specified transit gateway route table\cr
#'  \link[=ec2_get_vpn_connection_device_sample_configuration]{get_vpn_connection_device_sample_configuration} \tab Download an Amazon Web Services-provided sample configuration file to be used with the customer gateway device specified for your Site-to-Site VPN connection\cr
#'  \link[=ec2_get_vpn_connection_device_types]{get_vpn_connection_device_types} \tab Obtain a list of customer gateway devices for which sample configuration files can be provided\cr
#'  \link[=ec2_import_client_vpn_client_certificate_revocation_list]{import_client_vpn_client_certificate_revocation_list} \tab Uploads a client certificate revocation list to the specified Client VPN endpoint\cr
#'  \link[=ec2_import_image]{import_image} \tab Import single or multi-volume disk images or EBS snapshots into an Amazon Machine Image (AMI)\cr
#'  \link[=ec2_import_instance]{import_instance} \tab Creates an import instance task using metadata from the specified disk image\cr
#'  \link[=ec2_import_key_pair]{import_key_pair} \tab Imports the public key from an RSA or ED25519 key pair that you created with a third-party tool\cr
#'  \link[=ec2_import_snapshot]{import_snapshot} \tab Imports a disk into an EBS snapshot\cr
#'  \link[=ec2_import_volume]{import_volume} \tab Creates an import volume task using metadata from the specified disk image\cr
#'  \link[=ec2_list_images_in_recycle_bin]{list_images_in_recycle_bin} \tab Lists one or more AMIs that are currently in the Recycle Bin\cr
#'  \link[=ec2_list_snapshots_in_recycle_bin]{list_snapshots_in_recycle_bin} \tab Lists one or more snapshots that are currently in the Recycle Bin\cr
#'  \link[=ec2_modify_address_attribute]{modify_address_attribute} \tab Modifies an attribute of the specified Elastic IP address\cr
#'  \link[=ec2_modify_availability_zone_group]{modify_availability_zone_group} \tab Changes the opt-in status of the Local Zone and Wavelength Zone group for your account\cr
#'  \link[=ec2_modify_capacity_reservation]{modify_capacity_reservation} \tab Modifies a Capacity Reservation's capacity and the conditions under which it is to be released\cr
#'  \link[=ec2_modify_capacity_reservation_fleet]{modify_capacity_reservation_fleet} \tab Modifies a Capacity Reservation Fleet\cr
#'  \link[=ec2_modify_client_vpn_endpoint]{modify_client_vpn_endpoint} \tab Modifies the specified Client VPN endpoint\cr
#'  \link[=ec2_modify_default_credit_specification]{modify_default_credit_specification} \tab Modifies the default credit option for CPU usage of burstable performance instances\cr
#'  \link[=ec2_modify_ebs_default_kms_key_id]{modify_ebs_default_kms_key_id} \tab Changes the default KMS key for EBS encryption by default for your account in this Region\cr
#'  \link[=ec2_modify_fleet]{modify_fleet} \tab Modifies the specified EC2 Fleet\cr
#'  \link[=ec2_modify_fpga_image_attribute]{modify_fpga_image_attribute} \tab Modifies the specified attribute of the specified Amazon FPGA Image (AFI)\cr
#'  \link[=ec2_modify_hosts]{modify_hosts} \tab Modify the auto-placement setting of a Dedicated Host\cr
#'  \link[=ec2_modify_identity_id_format]{modify_identity_id_format} \tab Modifies the ID format of a resource for a specified IAM user, IAM role, or the root user for an account; or all IAM users, IAM roles, and the root user for an account\cr
#'  \link[=ec2_modify_id_format]{modify_id_format} \tab Modifies the ID format for the specified resource on a per-Region basis\cr
#'  \link[=ec2_modify_image_attribute]{modify_image_attribute} \tab Modifies the specified attribute of the specified AMI\cr
#'  \link[=ec2_modify_instance_attribute]{modify_instance_attribute} \tab Modifies the specified attribute of the specified instance\cr
#'  \link[=ec2_modify_instance_capacity_reservation_attributes]{modify_instance_capacity_reservation_attributes} \tab Modifies the Capacity Reservation settings for a stopped instance\cr
#'  \link[=ec2_modify_instance_credit_specification]{modify_instance_credit_specification} \tab Modifies the credit option for CPU usage on a running or stopped burstable performance instance\cr
#'  \link[=ec2_modify_instance_event_start_time]{modify_instance_event_start_time} \tab Modifies the start time for a scheduled Amazon EC2 instance event\cr
#'  \link[=ec2_modify_instance_event_window]{modify_instance_event_window} \tab Modifies the specified event window\cr
#'  \link[=ec2_modify_instance_maintenance_options]{modify_instance_maintenance_options} \tab Modifies the recovery behavior of your instance to disable simplified automatic recovery or set the recovery behavior to default\cr
#'  \link[=ec2_modify_instance_metadata_options]{modify_instance_metadata_options} \tab Modify the instance metadata parameters on a running or stopped instance\cr
#'  \link[=ec2_modify_instance_placement]{modify_instance_placement} \tab Modifies the placement attributes for a specified instance\cr
#'  \link[=ec2_modify_ipam]{modify_ipam} \tab Modify the configurations of an IPAM\cr
#'  \link[=ec2_modify_ipam_pool]{modify_ipam_pool} \tab Modify the configurations of an IPAM pool\cr
#'  \link[=ec2_modify_ipam_resource_cidr]{modify_ipam_resource_cidr} \tab Modify a resource CIDR\cr
#'  \link[=ec2_modify_ipam_scope]{modify_ipam_scope} \tab Modify an IPAM scope\cr
#'  \link[=ec2_modify_launch_template]{modify_launch_template} \tab Modifies a launch template\cr
#'  \link[=ec2_modify_managed_prefix_list]{modify_managed_prefix_list} \tab Modifies the specified managed prefix list\cr
#'  \link[=ec2_modify_network_interface_attribute]{modify_network_interface_attribute} \tab Modifies the specified network interface attribute\cr
#'  \link[=ec2_modify_private_dns_name_options]{modify_private_dns_name_options} \tab Modifies the options for instance hostnames for the specified instance\cr
#'  \link[=ec2_modify_reserved_instances]{modify_reserved_instances} \tab Modifies the Availability Zone, instance count, instance type, or network platform (EC2-Classic or EC2-VPC) of your Reserved Instances\cr
#'  \link[=ec2_modify_security_group_rules]{modify_security_group_rules} \tab Modifies the rules of a security group\cr
#'  \link[=ec2_modify_snapshot_attribute]{modify_snapshot_attribute} \tab Adds or removes permission settings for the specified snapshot\cr
#'  \link[=ec2_modify_snapshot_tier]{modify_snapshot_tier} \tab Archives an Amazon EBS snapshot\cr
#'  \link[=ec2_modify_spot_fleet_request]{modify_spot_fleet_request} \tab Modifies the specified Spot Fleet request\cr
#'  \link[=ec2_modify_subnet_attribute]{modify_subnet_attribute} \tab Modifies a subnet attribute\cr
#'  \link[=ec2_modify_traffic_mirror_filter_network_services]{modify_traffic_mirror_filter_network_services} \tab Allows or restricts mirroring network services\cr
#'  \link[=ec2_modify_traffic_mirror_filter_rule]{modify_traffic_mirror_filter_rule} \tab Modifies the specified Traffic Mirror rule\cr
#'  \link[=ec2_modify_traffic_mirror_session]{modify_traffic_mirror_session} \tab Modifies a Traffic Mirror session\cr
#'  \link[=ec2_modify_transit_gateway]{modify_transit_gateway} \tab Modifies the specified transit gateway\cr
#'  \link[=ec2_modify_transit_gateway_prefix_list_reference]{modify_transit_gateway_prefix_list_reference} \tab Modifies a reference (route) to a prefix list in a specified transit gateway route table\cr
#'  \link[=ec2_modify_transit_gateway_vpc_attachment]{modify_transit_gateway_vpc_attachment} \tab Modifies the specified VPC attachment\cr
#'  \link[=ec2_modify_volume]{modify_volume} \tab You can modify several parameters of an existing EBS volume, including volume size, volume type, and IOPS capacity\cr
#'  \link[=ec2_modify_volume_attribute]{modify_volume_attribute} \tab Modifies a volume attribute\cr
#'  \link[=ec2_modify_vpc_attribute]{modify_vpc_attribute} \tab Modifies the specified attribute of the specified VPC\cr
#'  \link[=ec2_modify_vpc_endpoint]{modify_vpc_endpoint} \tab Modifies attributes of a specified VPC endpoint\cr
#'  \link[=ec2_modify_vpc_endpoint_connection_notification]{modify_vpc_endpoint_connection_notification} \tab Modifies a connection notification for VPC endpoint or VPC endpoint service\cr
#'  \link[=ec2_modify_vpc_endpoint_service_configuration]{modify_vpc_endpoint_service_configuration} \tab Modifies the attributes of your VPC endpoint service configuration\cr
#'  \link[=ec2_modify_vpc_endpoint_service_payer_responsibility]{modify_vpc_endpoint_service_payer_responsibility} \tab Modifies the payer responsibility for your VPC endpoint service\cr
#'  \link[=ec2_modify_vpc_endpoint_service_permissions]{modify_vpc_endpoint_service_permissions} \tab Modifies the permissions for your VPC endpoint service\cr
#'  \link[=ec2_modify_vpc_peering_connection_options]{modify_vpc_peering_connection_options} \tab We are retiring EC2-Classic on August 15, 2022\cr
#'  \link[=ec2_modify_vpc_tenancy]{modify_vpc_tenancy} \tab Modifies the instance tenancy attribute of the specified VPC\cr
#'  \link[=ec2_modify_vpn_connection]{modify_vpn_connection} \tab Modifies the customer gateway or the target gateway of an Amazon Web Services Site-to-Site VPN connection\cr
#'  \link[=ec2_modify_vpn_connection_options]{modify_vpn_connection_options} \tab Modifies the connection options for your Site-to-Site VPN connection\cr
#'  \link[=ec2_modify_vpn_tunnel_certificate]{modify_vpn_tunnel_certificate} \tab Modifies the VPN tunnel endpoint certificate\cr
#'  \link[=ec2_modify_vpn_tunnel_options]{modify_vpn_tunnel_options} \tab Modifies the options for a VPN tunnel in an Amazon Web Services Site-to-Site VPN connection\cr
#'  \link[=ec2_monitor_instances]{monitor_instances} \tab Enables detailed monitoring for a running instance\cr
#'  \link[=ec2_move_address_to_vpc]{move_address_to_vpc} \tab Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC platform\cr
#'  \link[=ec2_move_byoip_cidr_to_ipam]{move_byoip_cidr_to_ipam} \tab Move an BYOIP IPv4 CIDR to IPAM from a public IPv4 pool\cr
#'  \link[=ec2_provision_byoip_cidr]{provision_byoip_cidr} \tab Provisions an IPv4 or IPv6 address range for use with your Amazon Web Services resources through bring your own IP addresses (BYOIP) and creates a corresponding address pool\cr
#'  \link[=ec2_provision_ipam_pool_cidr]{provision_ipam_pool_cidr} \tab Provision a CIDR to an IPAM pool\cr
#'  \link[=ec2_provision_public_ipv_4_pool_cidr]{provision_public_ipv_4_pool_cidr} \tab Provision a CIDR to a public IPv4 pool\cr
#'  \link[=ec2_purchase_host_reservation]{purchase_host_reservation} \tab Purchase a reservation with configurations that match those of your Dedicated Host\cr
#'  \link[=ec2_purchase_reserved_instances_offering]{purchase_reserved_instances_offering} \tab Purchases a Reserved Instance for use with your account\cr
#'  \link[=ec2_purchase_scheduled_instances]{purchase_scheduled_instances} \tab Purchases the Scheduled Instances with the specified schedule\cr
#'  \link[=ec2_reboot_instances]{reboot_instances} \tab Requests a reboot of the specified instances\cr
#'  \link[=ec2_register_image]{register_image} \tab Registers an AMI\cr
#'  \link[=ec2_register_instance_event_notification_attributes]{register_instance_event_notification_attributes} \tab Registers a set of tag keys to include in scheduled event notifications for your resources\cr
#'  \link[=ec2_register_transit_gateway_multicast_group_members]{register_transit_gateway_multicast_group_members} \tab Registers members (network interfaces) with the transit gateway multicast group\cr
#'  \link[=ec2_register_transit_gateway_multicast_group_sources]{register_transit_gateway_multicast_group_sources} \tab Registers sources (network interfaces) with the specified transit gateway multicast group\cr
#'  \link[=ec2_reject_transit_gateway_multicast_domain_associations]{reject_transit_gateway_multicast_domain_associations} \tab Rejects a request to associate cross-account subnets with a transit gateway multicast domain\cr
#'  \link[=ec2_reject_transit_gateway_peering_attachment]{reject_transit_gateway_peering_attachment} \tab Rejects a transit gateway peering attachment request\cr
#'  \link[=ec2_reject_transit_gateway_vpc_attachment]{reject_transit_gateway_vpc_attachment} \tab Rejects a request to attach a VPC to a transit gateway\cr
#'  \link[=ec2_reject_vpc_endpoint_connections]{reject_vpc_endpoint_connections} \tab Rejects one or more VPC endpoint connection requests to your VPC endpoint service\cr
#'  \link[=ec2_reject_vpc_peering_connection]{reject_vpc_peering_connection} \tab Rejects a VPC peering connection request\cr
#'  \link[=ec2_release_address]{release_address} \tab Releases the specified Elastic IP address\cr
#'  \link[=ec2_release_hosts]{release_hosts} \tab When you no longer want to use an On-Demand Dedicated Host it can be released\cr
#'  \link[=ec2_release_ipam_pool_allocation]{release_ipam_pool_allocation} \tab Release an allocation within an IPAM pool\cr
#'  \link[=ec2_replace_iam_instance_profile_association]{replace_iam_instance_profile_association} \tab Replaces an IAM instance profile for the specified running instance\cr
#'  \link[=ec2_replace_network_acl_association]{replace_network_acl_association} \tab Changes which network ACL a subnet is associated with\cr
#'  \link[=ec2_replace_network_acl_entry]{replace_network_acl_entry} \tab Replaces an entry (rule) in a network ACL\cr
#'  \link[=ec2_replace_route]{replace_route} \tab Replaces an existing route within a route table in a VPC\cr
#'  \link[=ec2_replace_route_table_association]{replace_route_table_association} \tab Changes the route table associated with a given subnet, internet gateway, or virtual private gateway in a VPC\cr
#'  \link[=ec2_replace_transit_gateway_route]{replace_transit_gateway_route} \tab Replaces the specified route in the specified transit gateway route table\cr
#'  \link[=ec2_report_instance_status]{report_instance_status} \tab Submits feedback about the status of an instance\cr
#'  \link[=ec2_request_spot_fleet]{request_spot_fleet} \tab Creates a Spot Fleet request\cr
#'  \link[=ec2_request_spot_instances]{request_spot_instances} \tab Creates a Spot Instance request\cr
#'  \link[=ec2_reset_address_attribute]{reset_address_attribute} \tab Resets the attribute of the specified IP address\cr
#'  \link[=ec2_reset_ebs_default_kms_key_id]{reset_ebs_default_kms_key_id} \tab Resets the default KMS key for EBS encryption for your account in this Region to the Amazon Web Services managed KMS key for EBS\cr
#'  \link[=ec2_reset_fpga_image_attribute]{reset_fpga_image_attribute} \tab Resets the specified attribute of the specified Amazon FPGA Image (AFI) to its default value\cr
#'  \link[=ec2_reset_image_attribute]{reset_image_attribute} \tab Resets an attribute of an AMI to its default value\cr
#'  \link[=ec2_reset_instance_attribute]{reset_instance_attribute} \tab Resets an attribute of an instance to its default value\cr
#'  \link[=ec2_reset_network_interface_attribute]{reset_network_interface_attribute} \tab Resets a network interface attribute\cr
#'  \link[=ec2_reset_snapshot_attribute]{reset_snapshot_attribute} \tab Resets permission settings for the specified snapshot\cr
#'  \link[=ec2_restore_address_to_classic]{restore_address_to_classic} \tab Restores an Elastic IP address that was previously moved to the EC2-VPC platform back to the EC2-Classic platform\cr
#'  \link[=ec2_restore_image_from_recycle_bin]{restore_image_from_recycle_bin} \tab Restores an AMI from the Recycle Bin\cr
#'  \link[=ec2_restore_managed_prefix_list_version]{restore_managed_prefix_list_version} \tab Restores the entries from a previous version of a managed prefix list to a new version of the prefix list\cr
#'  \link[=ec2_restore_snapshot_from_recycle_bin]{restore_snapshot_from_recycle_bin} \tab Restores a snapshot from the Recycle Bin\cr
#'  \link[=ec2_restore_snapshot_tier]{restore_snapshot_tier} \tab Restores an archived Amazon EBS snapshot for use temporarily or permanently, or modifies the restore period or restore type for a snapshot that was previously temporarily restored\cr
#'  \link[=ec2_revoke_client_vpn_ingress]{revoke_client_vpn_ingress} \tab Removes an ingress authorization rule from a Client VPN endpoint\cr
#'  \link[=ec2_revoke_security_group_egress]{revoke_security_group_egress} \tab &#91;VPC only&#93; Removes the specified outbound (egress) rules from a security group for EC2-VPC\cr
#'  \link[=ec2_revoke_security_group_ingress]{revoke_security_group_ingress} \tab Removes the specified inbound (ingress) rules from a security group\cr
#'  \link[=ec2_run_instances]{run_instances} \tab Launches the specified number of instances using an AMI for which you have permissions\cr
#'  \link[=ec2_run_scheduled_instances]{run_scheduled_instances} \tab Launches the specified Scheduled Instances\cr
#'  \link[=ec2_search_local_gateway_routes]{search_local_gateway_routes} \tab Searches for routes in the specified local gateway route table\cr
#'  \link[=ec2_search_transit_gateway_multicast_groups]{search_transit_gateway_multicast_groups} \tab Searches one or more transit gateway multicast groups and returns the group membership information\cr
#'  \link[=ec2_search_transit_gateway_routes]{search_transit_gateway_routes} \tab Searches for routes in the specified transit gateway route table\cr
#'  \link[=ec2_send_diagnostic_interrupt]{send_diagnostic_interrupt} \tab Sends a diagnostic interrupt to the specified Amazon EC2 instance to trigger a kernel panic (on Linux instances), or a blue screen/stop error (on Windows instances)\cr
#'  \link[=ec2_start_instances]{start_instances} \tab Starts an Amazon EBS-backed instance that you've previously stopped\cr
#'  \link[=ec2_start_network_insights_access_scope_analysis]{start_network_insights_access_scope_analysis} \tab Starts analyzing the specified Network Access Scope\cr
#'  \link[=ec2_start_network_insights_analysis]{start_network_insights_analysis} \tab Starts analyzing the specified path\cr
#'  \link[=ec2_start_vpc_endpoint_service_private_dns_verification]{start_vpc_endpoint_service_private_dns_verification} \tab Initiates the verification process to prove that the service provider owns the private DNS name domain for the endpoint service\cr
#'  \link[=ec2_stop_instances]{stop_instances} \tab Stops an Amazon EBS-backed instance\cr
#'  \link[=ec2_terminate_client_vpn_connections]{terminate_client_vpn_connections} \tab Terminates active Client VPN endpoint connections\cr
#'  \link[=ec2_terminate_instances]{terminate_instances} \tab Shuts down the specified instances\cr
#'  \link[=ec2_unassign_ipv_6_addresses]{unassign_ipv_6_addresses} \tab Unassigns one or more IPv6 addresses IPv4 Prefix Delegation prefixes from a network interface\cr
#'  \link[=ec2_unassign_private_ip_addresses]{unassign_private_ip_addresses} \tab Unassigns one or more secondary private IP addresses, or IPv4 Prefix Delegation prefixes from a network interface\cr
#'  \link[=ec2_unmonitor_instances]{unmonitor_instances} \tab Disables detailed monitoring for a running instance\cr
#'  \link[=ec2_update_security_group_rule_descriptions_egress]{update_security_group_rule_descriptions_egress} \tab &#91;VPC only&#93; Updates the description of an egress (outbound) security group rule\cr
#'  \link[=ec2_update_security_group_rule_descriptions_ingress]{update_security_group_rule_descriptions_ingress} \tab Updates the description of an ingress (inbound) security group rule\cr
#'  \link[=ec2_withdraw_byoip_cidr]{withdraw_byoip_cidr} \tab Stops advertising an address range that is provisioned as an address pool
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname ec2
#' @export
ec2 <- function(config = list()) {
  paws.compute.p1::ec2(config)
}

#' Amazon Lightsail
#'
#' @description
#' Amazon Lightsail is the easiest way to get started with Amazon Web
#' Services (Amazon Web Services) for developers who need to build websites
#' or web applications. It includes everything you need to launch your
#' project quickly - instances (virtual private servers), container
#' services, storage buckets, managed databases, SSD-based block storage,
#' static IP addresses, load balancers, content delivery network (CDN)
#' distributions, DNS management of registered domains, and resource
#' snapshots (backups) - for a low, predictable monthly price.
#' 
#' You can manage your Lightsail resources using the Lightsail console,
#' Lightsail API, AWS Command Line Interface (AWS CLI), or SDKs. For more
#' information about Lightsail concepts and tasks, see the Amazon Lightsail
#' Developer Guide.
#' 
#' This API Reference provides detailed information about the actions, data
#' types, parameters, and errors of the Lightsail service. For more
#' information about the supported Amazon Web Services Regions, endpoints,
#' and service quotas of the Lightsail service, see [Amazon Lightsail
#' Endpoints and
#' Quotas](https://docs.aws.amazon.com/general/latest/gr/lightsail.html) in
#' the *Amazon Web Services General Reference*.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- lightsail(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- lightsail()
#' svc$allocate_static_ip(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=lightsail_allocate_static_ip]{allocate_static_ip} \tab Allocates a static IP address\cr
#'  \link[=lightsail_attach_certificate_to_distribution]{attach_certificate_to_distribution} \tab Attaches an SSL/TLS certificate to your Amazon Lightsail content delivery network (CDN) distribution\cr
#'  \link[=lightsail_attach_disk]{attach_disk} \tab Attaches a block storage disk to a running or stopped Lightsail instance and exposes it to the instance with the specified disk name\cr
#'  \link[=lightsail_attach_instances_to_load_balancer]{attach_instances_to_load_balancer} \tab Attaches one or more Lightsail instances to a load balancer\cr
#'  \link[=lightsail_attach_load_balancer_tls_certificate]{attach_load_balancer_tls_certificate} \tab Attaches a Transport Layer Security (TLS) certificate to your load balancer\cr
#'  \link[=lightsail_attach_static_ip]{attach_static_ip} \tab Attaches a static IP address to a specific Amazon Lightsail instance\cr
#'  \link[=lightsail_close_instance_public_ports]{close_instance_public_ports} \tab Closes ports for a specific Amazon Lightsail instance\cr
#'  \link[=lightsail_copy_snapshot]{copy_snapshot} \tab Copies a manual snapshot of an instance or disk as another manual snapshot, or copies an automatic snapshot of an instance or disk as a manual snapshot\cr
#'  \link[=lightsail_create_bucket]{create_bucket} \tab Creates an Amazon Lightsail bucket\cr
#'  \link[=lightsail_create_bucket_access_key]{create_bucket_access_key} \tab Creates a new access key for the specified Amazon Lightsail bucket\cr
#'  \link[=lightsail_create_certificate]{create_certificate} \tab Creates an SSL/TLS certificate for an Amazon Lightsail content delivery network (CDN) distribution and a container service\cr
#'  \link[=lightsail_create_cloud_formation_stack]{create_cloud_formation_stack} \tab Creates an AWS CloudFormation stack, which creates a new Amazon EC2 instance from an exported Amazon Lightsail snapshot\cr
#'  \link[=lightsail_create_contact_method]{create_contact_method} \tab Creates an email or SMS text message contact method\cr
#'  \link[=lightsail_create_container_service]{create_container_service} \tab Creates an Amazon Lightsail container service\cr
#'  \link[=lightsail_create_container_service_deployment]{create_container_service_deployment} \tab Creates a deployment for your Amazon Lightsail container service\cr
#'  \link[=lightsail_create_container_service_registry_login]{create_container_service_registry_login} \tab Creates a temporary set of log in credentials that you can use to log in to the Docker process on your local machine\cr
#'  \link[=lightsail_create_disk]{create_disk} \tab Creates a block storage disk that can be attached to an Amazon Lightsail instance in the same Availability Zone (e\cr
#'  \link[=lightsail_create_disk_from_snapshot]{create_disk_from_snapshot} \tab Creates a block storage disk from a manual or automatic snapshot of a disk\cr
#'  \link[=lightsail_create_disk_snapshot]{create_disk_snapshot} \tab Creates a snapshot of a block storage disk\cr
#'  \link[=lightsail_create_distribution]{create_distribution} \tab Creates an Amazon Lightsail content delivery network (CDN) distribution\cr
#'  \link[=lightsail_create_domain]{create_domain} \tab Creates a domain resource for the specified domain (e\cr
#'  \link[=lightsail_create_domain_entry]{create_domain_entry} \tab Creates one of the following domain name system (DNS) records in a domain DNS zone: Address (A), canonical name (CNAME), mail exchanger (MX), name server (NS), start of authority (SOA), service locator (SRV), or text (TXT)\cr
#'  \link[=lightsail_create_instances]{create_instances} \tab Creates one or more Amazon Lightsail instances\cr
#'  \link[=lightsail_create_instances_from_snapshot]{create_instances_from_snapshot} \tab Creates one or more new instances from a manual or automatic snapshot of an instance\cr
#'  \link[=lightsail_create_instance_snapshot]{create_instance_snapshot} \tab Creates a snapshot of a specific virtual private server, or instance\cr
#'  \link[=lightsail_create_key_pair]{create_key_pair} \tab Creates a custom SSH key pair that you can use with an Amazon Lightsail instance\cr
#'  \link[=lightsail_create_load_balancer]{create_load_balancer} \tab Creates a Lightsail load balancer\cr
#'  \link[=lightsail_create_load_balancer_tls_certificate]{create_load_balancer_tls_certificate} \tab Creates an SSL/TLS certificate for an Amazon Lightsail load balancer\cr
#'  \link[=lightsail_create_relational_database]{create_relational_database} \tab Creates a new database in Amazon Lightsail\cr
#'  \link[=lightsail_create_relational_database_from_snapshot]{create_relational_database_from_snapshot} \tab Creates a new database from an existing database snapshot in Amazon Lightsail\cr
#'  \link[=lightsail_create_relational_database_snapshot]{create_relational_database_snapshot} \tab Creates a snapshot of your database in Amazon Lightsail\cr
#'  \link[=lightsail_delete_alarm]{delete_alarm} \tab Deletes an alarm\cr
#'  \link[=lightsail_delete_auto_snapshot]{delete_auto_snapshot} \tab Deletes an automatic snapshot of an instance or disk\cr
#'  \link[=lightsail_delete_bucket]{delete_bucket} \tab Deletes a Amazon Lightsail bucket\cr
#'  \link[=lightsail_delete_bucket_access_key]{delete_bucket_access_key} \tab Deletes an access key for the specified Amazon Lightsail bucket\cr
#'  \link[=lightsail_delete_certificate]{delete_certificate} \tab Deletes an SSL/TLS certificate for your Amazon Lightsail content delivery network (CDN) distribution\cr
#'  \link[=lightsail_delete_contact_method]{delete_contact_method} \tab Deletes a contact method\cr
#'  \link[=lightsail_delete_container_image]{delete_container_image} \tab Deletes a container image that is registered to your Amazon Lightsail container service\cr
#'  \link[=lightsail_delete_container_service]{delete_container_service} \tab Deletes your Amazon Lightsail container service\cr
#'  \link[=lightsail_delete_disk]{delete_disk} \tab Deletes the specified block storage disk\cr
#'  \link[=lightsail_delete_disk_snapshot]{delete_disk_snapshot} \tab Deletes the specified disk snapshot\cr
#'  \link[=lightsail_delete_distribution]{delete_distribution} \tab Deletes your Amazon Lightsail content delivery network (CDN) distribution\cr
#'  \link[=lightsail_delete_domain]{delete_domain} \tab Deletes the specified domain recordset and all of its domain records\cr
#'  \link[=lightsail_delete_domain_entry]{delete_domain_entry} \tab Deletes a specific domain entry\cr
#'  \link[=lightsail_delete_instance]{delete_instance} \tab Deletes an Amazon Lightsail instance\cr
#'  \link[=lightsail_delete_instance_snapshot]{delete_instance_snapshot} \tab Deletes a specific snapshot of a virtual private server (or instance)\cr
#'  \link[=lightsail_delete_key_pair]{delete_key_pair} \tab Deletes the specified key pair by removing the public key from Amazon Lightsail\cr
#'  \link[=lightsail_delete_known_host_keys]{delete_known_host_keys} \tab Deletes the known host key or certificate used by the Amazon Lightsail browser-based SSH or RDP clients to authenticate an instance\cr
#'  \link[=lightsail_delete_load_balancer]{delete_load_balancer} \tab Deletes a Lightsail load balancer and all its associated SSL/TLS certificates\cr
#'  \link[=lightsail_delete_load_balancer_tls_certificate]{delete_load_balancer_tls_certificate} \tab Deletes an SSL/TLS certificate associated with a Lightsail load balancer\cr
#'  \link[=lightsail_delete_relational_database]{delete_relational_database} \tab Deletes a database in Amazon Lightsail\cr
#'  \link[=lightsail_delete_relational_database_snapshot]{delete_relational_database_snapshot} \tab Deletes a database snapshot in Amazon Lightsail\cr
#'  \link[=lightsail_detach_certificate_from_distribution]{detach_certificate_from_distribution} \tab Detaches an SSL/TLS certificate from your Amazon Lightsail content delivery network (CDN) distribution\cr
#'  \link[=lightsail_detach_disk]{detach_disk} \tab Detaches a stopped block storage disk from a Lightsail instance\cr
#'  \link[=lightsail_detach_instances_from_load_balancer]{detach_instances_from_load_balancer} \tab Detaches the specified instances from a Lightsail load balancer\cr
#'  \link[=lightsail_detach_static_ip]{detach_static_ip} \tab Detaches a static IP from the Amazon Lightsail instance to which it is attached\cr
#'  \link[=lightsail_disable_add_on]{disable_add_on} \tab Disables an add-on for an Amazon Lightsail resource\cr
#'  \link[=lightsail_download_default_key_pair]{download_default_key_pair} \tab Downloads the regional Amazon Lightsail default key pair\cr
#'  \link[=lightsail_enable_add_on]{enable_add_on} \tab Enables or modifies an add-on for an Amazon Lightsail resource\cr
#'  \link[=lightsail_export_snapshot]{export_snapshot} \tab Exports an Amazon Lightsail instance or block storage disk snapshot to Amazon Elastic Compute Cloud (Amazon EC2)\cr
#'  \link[=lightsail_get_active_names]{get_active_names} \tab Returns the names of all active (not deleted) resources\cr
#'  \link[=lightsail_get_alarms]{get_alarms} \tab Returns information about the configured alarms\cr
#'  \link[=lightsail_get_auto_snapshots]{get_auto_snapshots} \tab Returns the available automatic snapshots for an instance or disk\cr
#'  \link[=lightsail_get_blueprints]{get_blueprints} \tab Returns the list of available instance images, or blueprints\cr
#'  \link[=lightsail_get_bucket_access_keys]{get_bucket_access_keys} \tab Returns the existing access key IDs for the specified Amazon Lightsail bucket\cr
#'  \link[=lightsail_get_bucket_bundles]{get_bucket_bundles} \tab Returns the bundles that you can apply to a Amazon Lightsail bucket\cr
#'  \link[=lightsail_get_bucket_metric_data]{get_bucket_metric_data} \tab Returns the data points of a specific metric for an Amazon Lightsail bucket\cr
#'  \link[=lightsail_get_buckets]{get_buckets} \tab Returns information about one or more Amazon Lightsail buckets\cr
#'  \link[=lightsail_get_bundles]{get_bundles} \tab Returns the bundles that you can apply to an Amazon Lightsail instance when you create it\cr
#'  \link[=lightsail_get_certificates]{get_certificates} \tab Returns information about one or more Amazon Lightsail SSL/TLS certificates\cr
#'  \link[=lightsail_get_cloud_formation_stack_records]{get_cloud_formation_stack_records} \tab Returns the CloudFormation stack record created as a result of the create cloud formation stack operation\cr
#'  \link[=lightsail_get_contact_methods]{get_contact_methods} \tab Returns information about the configured contact methods\cr
#'  \link[=lightsail_get_container_api_metadata]{get_container_api_metadata} \tab Returns information about Amazon Lightsail containers, such as the current version of the Lightsail Control (lightsailctl) plugin\cr
#'  \link[=lightsail_get_container_images]{get_container_images} \tab Returns the container images that are registered to your Amazon Lightsail container service\cr
#'  \link[=lightsail_get_container_log]{get_container_log} \tab Returns the log events of a container of your Amazon Lightsail container service\cr
#'  \link[=lightsail_get_container_service_deployments]{get_container_service_deployments} \tab Returns the deployments for your Amazon Lightsail container service\cr
#'  \link[=lightsail_get_container_service_metric_data]{get_container_service_metric_data} \tab Returns the data points of a specific metric of your Amazon Lightsail container service\cr
#'  \link[=lightsail_get_container_service_powers]{get_container_service_powers} \tab Returns the list of powers that can be specified for your Amazon Lightsail container services\cr
#'  \link[=lightsail_get_container_services]{get_container_services} \tab Returns information about one or more of your Amazon Lightsail container services\cr
#'  \link[=lightsail_get_disk]{get_disk} \tab Returns information about a specific block storage disk\cr
#'  \link[=lightsail_get_disks]{get_disks} \tab Returns information about all block storage disks in your AWS account and region\cr
#'  \link[=lightsail_get_disk_snapshot]{get_disk_snapshot} \tab Returns information about a specific block storage disk snapshot\cr
#'  \link[=lightsail_get_disk_snapshots]{get_disk_snapshots} \tab Returns information about all block storage disk snapshots in your AWS account and region\cr
#'  \link[=lightsail_get_distribution_bundles]{get_distribution_bundles} \tab Returns the bundles that can be applied to your Amazon Lightsail content delivery network (CDN) distributions\cr
#'  \link[=lightsail_get_distribution_latest_cache_reset]{get_distribution_latest_cache_reset} \tab Returns the timestamp and status of the last cache reset of a specific Amazon Lightsail content delivery network (CDN) distribution\cr
#'  \link[=lightsail_get_distribution_metric_data]{get_distribution_metric_data} \tab Returns the data points of a specific metric for an Amazon Lightsail content delivery network (CDN) distribution\cr
#'  \link[=lightsail_get_distributions]{get_distributions} \tab Returns information about one or more of your Amazon Lightsail content delivery network (CDN) distributions\cr
#'  \link[=lightsail_get_domain]{get_domain} \tab Returns information about a specific domain recordset\cr
#'  \link[=lightsail_get_domains]{get_domains} \tab Returns a list of all domains in the user's account\cr
#'  \link[=lightsail_get_export_snapshot_records]{get_export_snapshot_records} \tab Returns all export snapshot records created as a result of the export snapshot operation\cr
#'  \link[=lightsail_get_instance]{get_instance} \tab Returns information about a specific Amazon Lightsail instance, which is a virtual private server\cr
#'  \link[=lightsail_get_instance_access_details]{get_instance_access_details} \tab Returns temporary SSH keys you can use to connect to a specific virtual private server, or instance\cr
#'  \link[=lightsail_get_instance_metric_data]{get_instance_metric_data} \tab Returns the data points for the specified Amazon Lightsail instance metric, given an instance name\cr
#'  \link[=lightsail_get_instance_port_states]{get_instance_port_states} \tab Returns the firewall port states for a specific Amazon Lightsail instance, the IP addresses allowed to connect to the instance through the ports, and the protocol\cr
#'  \link[=lightsail_get_instances]{get_instances} \tab Returns information about all Amazon Lightsail virtual private servers, or instances\cr
#'  \link[=lightsail_get_instance_snapshot]{get_instance_snapshot} \tab Returns information about a specific instance snapshot\cr
#'  \link[=lightsail_get_instance_snapshots]{get_instance_snapshots} \tab Returns all instance snapshots for the user's account\cr
#'  \link[=lightsail_get_instance_state]{get_instance_state} \tab Returns the state of a specific instance\cr
#'  \link[=lightsail_get_key_pair]{get_key_pair} \tab Returns information about a specific key pair\cr
#'  \link[=lightsail_get_key_pairs]{get_key_pairs} \tab Returns information about all key pairs in the user's account\cr
#'  \link[=lightsail_get_load_balancer]{get_load_balancer} \tab Returns information about the specified Lightsail load balancer\cr
#'  \link[=lightsail_get_load_balancer_metric_data]{get_load_balancer_metric_data} \tab Returns information about health metrics for your Lightsail load balancer\cr
#'  \link[=lightsail_get_load_balancers]{get_load_balancers} \tab Returns information about all load balancers in an account\cr
#'  \link[=lightsail_get_load_balancer_tls_certificates]{get_load_balancer_tls_certificates} \tab Returns information about the TLS certificates that are associated with the specified Lightsail load balancer\cr
#'  \link[=lightsail_get_load_balancer_tls_policies]{get_load_balancer_tls_policies} \tab Returns a list of TLS security policies that you can apply to Lightsail load balancers\cr
#'  \link[=lightsail_get_operation]{get_operation} \tab Returns information about a specific operation\cr
#'  \link[=lightsail_get_operations]{get_operations} \tab Returns information about all operations\cr
#'  \link[=lightsail_get_operations_for_resource]{get_operations_for_resource} \tab Gets operations for a specific resource (e\cr
#'  \link[=lightsail_get_regions]{get_regions} \tab Returns a list of all valid regions for Amazon Lightsail\cr
#'  \link[=lightsail_get_relational_database]{get_relational_database} \tab Returns information about a specific database in Amazon Lightsail\cr
#'  \link[=lightsail_get_relational_database_blueprints]{get_relational_database_blueprints} \tab Returns a list of available database blueprints in Amazon Lightsail\cr
#'  \link[=lightsail_get_relational_database_bundles]{get_relational_database_bundles} \tab Returns the list of bundles that are available in Amazon Lightsail\cr
#'  \link[=lightsail_get_relational_database_events]{get_relational_database_events} \tab Returns a list of events for a specific database in Amazon Lightsail\cr
#'  \link[=lightsail_get_relational_database_log_events]{get_relational_database_log_events} \tab Returns a list of log events for a database in Amazon Lightsail\cr
#'  \link[=lightsail_get_relational_database_log_streams]{get_relational_database_log_streams} \tab Returns a list of available log streams for a specific database in Amazon Lightsail\cr
#'  \link[=lightsail_get_relational_database_master_user_password]{get_relational_database_master_user_password} \tab Returns the current, previous, or pending versions of the master user password for a Lightsail database\cr
#'  \link[=lightsail_get_relational_database_metric_data]{get_relational_database_metric_data} \tab Returns the data points of the specified metric for a database in Amazon Lightsail\cr
#'  \link[=lightsail_get_relational_database_parameters]{get_relational_database_parameters} \tab Returns all of the runtime parameters offered by the underlying database software, or engine, for a specific database in Amazon Lightsail\cr
#'  \link[=lightsail_get_relational_databases]{get_relational_databases} \tab Returns information about all of your databases in Amazon Lightsail\cr
#'  \link[=lightsail_get_relational_database_snapshot]{get_relational_database_snapshot} \tab Returns information about a specific database snapshot in Amazon Lightsail\cr
#'  \link[=lightsail_get_relational_database_snapshots]{get_relational_database_snapshots} \tab Returns information about all of your database snapshots in Amazon Lightsail\cr
#'  \link[=lightsail_get_static_ip]{get_static_ip} \tab Returns information about an Amazon Lightsail static IP\cr
#'  \link[=lightsail_get_static_ips]{get_static_ips} \tab Returns information about all static IPs in the user's account\cr
#'  \link[=lightsail_import_key_pair]{import_key_pair} \tab Imports a public SSH key from a specific key pair\cr
#'  \link[=lightsail_is_vpc_peered]{is_vpc_peered} \tab Returns a Boolean value indicating whether your Lightsail VPC is peered\cr
#'  \link[=lightsail_open_instance_public_ports]{open_instance_public_ports} \tab Opens ports for a specific Amazon Lightsail instance, and specifies the IP addresses allowed to connect to the instance through the ports, and the protocol\cr
#'  \link[=lightsail_peer_vpc]{peer_vpc} \tab Peers the Lightsail VPC with the user's default VPC\cr
#'  \link[=lightsail_put_alarm]{put_alarm} \tab Creates or updates an alarm, and associates it with the specified metric\cr
#'  \link[=lightsail_put_instance_public_ports]{put_instance_public_ports} \tab Opens ports for a specific Amazon Lightsail instance, and specifies the IP addresses allowed to connect to the instance through the ports, and the protocol\cr
#'  \link[=lightsail_reboot_instance]{reboot_instance} \tab Restarts a specific instance\cr
#'  \link[=lightsail_reboot_relational_database]{reboot_relational_database} \tab Restarts a specific database in Amazon Lightsail\cr
#'  \link[=lightsail_register_container_image]{register_container_image} \tab Registers a container image to your Amazon Lightsail container service\cr
#'  \link[=lightsail_release_static_ip]{release_static_ip} \tab Deletes a specific static IP from your account\cr
#'  \link[=lightsail_reset_distribution_cache]{reset_distribution_cache} \tab Deletes currently cached content from your Amazon Lightsail content delivery network (CDN) distribution\cr
#'  \link[=lightsail_send_contact_method_verification]{send_contact_method_verification} \tab Sends a verification request to an email contact method to ensure it's owned by the requester\cr
#'  \link[=lightsail_set_ip_address_type]{set_ip_address_type} \tab Sets the IP address type for an Amazon Lightsail resource\cr
#'  \link[=lightsail_set_resource_access_for_bucket]{set_resource_access_for_bucket} \tab Sets the Amazon Lightsail resources that can access the specified Lightsail bucket\cr
#'  \link[=lightsail_start_instance]{start_instance} \tab Starts a specific Amazon Lightsail instance from a stopped state\cr
#'  \link[=lightsail_start_relational_database]{start_relational_database} \tab Starts a specific database from a stopped state in Amazon Lightsail\cr
#'  \link[=lightsail_stop_instance]{stop_instance} \tab Stops a specific Amazon Lightsail instance that is currently running\cr
#'  \link[=lightsail_stop_relational_database]{stop_relational_database} \tab Stops a specific database that is currently running in Amazon Lightsail\cr
#'  \link[=lightsail_tag_resource]{tag_resource} \tab Adds one or more tags to the specified Amazon Lightsail resource\cr
#'  \link[=lightsail_test_alarm]{test_alarm} \tab Tests an alarm by displaying a banner on the Amazon Lightsail console\cr
#'  \link[=lightsail_unpeer_vpc]{unpeer_vpc} \tab Unpeers the Lightsail VPC from the user's default VPC\cr
#'  \link[=lightsail_untag_resource]{untag_resource} \tab Deletes the specified set of tag keys and their values from the specified Amazon Lightsail resource\cr
#'  \link[=lightsail_update_bucket]{update_bucket} \tab Updates an existing Amazon Lightsail bucket\cr
#'  \link[=lightsail_update_bucket_bundle]{update_bucket_bundle} \tab Updates the bundle, or storage plan, of an existing Amazon Lightsail bucket\cr
#'  \link[=lightsail_update_container_service]{update_container_service} \tab Updates the configuration of your Amazon Lightsail container service, such as its power, scale, and public domain names\cr
#'  \link[=lightsail_update_distribution]{update_distribution} \tab Updates an existing Amazon Lightsail content delivery network (CDN) distribution\cr
#'  \link[=lightsail_update_distribution_bundle]{update_distribution_bundle} \tab Updates the bundle of your Amazon Lightsail content delivery network (CDN) distribution\cr
#'  \link[=lightsail_update_domain_entry]{update_domain_entry} \tab Updates a domain recordset after it is created\cr
#'  \link[=lightsail_update_load_balancer_attribute]{update_load_balancer_attribute} \tab Updates the specified attribute for a load balancer\cr
#'  \link[=lightsail_update_relational_database]{update_relational_database} \tab Allows the update of one or more attributes of a database in Amazon Lightsail\cr
#'  \link[=lightsail_update_relational_database_parameters]{update_relational_database_parameters} \tab Allows the update of one or more parameters of a database in Amazon Lightsail
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname lightsail
#' @export
lightsail <- function(config = list()) {
  paws.compute.p1::lightsail(config)
}

#' AWS App Runner
#'
#' @description
#' App Runner
#' 
#' App Runner is an application service that provides a fast, simple, and
#' cost-effective way to go directly from an existing container image or
#' source code to a running service in the Amazon Web Services Cloud in
#' seconds. You don't need to learn new technologies, decide which compute
#' service to use, or understand how to provision and configure Amazon Web
#' Services resources.
#' 
#' App Runner connects directly to your container registry or source code
#' repository. It provides an automatic delivery pipeline with fully
#' managed operations, high performance, scalability, and security.
#' 
#' For more information about App Runner, see the [App Runner Developer
#' Guide](https://docs.aws.amazon.com/apprunner/latest/dg/). For release
#' information, see the [App Runner Release
#' Notes](https://docs.aws.amazon.com/apprunner/latest/relnotes/).
#' 
#' To install the Software Development Kits (SDKs), Integrated Development
#' Environment (IDE) Toolkits, and command line tools that you can use to
#' access the API, see [Tools for Amazon Web
#' Services](https://aws.amazon.com/developer/tools/).
#' 
#' **Endpoints**
#' 
#' For a list of Region-specific endpoints that App Runner supports, see
#' [App Runner endpoints and
#' quotas](https://docs.aws.amazon.com/general/latest/gr/apprunner.html) in
#' the *Amazon Web Services General Reference*.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- apprunner(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- apprunner()
#' svc$associate_custom_domain(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=apprunner_associate_custom_domain]{associate_custom_domain} \tab Associate your own domain name with the App Runner subdomain URL of your App Runner service\cr
#'  \link[=apprunner_create_auto_scaling_configuration]{create_auto_scaling_configuration} \tab Create an App Runner automatic scaling configuration resource\cr
#'  \link[=apprunner_create_connection]{create_connection} \tab Create an App Runner connection resource\cr
#'  \link[=apprunner_create_observability_configuration]{create_observability_configuration} \tab Create an App Runner observability configuration resource\cr
#'  \link[=apprunner_create_service]{create_service} \tab Create an App Runner service\cr
#'  \link[=apprunner_create_vpc_connector]{create_vpc_connector} \tab Create an App Runner VPC connector resource\cr
#'  \link[=apprunner_delete_auto_scaling_configuration]{delete_auto_scaling_configuration} \tab Delete an App Runner automatic scaling configuration resource\cr
#'  \link[=apprunner_delete_connection]{delete_connection} \tab Delete an App Runner connection\cr
#'  \link[=apprunner_delete_observability_configuration]{delete_observability_configuration} \tab Delete an App Runner observability configuration resource\cr
#'  \link[=apprunner_delete_service]{delete_service} \tab Delete an App Runner service\cr
#'  \link[=apprunner_delete_vpc_connector]{delete_vpc_connector} \tab Delete an App Runner VPC connector resource\cr
#'  \link[=apprunner_describe_auto_scaling_configuration]{describe_auto_scaling_configuration} \tab Return a full description of an App Runner automatic scaling configuration resource\cr
#'  \link[=apprunner_describe_custom_domains]{describe_custom_domains} \tab Return a description of custom domain names that are associated with an App Runner service\cr
#'  \link[=apprunner_describe_observability_configuration]{describe_observability_configuration} \tab Return a full description of an App Runner observability configuration resource\cr
#'  \link[=apprunner_describe_service]{describe_service} \tab Return a full description of an App Runner service\cr
#'  \link[=apprunner_describe_vpc_connector]{describe_vpc_connector} \tab Return a description of an App Runner VPC connector resource\cr
#'  \link[=apprunner_disassociate_custom_domain]{disassociate_custom_domain} \tab Disassociate a custom domain name from an App Runner service\cr
#'  \link[=apprunner_list_auto_scaling_configurations]{list_auto_scaling_configurations} \tab Returns a list of active App Runner automatic scaling configurations in your Amazon Web Services account\cr
#'  \link[=apprunner_list_connections]{list_connections} \tab Returns a list of App Runner connections that are associated with your Amazon Web Services account\cr
#'  \link[=apprunner_list_observability_configurations]{list_observability_configurations} \tab Returns a list of active App Runner observability configurations in your Amazon Web Services account\cr
#'  \link[=apprunner_list_operations]{list_operations} \tab Return a list of operations that occurred on an App Runner service\cr
#'  \link[=apprunner_list_services]{list_services} \tab Returns a list of running App Runner services in your Amazon Web Services account\cr
#'  \link[=apprunner_list_tags_for_resource]{list_tags_for_resource} \tab List tags that are associated with for an App Runner resource\cr
#'  \link[=apprunner_list_vpc_connectors]{list_vpc_connectors} \tab Returns a list of App Runner VPC connectors in your Amazon Web Services account\cr
#'  \link[=apprunner_pause_service]{pause_service} \tab Pause an active App Runner service\cr
#'  \link[=apprunner_resume_service]{resume_service} \tab Resume an active App Runner service\cr
#'  \link[=apprunner_start_deployment]{start_deployment} \tab Initiate a manual deployment of the latest commit in a source code repository or the latest image in a source image repository to an App Runner service\cr
#'  \link[=apprunner_tag_resource]{tag_resource} \tab Add tags to, or update the tag values of, an App Runner resource\cr
#'  \link[=apprunner_untag_resource]{untag_resource} \tab Remove tags from an App Runner resource\cr
#'  \link[=apprunner_update_service]{update_service} \tab Update an App Runner service
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname apprunner
#' @export
apprunner <- function(config = list()) {
  paws.compute.p2::apprunner(config)
}

#' AWS Batch
#'
#' @description
#' Batch
#' 
#' Using Batch, you can run batch computing workloads on the Amazon Web
#' Services Cloud. Batch computing is a common means for developers,
#' scientists, and engineers to access large amounts of compute resources.
#' Batch uses the advantages of this computing workload to remove the
#' undifferentiated heavy lifting of configuring and managing required
#' infrastructure. At the same time, it also adopts a familiar batch
#' computing software approach. Given these advantages, Batch can help you
#' to efficiently provision resources in response to jobs submitted, thus
#' effectively helping you to eliminate capacity constraints, reduce
#' compute costs, and deliver your results more quickly.
#' 
#' As a fully managed service, Batch can run batch computing workloads of
#' any scale. Batch automatically provisions compute resources and
#' optimizes workload distribution based on the quantity and scale of your
#' specific workloads. With Batch, there's no need to install or manage
#' batch computing software. This means that you can focus your time and
#' energy on analyzing results and solving your specific problems.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- batch(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- batch()
#' # This example cancels a job with the specified job ID.
#' svc$cancel_job(
#'   jobId = "1d828f65-7a4d-42e8-996d-3b900ed59dc4",
#'   reason = "Cancelling job."
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=batch_cancel_job]{cancel_job} \tab Cancels a job in an Batch job queue\cr
#'  \link[=batch_create_compute_environment]{create_compute_environment} \tab Creates an Batch compute environment\cr
#'  \link[=batch_create_job_queue]{create_job_queue} \tab Creates an Batch job queue\cr
#'  \link[=batch_create_scheduling_policy]{create_scheduling_policy} \tab Creates an Batch scheduling policy\cr
#'  \link[=batch_delete_compute_environment]{delete_compute_environment} \tab Deletes an Batch compute environment\cr
#'  \link[=batch_delete_job_queue]{delete_job_queue} \tab Deletes the specified job queue\cr
#'  \link[=batch_delete_scheduling_policy]{delete_scheduling_policy} \tab Deletes the specified scheduling policy\cr
#'  \link[=batch_deregister_job_definition]{deregister_job_definition} \tab Deregisters an Batch job definition\cr
#'  \link[=batch_describe_compute_environments]{describe_compute_environments} \tab Describes one or more of your compute environments\cr
#'  \link[=batch_describe_job_definitions]{describe_job_definitions} \tab Describes a list of job definitions\cr
#'  \link[=batch_describe_job_queues]{describe_job_queues} \tab Describes one or more of your job queues\cr
#'  \link[=batch_describe_jobs]{describe_jobs} \tab Describes a list of Batch jobs\cr
#'  \link[=batch_describe_scheduling_policies]{describe_scheduling_policies} \tab Describes one or more of your scheduling policies\cr
#'  \link[=batch_list_jobs]{list_jobs} \tab Returns a list of Batch jobs\cr
#'  \link[=batch_list_scheduling_policies]{list_scheduling_policies} \tab Returns a list of Batch scheduling policies\cr
#'  \link[=batch_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags for an Batch resource\cr
#'  \link[=batch_register_job_definition]{register_job_definition} \tab Registers an Batch job definition\cr
#'  \link[=batch_submit_job]{submit_job} \tab Submits an Batch job from a job definition\cr
#'  \link[=batch_tag_resource]{tag_resource} \tab Associates the specified tags to a resource with the specified resourceArn\cr
#'  \link[=batch_terminate_job]{terminate_job} \tab Terminates a job in a job queue\cr
#'  \link[=batch_untag_resource]{untag_resource} \tab Deletes specified tags from an Batch resource\cr
#'  \link[=batch_update_compute_environment]{update_compute_environment} \tab Updates an Batch compute environment\cr
#'  \link[=batch_update_job_queue]{update_job_queue} \tab Updates a job queue\cr
#'  \link[=batch_update_scheduling_policy]{update_scheduling_policy} \tab Updates a scheduling policy
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname batch
#' @export
batch <- function(config = list()) {
  paws.compute.p2::batch(config)
}

#' Braket
#'
#' @description
#' The Amazon Braket API Reference provides information about the
#' operations and structures supported in Amazon Braket.
#' 
#' Additional Resources:
#' 
#' -   [Amazon Braket Developer
#'     Guide](https://docs.aws.amazon.com/braket/latest/developerguide/what-is-braket.html)
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- braket(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- braket()
#' svc$cancel_job(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=braket_cancel_job]{cancel_job} \tab Cancels an Amazon Braket job\cr
#'  \link[=braket_cancel_quantum_task]{cancel_quantum_task} \tab Cancels the specified task\cr
#'  \link[=braket_create_job]{create_job} \tab Creates an Amazon Braket job\cr
#'  \link[=braket_create_quantum_task]{create_quantum_task} \tab Creates a quantum task\cr
#'  \link[=braket_get_device]{get_device} \tab Retrieves the devices available in Amazon Braket\cr
#'  \link[=braket_get_job]{get_job} \tab Retrieves the specified Amazon Braket job\cr
#'  \link[=braket_get_quantum_task]{get_quantum_task} \tab Retrieves the specified quantum task\cr
#'  \link[=braket_list_tags_for_resource]{list_tags_for_resource} \tab Shows the tags associated with this resource\cr
#'  \link[=braket_search_devices]{search_devices} \tab Searches for devices using the specified filters\cr
#'  \link[=braket_search_jobs]{search_jobs} \tab Searches for Amazon Braket jobs that match the specified filter values\cr
#'  \link[=braket_search_quantum_tasks]{search_quantum_tasks} \tab Searches for tasks that match the specified filter values\cr
#'  \link[=braket_tag_resource]{tag_resource} \tab Add a tag to the specified resource\cr
#'  \link[=braket_untag_resource]{untag_resource} \tab Remove tags from a resource
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname braket
#' @export
braket <- function(config = list()) {
  paws.compute.p2::braket(config)
}

#' AWS Compute Optimizer
#'
#' @description
#' Compute Optimizer is a service that analyzes the configuration and
#' utilization metrics of your Amazon Web Services compute resources, such
#' as Amazon EC2 instances, Amazon EC2 Auto Scaling groups, Lambda
#' functions, and Amazon EBS volumes. It reports whether your resources are
#' optimal, and generates optimization recommendations to reduce the cost
#' and improve the performance of your workloads. Compute Optimizer also
#' provides recent utilization metric data, in addition to projected
#' utilization metric data for the recommendations, which you can use to
#' evaluate which recommendation provides the best price-performance
#' trade-off. The analysis of your usage patterns can help you decide when
#' to move or resize your running resources, and still meet your
#' performance and capacity requirements. For more information about
#' Compute Optimizer, including the required permissions to use the
#' service, see the [Compute Optimizer User
#' Guide](https://docs.aws.amazon.com/compute-optimizer/latest/ug/).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- computeoptimizer(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- computeoptimizer()
#' svc$delete_recommendation_preferences(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=computeoptimizer_delete_recommendation_preferences]{delete_recommendation_preferences} \tab Deletes a recommendation preference, such as enhanced infrastructure metrics\cr
#'  \link[=computeoptimizer_describe_recommendation_export_jobs]{describe_recommendation_export_jobs} \tab Describes recommendation export jobs created in the last seven days\cr
#'  \link[=computeoptimizer_export_auto_scaling_group_recommendations]{export_auto_scaling_group_recommendations} \tab Exports optimization recommendations for Auto Scaling groups\cr
#'  \link[=computeoptimizer_export_ebs_volume_recommendations]{export_ebs_volume_recommendations} \tab Exports optimization recommendations for Amazon EBS volumes\cr
#'  \link[=computeoptimizer_export_ec2_instance_recommendations]{export_ec2_instance_recommendations} \tab Exports optimization recommendations for Amazon EC2 instances\cr
#'  \link[=computeoptimizer_export_lambda_function_recommendations]{export_lambda_function_recommendations} \tab Exports optimization recommendations for Lambda functions\cr
#'  \link[=computeoptimizer_get_auto_scaling_group_recommendations]{get_auto_scaling_group_recommendations} \tab Returns Auto Scaling group recommendations\cr
#'  \link[=computeoptimizer_get_ebs_volume_recommendations]{get_ebs_volume_recommendations} \tab Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations\cr
#'  \link[=computeoptimizer_get_ec2_instance_recommendations]{get_ec2_instance_recommendations} \tab Returns Amazon EC2 instance recommendations\cr
#'  \link[=computeoptimizer_get_ec2_recommendation_projected_metrics]{get_ec2_recommendation_projected_metrics} \tab Returns the projected utilization metrics of Amazon EC2 instance recommendations\cr
#'  \link[=computeoptimizer_get_effective_recommendation_preferences]{get_effective_recommendation_preferences} \tab Returns the recommendation preferences that are in effect for a given resource, such as enhanced infrastructure metrics\cr
#'  \link[=computeoptimizer_get_enrollment_status]{get_enrollment_status} \tab Returns the enrollment (opt in) status of an account to the Compute Optimizer service\cr
#'  \link[=computeoptimizer_get_enrollment_statuses_for_organization]{get_enrollment_statuses_for_organization} \tab Returns the Compute Optimizer enrollment (opt-in) status of organization member accounts, if your account is an organization management account\cr
#'  \link[=computeoptimizer_get_lambda_function_recommendations]{get_lambda_function_recommendations} \tab Returns Lambda function recommendations\cr
#'  \link[=computeoptimizer_get_recommendation_preferences]{get_recommendation_preferences} \tab Returns existing recommendation preferences, such as enhanced infrastructure metrics\cr
#'  \link[=computeoptimizer_get_recommendation_summaries]{get_recommendation_summaries} \tab Returns the optimization findings for an account\cr
#'  \link[=computeoptimizer_put_recommendation_preferences]{put_recommendation_preferences} \tab Creates a new recommendation preference or updates an existing recommendation preference, such as enhanced infrastructure metrics\cr
#'  \link[=computeoptimizer_update_enrollment_status]{update_enrollment_status} \tab Updates the enrollment (opt in and opt out) status of an account to the Compute Optimizer service
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname computeoptimizer
#' @export
computeoptimizer <- function(config = list()) {
  paws.compute.p2::computeoptimizer(config)
}

#' AWS EC2 Instance Connect
#'
#' @description
#' Amazon EC2 Instance Connect enables system administrators to publish
#' one-time use SSH public keys to EC2, providing users a simple and secure
#' way to connect to their instances.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- ec2instanceconnect(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- ec2instanceconnect()
#' # The following example pushes a sample SSH public key to the EC2 instance
#' # i-abcd1234 in AZ us-west-2b for use by the instance OS user ec2-user.
#' svc$send_ssh_public_key(
#'   AvailabilityZone = "us-west-2a",
#'   InstanceId = "i-abcd1234",
#'   InstanceOSUser = "ec2-user",
#'   SSHPublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3FlHqj2eqCdrGHuA6d..."
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=ec2instanceconnect_send_serial_console_ssh_public_key]{send_serial_console_ssh_public_key} \tab Pushes an SSH public key to the specified EC2 instance\cr
#'  \link[=ec2instanceconnect_send_ssh_public_key]{send_ssh_public_key} \tab Pushes an SSH public key to the specified EC2 instance for use by the specified user
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname ec2instanceconnect
#' @export
ec2instanceconnect <- function(config = list()) {
  paws.compute.p2::ec2instanceconnect(config)
}

#' Amazon EC2 Container Registry
#'
#' @description
#' Amazon Elastic Container Registry
#' 
#' Amazon Elastic Container Registry (Amazon ECR) is a managed container
#' image registry service. Customers can use the familiar Docker CLI, or
#' their preferred client, to push, pull, and manage images. Amazon ECR
#' provides a secure, scalable, and reliable registry for your Docker or
#' Open Container Initiative (OCI) images. Amazon ECR supports private
#' repositories with resource-based permissions using IAM so that specific
#' users or Amazon EC2 instances can access repositories and images.
#' 
#' Amazon ECR has service endpoints in each supported Region. For more
#' information, see [Amazon ECR
#' endpoints](https://docs.aws.amazon.com/general/latest/gr/ecr.html) in
#' the *Amazon Web Services General Reference*.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- ecr(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- ecr()
#' # This example deletes images with the tags precise and trusty in a
#' # repository called ubuntu in the default registry for an account.
#' svc$batch_delete_image(
#'   imageIds = list(
#'     list(
#'       imageTag = "precise"
#'     )
#'   ),
#'   repositoryName = "ubuntu"
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=ecr_batch_check_layer_availability]{batch_check_layer_availability} \tab Checks the availability of one or more image layers in a repository\cr
#'  \link[=ecr_batch_delete_image]{batch_delete_image} \tab Deletes a list of specified images within a repository\cr
#'  \link[=ecr_batch_get_image]{batch_get_image} \tab Gets detailed information for an image\cr
#'  \link[=ecr_batch_get_repository_scanning_configuration]{batch_get_repository_scanning_configuration} \tab Gets the scanning configuration for one or more repositories\cr
#'  \link[=ecr_complete_layer_upload]{complete_layer_upload} \tab Informs Amazon ECR that the image layer upload has completed for a specified registry, repository name, and upload ID\cr
#'  \link[=ecr_create_pull_through_cache_rule]{create_pull_through_cache_rule} \tab Creates a pull through cache rule\cr
#'  \link[=ecr_create_repository]{create_repository} \tab Creates a repository\cr
#'  \link[=ecr_delete_lifecycle_policy]{delete_lifecycle_policy} \tab Deletes the lifecycle policy associated with the specified repository\cr
#'  \link[=ecr_delete_pull_through_cache_rule]{delete_pull_through_cache_rule} \tab Deletes a pull through cache rule\cr
#'  \link[=ecr_delete_registry_policy]{delete_registry_policy} \tab Deletes the registry permissions policy\cr
#'  \link[=ecr_delete_repository]{delete_repository} \tab Deletes a repository\cr
#'  \link[=ecr_delete_repository_policy]{delete_repository_policy} \tab Deletes the repository policy associated with the specified repository\cr
#'  \link[=ecr_describe_image_replication_status]{describe_image_replication_status} \tab Returns the replication status for a specified image\cr
#'  \link[=ecr_describe_images]{describe_images} \tab Returns metadata about the images in a repository\cr
#'  \link[=ecr_describe_image_scan_findings]{describe_image_scan_findings} \tab Returns the scan findings for the specified image\cr
#'  \link[=ecr_describe_pull_through_cache_rules]{describe_pull_through_cache_rules} \tab Returns the pull through cache rules for a registry\cr
#'  \link[=ecr_describe_registry]{describe_registry} \tab Describes the settings for a registry\cr
#'  \link[=ecr_describe_repositories]{describe_repositories} \tab Describes image repositories in a registry\cr
#'  \link[=ecr_get_authorization_token]{get_authorization_token} \tab Retrieves an authorization token\cr
#'  \link[=ecr_get_download_url_for_layer]{get_download_url_for_layer} \tab Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer\cr
#'  \link[=ecr_get_lifecycle_policy]{get_lifecycle_policy} \tab Retrieves the lifecycle policy for the specified repository\cr
#'  \link[=ecr_get_lifecycle_policy_preview]{get_lifecycle_policy_preview} \tab Retrieves the results of the lifecycle policy preview request for the specified repository\cr
#'  \link[=ecr_get_registry_policy]{get_registry_policy} \tab Retrieves the permissions policy for a registry\cr
#'  \link[=ecr_get_registry_scanning_configuration]{get_registry_scanning_configuration} \tab Retrieves the scanning configuration for a registry\cr
#'  \link[=ecr_get_repository_policy]{get_repository_policy} \tab Retrieves the repository policy for the specified repository\cr
#'  \link[=ecr_initiate_layer_upload]{initiate_layer_upload} \tab Notifies Amazon ECR that you intend to upload an image layer\cr
#'  \link[=ecr_list_images]{list_images} \tab Lists all the image IDs for the specified repository\cr
#'  \link[=ecr_list_tags_for_resource]{list_tags_for_resource} \tab List the tags for an Amazon ECR resource\cr
#'  \link[=ecr_put_image]{put_image} \tab Creates or updates the image manifest and tags associated with an image\cr
#'  \link[=ecr_put_image_scanning_configuration]{put_image_scanning_configuration} \tab The PutImageScanningConfiguration API is being deprecated, in favor of specifying the image scanning configuration at the registry level\cr
#'  \link[=ecr_put_image_tag_mutability]{put_image_tag_mutability} \tab Updates the image tag mutability settings for the specified repository\cr
#'  \link[=ecr_put_lifecycle_policy]{put_lifecycle_policy} \tab Creates or updates the lifecycle policy for the specified repository\cr
#'  \link[=ecr_put_registry_policy]{put_registry_policy} \tab Creates or updates the permissions policy for your registry\cr
#'  \link[=ecr_put_registry_scanning_configuration]{put_registry_scanning_configuration} \tab Creates or updates the scanning configuration for your private registry\cr
#'  \link[=ecr_put_replication_configuration]{put_replication_configuration} \tab Creates or updates the replication configuration for a registry\cr
#'  \link[=ecr_set_repository_policy]{set_repository_policy} \tab Applies a repository policy to the specified repository to control access permissions\cr
#'  \link[=ecr_start_image_scan]{start_image_scan} \tab Starts an image vulnerability scan\cr
#'  \link[=ecr_start_lifecycle_policy_preview]{start_lifecycle_policy_preview} \tab Starts a preview of a lifecycle policy for the specified repository\cr
#'  \link[=ecr_tag_resource]{tag_resource} \tab Adds specified tags to a resource with the specified ARN\cr
#'  \link[=ecr_untag_resource]{untag_resource} \tab Deletes specified tags from a resource\cr
#'  \link[=ecr_upload_layer_part]{upload_layer_part} \tab Uploads an image layer part to Amazon ECR
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname ecr
#' @export
ecr <- function(config = list()) {
  paws.compute.p2::ecr(config)
}

#' Amazon Elastic Container Registry Public
#'
#' @description
#' Amazon Elastic Container Registry (Amazon ECR) is a managed container
#' image registry service. Amazon ECR provides both public and private
#' registries to host your container images. You can use the familiar
#' Docker CLI, or their preferred client, to push, pull, and manage images.
#' Amazon ECR provides a secure, scalable, and reliable registry for your
#' Docker or Open Container Initiative (OCI) images. Amazon ECR supports
#' public repositories with this API. For information about the Amazon ECR
#' API for private repositories, see [Amazon Elastic Container Registry API
#' Reference](https://docs.aws.amazon.com/AmazonECR/latest/APIReference/Welcome.html).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- ecrpublic(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- ecrpublic()
#' svc$batch_check_layer_availability(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=ecrpublic_batch_check_layer_availability]{batch_check_layer_availability} \tab Checks the availability of one or more image layers within a repository in a public registry\cr
#'  \link[=ecrpublic_batch_delete_image]{batch_delete_image} \tab Deletes a list of specified images within a repository in a public registry\cr
#'  \link[=ecrpublic_complete_layer_upload]{complete_layer_upload} \tab Informs Amazon ECR that the image layer upload has completed for a specified public registry, repository name, and upload ID\cr
#'  \link[=ecrpublic_create_repository]{create_repository} \tab Creates a repository in a public registry\cr
#'  \link[=ecrpublic_delete_repository]{delete_repository} \tab Deletes a repository in a public registry\cr
#'  \link[=ecrpublic_delete_repository_policy]{delete_repository_policy} \tab Deletes the repository policy associated with the specified repository\cr
#'  \link[=ecrpublic_describe_images]{describe_images} \tab Returns metadata about the images in a repository in a public registry\cr
#'  \link[=ecrpublic_describe_image_tags]{describe_image_tags} \tab Returns the image tag details for a repository in a public registry\cr
#'  \link[=ecrpublic_describe_registries]{describe_registries} \tab Returns details for a public registry\cr
#'  \link[=ecrpublic_describe_repositories]{describe_repositories} \tab Describes repositories in a public registry\cr
#'  \link[=ecrpublic_get_authorization_token]{get_authorization_token} \tab Retrieves an authorization token\cr
#'  \link[=ecrpublic_get_registry_catalog_data]{get_registry_catalog_data} \tab Retrieves catalog metadata for a public registry\cr
#'  \link[=ecrpublic_get_repository_catalog_data]{get_repository_catalog_data} \tab Retrieve catalog metadata for a repository in a public registry\cr
#'  \link[=ecrpublic_get_repository_policy]{get_repository_policy} \tab Retrieves the repository policy for the specified repository\cr
#'  \link[=ecrpublic_initiate_layer_upload]{initiate_layer_upload} \tab Notifies Amazon ECR that you intend to upload an image layer\cr
#'  \link[=ecrpublic_list_tags_for_resource]{list_tags_for_resource} \tab List the tags for an Amazon ECR Public resource\cr
#'  \link[=ecrpublic_put_image]{put_image} \tab Creates or updates the image manifest and tags associated with an image\cr
#'  \link[=ecrpublic_put_registry_catalog_data]{put_registry_catalog_data} \tab Create or updates the catalog data for a public registry\cr
#'  \link[=ecrpublic_put_repository_catalog_data]{put_repository_catalog_data} \tab Creates or updates the catalog data for a repository in a public registry\cr
#'  \link[=ecrpublic_set_repository_policy]{set_repository_policy} \tab Applies a repository policy to the specified public repository to control access permissions\cr
#'  \link[=ecrpublic_tag_resource]{tag_resource} \tab Associates the specified tags to a resource with the specified resourceArn\cr
#'  \link[=ecrpublic_untag_resource]{untag_resource} \tab Deletes specified tags from a resource\cr
#'  \link[=ecrpublic_upload_layer_part]{upload_layer_part} \tab Uploads an image layer part to Amazon ECR
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname ecrpublic
#' @export
ecrpublic <- function(config = list()) {
  paws.compute.p2::ecrpublic(config)
}

#' Amazon EC2 Container Service
#'
#' @description
#' Amazon Elastic Container Service
#' 
#' Amazon Elastic Container Service (Amazon ECS) is a highly scalable,
#' fast, container management service. It makes it easy to run, stop, and
#' manage Docker containers. You can host your cluster on a serverless
#' infrastructure that's managed by Amazon ECS by launching your services
#' or tasks on Fargate. For more control, you can host your tasks on a
#' cluster of Amazon Elastic Compute Cloud (Amazon EC2) or External
#' (on-premises) instances that you manage.
#' 
#' Amazon ECS makes it easy to launch and stop container-based applications
#' with simple API calls. This makes it easy to get the state of your
#' cluster from a centralized service, and gives you access to many
#' familiar Amazon EC2 features.
#' 
#' You can use Amazon ECS to schedule the placement of containers across
#' your cluster based on your resource needs, isolation policies, and
#' availability requirements. With Amazon ECS, you don't need to operate
#' your own cluster management and configuration management systems. You
#' also don't need to worry about scaling your management infrastructure.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- ecs(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- ecs()
#' # This example creates a cluster in your default region.
#' svc$create_cluster(
#'   clusterName = "my_cluster"
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=ecs_create_capacity_provider]{create_capacity_provider} \tab Creates a new capacity provider\cr
#'  \link[=ecs_create_cluster]{create_cluster} \tab Creates a new Amazon ECS cluster\cr
#'  \link[=ecs_create_service]{create_service} \tab Runs and maintains your desired number of tasks from a specified task definition\cr
#'  \link[=ecs_create_task_set]{create_task_set} \tab Create a task set in the specified cluster and service\cr
#'  \link[=ecs_delete_account_setting]{delete_account_setting} \tab Disables an account setting for a specified IAM user, IAM role, or the root user for an account\cr
#'  \link[=ecs_delete_attributes]{delete_attributes} \tab Deletes one or more custom attributes from an Amazon ECS resource\cr
#'  \link[=ecs_delete_capacity_provider]{delete_capacity_provider} \tab Deletes the specified capacity provider\cr
#'  \link[=ecs_delete_cluster]{delete_cluster} \tab Deletes the specified cluster\cr
#'  \link[=ecs_delete_service]{delete_service} \tab Deletes a specified service within a cluster\cr
#'  \link[=ecs_delete_task_set]{delete_task_set} \tab Deletes a specified task set within a service\cr
#'  \link[=ecs_deregister_container_instance]{deregister_container_instance} \tab Deregisters an Amazon ECS container instance from the specified cluster\cr
#'  \link[=ecs_deregister_task_definition]{deregister_task_definition} \tab Deregisters the specified task definition by family and revision\cr
#'  \link[=ecs_describe_capacity_providers]{describe_capacity_providers} \tab Describes one or more of your capacity providers\cr
#'  \link[=ecs_describe_clusters]{describe_clusters} \tab Describes one or more of your clusters\cr
#'  \link[=ecs_describe_container_instances]{describe_container_instances} \tab Describes one or more container instances\cr
#'  \link[=ecs_describe_services]{describe_services} \tab Describes the specified services running in your cluster\cr
#'  \link[=ecs_describe_task_definition]{describe_task_definition} \tab Describes a task definition\cr
#'  \link[=ecs_describe_tasks]{describe_tasks} \tab Describes a specified task or tasks\cr
#'  \link[=ecs_describe_task_sets]{describe_task_sets} \tab Describes the task sets in the specified cluster and service\cr
#'  \link[=ecs_discover_poll_endpoint]{discover_poll_endpoint} \tab This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent\cr
#'  \link[=ecs_execute_command]{execute_command} \tab Runs a command remotely on a container within a task\cr
#'  \link[=ecs_list_account_settings]{list_account_settings} \tab Lists the account settings for a specified principal\cr
#'  \link[=ecs_list_attributes]{list_attributes} \tab Lists the attributes for Amazon ECS resources within a specified target type and cluster\cr
#'  \link[=ecs_list_clusters]{list_clusters} \tab Returns a list of existing clusters\cr
#'  \link[=ecs_list_container_instances]{list_container_instances} \tab Returns a list of container instances in a specified cluster\cr
#'  \link[=ecs_list_services]{list_services} \tab Returns a list of services\cr
#'  \link[=ecs_list_tags_for_resource]{list_tags_for_resource} \tab List the tags for an Amazon ECS resource\cr
#'  \link[=ecs_list_task_definition_families]{list_task_definition_families} \tab Returns a list of task definition families that are registered to your account\cr
#'  \link[=ecs_list_task_definitions]{list_task_definitions} \tab Returns a list of task definitions that are registered to your account\cr
#'  \link[=ecs_list_tasks]{list_tasks} \tab Returns a list of tasks\cr
#'  \link[=ecs_put_account_setting]{put_account_setting} \tab Modifies an account setting\cr
#'  \link[=ecs_put_account_setting_default]{put_account_setting_default} \tab Modifies an account setting for all IAM users on an account for whom no individual account setting has been specified\cr
#'  \link[=ecs_put_attributes]{put_attributes} \tab Create or update an attribute on an Amazon ECS resource\cr
#'  \link[=ecs_put_cluster_capacity_providers]{put_cluster_capacity_providers} \tab Modifies the available capacity providers and the default capacity provider strategy for a cluster\cr
#'  \link[=ecs_register_container_instance]{register_container_instance} \tab This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent\cr
#'  \link[=ecs_register_task_definition]{register_task_definition} \tab Registers a new task definition from the supplied family and containerDefinitions\cr
#'  \link[=ecs_run_task]{run_task} \tab Starts a new task using the specified task definition\cr
#'  \link[=ecs_start_task]{start_task} \tab Starts a new task from the specified task definition on the specified container instance or instances\cr
#'  \link[=ecs_stop_task]{stop_task} \tab Stops a running task\cr
#'  \link[=ecs_submit_attachment_state_changes]{submit_attachment_state_changes} \tab This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent\cr
#'  \link[=ecs_submit_container_state_change]{submit_container_state_change} \tab This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent\cr
#'  \link[=ecs_submit_task_state_change]{submit_task_state_change} \tab This action is only used by the Amazon ECS agent, and it is not intended for use outside of the agent\cr
#'  \link[=ecs_tag_resource]{tag_resource} \tab Associates the specified tags to a resource with the specified resourceArn\cr
#'  \link[=ecs_untag_resource]{untag_resource} \tab Deletes specified tags from a resource\cr
#'  \link[=ecs_update_capacity_provider]{update_capacity_provider} \tab Modifies the parameters for a capacity provider\cr
#'  \link[=ecs_update_cluster]{update_cluster} \tab Updates the cluster\cr
#'  \link[=ecs_update_cluster_settings]{update_cluster_settings} \tab Modifies the settings to use for a cluster\cr
#'  \link[=ecs_update_container_agent]{update_container_agent} \tab Updates the Amazon ECS container agent on a specified container instance\cr
#'  \link[=ecs_update_container_instances_state]{update_container_instances_state} \tab Modifies the status of an Amazon ECS container instance\cr
#'  \link[=ecs_update_service]{update_service} \tab Modifies the parameters of a service\cr
#'  \link[=ecs_update_service_primary_task_set]{update_service_primary_task_set} \tab Modifies which task set in a service is the primary task set\cr
#'  \link[=ecs_update_task_set]{update_task_set} \tab Modifies a task set
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname ecs
#' @export
ecs <- function(config = list()) {
  paws.compute.p2::ecs(config)
}

#' Amazon Elastic Kubernetes Service
#'
#' @description
#' Amazon Elastic Kubernetes Service (Amazon EKS) is a managed service that
#' makes it easy for you to run Kubernetes on Amazon Web Services without
#' needing to stand up or maintain your own Kubernetes control plane.
#' Kubernetes is an open-source system for automating the deployment,
#' scaling, and management of containerized applications.
#' 
#' Amazon EKS runs up-to-date versions of the open-source Kubernetes
#' software, so you can use all the existing plugins and tooling from the
#' Kubernetes community. Applications running on Amazon EKS are fully
#' compatible with applications running on any standard Kubernetes
#' environment, whether running in on-premises data centers or public
#' clouds. This means that you can easily migrate any standard Kubernetes
#' application to Amazon EKS without any code modification required.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- eks(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- eks()
#' # The following example creates an Amazon EKS cluster called prod.
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
#'   roleArn = "arn:aws:iam::012345678910:role/eks-service-role-AWSServiceRole..."
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=eks_associate_encryption_config]{associate_encryption_config} \tab Associate encryption configuration to an existing cluster\cr
#'  \link[=eks_associate_identity_provider_config]{associate_identity_provider_config} \tab Associate an identity provider configuration to a cluster\cr
#'  \link[=eks_create_addon]{create_addon} \tab Creates an Amazon EKS add-on\cr
#'  \link[=eks_create_cluster]{create_cluster} \tab Creates an Amazon EKS control plane\cr
#'  \link[=eks_create_fargate_profile]{create_fargate_profile} \tab Creates an Fargate profile for your Amazon EKS cluster\cr
#'  \link[=eks_create_nodegroup]{create_nodegroup} \tab Creates a managed node group for an Amazon EKS cluster\cr
#'  \link[=eks_delete_addon]{delete_addon} \tab Delete an Amazon EKS add-on\cr
#'  \link[=eks_delete_cluster]{delete_cluster} \tab Deletes the Amazon EKS cluster control plane\cr
#'  \link[=eks_delete_fargate_profile]{delete_fargate_profile} \tab Deletes an Fargate profile\cr
#'  \link[=eks_delete_nodegroup]{delete_nodegroup} \tab Deletes an Amazon EKS node group for a cluster\cr
#'  \link[=eks_deregister_cluster]{deregister_cluster} \tab Deregisters a connected cluster to remove it from the Amazon EKS control plane\cr
#'  \link[=eks_describe_addon]{describe_addon} \tab Describes an Amazon EKS add-on\cr
#'  \link[=eks_describe_addon_versions]{describe_addon_versions} \tab Describes the Kubernetes versions that the add-on can be used with\cr
#'  \link[=eks_describe_cluster]{describe_cluster} \tab Returns descriptive information about an Amazon EKS cluster\cr
#'  \link[=eks_describe_fargate_profile]{describe_fargate_profile} \tab Returns descriptive information about an Fargate profile\cr
#'  \link[=eks_describe_identity_provider_config]{describe_identity_provider_config} \tab Returns descriptive information about an identity provider configuration\cr
#'  \link[=eks_describe_nodegroup]{describe_nodegroup} \tab Returns descriptive information about an Amazon EKS node group\cr
#'  \link[=eks_describe_update]{describe_update} \tab Returns descriptive information about an update against your Amazon EKS cluster or associated managed node group or Amazon EKS add-on\cr
#'  \link[=eks_disassociate_identity_provider_config]{disassociate_identity_provider_config} \tab Disassociates an identity provider configuration from a cluster\cr
#'  \link[=eks_list_addons]{list_addons} \tab Lists the available add-ons\cr
#'  \link[=eks_list_clusters]{list_clusters} \tab Lists the Amazon EKS clusters in your Amazon Web Services account in the specified Region\cr
#'  \link[=eks_list_fargate_profiles]{list_fargate_profiles} \tab Lists the Fargate profiles associated with the specified cluster in your Amazon Web Services account in the specified Region\cr
#'  \link[=eks_list_identity_provider_configs]{list_identity_provider_configs} \tab A list of identity provider configurations\cr
#'  \link[=eks_list_nodegroups]{list_nodegroups} \tab Lists the Amazon EKS managed node groups associated with the specified cluster in your Amazon Web Services account in the specified Region\cr
#'  \link[=eks_list_tags_for_resource]{list_tags_for_resource} \tab List the tags for an Amazon EKS resource\cr
#'  \link[=eks_list_updates]{list_updates} \tab Lists the updates associated with an Amazon EKS cluster or managed node group in your Amazon Web Services account, in the specified Region\cr
#'  \link[=eks_register_cluster]{register_cluster} \tab Connects a Kubernetes cluster to the Amazon EKS control plane\cr
#'  \link[=eks_tag_resource]{tag_resource} \tab Associates the specified tags to a resource with the specified resourceArn\cr
#'  \link[=eks_untag_resource]{untag_resource} \tab Deletes specified tags from a resource\cr
#'  \link[=eks_update_addon]{update_addon} \tab Updates an Amazon EKS add-on\cr
#'  \link[=eks_update_cluster_config]{update_cluster_config} \tab Updates an Amazon EKS cluster configuration\cr
#'  \link[=eks_update_cluster_version]{update_cluster_version} \tab Updates an Amazon EKS cluster to the specified Kubernetes version\cr
#'  \link[=eks_update_nodegroup_config]{update_nodegroup_config} \tab Updates an Amazon EKS managed node group configuration\cr
#'  \link[=eks_update_nodegroup_version]{update_nodegroup_version} \tab Updates the Kubernetes version or AMI version of an Amazon EKS managed node group
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname eks
#' @export
eks <- function(config = list()) {
  paws.compute.p2::eks(config)
}

#' AWS Elastic Beanstalk
#'
#' @description
#' AWS Elastic Beanstalk makes it easy for you to create, deploy, and
#' manage scalable, fault-tolerant applications running on the Amazon Web
#' Services cloud.
#' 
#' For more information about this product, go to the [AWS Elastic
#' Beanstalk](https://aws.amazon.com/elasticbeanstalk/) details page. The
#' location of the latest AWS Elastic Beanstalk WSDL is
#' <https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl>.
#' To install the Software Development Kits (SDKs), Integrated Development
#' Environment (IDE) Toolkits, and command line tools that enable you to
#' access the API, go to [Tools for Amazon Web
#' Services](https://aws.amazon.com/developer/tools/).
#' 
#' **Endpoints**
#' 
#' For a list of region-specific endpoints that AWS Elastic Beanstalk
#' supports, go to [Regions and
#' Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region)
#' in the *Amazon Web Services Glossary*.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- elasticbeanstalk(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- elasticbeanstalk()
#' # The following code aborts a running application version deployment for
#' # an environment named my-env:
#' svc$abort_environment_update(
#'   EnvironmentName = "my-env"
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=elasticbeanstalk_abort_environment_update]{abort_environment_update} \tab Cancels in-progress environment configuration update or application version deployment\cr
#'  \link[=elasticbeanstalk_apply_environment_managed_action]{apply_environment_managed_action} \tab Applies a scheduled managed action immediately\cr
#'  \link[=elasticbeanstalk_associate_environment_operations_role]{associate_environment_operations_role} \tab Add or change the operations role used by an environment\cr
#'  \link[=elasticbeanstalk_check_dns_availability]{check_dns_availability} \tab Checks if the specified CNAME is available\cr
#'  \link[=elasticbeanstalk_compose_environments]{compose_environments} \tab Create or update a group of environments that each run a separate component of a single application\cr
#'  \link[=elasticbeanstalk_create_application]{create_application} \tab Creates an application that has one configuration template named default and no application versions\cr
#'  \link[=elasticbeanstalk_create_application_version]{create_application_version} \tab Creates an application version for the specified application\cr
#'  \link[=elasticbeanstalk_create_configuration_template]{create_configuration_template} \tab Creates an AWS Elastic Beanstalk configuration template, associated with a specific Elastic Beanstalk application\cr
#'  \link[=elasticbeanstalk_create_environment]{create_environment} \tab Launches an AWS Elastic Beanstalk environment for the specified application using the specified configuration\cr
#'  \link[=elasticbeanstalk_create_platform_version]{create_platform_version} \tab Create a new version of your custom platform\cr
#'  \link[=elasticbeanstalk_create_storage_location]{create_storage_location} \tab Creates a bucket in Amazon S3 to store application versions, logs, and other files used by Elastic Beanstalk environments\cr
#'  \link[=elasticbeanstalk_delete_application]{delete_application} \tab Deletes the specified application along with all associated versions and configurations\cr
#'  \link[=elasticbeanstalk_delete_application_version]{delete_application_version} \tab Deletes the specified version from the specified application\cr
#'  \link[=elasticbeanstalk_delete_configuration_template]{delete_configuration_template} \tab Deletes the specified configuration template\cr
#'  \link[=elasticbeanstalk_delete_environment_configuration]{delete_environment_configuration} \tab Deletes the draft configuration associated with the running environment\cr
#'  \link[=elasticbeanstalk_delete_platform_version]{delete_platform_version} \tab Deletes the specified version of a custom platform\cr
#'  \link[=elasticbeanstalk_describe_account_attributes]{describe_account_attributes} \tab Returns attributes related to AWS Elastic Beanstalk that are associated with the calling AWS account\cr
#'  \link[=elasticbeanstalk_describe_applications]{describe_applications} \tab Returns the descriptions of existing applications\cr
#'  \link[=elasticbeanstalk_describe_application_versions]{describe_application_versions} \tab Retrieve a list of application versions\cr
#'  \link[=elasticbeanstalk_describe_configuration_options]{describe_configuration_options} \tab Describes the configuration options that are used in a particular configuration template or environment, or that a specified solution stack defines\cr
#'  \link[=elasticbeanstalk_describe_configuration_settings]{describe_configuration_settings} \tab Returns a description of the settings for the specified configuration set, that is, either a configuration template or the configuration set associated with a running environment\cr
#'  \link[=elasticbeanstalk_describe_environment_health]{describe_environment_health} \tab Returns information about the overall health of the specified environment\cr
#'  \link[=elasticbeanstalk_describe_environment_managed_action_history]{describe_environment_managed_action_history} \tab Lists an environment's completed and failed managed actions\cr
#'  \link[=elasticbeanstalk_describe_environment_managed_actions]{describe_environment_managed_actions} \tab Lists an environment's upcoming and in-progress managed actions\cr
#'  \link[=elasticbeanstalk_describe_environment_resources]{describe_environment_resources} \tab Returns AWS resources for this environment\cr
#'  \link[=elasticbeanstalk_describe_environments]{describe_environments} \tab Returns descriptions for existing environments\cr
#'  \link[=elasticbeanstalk_describe_events]{describe_events} \tab Returns list of event descriptions matching criteria up to the last 6 weeks\cr
#'  \link[=elasticbeanstalk_describe_instances_health]{describe_instances_health} \tab Retrieves detailed information about the health of instances in your AWS Elastic Beanstalk\cr
#'  \link[=elasticbeanstalk_describe_platform_version]{describe_platform_version} \tab Describes a platform version\cr
#'  \link[=elasticbeanstalk_disassociate_environment_operations_role]{disassociate_environment_operations_role} \tab Disassociate the operations role from an environment\cr
#'  \link[=elasticbeanstalk_list_available_solution_stacks]{list_available_solution_stacks} \tab Returns a list of the available solution stack names, with the public version first and then in reverse chronological order\cr
#'  \link[=elasticbeanstalk_list_platform_branches]{list_platform_branches} \tab Lists the platform branches available for your account in an AWS Region\cr
#'  \link[=elasticbeanstalk_list_platform_versions]{list_platform_versions} \tab Lists the platform versions available for your account in an AWS Region\cr
#'  \link[=elasticbeanstalk_list_tags_for_resource]{list_tags_for_resource} \tab Return the tags applied to an AWS Elastic Beanstalk resource\cr
#'  \link[=elasticbeanstalk_rebuild_environment]{rebuild_environment} \tab Deletes and recreates all of the AWS resources (for example: the Auto Scaling group, load balancer, etc\cr
#'  \link[=elasticbeanstalk_request_environment_info]{request_environment_info} \tab Initiates a request to compile the specified type of information of the deployed environment\cr
#'  \link[=elasticbeanstalk_restart_app_server]{restart_app_server} \tab Causes the environment to restart the application container server running on each Amazon EC2 instance\cr
#'  \link[=elasticbeanstalk_retrieve_environment_info]{retrieve_environment_info} \tab Retrieves the compiled information from a RequestEnvironmentInfo request\cr
#'  \link[=elasticbeanstalk_swap_environment_cnam_es]{swap_environment_cnam_es} \tab Swaps the CNAMEs of two environments\cr
#'  \link[=elasticbeanstalk_terminate_environment]{terminate_environment} \tab Terminates the specified environment\cr
#'  \link[=elasticbeanstalk_update_application]{update_application} \tab Updates the specified application to have the specified properties\cr
#'  \link[=elasticbeanstalk_update_application_resource_lifecycle]{update_application_resource_lifecycle} \tab Modifies lifecycle settings for an application\cr
#'  \link[=elasticbeanstalk_update_application_version]{update_application_version} \tab Updates the specified application version to have the specified properties\cr
#'  \link[=elasticbeanstalk_update_configuration_template]{update_configuration_template} \tab Updates the specified configuration template to have the specified properties or configuration option values\cr
#'  \link[=elasticbeanstalk_update_environment]{update_environment} \tab Updates the environment description, deploys a new application version, updates the configuration settings to an entirely new configuration template, or updates select configuration option values in the running environment\cr
#'  \link[=elasticbeanstalk_update_tags_for_resource]{update_tags_for_resource} \tab Update the list of tags applied to an AWS Elastic Beanstalk resource\cr
#'  \link[=elasticbeanstalk_validate_configuration_settings]{validate_configuration_settings} \tab Takes a set of configuration settings and either a configuration template or environment, and determines whether those values are valid
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname elasticbeanstalk
#' @export
elasticbeanstalk <- function(config = list()) {
  paws.compute.p2::elasticbeanstalk(config)
}

#' Amazon EMR Containers
#'
#' @description
#' Amazon EMR on EKS provides a deployment option for Amazon EMR that
#' allows you to run open-source big data frameworks on Amazon Elastic
#' Kubernetes Service (Amazon EKS). With this deployment option, you can
#' focus on running analytics workloads while Amazon EMR on EKS builds,
#' configures, and manages containers for open-source applications. For
#' more information about Amazon EMR on EKS concepts and tasks, see [What
#' is Amazon EMR on
#' EKS](https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/emr-eks.html).
#' 
#' *Amazon EMR containers* is the API name for Amazon EMR on EKS. The
#' `emr-containers` prefix is used in the following scenarios:
#' 
#' -   It is the prefix in the CLI commands for Amazon EMR on EKS. For
#'     example, `aws emr-containers start-job-run`.
#' 
#' -   It is the prefix before IAM policy actions for Amazon EMR on EKS.
#'     For example, `"Action": [ "emr-containers:StartJobRun"]`. For more
#'     information, see [Policy actions for Amazon EMR on
#'     EKS](https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions).
#' 
#' -   It is the prefix used in Amazon EMR on EKS service endpoints. For
#'     example, `emr-containers.us-east-2.amazonaws.com`. For more
#'     information, see [Amazon EMR on EKS Service
#'     Endpoints](https://docs.aws.amazon.com/emr/latest/EMR-on-EKS-DevelopmentGuide/service-quotas.html#service-endpoints).
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- emrcontainers(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- emrcontainers()
#' svc$cancel_job_run(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=emrcontainers_cancel_job_run]{cancel_job_run} \tab Cancels a job run\cr
#'  \link[=emrcontainers_create_managed_endpoint]{create_managed_endpoint} \tab Creates a managed endpoint\cr
#'  \link[=emrcontainers_create_virtual_cluster]{create_virtual_cluster} \tab Creates a virtual cluster\cr
#'  \link[=emrcontainers_delete_managed_endpoint]{delete_managed_endpoint} \tab Deletes a managed endpoint\cr
#'  \link[=emrcontainers_delete_virtual_cluster]{delete_virtual_cluster} \tab Deletes a virtual cluster\cr
#'  \link[=emrcontainers_describe_job_run]{describe_job_run} \tab Displays detailed information about a job run\cr
#'  \link[=emrcontainers_describe_managed_endpoint]{describe_managed_endpoint} \tab Displays detailed information about a managed endpoint\cr
#'  \link[=emrcontainers_describe_virtual_cluster]{describe_virtual_cluster} \tab Displays detailed information about a specified virtual cluster\cr
#'  \link[=emrcontainers_list_job_runs]{list_job_runs} \tab Lists job runs based on a set of parameters\cr
#'  \link[=emrcontainers_list_managed_endpoints]{list_managed_endpoints} \tab Lists managed endpoints based on a set of parameters\cr
#'  \link[=emrcontainers_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags assigned to the resources\cr
#'  \link[=emrcontainers_list_virtual_clusters]{list_virtual_clusters} \tab Lists information about the specified virtual cluster\cr
#'  \link[=emrcontainers_start_job_run]{start_job_run} \tab Starts a job run\cr
#'  \link[=emrcontainers_tag_resource]{tag_resource} \tab Assigns tags to resources\cr
#'  \link[=emrcontainers_untag_resource]{untag_resource} \tab Removes tags from resources
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname emrcontainers
#' @export
emrcontainers <- function(config = list()) {
  paws.compute.p2::emrcontainers(config)
}

#' EMR Serverless
#'
#' @description
#' Amazon EMR Serverless is a new deployment option for Amazon EMR. EMR
#' Serverless provides a serverless runtime environment that simplifies
#' running analytics applications using the latest open source frameworks
#' such as Apache Spark and Apache Hive. With EMR Serverless, you don’t
#' have to configure, optimize, secure, or operate clusters to run
#' applications with these frameworks.
#' 
#' The API reference to Amazon EMR Serverless is `emr-serverless`. The
#' `emr-serverless` prefix is used in the following scenarios:
#' 
#' -   It is the prefix in the CLI commands for Amazon EMR Serverless. For
#'     example, `aws emr-serverless start-job-run`.
#' 
#' -   It is the prefix before IAM policy actions for Amazon EMR
#'     Serverless. For example, `"Action": ["emr-serverless:StartJobRun"]`.
#'     For more information, see [Policy actions for Amazon EMR
#'     Serverless](https://docs.aws.amazon.com/emr/latest/EMR-Serverless-UserGuide/security_iam_service-with-iam.html#security_iam_service-with-iam-id-based-policies-actions).
#' 
#' -   It is the prefix used in Amazon EMR Serverless service endpoints.
#'     For example, `emr-serverless.us-east-2.amazonaws.com`.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- emrserverless(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- emrserverless()
#' svc$cancel_job_run(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=emrserverless_cancel_job_run]{cancel_job_run} \tab Cancels a job run\cr
#'  \link[=emrserverless_create_application]{create_application} \tab Creates an application\cr
#'  \link[=emrserverless_delete_application]{delete_application} \tab Deletes an application\cr
#'  \link[=emrserverless_get_application]{get_application} \tab Displays detailed information about a specified application\cr
#'  \link[=emrserverless_get_job_run]{get_job_run} \tab Displays detailed information about a job run\cr
#'  \link[=emrserverless_list_applications]{list_applications} \tab Lists applications based on a set of parameters\cr
#'  \link[=emrserverless_list_job_runs]{list_job_runs} \tab Lists job runs based on a set of parameters\cr
#'  \link[=emrserverless_list_tags_for_resource]{list_tags_for_resource} \tab Lists the tags assigned to the resources\cr
#'  \link[=emrserverless_start_application]{start_application} \tab Starts a specified application and initializes initial capacity if configured\cr
#'  \link[=emrserverless_start_job_run]{start_job_run} \tab Starts a job run\cr
#'  \link[=emrserverless_stop_application]{stop_application} \tab Stops a specified application and releases initial capacity if configured\cr
#'  \link[=emrserverless_tag_resource]{tag_resource} \tab Assigns tags to resources\cr
#'  \link[=emrserverless_untag_resource]{untag_resource} \tab Removes tags from resources\cr
#'  \link[=emrserverless_update_application]{update_application} \tab Updates a specified application
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname emrserverless
#' @export
emrserverless <- function(config = list()) {
  paws.compute.p2::emrserverless(config)
}

#' EC2 Image Builder
#'
#' @description
#' EC2 Image Builder is a fully managed Amazon Web Services service that
#' makes it easier to automate the creation, management, and deployment of
#' customized, secure, and up-to-date "golden" server images that are
#' pre-installed and pre-configured with software and settings to meet
#' specific IT standards.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- imagebuilder(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- imagebuilder()
#' svc$cancel_image_creation(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=imagebuilder_cancel_image_creation]{cancel_image_creation} \tab CancelImageCreation cancels the creation of Image\cr
#'  \link[=imagebuilder_create_component]{create_component} \tab Creates a new component that can be used to build, validate, test, and assess your image\cr
#'  \link[=imagebuilder_create_container_recipe]{create_container_recipe} \tab Creates a new container recipe\cr
#'  \link[=imagebuilder_create_distribution_configuration]{create_distribution_configuration} \tab Creates a new distribution configuration\cr
#'  \link[=imagebuilder_create_image]{create_image} \tab Creates a new image\cr
#'  \link[=imagebuilder_create_image_pipeline]{create_image_pipeline} \tab Creates a new image pipeline\cr
#'  \link[=imagebuilder_create_image_recipe]{create_image_recipe} \tab Creates a new image recipe\cr
#'  \link[=imagebuilder_create_infrastructure_configuration]{create_infrastructure_configuration} \tab Creates a new infrastructure configuration\cr
#'  \link[=imagebuilder_delete_component]{delete_component} \tab Deletes a component build version\cr
#'  \link[=imagebuilder_delete_container_recipe]{delete_container_recipe} \tab Deletes a container recipe\cr
#'  \link[=imagebuilder_delete_distribution_configuration]{delete_distribution_configuration} \tab Deletes a distribution configuration\cr
#'  \link[=imagebuilder_delete_image]{delete_image} \tab Deletes an Image Builder image resource\cr
#'  \link[=imagebuilder_delete_image_pipeline]{delete_image_pipeline} \tab Deletes an image pipeline\cr
#'  \link[=imagebuilder_delete_image_recipe]{delete_image_recipe} \tab Deletes an image recipe\cr
#'  \link[=imagebuilder_delete_infrastructure_configuration]{delete_infrastructure_configuration} \tab Deletes an infrastructure configuration\cr
#'  \link[=imagebuilder_get_component]{get_component} \tab Gets a component object\cr
#'  \link[=imagebuilder_get_component_policy]{get_component_policy} \tab Gets a component policy\cr
#'  \link[=imagebuilder_get_container_recipe]{get_container_recipe} \tab Retrieves a container recipe\cr
#'  \link[=imagebuilder_get_container_recipe_policy]{get_container_recipe_policy} \tab Retrieves the policy for a container recipe\cr
#'  \link[=imagebuilder_get_distribution_configuration]{get_distribution_configuration} \tab Gets a distribution configuration\cr
#'  \link[=imagebuilder_get_image]{get_image} \tab Gets an image\cr
#'  \link[=imagebuilder_get_image_pipeline]{get_image_pipeline} \tab Gets an image pipeline\cr
#'  \link[=imagebuilder_get_image_policy]{get_image_policy} \tab Gets an image policy\cr
#'  \link[=imagebuilder_get_image_recipe]{get_image_recipe} \tab Gets an image recipe\cr
#'  \link[=imagebuilder_get_image_recipe_policy]{get_image_recipe_policy} \tab Gets an image recipe policy\cr
#'  \link[=imagebuilder_get_infrastructure_configuration]{get_infrastructure_configuration} \tab Gets an infrastructure configuration\cr
#'  \link[=imagebuilder_import_component]{import_component} \tab Imports a component and transforms its data into a component document\cr
#'  \link[=imagebuilder_import_vm_image]{import_vm_image} \tab When you export your virtual machine (VM) from its virtualization environment, that process creates a set of one or more disk container files that act as snapshots of your VM’s environment, settings, and data\cr
#'  \link[=imagebuilder_list_component_build_versions]{list_component_build_versions} \tab Returns the list of component build versions for the specified semantic version\cr
#'  \link[=imagebuilder_list_components]{list_components} \tab Returns the list of component build versions for the specified semantic version\cr
#'  \link[=imagebuilder_list_container_recipes]{list_container_recipes} \tab Returns a list of container recipes\cr
#'  \link[=imagebuilder_list_distribution_configurations]{list_distribution_configurations} \tab Returns a list of distribution configurations\cr
#'  \link[=imagebuilder_list_image_build_versions]{list_image_build_versions} \tab Returns a list of image build versions\cr
#'  \link[=imagebuilder_list_image_packages]{list_image_packages} \tab List the Packages that are associated with an Image Build Version, as determined by Amazon Web Services Systems Manager Inventory at build time\cr
#'  \link[=imagebuilder_list_image_pipeline_images]{list_image_pipeline_images} \tab Returns a list of images created by the specified pipeline\cr
#'  \link[=imagebuilder_list_image_pipelines]{list_image_pipelines} \tab Returns a list of image pipelines\cr
#'  \link[=imagebuilder_list_image_recipes]{list_image_recipes} \tab Returns a list of image recipes\cr
#'  \link[=imagebuilder_list_images]{list_images} \tab Returns the list of images that you have access to\cr
#'  \link[=imagebuilder_list_infrastructure_configurations]{list_infrastructure_configurations} \tab Returns a list of infrastructure configurations\cr
#'  \link[=imagebuilder_list_tags_for_resource]{list_tags_for_resource} \tab Returns the list of tags for the specified resource\cr
#'  \link[=imagebuilder_put_component_policy]{put_component_policy} \tab Applies a policy to a component\cr
#'  \link[=imagebuilder_put_container_recipe_policy]{put_container_recipe_policy} \tab Applies a policy to a container image\cr
#'  \link[=imagebuilder_put_image_policy]{put_image_policy} \tab Applies a policy to an image\cr
#'  \link[=imagebuilder_put_image_recipe_policy]{put_image_recipe_policy} \tab Applies a policy to an image recipe\cr
#'  \link[=imagebuilder_start_image_pipeline_execution]{start_image_pipeline_execution} \tab Manually triggers a pipeline to create an image\cr
#'  \link[=imagebuilder_tag_resource]{tag_resource} \tab Adds a tag to a resource\cr
#'  \link[=imagebuilder_untag_resource]{untag_resource} \tab Removes a tag from a resource\cr
#'  \link[=imagebuilder_update_distribution_configuration]{update_distribution_configuration} \tab Updates a new distribution configuration\cr
#'  \link[=imagebuilder_update_image_pipeline]{update_image_pipeline} \tab Updates an image pipeline\cr
#'  \link[=imagebuilder_update_infrastructure_configuration]{update_infrastructure_configuration} \tab Updates a new infrastructure configuration
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname imagebuilder
#' @export
imagebuilder <- function(config = list()) {
  paws.compute.p2::imagebuilder(config)
}

#' AWS Lambda
#'
#' @description
#' Lambda
#' 
#' **Overview**
#' 
#' Lambda is a compute service that lets you run code without provisioning
#' or managing servers. Lambda runs your code on a high-availability
#' compute infrastructure and performs all of the administration of the
#' compute resources, including server and operating system maintenance,
#' capacity provisioning and automatic scaling, code monitoring and
#' logging. With Lambda, you can run code for virtually any type of
#' application or backend service. For more information about the Lambda
#' service, see [What is
#' Lambda](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html) in
#' the **Lambda Developer Guide**.
#' 
#' The *Lambda API Reference* provides information about each of the API
#' methods, including details about the parameters in each API request and
#' response.
#' 
#' You can use Software Development Kits (SDKs), Integrated Development
#' Environment (IDE) Toolkits, and command line tools to access the API.
#' For installation instructions, see [Tools for Amazon Web
#' Services](https://aws.amazon.com/developer/tools/).
#' 
#' For a list of Region-specific endpoints that Lambda supports, see Lambda
#' endpoints and quotas in the *Amazon Web Services General Reference.*.
#' 
#' When making the API calls, you will need to authenticate your request by
#' providing a signature. Lambda supports signature version 4. For more
#' information, see [Signature Version 4 signing
#' process](https://docs.aws.amazon.com/general/latest/gr/signing-aws-api-requests.html)
#' in the *Amazon Web Services General Reference.*.
#' 
#' **CA certificates**
#' 
#' Because Amazon Web Services SDKs use the CA certificates from your
#' computer, changes to the certificates on the Amazon Web Services servers
#' can cause connection failures when you attempt to use an SDK. You can
#' prevent these failures by keeping your computer's CA certificates and
#' operating system up-to-date. If you encounter this issue in a corporate
#' environment and do not manage your own computer, you might need to ask
#' an administrator to assist with the update process. The following list
#' shows minimum operating system and Java versions:
#' 
#' -   Microsoft Windows versions that have updates from January 2005 or
#'     later installed contain at least one of the required CAs in their
#'     trust list.
#' 
#' -   Mac OS X 10.4 with Java for Mac OS X 10.4 Release 5 (February 2007),
#'     Mac OS X 10.5 (October 2007), and later versions contain at least
#'     one of the required CAs in their trust list.
#' 
#' -   Red Hat Enterprise Linux 5 (March 2007), 6, and 7 and CentOS 5, 6,
#'     and 7 all contain at least one of the required CAs in their default
#'     trusted CA list.
#' 
#' -   Java 1.4.2_12 (May 2006), 5 Update 2 (March 2005), and all later
#'     versions, including Java 6 (December 2006), 7, and 8, contain at
#'     least one of the required CAs in their default trusted CA list.
#' 
#' When accessing the Lambda management console or Lambda API endpoints,
#' whether through browsers or programmatically, you will need to ensure
#' your client machines support any of the following CAs:
#' 
#' -   Amazon Root CA 1
#' 
#' -   Starfield Services Root Certificate Authority - G2
#' 
#' -   Starfield Class 2 Certification Authority
#' 
#' Root certificates from the first two authorities are available from
#' [Amazon trust services](https://www.amazontrust.com/repository/), but
#' keeping your computer up-to-date is the more straightforward solution.
#' To learn more about ACM-provided certificates, see [Amazon Web Services
#' Certificate Manager
#' FAQs.](https://aws.amazon.com/certificate-manager/faqs/#certificates)
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- lambda(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- lambda()
#' svc$add_layer_version_permission(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=lambda_add_layer_version_permission]{add_layer_version_permission} \tab Adds permissions to the resource-based policy of a version of an Lambda layer\cr
#'  \link[=lambda_add_permission]{add_permission} \tab Grants an Amazon Web Services service, account, or organization permission to use a function\cr
#'  \link[=lambda_create_alias]{create_alias} \tab Creates an alias for a Lambda function version\cr
#'  \link[=lambda_create_code_signing_config]{create_code_signing_config} \tab Creates a code signing configuration\cr
#'  \link[=lambda_create_event_source_mapping]{create_event_source_mapping} \tab Creates a mapping between an event source and an Lambda function\cr
#'  \link[=lambda_create_function]{create_function} \tab Creates a Lambda function\cr
#'  \link[=lambda_create_function_url_config]{create_function_url_config} \tab Creates a Lambda function URL with the specified configuration parameters\cr
#'  \link[=lambda_delete_alias]{delete_alias} \tab Deletes a Lambda function alias\cr
#'  \link[=lambda_delete_code_signing_config]{delete_code_signing_config} \tab Deletes the code signing configuration\cr
#'  \link[=lambda_delete_event_source_mapping]{delete_event_source_mapping} \tab Deletes an event source mapping\cr
#'  \link[=lambda_delete_function]{delete_function} \tab Deletes a Lambda function\cr
#'  \link[=lambda_delete_function_code_signing_config]{delete_function_code_signing_config} \tab Removes the code signing configuration from the function\cr
#'  \link[=lambda_delete_function_concurrency]{delete_function_concurrency} \tab Removes a concurrent execution limit from a function\cr
#'  \link[=lambda_delete_function_event_invoke_config]{delete_function_event_invoke_config} \tab Deletes the configuration for asynchronous invocation for a function, version, or alias\cr
#'  \link[=lambda_delete_function_url_config]{delete_function_url_config} \tab Deletes a Lambda function URL\cr
#'  \link[=lambda_delete_layer_version]{delete_layer_version} \tab Deletes a version of an Lambda layer\cr
#'  \link[=lambda_delete_provisioned_concurrency_config]{delete_provisioned_concurrency_config} \tab Deletes the provisioned concurrency configuration for a function\cr
#'  \link[=lambda_get_account_settings]{get_account_settings} \tab Retrieves details about your account's limits and usage in an Amazon Web Services Region\cr
#'  \link[=lambda_get_alias]{get_alias} \tab Returns details about a Lambda function alias\cr
#'  \link[=lambda_get_code_signing_config]{get_code_signing_config} \tab Returns information about the specified code signing configuration\cr
#'  \link[=lambda_get_event_source_mapping]{get_event_source_mapping} \tab Returns details about an event source mapping\cr
#'  \link[=lambda_get_function]{get_function} \tab Returns information about the function or function version, with a link to download the deployment package that's valid for 10 minutes\cr
#'  \link[=lambda_get_function_code_signing_config]{get_function_code_signing_config} \tab Returns the code signing configuration for the specified function\cr
#'  \link[=lambda_get_function_concurrency]{get_function_concurrency} \tab Returns details about the reserved concurrency configuration for a function\cr
#'  \link[=lambda_get_function_configuration]{get_function_configuration} \tab Returns the version-specific settings of a Lambda function or version\cr
#'  \link[=lambda_get_function_event_invoke_config]{get_function_event_invoke_config} \tab Retrieves the configuration for asynchronous invocation for a function, version, or alias\cr
#'  \link[=lambda_get_function_url_config]{get_function_url_config} \tab Returns details about a Lambda function URL\cr
#'  \link[=lambda_get_layer_version]{get_layer_version} \tab Returns information about a version of an Lambda layer, with a link to download the layer archive that's valid for 10 minutes\cr
#'  \link[=lambda_get_layer_version_by_arn]{get_layer_version_by_arn} \tab Returns information about a version of an Lambda layer, with a link to download the layer archive that's valid for 10 minutes\cr
#'  \link[=lambda_get_layer_version_policy]{get_layer_version_policy} \tab Returns the permission policy for a version of an Lambda layer\cr
#'  \link[=lambda_get_policy]{get_policy} \tab Returns the resource-based IAM policy for a function, version, or alias\cr
#'  \link[=lambda_get_provisioned_concurrency_config]{get_provisioned_concurrency_config} \tab Retrieves the provisioned concurrency configuration for a function's alias or version\cr
#'  \link[=lambda_invoke]{invoke} \tab Invokes a Lambda function\cr
#'  \link[=lambda_invoke_async]{invoke_async} \tab For asynchronous function invocation, use Invoke\cr
#'  \link[=lambda_list_aliases]{list_aliases} \tab Returns a list of aliases for a Lambda function\cr
#'  \link[=lambda_list_code_signing_configs]{list_code_signing_configs} \tab Returns a list of code signing configurations\cr
#'  \link[=lambda_list_event_source_mappings]{list_event_source_mappings} \tab Lists event source mappings\cr
#'  \link[=lambda_list_function_event_invoke_configs]{list_function_event_invoke_configs} \tab Retrieves a list of configurations for asynchronous invocation for a function\cr
#'  \link[=lambda_list_functions]{list_functions} \tab Returns a list of Lambda functions, with the version-specific configuration of each\cr
#'  \link[=lambda_list_functions_by_code_signing_config]{list_functions_by_code_signing_config} \tab List the functions that use the specified code signing configuration\cr
#'  \link[=lambda_list_function_url_configs]{list_function_url_configs} \tab Returns a list of Lambda function URLs for the specified function\cr
#'  \link[=lambda_list_layers]{list_layers} \tab Lists Lambda layers and shows information about the latest version of each\cr
#'  \link[=lambda_list_layer_versions]{list_layer_versions} \tab Lists the versions of an Lambda layer\cr
#'  \link[=lambda_list_provisioned_concurrency_configs]{list_provisioned_concurrency_configs} \tab Retrieves a list of provisioned concurrency configurations for a function\cr
#'  \link[=lambda_list_tags]{list_tags} \tab Returns a function's tags\cr
#'  \link[=lambda_list_versions_by_function]{list_versions_by_function} \tab Returns a list of versions, with the version-specific configuration of each\cr
#'  \link[=lambda_publish_layer_version]{publish_layer_version} \tab Creates an Lambda layer from a ZIP archive\cr
#'  \link[=lambda_publish_version]{publish_version} \tab Creates a version from the current code and configuration of a function\cr
#'  \link[=lambda_put_function_code_signing_config]{put_function_code_signing_config} \tab Update the code signing configuration for the function\cr
#'  \link[=lambda_put_function_concurrency]{put_function_concurrency} \tab Sets the maximum number of simultaneous executions for a function, and reserves capacity for that concurrency level\cr
#'  \link[=lambda_put_function_event_invoke_config]{put_function_event_invoke_config} \tab Configures options for asynchronous invocation on a function, version, or alias\cr
#'  \link[=lambda_put_provisioned_concurrency_config]{put_provisioned_concurrency_config} \tab Adds a provisioned concurrency configuration to a function's alias or version\cr
#'  \link[=lambda_remove_layer_version_permission]{remove_layer_version_permission} \tab Removes a statement from the permissions policy for a version of an Lambda layer\cr
#'  \link[=lambda_remove_permission]{remove_permission} \tab Revokes function-use permission from an Amazon Web Services service or another account\cr
#'  \link[=lambda_tag_resource]{tag_resource} \tab Adds tags to a function\cr
#'  \link[=lambda_untag_resource]{untag_resource} \tab Removes tags from a function\cr
#'  \link[=lambda_update_alias]{update_alias} \tab Updates the configuration of a Lambda function alias\cr
#'  \link[=lambda_update_code_signing_config]{update_code_signing_config} \tab Update the code signing configuration\cr
#'  \link[=lambda_update_event_source_mapping]{update_event_source_mapping} \tab Updates an event source mapping\cr
#'  \link[=lambda_update_function_code]{update_function_code} \tab Updates a Lambda function's code\cr
#'  \link[=lambda_update_function_configuration]{update_function_configuration} \tab Modify the version-specific settings of a Lambda function\cr
#'  \link[=lambda_update_function_event_invoke_config]{update_function_event_invoke_config} \tab Updates the configuration for asynchronous invocation for a function, version, or alias\cr
#'  \link[=lambda_update_function_url_config]{update_function_url_config} \tab Updates the configuration for a Lambda function URL
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname lambda
#' @export
lambda <- function(config = list()) {
  paws.compute.p2::lambda(config)
}

#' AWS Proton
#'
#' @description
#' This is the Proton Service API Reference. It provides descriptions,
#' syntax and usage examples for each of the
#' [actions](https://docs.aws.amazon.com/proton/latest/APIReference/API_Operations.html)
#' and [data
#' types](https://docs.aws.amazon.com/proton/latest/APIReference/API_Types.html)
#' for the Proton service.
#' 
#' The documentation for each action shows the Query API request parameters
#' and the XML response.
#' 
#' Alternatively, you can use the Amazon Web Services CLI to access an API.
#' For more information, see the [Amazon Web Services Command Line
#' Interface User
#' Guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html).
#' 
#' The Proton service is a two-pronged automation framework. Administrators
#' create service templates to provide standardized infrastructure and
#' deployment tooling for serverless and container based applications.
#' Developers, in turn, select from the available service templates to
#' automate their application or service deployments.
#' 
#' Because administrators define the infrastructure and tooling that Proton
#' deploys and manages, they need permissions to use all of the listed API
#' operations.
#' 
#' When developers select a specific infrastructure and tooling set, Proton
#' deploys their applications. To monitor their applications that are
#' running on Proton, developers need permissions to the service *create*,
#' *list*, *update* and *delete* API operations and the service instance
#' *list* and *update* API operations.
#' 
#' To learn more about Proton administration, see the [Proton Administrator
#' Guide](https://docs.aws.amazon.com/proton/latest/userguide/Welcome.html).
#' 
#' To learn more about deploying serverless and containerized applications
#' on Proton, see the [Proton User
#' Guide](https://docs.aws.amazon.com/proton/latest/userguide/Welcome.html).
#' 
#' **Ensuring Idempotency**
#' 
#' When you make a mutating API request, the request typically returns a
#' result before the asynchronous workflows of the operation are complete.
#' Operations might also time out or encounter other server issues before
#' they're complete, even if the request already returned a result. This
#' might make it difficult to determine whether the request succeeded.
#' Moreover, you might need to retry the request multiple times to ensure
#' that the operation completes successfully. However, if the original
#' request and the subsequent retries are successful, the operation occurs
#' multiple times. This means that you might create more resources than you
#' intended.
#' 
#' *Idempotency* ensures that an API request action completes no more than
#' one time. With an idempotent request, if the original request action
#' completes successfully, any subsequent retries complete successfully
#' without performing any further actions. However, the result might
#' contain updated information, such as the current creation status.
#' 
#' The following lists of APIs are grouped according to methods that ensure
#' idempotency.
#' 
#' **Idempotent create APIs with a client token**
#' 
#' The API actions in this list support idempotency with the use of a
#' *client token*. The corresponding Amazon Web Services CLI commands also
#' support idempotency using a client token. A client token is a unique,
#' case-sensitive string of up to 64 ASCII characters. To make an
#' idempotent API request using one of these actions, specify a client
#' token in the request. We recommend that you *don't* reuse the same
#' client token for other API requests. If you don’t provide a client token
#' for these APIs, a default client token is automatically provided by
#' SDKs.
#' 
#' Given a request action that has succeeded:
#' 
#' If you retry the request using the same client token and the same
#' parameters, the retry succeeds without performing any further actions
#' other than returning the original resource detail data in the response.
#' 
#' If you retry the request using the same client token, but one or more of
#' the parameters are different, the retry throws a `ValidationException`
#' with an `IdempotentParameterMismatch` error.
#' 
#' Client tokens expire eight hours after a request is made. If you retry
#' the request with the expired token, a new resource is created.
#' 
#' If the original resource is deleted and you retry the request, a new
#' resource is created.
#' 
#' Idempotent create APIs with a client token:
#' 
#' -   CreateEnvironmentTemplateVersion
#' 
#' -   CreateServiceTemplateVersion
#' 
#' -   CreateEnvironmentAccountConnection
#' 
#' **Idempotent create APIs**
#' 
#' Given a request action that has succeeded:
#' 
#' If you retry the request with an API from this group, and the original
#' resource *hasn't* been modified, the retry succeeds without performing
#' any further actions other than returning the original resource detail
#' data in the response.
#' 
#' If the original resource has been modified, the retry throws a
#' `ConflictException`.
#' 
#' If you retry with different input parameters, the retry throws a
#' `ValidationException` with an `IdempotentParameterMismatch` error.
#' 
#' Idempotent create APIs:
#' 
#' -   CreateEnvironmentTemplate
#' 
#' -   CreateServiceTemplate
#' 
#' -   CreateEnvironment
#' 
#' -   CreateService
#' 
#' **Idempotent delete APIs**
#' 
#' Given a request action that has succeeded:
#' 
#' When you retry the request with an API from this group and the resource
#' was deleted, its metadata is returned in the response.
#' 
#' If you retry and the resource doesn't exist, the response is empty.
#' 
#' In both cases, the retry succeeds.
#' 
#' Idempotent delete APIs:
#' 
#' -   DeleteEnvironmentTemplate
#' 
#' -   DeleteEnvironmentTemplateVersion
#' 
#' -   DeleteServiceTemplate
#' 
#' -   DeleteServiceTemplateVersion
#' 
#' -   DeleteEnvironmentAccountConnection
#' 
#' **Asynchronous idempotent delete APIs**
#' 
#' Given a request action that has succeeded:
#' 
#' If you retry the request with an API from this group, if the original
#' request delete operation status is `DELETE_IN_PROGRESS`, the retry
#' returns the resource detail data in the response without performing any
#' further actions.
#' 
#' If the original request delete operation is complete, a retry returns an
#' empty response.
#' 
#' Asynchronous idempotent delete APIs:
#' 
#' -   DeleteEnvironment
#' 
#' -   DeleteService
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- proton(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- proton()
#' svc$accept_environment_account_connection(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=proton_accept_environment_account_connection]{accept_environment_account_connection} \tab In a management account, an environment account connection request is accepted\cr
#'  \link[=proton_cancel_component_deployment]{cancel_component_deployment} \tab Attempts to cancel a component deployment (for a component that is in the IN_PROGRESS deployment status)\cr
#'  \link[=proton_cancel_environment_deployment]{cancel_environment_deployment} \tab Attempts to cancel an environment deployment on an UpdateEnvironment action, if the deployment is IN_PROGRESS\cr
#'  \link[=proton_cancel_service_instance_deployment]{cancel_service_instance_deployment} \tab Attempts to cancel a service instance deployment on an UpdateServiceInstance action, if the deployment is IN_PROGRESS\cr
#'  \link[=proton_cancel_service_pipeline_deployment]{cancel_service_pipeline_deployment} \tab Attempts to cancel a service pipeline deployment on an UpdateServicePipeline action, if the deployment is IN_PROGRESS\cr
#'  \link[=proton_create_component]{create_component} \tab Create an Proton component\cr
#'  \link[=proton_create_environment]{create_environment} \tab Deploy a new environment\cr
#'  \link[=proton_create_environment_account_connection]{create_environment_account_connection} \tab Create an environment account connection in an environment account so that environment infrastructure resources can be provisioned in the environment account from a management account\cr
#'  \link[=proton_create_environment_template]{create_environment_template} \tab Create an environment template for Proton\cr
#'  \link[=proton_create_environment_template_version]{create_environment_template_version} \tab Create a new major or minor version of an environment template\cr
#'  \link[=proton_create_repository]{create_repository} \tab Create and register a link to a repository that can be used with self-managed provisioning (infrastructure or pipelines) or for template sync configurations\cr
#'  \link[=proton_create_service]{create_service} \tab Create an Proton service\cr
#'  \link[=proton_create_service_template]{create_service_template} \tab Create a service template\cr
#'  \link[=proton_create_service_template_version]{create_service_template_version} \tab Create a new major or minor version of a service template\cr
#'  \link[=proton_create_template_sync_config]{create_template_sync_config} \tab Set up a template to create new template versions automatically\cr
#'  \link[=proton_delete_component]{delete_component} \tab Delete an Proton component resource\cr
#'  \link[=proton_delete_environment]{delete_environment} \tab Delete an environment\cr
#'  \link[=proton_delete_environment_account_connection]{delete_environment_account_connection} \tab In an environment account, delete an environment account connection\cr
#'  \link[=proton_delete_environment_template]{delete_environment_template} \tab If no other major or minor versions of an environment template exist, delete the environment template\cr
#'  \link[=proton_delete_environment_template_version]{delete_environment_template_version} \tab If no other minor versions of an environment template exist, delete a major version of the environment template if it's not the Recommended version\cr
#'  \link[=proton_delete_repository]{delete_repository} \tab De-register and unlink your repository\cr
#'  \link[=proton_delete_service]{delete_service} \tab Delete a service, with its instances and pipeline\cr
#'  \link[=proton_delete_service_template]{delete_service_template} \tab If no other major or minor versions of the service template exist, delete the service template\cr
#'  \link[=proton_delete_service_template_version]{delete_service_template_version} \tab If no other minor versions of a service template exist, delete a major version of the service template if it's not the Recommended version\cr
#'  \link[=proton_delete_template_sync_config]{delete_template_sync_config} \tab Delete a template sync configuration\cr
#'  \link[=proton_get_account_settings]{get_account_settings} \tab Get detail data for the Proton pipeline service role\cr
#'  \link[=proton_get_component]{get_component} \tab Get detailed data for a component\cr
#'  \link[=proton_get_environment]{get_environment} \tab Get detailed data for an environment\cr
#'  \link[=proton_get_environment_account_connection]{get_environment_account_connection} \tab In an environment account, get the detailed data for an environment account connection\cr
#'  \link[=proton_get_environment_template]{get_environment_template} \tab Get detailed data for an environment template\cr
#'  \link[=proton_get_environment_template_version]{get_environment_template_version} \tab Get detailed data for a major or minor version of an environment template\cr
#'  \link[=proton_get_repository]{get_repository} \tab Get detail data for a repository\cr
#'  \link[=proton_get_repository_sync_status]{get_repository_sync_status} \tab Get the sync status of a repository used for Proton template sync\cr
#'  \link[=proton_get_service]{get_service} \tab Get detailed data for a service\cr
#'  \link[=proton_get_service_instance]{get_service_instance} \tab Get detailed data for a service instance\cr
#'  \link[=proton_get_service_template]{get_service_template} \tab Get detailed data for a service template\cr
#'  \link[=proton_get_service_template_version]{get_service_template_version} \tab Get detailed data for a major or minor version of a service template\cr
#'  \link[=proton_get_template_sync_config]{get_template_sync_config} \tab Get detail data for a template sync configuration\cr
#'  \link[=proton_get_template_sync_status]{get_template_sync_status} \tab Get the status of a template sync\cr
#'  \link[=proton_list_component_outputs]{list_component_outputs} \tab Get a list of component Infrastructure as Code (IaC) outputs\cr
#'  \link[=proton_list_component_provisioned_resources]{list_component_provisioned_resources} \tab List provisioned resources for a component with details\cr
#'  \link[=proton_list_components]{list_components} \tab List components with summary data\cr
#'  \link[=proton_list_environment_account_connections]{list_environment_account_connections} \tab View a list of environment account connections\cr
#'  \link[=proton_list_environment_outputs]{list_environment_outputs} \tab List the infrastructure as code outputs for your environment\cr
#'  \link[=proton_list_environment_provisioned_resources]{list_environment_provisioned_resources} \tab List the provisioned resources for your environment\cr
#'  \link[=proton_list_environments]{list_environments} \tab List environments with detail data summaries\cr
#'  \link[=proton_list_environment_templates]{list_environment_templates} \tab List environment templates\cr
#'  \link[=proton_list_environment_template_versions]{list_environment_template_versions} \tab List major or minor versions of an environment template with detail data\cr
#'  \link[=proton_list_repositories]{list_repositories} \tab List repositories with detail data\cr
#'  \link[=proton_list_repository_sync_definitions]{list_repository_sync_definitions} \tab List repository sync definitions with detail data\cr
#'  \link[=proton_list_service_instance_outputs]{list_service_instance_outputs} \tab Get a list service of instance Infrastructure as Code (IaC) outputs\cr
#'  \link[=proton_list_service_instance_provisioned_resources]{list_service_instance_provisioned_resources} \tab List provisioned resources for a service instance with details\cr
#'  \link[=proton_list_service_instances]{list_service_instances} \tab List service instances with summary data\cr
#'  \link[=proton_list_service_pipeline_outputs]{list_service_pipeline_outputs} \tab Get a list of service pipeline Infrastructure as Code (IaC) outputs\cr
#'  \link[=proton_list_service_pipeline_provisioned_resources]{list_service_pipeline_provisioned_resources} \tab List provisioned resources for a service and pipeline with details\cr
#'  \link[=proton_list_services]{list_services} \tab List services with summaries of detail data\cr
#'  \link[=proton_list_service_templates]{list_service_templates} \tab List service templates with detail data\cr
#'  \link[=proton_list_service_template_versions]{list_service_template_versions} \tab List major or minor versions of a service template with detail data\cr
#'  \link[=proton_list_tags_for_resource]{list_tags_for_resource} \tab List tags for a resource\cr
#'  \link[=proton_notify_resource_deployment_status_change]{notify_resource_deployment_status_change} \tab Notify Proton of status changes to a provisioned resource when you use self-managed provisioning\cr
#'  \link[=proton_reject_environment_account_connection]{reject_environment_account_connection} \tab In a management account, reject an environment account connection from another environment account\cr
#'  \link[=proton_tag_resource]{tag_resource} \tab Tag a resource\cr
#'  \link[=proton_untag_resource]{untag_resource} \tab Remove a customer tag from a resource\cr
#'  \link[=proton_update_account_settings]{update_account_settings} \tab Update the Proton service pipeline role or repository settings\cr
#'  \link[=proton_update_component]{update_component} \tab Update a component\cr
#'  \link[=proton_update_environment]{update_environment} \tab Update an environment\cr
#'  \link[=proton_update_environment_account_connection]{update_environment_account_connection} \tab In an environment account, update an environment account connection to use a new IAM role\cr
#'  \link[=proton_update_environment_template]{update_environment_template} \tab Update an environment template\cr
#'  \link[=proton_update_environment_template_version]{update_environment_template_version} \tab Update a major or minor version of an environment template\cr
#'  \link[=proton_update_service]{update_service} \tab Edit a service description or use a spec to add and delete service instances\cr
#'  \link[=proton_update_service_instance]{update_service_instance} \tab Update a service instance\cr
#'  \link[=proton_update_service_pipeline]{update_service_pipeline} \tab Update the service pipeline\cr
#'  \link[=proton_update_service_template]{update_service_template} \tab Update a service template\cr
#'  \link[=proton_update_service_template_version]{update_service_template_version} \tab Update a major or minor version of a service template\cr
#'  \link[=proton_update_template_sync_config]{update_template_sync_config} \tab Update template sync configuration parameters, except for the templateName and templateType
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname proton
#' @export
proton <- function(config = list()) {
  paws.compute.p2::proton(config)
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
#' -   Consuming Applications – Browse for applications and view
#'     information about them, including source code and readme files. Also
#'     install, configure, and deploy applications of your choosing.
#' 
#'     Publishing Applications – Configure and upload applications to make
#'     them available to other developers, and publish new versions of
#'     applications.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- serverlessapplicationrepository(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- serverlessapplicationrepository()
#' svc$create_application(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=serverlessapplicationrepository_create_application]{create_application} \tab Creates an application, optionally including an AWS SAM file to create the first application version in the same call\cr
#'  \link[=serverlessapplicationrepository_create_application_version]{create_application_version} \tab Creates an application version\cr
#'  \link[=serverlessapplicationrepository_create_cloud_formation_change_set]{create_cloud_formation_change_set} \tab Creates an AWS CloudFormation change set for the given application\cr
#'  \link[=serverlessapplicationrepository_create_cloud_formation_template]{create_cloud_formation_template} \tab Creates an AWS CloudFormation template\cr
#'  \link[=serverlessapplicationrepository_delete_application]{delete_application} \tab Deletes the specified application\cr
#'  \link[=serverlessapplicationrepository_get_application]{get_application} \tab Gets the specified application\cr
#'  \link[=serverlessapplicationrepository_get_application_policy]{get_application_policy} \tab Retrieves the policy for the application\cr
#'  \link[=serverlessapplicationrepository_get_cloud_formation_template]{get_cloud_formation_template} \tab Gets the specified AWS CloudFormation template\cr
#'  \link[=serverlessapplicationrepository_list_application_dependencies]{list_application_dependencies} \tab Retrieves the list of applications nested in the containing application\cr
#'  \link[=serverlessapplicationrepository_list_applications]{list_applications} \tab Lists applications owned by the requester\cr
#'  \link[=serverlessapplicationrepository_list_application_versions]{list_application_versions} \tab Lists versions for the specified application\cr
#'  \link[=serverlessapplicationrepository_put_application_policy]{put_application_policy} \tab Sets the permission policy for an application\cr
#'  \link[=serverlessapplicationrepository_unshare_application]{unshare_application} \tab Unshares an application from an AWS Organization\cr
#'  \link[=serverlessapplicationrepository_update_application]{update_application} \tab Updates the specified application
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname serverlessapplicationrepository
#' @export
serverlessapplicationrepository <- function(config = list()) {
  paws.compute.p2::serverlessapplicationrepository(config)
}
