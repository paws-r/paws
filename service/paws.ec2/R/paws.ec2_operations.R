#' Accepts the Convertible Reserved Instance exchange quote described in the GetReservedInstancesExchangeQuote call
#'
#' Accepts the Convertible Reserved Instance exchange quote described in the GetReservedInstancesExchangeQuote call.
#'
#' @param ReservedInstanceIds The IDs of the Convertible Reserved Instances to exchange for another Convertible Reserved Instance of the same or higher value.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param TargetConfigurations The configuration of the target Convertible Reserved Instance to exchange for your current Convertible Reserved Instances.
#'
#' @examples
#'
#' @export
accept_reserved_instances_exchange_quote <- function (ReservedInstanceIds, 
    DryRun = NULL, TargetConfigurations = NULL) 
{
    op <- Operation(name = "AcceptReservedInstancesExchangeQuote", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- accept_reserved_instances_exchange_quote_input(ReservedInstanceIds = ReservedInstanceIds, 
        DryRun = DryRun, TargetConfigurations = TargetConfigurations)
    output <- accept_reserved_instances_exchange_quote_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Accepts one or more interface VPC endpoint connection requests to your VPC endpoint service
#'
#' Accepts one or more interface VPC endpoint connection requests to your VPC endpoint service.
#'
#' @param ServiceId The ID of the endpoint service.
#' @param VpcEndpointIds The IDs of one or more interface VPC endpoints.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
accept_vpc_endpoint_connections <- function (ServiceId, VpcEndpointIds, 
    DryRun = NULL) 
{
    op <- Operation(name = "AcceptVpcEndpointConnections", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- accept_vpc_endpoint_connections_input(ServiceId = ServiceId, 
        VpcEndpointIds = VpcEndpointIds, DryRun = DryRun)
    output <- accept_vpc_endpoint_connections_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Accept a VPC peering connection request
#'
#' Accept a VPC peering connection request. To accept a request, the VPC peering connection must be in the `pending-acceptance` state, and you must be the owner of the peer VPC. Use DescribeVpcPeeringConnections to view your outstanding VPC peering connection requests.
#' 
#' For an inter-region VPC peering connection request, you must accept the VPC peering connection in the region of the accepter VPC.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param VpcPeeringConnectionId The ID of the VPC peering connection. You must specify this parameter in the request.
#'
#' @examples
#'
#' @export
accept_vpc_peering_connection <- function (DryRun = NULL, VpcPeeringConnectionId = NULL) 
{
    op <- Operation(name = "AcceptVpcPeeringConnection", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- accept_vpc_peering_connection_input(DryRun = DryRun, 
        VpcPeeringConnectionId = VpcPeeringConnectionId)
    output <- accept_vpc_peering_connection_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Allocates an Elastic IP address to your AWS account
#'
#' Allocates an Elastic IP address to your AWS account. After you allocate the Elastic IP address you can associate it with an instance or network interface. After you release an Elastic IP address, it is released to the IP address pool and can be allocated to a different AWS account.
#' 
#' &#91;EC2-VPC&#93; If you release an Elastic IP address, you might be able to recover it. You cannot recover an Elastic IP address that you released after it is allocated to another AWS account. You cannot recover an Elastic IP address for EC2-Classic. To attempt to recover an Elastic IP address that you released, specify it in this operation.
#' 
#' An Elastic IP address is for use either in the EC2-Classic platform or in a VPC. By default, you can allocate 5 Elastic IP addresses for EC2-Classic per region and 5 Elastic IP addresses for EC2-VPC per region.
#' 
#' For more information, see [Elastic IP Addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Domain Set to `vpc` to allocate the address for use with instances in a VPC.
#' 
#' Default: The address is for use with instances in EC2-Classic.
#' @param Address &#91;EC2-VPC&#93; The Elastic IP address to recover.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example allocates an Elastic IP address to use with an instance in
#' # a VPC.
#' allocate_address(
#'   Domain = "vpc"
#' )
#' 
#' # This example allocates an Elastic IP address to use with an instance in
#' # EC2-Classic.
#' allocate_address()
#'
#' @export
allocate_address <- function (Domain = NULL, Address = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "AllocateAddress", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- allocate_address_input(Domain = Domain, Address = Address, 
        DryRun = DryRun)
    output <- allocate_address_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Allocates a Dedicated Host to your account
#'
#' Allocates a Dedicated Host to your account. At a minimum, specify the instance size type, Availability Zone, and quantity of hosts to allocate.
#'
#' @param AvailabilityZone The Availability Zone for the Dedicated Hosts.
#' @param InstanceType Specify the instance type for which to configure your Dedicated Hosts. When you specify the instance type, that is the only instance type that you can launch onto that host.
#' @param Quantity The number of Dedicated Hosts to allocate to your account with these parameters.
#' @param AutoPlacement This is enabled by default. This property allows instances to be automatically placed onto available Dedicated Hosts, when you are launching instances without specifying a host ID.
#' 
#' Default: Enabled
#' @param ClientToken Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' @param TagSpecifications The tags to apply to the Dedicated Host during creation.
#'
#' @examples
#'
#' @export
allocate_hosts <- function (AvailabilityZone, InstanceType, Quantity, 
    AutoPlacement = NULL, ClientToken = NULL, TagSpecifications = NULL) 
{
    op <- Operation(name = "AllocateHosts", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- allocate_hosts_input(AvailabilityZone = AvailabilityZone, 
        InstanceType = InstanceType, Quantity = Quantity, AutoPlacement = AutoPlacement, 
        ClientToken = ClientToken, TagSpecifications = TagSpecifications)
    output <- allocate_hosts_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Assigns one or more IPv6 addresses to the specified network interface
#'
#' Assigns one or more IPv6 addresses to the specified network interface. You can specify one or more specific IPv6 addresses, or you can specify the number of IPv6 addresses to be automatically assigned from within the subnet\'s IPv6 CIDR block range. You can assign as many IPv6 addresses to a network interface as you can assign private IPv4 addresses, and the limit varies per instance type. For information, see [IP Addresses Per Network Interface Per Instance Type](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param NetworkInterfaceId The ID of the network interface.
#' @param Ipv6AddressCount The number of IPv6 addresses to assign to the network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range. You can\'t use this option if specifying specific IPv6 addresses.
#' @param Ipv6Addresses One or more specific IPv6 addresses to be assigned to the network interface. You can\'t use this option if you\'re specifying a number of IPv6 addresses.
#'
#' @examples
#'
#' @export
assign_ipv_6_addresses <- function (NetworkInterfaceId, Ipv6AddressCount = NULL, 
    Ipv6Addresses = NULL) 
{
    op <- Operation(name = "AssignIpv6Addresses", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- assign_ipv_6_addresses_input(NetworkInterfaceId = NetworkInterfaceId, 
        Ipv6AddressCount = Ipv6AddressCount, Ipv6Addresses = Ipv6Addresses)
    output <- assign_ipv_6_addresses_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Assigns one or more secondary private IP addresses to the specified network interface
#'
#' Assigns one or more secondary private IP addresses to the specified network interface. You can specify one or more specific secondary IP addresses, or you can specify the number of secondary IP addresses to be automatically assigned within the subnet\'s CIDR block range. The number of secondary IP addresses that you can assign to an instance varies by instance type. For information about instance types, see [Instance Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the *Amazon Elastic Compute Cloud User Guide*. For more information about Elastic IP addresses, see [Elastic IP Addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' AssignPrivateIpAddresses is available only in EC2-VPC.
#'
#' @param NetworkInterfaceId The ID of the network interface.
#' @param AllowReassignment Indicates whether to allow an IP address that is already assigned to another network interface or instance to be reassigned to the specified network interface.
#' @param PrivateIpAddresses One or more IP addresses to be assigned as a secondary private IP address to the network interface. You can\'t specify this parameter when also specifying a number of secondary IP addresses.
#' 
#' If you don\'t specify an IP address, Amazon EC2 automatically selects an IP address within the subnet range.
#' @param SecondaryPrivateIpAddressCount The number of secondary IP addresses to assign to the network interface. You can\'t specify this parameter when also specifying private IP addresses.
#'
#' @examples
#' # This example assigns the specified secondary private IP address to the
#' # specified network interface.
#' assign_private_ip_addresses(
#'   NetworkInterfaceId = "eni-e5aa89a3",
#'   PrivateIpAddresses = list(
#'     "10.0.0.82"
#'   )
#' )
#' 
#' # This example assigns two secondary private IP addresses to the specified
#' # network interface. Amazon EC2 automatically assigns these IP addresses
#' # from the available IP addresses in the CIDR block range of the subnet
#' # the network interface is associated with.
#' assign_private_ip_addresses(
#'   NetworkInterfaceId = "eni-e5aa89a3",
#'   SecondaryPrivateIpAddressCount = 2L
#' )
#'
#' @export
assign_private_ip_addresses <- function (NetworkInterfaceId, 
    AllowReassignment = NULL, PrivateIpAddresses = NULL, SecondaryPrivateIpAddressCount = NULL) 
{
    op <- Operation(name = "AssignPrivateIpAddresses", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- assign_private_ip_addresses_input(NetworkInterfaceId = NetworkInterfaceId, 
        AllowReassignment = AllowReassignment, PrivateIpAddresses = PrivateIpAddresses, 
        SecondaryPrivateIpAddressCount = SecondaryPrivateIpAddressCount)
    output <- assign_private_ip_addresses_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates an Elastic IP address with an instance or a network interface
#'
#' Associates an Elastic IP address with an instance or a network interface. Before you can use an Elastic IP address, you must allocate it to your account.
#' 
#' An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see [Elastic IP Addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' &#91;EC2-Classic, VPC in an EC2-VPC-only account&#93; If the Elastic IP address is already associated with a different instance, it is disassociated from that instance and associated with the specified instance. If you associate an Elastic IP address with an instance that has an existing Elastic IP address, the existing address is disassociated from the instance, but remains allocated to your account.
#' 
#' &#91;VPC in an EC2-Classic account&#93; If you don\'t specify a private IP address, the Elastic IP address is associated with the primary IP address. If the Elastic IP address is already associated with a different instance or a network interface, you get an error unless you allow reassociation. You cannot associate an Elastic IP address with an instance or network interface that has an existing Elastic IP address.
#' 
#' This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn\'t return an error, and you may be charged for each time the Elastic IP address is remapped to the same instance. For more information, see the *Elastic IP Addresses* section of [Amazon EC2 Pricing](http://aws.amazon.com/ec2/pricing/).
#'
#' @param AllocationId &#91;EC2-VPC&#93; The allocation ID. This is required for EC2-VPC.
#' @param InstanceId The ID of the instance. This is required for EC2-Classic. For EC2-VPC, you can specify either the instance ID or the network interface ID, but not both. The operation fails if you specify an instance ID unless exactly one network interface is attached.
#' @param PublicIp The Elastic IP address. This is required for EC2-Classic.
#' @param AllowReassociation &#91;EC2-VPC&#93; For a VPC in an EC2-Classic account, specify true to allow an Elastic IP address that is already associated with an instance or network interface to be reassociated with the specified instance or network interface. Otherwise, the operation fails. In a VPC in an EC2-VPC-only account, reassociation is automatic, therefore you can specify false to ensure the operation fails if the Elastic IP address is already associated with another resource.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param NetworkInterfaceId &#91;EC2-VPC&#93; The ID of the network interface. If the instance has more than one network interface, you must specify a network interface ID.
#' @param PrivateIpAddress &#91;EC2-VPC&#93; The primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
#'
#' @examples
#' # This example associates the specified Elastic IP address with the
#' # specified instance in a VPC.
#' associate_address(
#'   AllocationId = "eipalloc-64d5890a",
#'   InstanceId = "i-0b263919b6498b123"
#' )
#' 
#' # This example associates the specified Elastic IP address with the
#' # specified network interface.
#' associate_address(
#'   AllocationId = "eipalloc-64d5890a",
#'   NetworkInterfaceId = "eni-1a2b3c4d"
#' )
#' 
#' # This example associates an Elastic IP address with an instance in
#' # EC2-Classic.
#' associate_address(
#'   InstanceId = "i-07ffe74c7330ebf53",
#'   PublicIp = "198.51.100.0"
#' )
#'
#' @export
associate_address <- function (AllocationId = NULL, InstanceId = NULL, 
    PublicIp = NULL, AllowReassociation = NULL, DryRun = NULL, 
    NetworkInterfaceId = NULL, PrivateIpAddress = NULL) 
{
    op <- Operation(name = "AssociateAddress", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_address_input(AllocationId = AllocationId, 
        InstanceId = InstanceId, PublicIp = PublicIp, AllowReassociation = AllowReassociation, 
        DryRun = DryRun, NetworkInterfaceId = NetworkInterfaceId, 
        PrivateIpAddress = PrivateIpAddress)
    output <- associate_address_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates a set of DHCP options (that you\'ve previously created) with the specified VPC, or associates no DHCP options with the VPC
#'
#' Associates a set of DHCP options (that you\'ve previously created) with the specified VPC, or associates no DHCP options with the VPC.
#' 
#' After you associate the options with the VPC, any existing instances and all new instances that you launch in that VPC use the options. You don\'t need to restart or relaunch the instances. They automatically pick up the changes within a few hours, depending on how frequently the instance renews its DHCP lease. You can explicitly renew the lease using the operating system on the instance.
#' 
#' For more information, see [DHCP Options Sets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param DhcpOptionsId The ID of the DHCP options set, or `default` to associate no DHCP options with the VPC.
#' @param VpcId The ID of the VPC.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example associates the specified DHCP options set with the
#' # specified VPC.
#' associate_dhcp_options(
#'   DhcpOptionsId = "dopt-d9070ebb",
#'   VpcId = "vpc-a01106c2"
#' )
#' 
#' # This example associates the default DHCP options set with the specified
#' # VPC.
#' associate_dhcp_options(
#'   DhcpOptionsId = "default",
#'   VpcId = "vpc-a01106c2"
#' )
#'
#' @export
associate_dhcp_options <- function (DhcpOptionsId, VpcId, DryRun = NULL) 
{
    op <- Operation(name = "AssociateDhcpOptions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_dhcp_options_input(DhcpOptionsId = DhcpOptionsId, 
        VpcId = VpcId, DryRun = DryRun)
    output <- associate_dhcp_options_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates an IAM instance profile with a running or stopped instance
#'
#' Associates an IAM instance profile with a running or stopped instance. You cannot associate more than one IAM instance profile with an instance.
#'
#' @param IamInstanceProfile The IAM instance profile.
#' @param InstanceId The ID of the instance.
#'
#' @examples
#' # This example associates an IAM instance profile named admin-role with
#' # the specified instance.
#' associate_iam_instance_profile(
#'   IamInstanceProfile = list(
#'     Name = "admin-role"
#'   ),
#'   InstanceId = "i-123456789abcde123"
#' )
#'
#' @export
associate_iam_instance_profile <- function (IamInstanceProfile, 
    InstanceId) 
{
    op <- Operation(name = "AssociateIamInstanceProfile", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_iam_instance_profile_input(IamInstanceProfile = IamInstanceProfile, 
        InstanceId = InstanceId)
    output <- associate_iam_instance_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates a subnet with a route table
#'
#' Associates a subnet with a route table. The subnet and route table must be in the same VPC. This association causes traffic originating from the subnet to be routed according to the routes in the route table. The action returns an association ID, which you need in order to disassociate the route table from the subnet later. A route table can be associated with multiple subnets.
#' 
#' For more information, see [Route Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param RouteTableId The ID of the route table.
#' @param SubnetId The ID of the subnet.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example associates the specified route table with the specified
#' # subnet.
#' associate_route_table(
#'   RouteTableId = "rtb-22574640",
#'   SubnetId = "subnet-9d4a7b6"
#' )
#'
#' @export
associate_route_table <- function (RouteTableId, SubnetId, DryRun = NULL) 
{
    op <- Operation(name = "AssociateRouteTable", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_route_table_input(RouteTableId = RouteTableId, 
        SubnetId = SubnetId, DryRun = DryRun)
    output <- associate_route_table_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates a CIDR block with your subnet
#'
#' Associates a CIDR block with your subnet. You can only associate a single IPv6 CIDR block with your subnet. An IPv6 CIDR block must have a prefix length of /64.
#'
#' @param Ipv6CidrBlock The IPv6 CIDR block for your subnet. The subnet must have a /64 prefix length.
#' @param SubnetId The ID of your subnet.
#'
#' @examples
#'
#' @export
associate_subnet_cidr_block <- function (Ipv6CidrBlock, SubnetId) 
{
    op <- Operation(name = "AssociateSubnetCidrBlock", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_subnet_cidr_block_input(Ipv6CidrBlock = Ipv6CidrBlock, 
        SubnetId = SubnetId)
    output <- associate_subnet_cidr_block_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Associates a CIDR block with your VPC
#'
#' Associates a CIDR block with your VPC. You can associate a secondary IPv4 CIDR block, or you can associate an Amazon-provided IPv6 CIDR block. The IPv6 CIDR block size is fixed at /56.
#' 
#' For more information about associating CIDR blocks with your VPC and applicable restrictions, see [VPC and Subnet Sizing](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html#VPC_Sizing) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param VpcId The ID of the VPC.
#' @param AmazonProvidedIpv6CidrBlock Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block.
#' @param CidrBlock An IPv4 CIDR block to associate with the VPC.
#'
#' @examples
#'
#' @export
associate_vpc_cidr_block <- function (VpcId, AmazonProvidedIpv6CidrBlock = NULL, 
    CidrBlock = NULL) 
{
    op <- Operation(name = "AssociateVpcCidrBlock", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- associate_vpc_cidr_block_input(VpcId = VpcId, AmazonProvidedIpv6CidrBlock = AmazonProvidedIpv6CidrBlock, 
        CidrBlock = CidrBlock)
    output <- associate_vpc_cidr_block_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Links an EC2-Classic instance to a ClassicLink-enabled VPC through one or more of the VPC\'s security groups
#'
#' Links an EC2-Classic instance to a ClassicLink-enabled VPC through one or more of the VPC\'s security groups. You cannot link an EC2-Classic instance to more than one VPC at a time. You can only link an instance that\'s in the `running` state. An instance is automatically unlinked from a VPC when it\'s stopped - you can link it to the VPC again when you restart it.
#' 
#' After you\'ve linked an instance, you cannot change the VPC security groups that are associated with it. To change the security groups, you must first unlink the instance, and then link it again.
#' 
#' Linking your instance to a VPC is sometimes referred to as *attaching* your instance.
#'
#' @param Groups The ID of one or more of the VPC\'s security groups. You cannot specify security groups from a different VPC.
#' @param InstanceId The ID of an EC2-Classic instance to link to the ClassicLink-enabled VPC.
#' @param VpcId The ID of a ClassicLink-enabled VPC.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
attach_classic_link_vpc <- function (Groups, InstanceId, VpcId, 
    DryRun = NULL) 
{
    op <- Operation(name = "AttachClassicLinkVpc", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- attach_classic_link_vpc_input(Groups = Groups, InstanceId = InstanceId, 
        VpcId = VpcId, DryRun = DryRun)
    output <- attach_classic_link_vpc_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Attaches an internet gateway to a VPC, enabling connectivity between the internet and the VPC
#'
#' Attaches an internet gateway to a VPC, enabling connectivity between the internet and the VPC. For more information about your VPC and internet gateway, see the [Amazon Virtual Private Cloud User Guide](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/).
#'
#' @param InternetGatewayId The ID of the internet gateway.
#' @param VpcId The ID of the VPC.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example attaches the specified Internet gateway to the specified
#' # VPC.
#' attach_internet_gateway(
#'   InternetGatewayId = "igw-c0a643a9",
#'   VpcId = "vpc-a01106c2"
#' )
#'
#' @export
attach_internet_gateway <- function (InternetGatewayId, VpcId, 
    DryRun = NULL) 
{
    op <- Operation(name = "AttachInternetGateway", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- attach_internet_gateway_input(InternetGatewayId = InternetGatewayId, 
        VpcId = VpcId, DryRun = DryRun)
    output <- attach_internet_gateway_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Attaches a network interface to an instance
#'
#' Attaches a network interface to an instance.
#'
#' @param DeviceIndex The index of the device for the network interface attachment.
#' @param InstanceId The ID of the instance.
#' @param NetworkInterfaceId The ID of the network interface.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example attaches the specified network interface to the specified
#' # instance.
#' attach_network_interface(
#'   DeviceIndex = 1L,
#'   InstanceId = "i-1234567890abcdef0",
#'   NetworkInterfaceId = "eni-e5aa89a3"
#' )
#'
#' @export
attach_network_interface <- function (DeviceIndex, InstanceId, 
    NetworkInterfaceId, DryRun = NULL) 
{
    op <- Operation(name = "AttachNetworkInterface", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- attach_network_interface_input(DeviceIndex = DeviceIndex, 
        InstanceId = InstanceId, NetworkInterfaceId = NetworkInterfaceId, 
        DryRun = DryRun)
    output <- attach_network_interface_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Attaches an EBS volume to a running or stopped instance and exposes it to the instance with the specified device name
#'
#' Attaches an EBS volume to a running or stopped instance and exposes it to the instance with the specified device name.
#' 
#' Encrypted EBS volumes may only be attached to instances that support Amazon EBS encryption. For more information, see [Amazon EBS Encryption](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' For a list of supported device names, see [Attaching an EBS Volume to an Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html). Any device names that aren\'t reserved for instance store volumes can be used for EBS volumes. For more information, see [Amazon EC2 Instance Store](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' If a volume has an AWS Marketplace product code:
#' 
#' -   The volume can be attached only to a stopped instance.
#' 
#' -   AWS Marketplace product codes are copied from the volume to the instance.
#' 
#' -   You must be subscribed to the product.
#' 
#' -   The instance type and operating system of the instance must support the product. For example, you can\'t detach a volume from a Windows instance and attach it to a Linux instance.
#' 
#' For more information about EBS volumes, see [Attaching Amazon EBS Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-attaching-volume.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Device The device name (for example, `/dev/sdh` or `xvdh`).
#' @param InstanceId The ID of the instance.
#' @param VolumeId The ID of the EBS volume. The volume and instance must be within the same Availability Zone.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example attaches a volume (``vol-1234567890abcdef0``) to an
#' # instance (``i-01474ef662b89480``) as ``/dev/sdf``.
#' attach_volume(
#'   Device = "/dev/sdf",
#'   InstanceId = "i-01474ef662b89480",
#'   VolumeId = "vol-1234567890abcdef0"
#' )
#'
#' @export
attach_volume <- function (Device, InstanceId, VolumeId, DryRun = NULL) 
{
    op <- Operation(name = "AttachVolume", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- attach_volume_input(Device = Device, InstanceId = InstanceId, 
        VolumeId = VolumeId, DryRun = DryRun)
    output <- attach_volume_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Attaches a virtual private gateway to a VPC
#'
#' Attaches a virtual private gateway to a VPC. You can attach one virtual private gateway to one VPC at a time.
#' 
#' For more information, see [AWS Managed VPN Connections](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param VpcId The ID of the VPC.
#' @param VpnGatewayId The ID of the virtual private gateway.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
attach_vpn_gateway <- function (VpcId, VpnGatewayId, DryRun = NULL) 
{
    op <- Operation(name = "AttachVpnGateway", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- attach_vpn_gateway_input(VpcId = VpcId, VpnGatewayId = VpnGatewayId, 
        DryRun = DryRun)
    output <- attach_vpn_gateway_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' &#91;EC2-VPC only&#93; Adds one or more egress rules to a security group for use with a VPC
#'
#' &#91;EC2-VPC only&#93; Adds one or more egress rules to a security group for use with a VPC. Specifically, this action permits instances to send traffic to one or more destination IPv4 or IPv6 CIDR address ranges, or to one or more destination security groups for the same VPC. This action doesn\'t apply to security groups for use in EC2-Classic. For more information, see [Security Groups for Your VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html) in the *Amazon Virtual Private Cloud User Guide*. For more information about security group limits, see [Amazon VPC Limits](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html).
#' 
#' Each rule consists of the protocol (for example, TCP), plus either a CIDR range or a source group. For the TCP and UDP protocols, you must also specify the destination port or port range. For the ICMP protocol, you must also specify the ICMP type and code. You can use -1 for the type or code to mean all types or all codes. You can optionally specify a description for the rule.
#' 
#' Rule changes are propagated to affected instances as quickly as possible. However, a small delay might occur.
#'
#' @param GroupId The ID of the security group.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param IpPermissions One or more sets of IP permissions. You can\'t specify a destination security group and a CIDR IP address range in the same set of permissions.
#' @param CidrIp Not supported. Use a set of IP permissions to specify the CIDR.
#' @param FromPort Not supported. Use a set of IP permissions to specify the port.
#' @param IpProtocol Not supported. Use a set of IP permissions to specify the protocol name or number.
#' @param ToPort Not supported. Use a set of IP permissions to specify the port.
#' @param SourceSecurityGroupName Not supported. Use a set of IP permissions to specify a destination security group.
#' @param SourceSecurityGroupOwnerId Not supported. Use a set of IP permissions to specify a destination security group.
#'
#' @examples
#' # This example adds a rule that grants access to the specified address
#' # ranges on TCP port 80.
#' authorize_security_group_egress(
#'   GroupId = "sg-1a2b3c4d",
#'   IpPermissions = list(
#'     list(
#'       FromPort = 80L,
#'       IpProtocol = "tcp",
#'       IpRanges = list(
#'         list(
#'           CidrIp = "10.0.0.0/16"
#'         )
#'       ),
#'       ToPort = 80L
#'     )
#'   )
#' )
#' 
#' # This example adds a rule that grants access to the specified security
#' # group on TCP port 80.
#' authorize_security_group_egress(
#'   GroupId = "sg-1a2b3c4d",
#'   IpPermissions = list(
#'     list(
#'       FromPort = 80L,
#'       IpProtocol = "tcp",
#'       ToPort = 80L,
#'       UserIdGroupPairs = list(
#'         list(
#'           GroupId = "sg-4b51a32f"
#'         )
#'       )
#'     )
#'   )
#' )
#'
#' @export
authorize_security_group_egress <- function (GroupId, DryRun = NULL, 
    IpPermissions = NULL, CidrIp = NULL, FromPort = NULL, IpProtocol = NULL, 
    ToPort = NULL, SourceSecurityGroupName = NULL, SourceSecurityGroupOwnerId = NULL) 
{
    op <- Operation(name = "AuthorizeSecurityGroupEgress", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- authorize_security_group_egress_input(GroupId = GroupId, 
        DryRun = DryRun, IpPermissions = IpPermissions, CidrIp = CidrIp, 
        FromPort = FromPort, IpProtocol = IpProtocol, ToPort = ToPort, 
        SourceSecurityGroupName = SourceSecurityGroupName, SourceSecurityGroupOwnerId = SourceSecurityGroupOwnerId)
    output <- authorize_security_group_egress_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds one or more ingress rules to a security group
#'
#' Adds one or more ingress rules to a security group.
#' 
#' Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.
#' 
#' &#91;EC2-Classic&#93; This action gives one or more IPv4 CIDR address ranges permission to access a security group in your account, or gives one or more security groups (called the *source groups*) permission to access a security group for your account. A source group can be for your own AWS account, or another. You can have up to 100 rules per group.
#' 
#' &#91;EC2-VPC&#93; This action gives one or more IPv4 or IPv6 CIDR address ranges permission to access a security group in your VPC, or gives one or more other security groups (called the *source groups*) permission to access a security group for your VPC. The security groups must all be for the same VPC or a peer VPC in a VPC peering connection. For more information about VPC security group limits, see [Amazon VPC Limits](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Appendix_Limits.html).
#' 
#' You can optionally specify a description for the security group rule.
#'
#' @param CidrIp The CIDR IPv4 address range. You can\'t specify this parameter when specifying a source security group.
#' @param FromPort The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type number. For the ICMP/ICMPv6 type number, use `-1` to specify all types. If you specify all ICMP/ICMPv6 types, you must specify all codes.
#' @param GroupId The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.
#' @param GroupName &#91;EC2-Classic, default VPC&#93; The name of the security group. You must specify either the security group ID or the security group name in the request.
#' @param IpPermissions One or more sets of IP permissions. Can be used to specify multiple rules in a single command.
#' @param IpProtocol The IP protocol name (`tcp`, `udp`, `icmp`) or number (see [Protocol Numbers](http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)). (VPC only) Use `-1` to specify all protocols. If you specify `-1`, or a protocol number other than `tcp`, `udp`, `icmp`, or `58` (ICMPv6), traffic on all ports is allowed, regardless of any ports you specify. For `tcp`, `udp`, and `icmp`, you must specify a port range. For protocol `58` (ICMPv6), you can optionally specify a port range; if you don\'t, traffic for all types and codes is allowed.
#' @param SourceSecurityGroupName &#91;EC2-Classic, default VPC&#93; The name of the source security group. You can\'t specify this parameter in combination with the following parameters: the CIDR IP address range, the start of the port range, the IP protocol, and the end of the port range. Creates rules that grant full ICMP, UDP, and TCP access. To create a rule with a specific IP protocol and port range, use a set of IP permissions instead. For EC2-VPC, the source security group must be in the same VPC.
#' @param SourceSecurityGroupOwnerId &#91;EC2-Classic&#93; The AWS account ID for the source security group, if the source security group is in a different account. You can\'t specify this parameter in combination with the following parameters: the CIDR IP address range, the IP protocol, the start of the port range, and the end of the port range. Creates rules that grant full ICMP, UDP, and TCP access. To create a rule with a specific IP protocol and port range, use a set of IP permissions instead.
#' @param ToPort The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code number. For the ICMP/ICMPv6 code number, use `-1` to specify all codes. If you specify all ICMP/ICMPv6 types, you must specify all codes.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example enables inbound traffic on TCP port 22 (SSH). The rule
#' # includes a description to help you identify it later.
#' authorize_security_group_ingress(
#'   GroupId = "sg-903004f8",
#'   IpPermissions = list(
#'     list(
#'       FromPort = 22L,
#'       IpProtocol = "tcp",
#'       IpRanges = list(
#'         list(
#'           CidrIp = "203.0.113.0/24",
#'           Description = "SSH access from the LA office"
#'         )
#'       ),
#'       ToPort = 22L
#'     )
#'   )
#' )
#' 
#' # This example enables inbound traffic on TCP port 80 from the specified
#' # security group. The group must be in the same VPC or a peer VPC.
#' # Incoming traffic is allowed based on the private IP addresses of
#' # instances that are associated with the specified security group.
#' authorize_security_group_ingress(
#'   GroupId = "sg-111aaa22",
#'   IpPermissions = list(
#'     list(
#'       FromPort = 80L,
#'       IpProtocol = "tcp",
#'       ToPort = 80L,
#'       UserIdGroupPairs = list(
#'         list(
#'           Description = "HTTP access from other instances",
#'           GroupId = "sg-1a2b3c4d"
#'         )
#'       )
#'     )
#'   )
#' )
#' 
#' # This example adds an inbound rule that allows RDP traffic from the
#' # specified IPv6 address range. The rule includes a description to help
#' # you identify it later.
#' authorize_security_group_ingress(
#'   GroupId = "sg-123abc12 ",
#'   IpPermissions = list(
#'     list(
#'       FromPort = 3389L,
#'       IpProtocol = "tcp",
#'       Ipv6Ranges = list(
#'         list(
#'           CidrIpv6 = "2001:db8:1234:1a00::/64",
#'           Description = "RDP access from the NY office"
#'         )
#'       ),
#'       ToPort = 3389L
#'     )
#'   )
#' )
#'
#' @export
authorize_security_group_ingress <- function (CidrIp = NULL, 
    FromPort = NULL, GroupId = NULL, GroupName = NULL, IpPermissions = NULL, 
    IpProtocol = NULL, SourceSecurityGroupName = NULL, SourceSecurityGroupOwnerId = NULL, 
    ToPort = NULL, DryRun = NULL) 
{
    op <- Operation(name = "AuthorizeSecurityGroupIngress", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- authorize_security_group_ingress_input(CidrIp = CidrIp, 
        FromPort = FromPort, GroupId = GroupId, GroupName = GroupName, 
        IpPermissions = IpPermissions, IpProtocol = IpProtocol, 
        SourceSecurityGroupName = SourceSecurityGroupName, SourceSecurityGroupOwnerId = SourceSecurityGroupOwnerId, 
        ToPort = ToPort, DryRun = DryRun)
    output <- authorize_security_group_ingress_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Bundles an Amazon instance store-backed Windows instance
#'
#' Bundles an Amazon instance store-backed Windows instance.
#' 
#' During bundling, only the root device volume (C:\\) is bundled. Data on other instance store volumes is not preserved.
#' 
#' This action is not applicable for Linux/Unix instances or Windows instances that are backed by Amazon EBS.
#'
#' @param InstanceId The ID of the instance to bundle.
#' 
#' Type: String
#' 
#' Default: None
#' 
#' Required: Yes
#' @param Storage The bucket in which to store the AMI. You can specify a bucket that you already own or a new bucket that Amazon EC2 creates on your behalf. If you specify a bucket that belongs to someone else, Amazon EC2 returns an error.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
bundle_instance <- function (InstanceId, Storage, DryRun = NULL) 
{
    op <- Operation(name = "BundleInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- bundle_instance_input(InstanceId = InstanceId, Storage = Storage, 
        DryRun = DryRun)
    output <- bundle_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Cancels a bundling operation for an instance store-backed Windows instance
#'
#' Cancels a bundling operation for an instance store-backed Windows instance.
#'
#' @param BundleId The ID of the bundle task.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
cancel_bundle_task <- function (BundleId, DryRun = NULL) 
{
    op <- Operation(name = "CancelBundleTask", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- cancel_bundle_task_input(BundleId = BundleId, DryRun = DryRun)
    output <- cancel_bundle_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Cancels an active conversion task
#'
#' Cancels an active conversion task. The task can be the import of an instance or volume. The action removes all artifacts of the conversion, including a partially uploaded volume or instance. If the conversion is complete or is in the process of transferring the final disk image, the command fails and returns an exception.
#' 
#' For more information, see [Importing a Virtual Machine Using the Amazon EC2 CLI](http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html).
#'
#' @param ConversionTaskId The ID of the conversion task.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param ReasonMessage The reason for canceling the conversion task.
#'
#' @examples
#'
#' @export
cancel_conversion_task <- function (ConversionTaskId, DryRun = NULL, 
    ReasonMessage = NULL) 
{
    op <- Operation(name = "CancelConversionTask", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- cancel_conversion_task_input(ConversionTaskId = ConversionTaskId, 
        DryRun = DryRun, ReasonMessage = ReasonMessage)
    output <- cancel_conversion_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Cancels an active export task
#'
#' Cancels an active export task. The request removes all artifacts of the export, including any partially-created Amazon S3 objects. If the export task is complete or is in the process of transferring the final disk image, the command fails and returns an error.
#'
#' @param ExportTaskId The ID of the export task. This is the ID returned by `CreateInstanceExportTask`.
#'
#' @examples
#'
#' @export
cancel_export_task <- function (ExportTaskId) 
{
    op <- Operation(name = "CancelExportTask", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- cancel_export_task_input(ExportTaskId = ExportTaskId)
    output <- cancel_export_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Cancels an in-process import virtual machine or import snapshot task
#'
#' Cancels an in-process import virtual machine or import snapshot task.
#'
#' @param CancelReason The reason for canceling the task.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param ImportTaskId The ID of the import image or import snapshot task to be canceled.
#'
#' @examples
#'
#' @export
cancel_import_task <- function (CancelReason = NULL, DryRun = NULL, 
    ImportTaskId = NULL) 
{
    op <- Operation(name = "CancelImportTask", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- cancel_import_task_input(CancelReason = CancelReason, 
        DryRun = DryRun, ImportTaskId = ImportTaskId)
    output <- cancel_import_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Cancels the specified Reserved Instance listing in the Reserved Instance Marketplace
#'
#' Cancels the specified Reserved Instance listing in the Reserved Instance Marketplace.
#' 
#' For more information, see [Reserved Instance Marketplace](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param ReservedInstancesListingId The ID of the Reserved Instance listing.
#'
#' @examples
#'
#' @export
cancel_reserved_instances_listing <- function (ReservedInstancesListingId) 
{
    op <- Operation(name = "CancelReservedInstancesListing", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- cancel_reserved_instances_listing_input(ReservedInstancesListingId = ReservedInstancesListingId)
    output <- cancel_reserved_instances_listing_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Cancels the specified Spot Fleet requests
#'
#' Cancels the specified Spot Fleet requests.
#' 
#' After you cancel a Spot Fleet request, the Spot Fleet launches no new Spot Instances. You must specify whether the Spot Fleet should also terminate its Spot Instances. If you terminate the instances, the Spot Fleet request enters the `cancelled_terminating` state. Otherwise, the Spot Fleet request enters the `cancelled_running` state and the instances continue to run until they are interrupted or you terminate them manually.
#'
#' @param SpotFleetRequestIds The IDs of the Spot Fleet requests.
#' @param TerminateInstances Indicates whether to terminate instances for a Spot Fleet request if it is canceled successfully.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example cancels the specified Spot fleet request and terminates its
#' # associated Spot Instances.
#' cancel_spot_fleet_requests(
#'   SpotFleetRequestIds = list(
#'     "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
#'   ),
#'   TerminateInstances = TRUE
#' )
#' 
#' # This example cancels the specified Spot fleet request without
#' # terminating its associated Spot Instances.
#' cancel_spot_fleet_requests(
#'   SpotFleetRequestIds = list(
#'     "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
#'   ),
#'   TerminateInstances = FALSE
#' )
#'
#' @export
cancel_spot_fleet_requests <- function (SpotFleetRequestIds, 
    TerminateInstances, DryRun = NULL) 
{
    op <- Operation(name = "CancelSpotFleetRequests", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- cancel_spot_fleet_requests_input(SpotFleetRequestIds = SpotFleetRequestIds, 
        TerminateInstances = TerminateInstances, DryRun = DryRun)
    output <- cancel_spot_fleet_requests_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Cancels one or more Spot Instance requests
#'
#' Cancels one or more Spot Instance requests.
#' 
#' Canceling a Spot Instance request does not terminate running Spot Instances associated with the request.
#'
#' @param SpotInstanceRequestIds One or more Spot Instance request IDs.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example cancels a Spot Instance request.
#' cancel_spot_instance_requests(
#'   SpotInstanceRequestIds = list(
#'     "sir-08b93456"
#'   )
#' )
#'
#' @export
cancel_spot_instance_requests <- function (SpotInstanceRequestIds, 
    DryRun = NULL) 
{
    op <- Operation(name = "CancelSpotInstanceRequests", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- cancel_spot_instance_requests_input(SpotInstanceRequestIds = SpotInstanceRequestIds, 
        DryRun = DryRun)
    output <- cancel_spot_instance_requests_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Determines whether a product code is associated with an instance
#'
#' Determines whether a product code is associated with an instance. This action can only be used by the owner of the product code. It is useful when a product code owner must verify whether another user\'s instance is eligible for support.
#'
#' @param InstanceId The ID of the instance.
#' @param ProductCode The product code. This must be a product code that you own.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example determines whether the specified product code is associated
#' # with the specified instance.
#' confirm_product_instance(
#'   InstanceId = "i-1234567890abcdef0",
#'   ProductCode = "774F4FF8"
#' )
#'
#' @export
confirm_product_instance <- function (InstanceId, ProductCode, 
    DryRun = NULL) 
{
    op <- Operation(name = "ConfirmProductInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- confirm_product_instance_input(InstanceId = InstanceId, 
        ProductCode = ProductCode, DryRun = DryRun)
    output <- confirm_product_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Copies the specified Amazon FPGA Image (AFI) to the current region
#'
#' Copies the specified Amazon FPGA Image (AFI) to the current region.
#'
#' @param SourceFpgaImageId The ID of the source AFI.
#' @param SourceRegion The region that contains the source AFI.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Description The description for the new AFI.
#' @param Name The name for the new AFI. The default is the name of the source AFI.
#' @param ClientToken Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
#'
#' @examples
#'
#' @export
copy_fpga_image <- function (SourceFpgaImageId, SourceRegion, 
    DryRun = NULL, Description = NULL, Name = NULL, ClientToken = NULL) 
{
    op <- Operation(name = "CopyFpgaImage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- copy_fpga_image_input(SourceFpgaImageId = SourceFpgaImageId, 
        SourceRegion = SourceRegion, DryRun = DryRun, Description = Description, 
        Name = Name, ClientToken = ClientToken)
    output <- copy_fpga_image_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Initiates the copy of an AMI from the specified source region to the current region
#'
#' Initiates the copy of an AMI from the specified source region to the current region. You specify the destination region by using its endpoint when making the request.
#' 
#' Copies of encrypted backing snapshots for the AMI are encrypted. Copies of unencrypted backing snapshots remain unencrypted, unless you set `Encrypted` during the copy operation. You cannot create an unencrypted copy of an encrypted backing snapshot.
#' 
#' For more information about the prerequisites and limits when copying an AMI, see [Copying an AMI](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/CopyingAMIs.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Name The name of the new AMI in the destination region.
#' @param SourceImageId The ID of the AMI to copy.
#' @param SourceRegion The name of the region that contains the AMI to copy.
#' @param ClientToken Unique, case-sensitive identifier you provide to ensure idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' @param Description A description for the new AMI in the destination region.
#' @param Encrypted Specifies whether the destination snapshots of the copied image should be encrypted. You can encrypt a copy of an unencrypted snapshot, but you cannot create an unencrypted copy of an encrypted snapshot. The default CMK for EBS is used unless you specify a non-default AWS Key Management Service (AWS KMS) CMK using `KmsKeyId`. For more information, see [Amazon EBS Encryption](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' @param KmsKeyId An identifier for the AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating the encrypted volume. This parameter is only required if you want to use a non-default CMK; if this parameter is not specified, the default CMK for EBS is used. If a `KmsKeyId` is specified, the `Encrypted` flag must also be set.
#' 
#' The CMK identifier may be provided in any of the following formats:
#' 
#' -   Key ID
#' 
#' -   Key alias, in the form `alias/ExampleAlias ExampleAlias `
#' 
#' -   ARN using key ID. The ID ARN contains the `arn:aws:kms` namespace, followed by the region of the CMK, the AWS account ID of the CMK owner, the `key` namespace, and then the CMK ID. For example, arn:aws:kms:*us-east-1*:*012345678910*:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.
#' 
#' -   ARN using key alias. The alias ARN contains the `arn:aws:kms` namespace, followed by the region of the CMK, the AWS account ID of the CMK owner, the `alias` namespace, and then the CMK alias. For example, arn:aws:kms:*us-east-1*:*012345678910*:alias/*ExampleAlias*.
#' 
#' AWS parses `KmsKeyId` asynchronously, meaning that the action you call may appear to complete even though you provided an invalid identifier. This action will eventually report failure.
#' 
#' The specified CMK must exist in the region that the snapshot is being copied to.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example copies the specified AMI from the us-east-1 region to the
#' # current region.
#' copy_image(
#'   Description = "",
#'   Name = "My server",
#'   SourceImageId = "ami-5731123e",
#'   SourceRegion = "us-east-1"
#' )
#'
#' @export
copy_image <- function (Name, SourceImageId, SourceRegion, ClientToken = NULL, 
    Description = NULL, Encrypted = NULL, KmsKeyId = NULL, DryRun = NULL) 
{
    op <- Operation(name = "CopyImage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- copy_image_input(Name = Name, SourceImageId = SourceImageId, 
        SourceRegion = SourceRegion, ClientToken = ClientToken, 
        Description = Description, Encrypted = Encrypted, KmsKeyId = KmsKeyId, 
        DryRun = DryRun)
    output <- copy_image_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Copies a point-in-time snapshot of an EBS volume and stores it in Amazon S3
#'
#' Copies a point-in-time snapshot of an EBS volume and stores it in Amazon S3. You can copy the snapshot within the same region or from one region to another. You can use the snapshot to create EBS volumes or Amazon Machine Images (AMIs). The snapshot is copied to the regional endpoint that you send the HTTP request to.
#' 
#' Copies of encrypted EBS snapshots remain encrypted. Copies of unencrypted snapshots remain unencrypted, unless the `Encrypted` flag is specified during the snapshot copy operation. By default, encrypted snapshot copies use the default AWS Key Management Service (AWS KMS) customer master key (CMK); however, you can specify a non-default CMK with the `KmsKeyId` parameter.
#' 
#' To copy an encrypted snapshot that has been shared from another account, you must have permissions for the CMK used to encrypt the snapshot.
#' 
#' Snapshots created by copying another snapshot have an arbitrary volume ID that should not be used for any purpose.
#' 
#' For more information, see [Copying an Amazon EBS Snapshot](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-copy-snapshot.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param SourceRegion The ID of the region that contains the snapshot to be copied.
#' @param SourceSnapshotId The ID of the EBS snapshot to copy.
#' @param Description A description for the EBS snapshot.
#' @param DestinationRegion The destination region to use in the `PresignedUrl` parameter of a snapshot copy operation. This parameter is only valid for specifying the destination region in a `PresignedUrl` parameter, where it is required.
#' 
#' The snapshot copy is sent to the regional endpoint that you sent the HTTP request to (for example, `ec2.us-east-1.amazonaws.com`). With the AWS CLI, this is specified using the `--region` parameter or the default region in your AWS configuration file.
#' @param Encrypted Specifies whether the destination snapshot should be encrypted. You can encrypt a copy of an unencrypted snapshot, but you cannot use it to create an unencrypted copy of an encrypted snapshot. Your default CMK for EBS is used unless you specify a non-default AWS Key Management Service (AWS KMS) CMK using `KmsKeyId`. For more information, see [Amazon EBS Encryption](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' @param KmsKeyId An identifier for the AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating the encrypted volume. This parameter is only required if you want to use a non-default CMK; if this parameter is not specified, the default CMK for EBS is used. If a `KmsKeyId` is specified, the `Encrypted` flag must also be set.
#' 
#' The CMK identifier may be provided in any of the following formats:
#' 
#' -   Key ID
#' 
#' -   Key alias
#' 
#' -   ARN using key ID. The ID ARN contains the `arn:aws:kms` namespace, followed by the region of the CMK, the AWS account ID of the CMK owner, the `key` namespace, and then the CMK ID. For example, arn:aws:kms:*us-east-1*:*012345678910*:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.
#' 
#' -   ARN using key alias. The alias ARN contains the `arn:aws:kms` namespace, followed by the region of the CMK, the AWS account ID of the CMK owner, the `alias` namespace, and then the CMK alias. For example, arn:aws:kms:*us-east-1*:*012345678910*:alias/*ExampleAlias*.
#' 
#' AWS parses `KmsKeyId` asynchronously, meaning that the action you call may appear to complete even though you provided an invalid identifier. The action will eventually fail.
#' @param PresignedUrl When you copy an encrypted source snapshot using the Amazon EC2 Query API, you must supply a pre-signed URL. This parameter is optional for unencrypted snapshots. For more information, see [Query Requests](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html).
#' 
#' The `PresignedUrl` should use the snapshot source endpoint, the `CopySnapshot` action, and include the `SourceRegion`, `SourceSnapshotId`, and `DestinationRegion` parameters. The `PresignedUrl` must be signed using AWS Signature Version 4. Because EBS snapshots are stored in Amazon S3, the signing algorithm for this parameter uses the same logic that is described in [Authenticating Requests by Using Query Parameters (AWS Signature Version 4)](http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html) in the *Amazon Simple Storage Service API Reference*. An invalid or improperly signed `PresignedUrl` will cause the copy operation to fail asynchronously, and the snapshot will move to an `error` state.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example copies a snapshot with the snapshot ID of
#' # ``snap-066877671789bd71b`` from the ``us-west-2`` region to the
#' # ``us-east-1`` region and adds a short description to identify the
#' # snapshot.
#' copy_snapshot(
#'   Description = "This is my copied snapshot.",
#'   DestinationRegion = "us-east-1",
#'   SourceRegion = "us-west-2",
#'   SourceSnapshotId = "snap-066877671789bd71b"
#' )
#'
#' @export
copy_snapshot <- function (SourceRegion, SourceSnapshotId, Description = NULL, 
    DestinationRegion = NULL, Encrypted = NULL, KmsKeyId = NULL, 
    PresignedUrl = NULL, DryRun = NULL) 
{
    op <- Operation(name = "CopySnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- copy_snapshot_input(SourceRegion = SourceRegion, 
        SourceSnapshotId = SourceSnapshotId, Description = Description, 
        DestinationRegion = DestinationRegion, Encrypted = Encrypted, 
        KmsKeyId = KmsKeyId, PresignedUrl = PresignedUrl, DryRun = DryRun)
    output <- copy_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Provides information to AWS about your VPN customer gateway device
#'
#' Provides information to AWS about your VPN customer gateway device. The customer gateway is the appliance at your end of the VPN connection. (The device on the AWS side of the VPN connection is the virtual private gateway.) You must provide the Internet-routable IP address of the customer gateway\'s external interface. The IP address must be static and may be behind a device performing network address translation (NAT).
#' 
#' For devices that use Border Gateway Protocol (BGP), you can also provide the device\'s BGP Autonomous System Number (ASN). You can use an existing ASN assigned to your network. If you don\'t have an ASN already, you can use a private ASN (in the 64512 - 65534 range).
#' 
#' Amazon EC2 supports all 2-byte ASN numbers in the range of 1 - 65534, with the exception of 7224, which is reserved in the `us-east-1` region, and 9059, which is reserved in the `eu-west-1` region.
#' 
#' For more information about VPN customer gateways, see [AWS Managed VPN Connections](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in the *Amazon Virtual Private Cloud User Guide*.
#' 
#' You cannot create more than one customer gateway with the same VPN type, IP address, and BGP ASN parameter values. If you run an identical request more than one time, the first request creates the customer gateway, and subsequent requests return information about the existing customer gateway. The subsequent requests do not create new customer gateway resources.
#'
#' @param BgpAsn For devices that support BGP, the customer gateway\'s BGP ASN.
#' 
#' Default: 65000
#' @param PublicIp The Internet-routable IP address for the customer gateway\'s outside interface. The address must be static.
#' @param Type The type of VPN connection that this customer gateway supports (`ipsec.1`).
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example creates a customer gateway with the specified IP address
#' # for its outside interface.
#' create_customer_gateway(
#'   BgpAsn = 65534L,
#'   PublicIp = "12.1.2.3",
#'   Type = "ipsec.1"
#' )
#'
#' @export
create_customer_gateway <- function (BgpAsn, PublicIp, Type, 
    DryRun = NULL) 
{
    op <- Operation(name = "CreateCustomerGateway", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_customer_gateway_input(BgpAsn = BgpAsn, PublicIp = PublicIp, 
        Type = Type, DryRun = DryRun)
    output <- create_customer_gateway_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a default subnet with a size `/20` IPv4 CIDR block in the specified Availability Zone in your default VPC
#'
#' Creates a default subnet with a size `/20` IPv4 CIDR block in the specified Availability Zone in your default VPC. You can have only one default subnet per Availability Zone. For more information, see [Creating a Default Subnet](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/default-vpc.html#create-default-subnet) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param AvailabilityZone The Availability Zone in which to create the default subnet.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
create_default_subnet <- function (AvailabilityZone, DryRun = NULL) 
{
    op <- Operation(name = "CreateDefaultSubnet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_default_subnet_input(AvailabilityZone = AvailabilityZone, 
        DryRun = DryRun)
    output <- create_default_subnet_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a default VPC with a size `/16` IPv4 CIDR block and a default subnet in each Availability Zone
#'
#' Creates a default VPC with a size `/16` IPv4 CIDR block and a default subnet in each Availability Zone. For more information about the components of a default VPC, see [Default VPC and Default Subnets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/default-vpc.html) in the *Amazon Virtual Private Cloud User Guide*. You cannot specify the components of the default VPC yourself.
#' 
#' If you deleted your previous default VPC, you can create a default VPC. You cannot have more than one default VPC per Region.
#' 
#' If your account supports EC2-Classic, you cannot use this action to create a default VPC in a Region that supports EC2-Classic. If you want a default VPC in a Region that supports EC2-Classic, see \"I really want a default VPC for my existing EC2 account. Is that possible?\" in the [Default VPCs FAQ](http://aws.amazon.com/vpc/faqs/#Default_VPCs).
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
create_default_vpc <- function (DryRun = NULL) 
{
    op <- Operation(name = "CreateDefaultVpc", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_default_vpc_input(DryRun = DryRun)
    output <- create_default_vpc_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a set of DHCP options for your VPC
#'
#' Creates a set of DHCP options for your VPC. After creating the set, you must associate it with the VPC, causing all existing and new instances that you launch in the VPC to use this set of DHCP options. The following are the individual DHCP options you can specify. For more information about the options, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
#' 
#' -   `domain-name-servers` - The IP addresses of up to four domain name servers, or AmazonProvidedDNS. The default DHCP option set specifies AmazonProvidedDNS. If specifying more than one domain name server, specify the IP addresses in a single parameter, separated by commas. ITo have your instance to receive a custom DNS hostname as specified in `domain-name`, you must set `domain-name-servers` to a custom DNS server.
#' 
#' -   `domain-name` - If you\'re using AmazonProvidedDNS in `us-east-1`, specify `ec2.internal`. If you\'re using AmazonProvidedDNS in another region, specify `region.compute.internal` (for example, `ap-northeast-1.compute.internal`). Otherwise, specify a domain name (for example, `MyCompany.com`). This value is used to complete unqualified DNS hostnames. **Important**: Some Linux operating systems accept multiple domain names separated by spaces. However, Windows and other Linux operating systems treat the value as a single domain, which results in unexpected behavior. If your DHCP options set is associated with a VPC that has instances with multiple operating systems, specify only one domain name.
#' 
#' -   `ntp-servers` - The IP addresses of up to four Network Time Protocol (NTP) servers.
#' 
#' -   `netbios-name-servers` - The IP addresses of up to four NetBIOS name servers.
#' 
#' -   `netbios-node-type` - The NetBIOS node type (1, 2, 4, or 8). We recommend that you specify 2 (broadcast and multicast are not currently supported). For more information about these node types, see [RFC 2132](http://www.ietf.org/rfc/rfc2132.txt).
#' 
#' Your VPC automatically starts out with a set of DHCP options that includes only a DNS server that we provide (AmazonProvidedDNS). If you create a set of options, and if your VPC has an internet gateway, make sure to set the `domain-name-servers` option either to `AmazonProvidedDNS` or to a domain name server of your choice. For more information, see [DHCP Options Sets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param DhcpConfigurations A DHCP configuration option.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example creates a DHCP options set.
#' create_dhcp_options(
#'   DhcpConfigurations = list(
#'     list(
#'       Key = "domain-name-servers",
#'       Values = list(
#'         "10.2.5.1",
#'         "10.2.5.2"
#'       )
#'     )
#'   )
#' )
#'
#' @export
create_dhcp_options <- function (DhcpConfigurations, DryRun = NULL) 
{
    op <- Operation(name = "CreateDhcpOptions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_dhcp_options_input(DhcpConfigurations = DhcpConfigurations, 
        DryRun = DryRun)
    output <- create_dhcp_options_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' &#91;IPv6 only&#93; Creates an egress-only internet gateway for your VPC
#'
#' &#91;IPv6 only&#93; Creates an egress-only internet gateway for your VPC. An egress-only internet gateway is used to enable outbound communication over IPv6 from instances in your VPC to the internet, and prevents hosts outside of your VPC from initiating an IPv6 connection with your instance.
#'
#' @param VpcId The ID of the VPC for which to create the egress-only internet gateway.
#' @param ClientToken Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
create_egress_only_internet_gateway <- function (VpcId, ClientToken = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "CreateEgressOnlyInternetGateway", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- create_egress_only_internet_gateway_input(VpcId = VpcId, 
        ClientToken = ClientToken, DryRun = DryRun)
    output <- create_egress_only_internet_gateway_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Launches an EC2 Fleet
#'
#' Launches an EC2 Fleet.
#' 
#' You can create a single EC2 Fleet that includes multiple launch specifications that vary by instance type, AMI, Availability Zone, or subnet.
#' 
#' For more information, see [Launching an EC2 Fleet](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param LaunchTemplateConfigs The configuration for the EC2 Fleet.
#' @param TargetCapacitySpecification The `TotalTargetCapacity`, `OnDemandTargetCapacity`, `SpotTargetCapacity`, and `DefaultCapacityType` structure.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param ClientToken Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
#' @param SpotOptions Describes the configuration of Spot Instances in an EC2 Fleet.
#' @param OnDemandOptions The allocation strategy of On-Demand Instances in an EC2 Fleet.
#' @param ExcessCapacityTerminationPolicy Indicates whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2 Fleet.
#' @param TerminateInstancesWithExpiration Indicates whether running instances should be terminated when the EC2 Fleet expires.
#' @param Type The type of request. Indicates whether the EC2 Fleet only `requests` the target capacity, or also attempts to `maintain` it. If you request a certain target capacity, EC2 Fleet only places the required requests. It does not attempt to replenish instances if capacity is diminished, and does not submit requests in alternative capacity pools if capacity is unavailable. To maintain a certain target capacity, EC2 Fleet places the required requests to meet this target capacity. It also automatically replenishes any interrupted Spot Instances. Default: `maintain`.
#' @param ValidFrom The start date and time of the request, in UTC format (for example, *YYYY*-*MM*-*DD*T*HH*:*MM*:*SS*Z). The default is to start fulfilling the request immediately.
#' @param ValidUntil The end date and time of the request, in UTC format (for example, *YYYY*-*MM*-*DD*T*HH*:*MM*:*SS*Z). At this point, no new EC2 Fleet requests are placed or able to fulfill the request. The default end date is 7 days from the current date.
#' @param ReplaceUnhealthyInstances Indicates whether EC2 Fleet should replace unhealthy instances.
#' @param TagSpecifications The key-value pair for tagging the EC2 Fleet request on creation. The value for `ResourceType` must be `fleet`, otherwise the fleet request fails. To tag instances at launch, specify the tags in the [launch template](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#create-launch-template). For information about tagging after launch, see [Tagging Your Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-resources).
#'
#' @examples
#'
#' @export
create_fleet <- function (LaunchTemplateConfigs, TargetCapacitySpecification, 
    DryRun = NULL, ClientToken = NULL, SpotOptions = NULL, OnDemandOptions = NULL, 
    ExcessCapacityTerminationPolicy = NULL, TerminateInstancesWithExpiration = NULL, 
    Type = NULL, ValidFrom = NULL, ValidUntil = NULL, ReplaceUnhealthyInstances = NULL, 
    TagSpecifications = NULL) 
{
    op <- Operation(name = "CreateFleet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_fleet_input(LaunchTemplateConfigs = LaunchTemplateConfigs, 
        TargetCapacitySpecification = TargetCapacitySpecification, 
        DryRun = DryRun, ClientToken = ClientToken, SpotOptions = SpotOptions, 
        OnDemandOptions = OnDemandOptions, ExcessCapacityTerminationPolicy = ExcessCapacityTerminationPolicy, 
        TerminateInstancesWithExpiration = TerminateInstancesWithExpiration, 
        Type = Type, ValidFrom = ValidFrom, ValidUntil = ValidUntil, 
        ReplaceUnhealthyInstances = ReplaceUnhealthyInstances, 
        TagSpecifications = TagSpecifications)
    output <- create_fleet_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates one or more flow logs to capture information about IP traffic for a specific network interface, subnet, or VPC
#'
#' Creates one or more flow logs to capture information about IP traffic for a specific network interface, subnet, or VPC.
#' 
#' Flow log data for a monitored network interface is recorded as flow log records, which are log events consisting of fields that describe the traffic flow. For more information, see [Flow Log Records](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/flow-logs.html#flow-log-records) in the *Amazon Virtual Private Cloud User Guide*.
#' 
#' When publishing to CloudWatch Logs, flow log records are published to a log group, and each network interface has a unique log stream in the log group. When publishing to Amazon S3, flow log records for all of the monitored network interfaces are published to a single log file object that is stored in the specified bucket.
#' 
#' For more information, see [VPC Flow Logs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/flow-logs.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param ResourceIds One or more subnet, network interface, or VPC IDs.
#' 
#' Constraints: Maximum of 1000 resources
#' @param ResourceType The type of resource on which to create the flow log.
#' @param TrafficType The type of traffic to log.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param ClientToken Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
#' @param DeliverLogsPermissionArn The ARN for the IAM role that\'s used to post flow logs to a log group.
#' @param LogGroupName The name of the log group.
#' @param LogDestinationType Specifies the type of destination to which the flow log data is to be published. Flow log data can be published to CloudWatch Logs or Amazon S3. To publish flow log data to CloudWatch Logs, specify `cloud-watch-logs`. To publish flow log data to Amazon S3, specify `s3`.
#' 
#' Default: `cloud-watch-logs`
#' @param LogDestination Specifies the destination to which the flow log data is to be published. Flow log data can be published to an CloudWatch Logs log group or an Amazon S3 bucket. The value specified for this parameter depends on the value specified for LogDestinationType.
#' 
#' If LogDestinationType is not specified or `cloud-watch-logs`, specify the Amazon Resource Name (ARN) of the CloudWatch Logs log group.
#' 
#' If LogDestinationType is `s3`, specify the ARN of the Amazon S3 bucket. You can also specify a subfolder in the bucket. To specify a subfolder in the bucket, use the following ARN format: `bucket_ARN/subfolder_name/`. For example, to specify a subfolder named `my-logs` in a bucket named `my-bucket`, use the following ARN: `arn:aws:s3:::my-bucket/my-logs/`. You cannot use `AWSLogs` as a subfolder name. This is a reserved term.
#'
#' @examples
#'
#' @export
create_flow_logs <- function (ResourceIds, ResourceType, TrafficType, 
    DryRun = NULL, ClientToken = NULL, DeliverLogsPermissionArn = NULL, 
    LogGroupName = NULL, LogDestinationType = NULL, LogDestination = NULL) 
{
    op <- Operation(name = "CreateFlowLogs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_flow_logs_input(ResourceIds = ResourceIds, 
        ResourceType = ResourceType, TrafficType = TrafficType, 
        DryRun = DryRun, ClientToken = ClientToken, DeliverLogsPermissionArn = DeliverLogsPermissionArn, 
        LogGroupName = LogGroupName, LogDestinationType = LogDestinationType, 
        LogDestination = LogDestination)
    output <- create_flow_logs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an Amazon FPGA Image (AFI) from the specified design checkpoint (DCP)
#'
#' Creates an Amazon FPGA Image (AFI) from the specified design checkpoint (DCP).
#' 
#' The create operation is asynchronous. To verify that the AFI is ready for use, check the output logs.
#' 
#' An AFI contains the FPGA bitstream that is ready to download to an FPGA. You can securely deploy an AFI on one or more FPGA-accelerated instances. For more information, see the [AWS FPGA Hardware Development Kit](https://github.com/aws/aws-fpga/).
#'
#' @param InputStorageLocation The location of the encrypted design checkpoint in Amazon S3. The input must be a tarball.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param LogsStorageLocation The location in Amazon S3 for the output logs.
#' @param Description A description for the AFI.
#' @param Name A name for the AFI.
#' @param ClientToken Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
#'
#' @examples
#'
#' @export
create_fpga_image <- function (InputStorageLocation, DryRun = NULL, 
    LogsStorageLocation = NULL, Description = NULL, Name = NULL, 
    ClientToken = NULL) 
{
    op <- Operation(name = "CreateFpgaImage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_fpga_image_input(InputStorageLocation = InputStorageLocation, 
        DryRun = DryRun, LogsStorageLocation = LogsStorageLocation, 
        Description = Description, Name = Name, ClientToken = ClientToken)
    output <- create_fpga_image_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance that is either running or stopped
#'
#' Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance that is either running or stopped.
#' 
#' If you customized your instance with instance store volumes or EBS volumes in addition to the root device volume, the new AMI contains block device mapping information for those volumes. When you launch an instance from this new AMI, the instance automatically launches with those additional volumes.
#' 
#' For more information, see [Creating Amazon EBS-Backed Linux AMIs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param InstanceId The ID of the instance.
#' @param Name A name for the new image.
#' 
#' Constraints: 3-128 alphanumeric characters, parentheses (()), square brackets (&#91;&#93;), spaces ( ), periods (.), slashes (/), dashes (-), single quotes (\'), at-signs (@), or underscores(\_)
#' @param BlockDeviceMappings Information about one or more block device mappings. This parameter cannot be used to modify the encryption status of existing volumes or snapshots. To create an AMI with encrypted snapshots, use the CopyImage action.
#' @param Description A description for the new image.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param NoReboot By default, Amazon EC2 attempts to shut down and reboot the instance before creating the image. If the \'No Reboot\' option is set, Amazon EC2 doesn\'t shut down the instance before creating the image. When this option is used, file system integrity on the created image can\'t be guaranteed.
#'
#' @examples
#' # This example creates an AMI from the specified instance and adds an EBS
#' # volume with the device name /dev/sdh and an instance store volume with
#' # the device name /dev/sdc.
#' create_image(
#'   BlockDeviceMappings = list(
#'     list(
#'       DeviceName = "/dev/sdh",
#'       Ebs = list(
#'         VolumeSize = "100"
#'       )
#'     ),
#'     list(
#'       DeviceName = "/dev/sdc",
#'       VirtualName = "ephemeral1"
#'     )
#'   ),
#'   Description = "An AMI for my server",
#'   InstanceId = "i-1234567890abcdef0",
#'   Name = "My server",
#'   NoReboot = TRUE
#' )
#'
#' @export
create_image <- function (InstanceId, Name, BlockDeviceMappings = NULL, 
    Description = NULL, DryRun = NULL, NoReboot = NULL) 
{
    op <- Operation(name = "CreateImage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_image_input(InstanceId = InstanceId, Name = Name, 
        BlockDeviceMappings = BlockDeviceMappings, Description = Description, 
        DryRun = DryRun, NoReboot = NoReboot)
    output <- create_image_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Exports a running or stopped instance to an S3 bucket
#'
#' Exports a running or stopped instance to an S3 bucket.
#' 
#' For information about the supported operating systems, image formats, and known limitations for the types of instances you can export, see [Exporting an Instance as a VM Using VM Import/Export](http://docs.aws.amazon.com/vm-import/latest/userguide/vmexport.html) in the *VM Import/Export User Guide*.
#'
#' @param InstanceId The ID of the instance.
#' @param Description A description for the conversion task or the resource being exported. The maximum length is 255 bytes.
#' @param ExportToS3Task The format and location for an instance export task.
#' @param TargetEnvironment The target virtualization environment.
#'
#' @examples
#'
#' @export
create_instance_export_task <- function (InstanceId, Description = NULL, 
    ExportToS3Task = NULL, TargetEnvironment = NULL) 
{
    op <- Operation(name = "CreateInstanceExportTask", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_instance_export_task_input(InstanceId = InstanceId, 
        Description = Description, ExportToS3Task = ExportToS3Task, 
        TargetEnvironment = TargetEnvironment)
    output <- create_instance_export_task_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an internet gateway for use with a VPC
#'
#' Creates an internet gateway for use with a VPC. After creating the internet gateway, you attach it to a VPC using AttachInternetGateway.
#' 
#' For more information about your VPC and internet gateway, see the [Amazon Virtual Private Cloud User Guide](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/).
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example creates an Internet gateway.
#' create_internet_gateway()
#'
#' @export
create_internet_gateway <- function (DryRun = NULL) 
{
    op <- Operation(name = "CreateInternetGateway", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_internet_gateway_input(DryRun = DryRun)
    output <- create_internet_gateway_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a 2048-bit RSA key pair with the specified name
#'
#' Creates a 2048-bit RSA key pair with the specified name. Amazon EC2 stores the public key and displays the private key for you to save to a file. The private key is returned as an unencrypted PEM encoded PKCS\#1 private key. If a key with the specified name already exists, Amazon EC2 returns an error.
#' 
#' You can have up to five thousand key pairs per region.
#' 
#' The key pair returned to you is available only in the region in which you create it. If you prefer, you can create your own key pair using a third-party tool and upload it to any region using ImportKeyPair.
#' 
#' For more information, see [Key Pairs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param KeyName A unique name for the key pair.
#' 
#' Constraints: Up to 255 ASCII characters
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example creates a key pair named my-key-pair.
#' create_key_pair(
#'   KeyName = "my-key-pair"
#' )
#'
#' @export
create_key_pair <- function (KeyName, DryRun = NULL) 
{
    op <- Operation(name = "CreateKeyPair", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_key_pair_input(KeyName = KeyName, DryRun = DryRun)
    output <- create_key_pair_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a launch template
#'
#' Creates a launch template. A launch template contains the parameters to launch an instance. When you launch an instance using RunInstances, you can specify a launch template instead of providing the launch parameters in the request.
#'
#' @param LaunchTemplateName A name for the launch template.
#' @param LaunchTemplateData The information for the launch template.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param ClientToken Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
#' @param VersionDescription A description for the first version of the launch template.
#'
#' @examples
#' # This example creates a launch template that specifies the subnet in
#' # which to launch the instance, assigns a public IP address and an IPv6
#' # address to the instance, and creates a tag for the instance.
#' create_launch_template(
#'   LaunchTemplateData = list(
#'     ImageId = "ami-8c1be5f6",
#'     InstanceType = "t2.small",
#'     NetworkInterfaces = list(
#'       list(
#'         AssociatePublicIpAddress = TRUE,
#'         DeviceIndex = 0L,
#'         Ipv6AddressCount = 1L,
#'         SubnetId = "subnet-7b16de0c"
#'       )
#'     ),
#'     TagSpecifications = list(
#'       list(
#'         ResourceType = "instance",
#'         Tags = list(
#'           list(
#'             Key = "Name",
#'             Value = "webserver"
#'           )
#'         )
#'       )
#'     )
#'   ),
#'   LaunchTemplateName = "my-template",
#'   VersionDescription = "WebVersion1"
#' )
#'
#' @export
create_launch_template <- function (LaunchTemplateName, LaunchTemplateData, 
    DryRun = NULL, ClientToken = NULL, VersionDescription = NULL) 
{
    op <- Operation(name = "CreateLaunchTemplate", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_launch_template_input(LaunchTemplateName = LaunchTemplateName, 
        LaunchTemplateData = LaunchTemplateData, DryRun = DryRun, 
        ClientToken = ClientToken, VersionDescription = VersionDescription)
    output <- create_launch_template_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a new version for a launch template
#'
#' Creates a new version for a launch template. You can specify an existing version of launch template from which to base the new version.
#' 
#' Launch template versions are numbered in the order in which they are created. You cannot specify, change, or replace the numbering of launch template versions.
#'
#' @param LaunchTemplateData The information for the launch template.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param ClientToken Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
#' @param LaunchTemplateId The ID of the launch template. You must specify either the launch template ID or launch template name in the request.
#' @param LaunchTemplateName The name of the launch template. You must specify either the launch template ID or launch template name in the request.
#' @param SourceVersion The version number of the launch template version on which to base the new version. The new version inherits the same launch parameters as the source version, except for parameters that you specify in LaunchTemplateData.
#' @param VersionDescription A description for the version of the launch template.
#'
#' @examples
#' # This example creates a new launch template version based on version 1 of
#' # the specified launch template and specifies a different AMI ID.
#' create_launch_template_version(
#'   LaunchTemplateData = list(
#'     ImageId = "ami-c998b6b2"
#'   ),
#'   LaunchTemplateId = "lt-0abcd290751193123",
#'   SourceVersion = "1",
#'   VersionDescription = "WebVersion2"
#' )
#'
#' @export
create_launch_template_version <- function (LaunchTemplateData, 
    DryRun = NULL, ClientToken = NULL, LaunchTemplateId = NULL, 
    LaunchTemplateName = NULL, SourceVersion = NULL, VersionDescription = NULL) 
{
    op <- Operation(name = "CreateLaunchTemplateVersion", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_launch_template_version_input(LaunchTemplateData = LaunchTemplateData, 
        DryRun = DryRun, ClientToken = ClientToken, LaunchTemplateId = LaunchTemplateId, 
        LaunchTemplateName = LaunchTemplateName, SourceVersion = SourceVersion, 
        VersionDescription = VersionDescription)
    output <- create_launch_template_version_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a NAT gateway in the specified public subnet
#'
#' Creates a NAT gateway in the specified public subnet. This action creates a network interface in the specified subnet with a private IP address from the IP address range of the subnet. Internet-bound traffic from a private subnet can be routed to the NAT gateway, therefore enabling instances in the private subnet to connect to the internet. For more information, see [NAT Gateways](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param AllocationId The allocation ID of an Elastic IP address to associate with the NAT gateway. If the Elastic IP address is associated with another resource, you must first disassociate it.
#' @param SubnetId The subnet in which to create the NAT gateway.
#' @param ClientToken Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
#' 
#' Constraint: Maximum 64 ASCII characters.
#'
#' @examples
#' # This example creates a NAT gateway in subnet subnet-1a2b3c4d and
#' # associates an Elastic IP address with the allocation ID
#' # eipalloc-37fc1a52 with the NAT gateway.
#' create_nat_gateway(
#'   AllocationId = "eipalloc-37fc1a52",
#'   SubnetId = "subnet-1a2b3c4d"
#' )
#'
#' @export
create_nat_gateway <- function (AllocationId, SubnetId, ClientToken = NULL) 
{
    op <- Operation(name = "CreateNatGateway", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_nat_gateway_input(AllocationId = AllocationId, 
        SubnetId = SubnetId, ClientToken = ClientToken)
    output <- create_nat_gateway_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a network ACL in a VPC
#'
#' Creates a network ACL in a VPC. Network ACLs provide an optional layer of security (in addition to security groups) for the instances in your VPC.
#' 
#' For more information, see [Network ACLs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param VpcId The ID of the VPC.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example creates a network ACL for the specified VPC.
#' create_network_acl(
#'   VpcId = "vpc-a01106c2"
#' )
#'
#' @export
create_network_acl <- function (VpcId, DryRun = NULL) 
{
    op <- Operation(name = "CreateNetworkAcl", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_network_acl_input(VpcId = VpcId, DryRun = DryRun)
    output <- create_network_acl_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an entry (a rule) in a network ACL with the specified rule number
#'
#' Creates an entry (a rule) in a network ACL with the specified rule number. Each network ACL has a set of numbered ingress rules and a separate set of numbered egress rules. When determining whether a packet should be allowed in or out of a subnet associated with the ACL, we process the entries in the ACL according to the rule numbers, in ascending order. Each network ACL has a set of ingress rules and a separate set of egress rules.
#' 
#' We recommend that you leave room between the rule numbers (for example, 100, 110, 120, \...), and not number them one right after the other (for example, 101, 102, 103, \...). This makes it easier to add a rule between existing ones without having to renumber the rules.
#' 
#' After you add an entry, you can\'t modify it; you must either replace it, or create an entry and delete the old one.
#' 
#' For more information about network ACLs, see [Network ACLs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param Egress Indicates whether this is an egress rule (rule is applied to traffic leaving the subnet).
#' @param NetworkAclId The ID of the network ACL.
#' @param Protocol The protocol. A value of `-1` or `all` means all protocols. If you specify `all`, `-1`, or a protocol number other than `6` (tcp), `17` (udp), or `1` (icmp), traffic on all ports is allowed, regardless of any ports or ICMP types or codes that you specify. If you specify protocol `58` (ICMPv6) and specify an IPv4 CIDR block, traffic for all ICMP types and codes allowed, regardless of any that you specify. If you specify protocol `58` (ICMPv6) and specify an IPv6 CIDR block, you must specify an ICMP type and code.
#' @param RuleAction Indicates whether to allow or deny the traffic that matches the rule.
#' @param RuleNumber The rule number for the entry (for example, 100). ACL entries are processed in ascending order by rule number.
#' 
#' Constraints: Positive integer from 1 to 32766. The range 32767 to 65535 is reserved for internal use.
#' @param CidrBlock The IPv4 network range to allow or deny, in CIDR notation (for example `172.16.0.0/24`).
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param IcmpTypeCode ICMP protocol: The ICMP or ICMPv6 type and code. Required if specifying the ICMP protocol, or protocol 58 (ICMPv6) with an IPv6 CIDR block.
#' @param Ipv6CidrBlock The IPv6 network range to allow or deny, in CIDR notation (for example `2001:db8:1234:1a00::/64`).
#' @param PortRange TCP or UDP protocols: The range of ports the rule applies to.
#'
#' @examples
#' # This example creates an entry for the specified network ACL. The rule
#' # allows ingress traffic from anywhere (0.0.0.0/0) on UDP port 53 (DNS)
#' # into any associated subnet.
#' create_network_acl_entry(
#'   CidrBlock = "0.0.0.0/0",
#'   Egress = FALSE,
#'   NetworkAclId = "acl-5fb85d36",
#'   PortRange = list(
#'     From = 53L,
#'     To = 53L
#'   ),
#'   Protocol = "udp",
#'   RuleAction = "allow",
#'   RuleNumber = 100L
#' )
#'
#' @export
create_network_acl_entry <- function (Egress, NetworkAclId, Protocol, 
    RuleAction, RuleNumber, CidrBlock = NULL, DryRun = NULL, 
    IcmpTypeCode = NULL, Ipv6CidrBlock = NULL, PortRange = NULL) 
{
    op <- Operation(name = "CreateNetworkAclEntry", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_network_acl_entry_input(Egress = Egress, 
        NetworkAclId = NetworkAclId, Protocol = Protocol, RuleAction = RuleAction, 
        RuleNumber = RuleNumber, CidrBlock = CidrBlock, DryRun = DryRun, 
        IcmpTypeCode = IcmpTypeCode, Ipv6CidrBlock = Ipv6CidrBlock, 
        PortRange = PortRange)
    output <- create_network_acl_entry_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a network interface in the specified subnet
#'
#' Creates a network interface in the specified subnet.
#' 
#' For more information about network interfaces, see [Elastic Network Interfaces](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param SubnetId The ID of the subnet to associate with the network interface.
#' @param Description A description for the network interface.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Groups The IDs of one or more security groups.
#' @param Ipv6AddressCount The number of IPv6 addresses to assign to a network interface. Amazon EC2 automatically selects the IPv6 addresses from the subnet range. You can\'t use this option if specifying specific IPv6 addresses. If your subnet has the `AssignIpv6AddressOnCreation` attribute set to `true`, you can specify `0` to override this setting.
#' @param Ipv6Addresses One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. You can\'t use this option if you\'re specifying a number of IPv6 addresses.
#' @param PrivateIpAddress The primary private IPv4 address of the network interface. If you don\'t specify an IPv4 address, Amazon EC2 selects one for you from the subnet\'s IPv4 CIDR range. If you specify an IP address, you cannot indicate any IP addresses specified in `privateIpAddresses` as primary (only one IP address can be designated as primary).
#' @param PrivateIpAddresses One or more private IPv4 addresses.
#' @param SecondaryPrivateIpAddressCount The number of secondary private IPv4 addresses to assign to a network interface. When you specify a number of secondary IPv4 addresses, Amazon EC2 selects these IP addresses within the subnet\'s IPv4 CIDR range. You can\'t specify this option and specify more than one private IP address using `privateIpAddresses`.
#' 
#' The number of IP addresses you can assign to a network interface varies by instance type. For more information, see [IP Addresses Per ENI Per Instance Type](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#AvailableIpPerENI) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @examples
#' # This example creates a network interface for the specified subnet.
#' create_network_interface(
#'   Description = "my network interface",
#'   Groups = list(
#'     "sg-903004f8"
#'   ),
#'   PrivateIpAddress = "10.0.2.17",
#'   SubnetId = "subnet-9d4a7b6c"
#' )
#'
#' @export
create_network_interface <- function (SubnetId, Description = NULL, 
    DryRun = NULL, Groups = NULL, Ipv6AddressCount = NULL, Ipv6Addresses = NULL, 
    PrivateIpAddress = NULL, PrivateIpAddresses = NULL, SecondaryPrivateIpAddressCount = NULL) 
{
    op <- Operation(name = "CreateNetworkInterface", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_network_interface_input(SubnetId = SubnetId, 
        Description = Description, DryRun = DryRun, Groups = Groups, 
        Ipv6AddressCount = Ipv6AddressCount, Ipv6Addresses = Ipv6Addresses, 
        PrivateIpAddress = PrivateIpAddress, PrivateIpAddresses = PrivateIpAddresses, 
        SecondaryPrivateIpAddressCount = SecondaryPrivateIpAddressCount)
    output <- create_network_interface_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Grants an AWS-authorized account permission to attach the specified network interface to an instance in their account
#'
#' Grants an AWS-authorized account permission to attach the specified network interface to an instance in their account.
#' 
#' You can grant permission to a single AWS account only, and only one account at a time.
#'
#' @param NetworkInterfaceId The ID of the network interface.
#' @param Permission The type of permission to grant.
#' @param AwsAccountId The AWS account ID.
#' @param AwsService The AWS service. Currently not supported.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
create_network_interface_permission <- function (NetworkInterfaceId, 
    Permission, AwsAccountId = NULL, AwsService = NULL, DryRun = NULL) 
{
    op <- Operation(name = "CreateNetworkInterfacePermission", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- create_network_interface_permission_input(NetworkInterfaceId = NetworkInterfaceId, 
        Permission = Permission, AwsAccountId = AwsAccountId, 
        AwsService = AwsService, DryRun = DryRun)
    output <- create_network_interface_permission_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a placement group in which to launch instances
#'
#' Creates a placement group in which to launch instances. The strategy of the placement group determines how the instances are organized within the group.
#' 
#' A `cluster` placement group is a logical grouping of instances within a single Availability Zone that benefit from low network latency, high network throughput. A `spread` placement group places instances on distinct hardware.
#' 
#' For more information, see [Placement Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param GroupName A name for the placement group. Must be unique within the scope of your account for the region.
#' 
#' Constraints: Up to 255 ASCII characters
#' @param Strategy The placement strategy.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example creates a placement group with the specified name.
#' create_placement_group(
#'   GroupName = "my-cluster",
#'   Strategy = "cluster"
#' )
#'
#' @export
create_placement_group <- function (GroupName, Strategy, DryRun = NULL) 
{
    op <- Operation(name = "CreatePlacementGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_placement_group_input(GroupName = GroupName, 
        Strategy = Strategy, DryRun = DryRun)
    output <- create_placement_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a listing for Amazon EC2 Standard Reserved Instances to be sold in the Reserved Instance Marketplace
#'
#' Creates a listing for Amazon EC2 Standard Reserved Instances to be sold in the Reserved Instance Marketplace. You can submit one Standard Reserved Instance listing at a time. To get a list of your Standard Reserved Instances, you can use the DescribeReservedInstances operation.
#' 
#' Only Standard Reserved Instances with a capacity reservation can be sold in the Reserved Instance Marketplace. Convertible Reserved Instances and Standard Reserved Instances with a regional benefit cannot be sold.
#' 
#' The Reserved Instance Marketplace matches sellers who want to resell Standard Reserved Instance capacity that they no longer need with buyers who want to purchase additional capacity. Reserved Instances bought and sold through the Reserved Instance Marketplace work like any other Reserved Instances.
#' 
#' To sell your Standard Reserved Instances, you must first register as a seller in the Reserved Instance Marketplace. After completing the registration process, you can create a Reserved Instance Marketplace listing of some or all of your Standard Reserved Instances, and specify the upfront price to receive for them. Your Standard Reserved Instance listings then become available for purchase. To view the details of your Standard Reserved Instance listing, you can use the DescribeReservedInstancesListings operation.
#' 
#' For more information, see [Reserved Instance Marketplace](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param ClientToken Unique, case-sensitive identifier you provide to ensure idempotency of your listings. This helps avoid duplicate listings. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
#' @param InstanceCount The number of instances that are a part of a Reserved Instance account to be listed in the Reserved Instance Marketplace. This number should be less than or equal to the instance count associated with the Reserved Instance ID specified in this call.
#' @param PriceSchedules A list specifying the price of the Standard Reserved Instance for each month remaining in the Reserved Instance term.
#' @param ReservedInstancesId The ID of the active Standard Reserved Instance.
#'
#' @examples
#'
#' @export
create_reserved_instances_listing <- function (ClientToken, InstanceCount, 
    PriceSchedules, ReservedInstancesId) 
{
    op <- Operation(name = "CreateReservedInstancesListing", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- create_reserved_instances_listing_input(ClientToken = ClientToken, 
        InstanceCount = InstanceCount, PriceSchedules = PriceSchedules, 
        ReservedInstancesId = ReservedInstancesId)
    output <- create_reserved_instances_listing_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a route in a route table within a VPC
#'
#' Creates a route in a route table within a VPC.
#' 
#' You must specify one of the following targets: internet gateway or virtual private gateway, NAT instance, NAT gateway, VPC peering connection, network interface, or egress-only internet gateway.
#' 
#' When determining how to route traffic, we use the route with the most specific match. For example, traffic is destined for the IPv4 address `192.0.2.3`, and the route table includes the following two IPv4 routes:
#' 
#' -   `192.0.2.0/24` (goes to some target A)
#' 
#' -   `192.0.2.0/28` (goes to some target B)
#' 
#' Both routes apply to the traffic destined for `192.0.2.3`. However, the second route in the list covers a smaller number of IP addresses and is therefore more specific, so we use that route to determine where to target the traffic.
#' 
#' For more information about route tables, see [Route Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param RouteTableId The ID of the route table for the route.
#' @param DestinationCidrBlock The IPv4 CIDR address block used for the destination match. Routing decisions are based on the most specific match.
#' @param DestinationIpv6CidrBlock The IPv6 CIDR block used for the destination match. Routing decisions are based on the most specific match.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param EgressOnlyInternetGatewayId &#91;IPv6 traffic only&#93; The ID of an egress-only internet gateway.
#' @param GatewayId The ID of an internet gateway or virtual private gateway attached to your VPC.
#' @param InstanceId The ID of a NAT instance in your VPC. The operation fails if you specify an instance ID unless exactly one network interface is attached.
#' @param NatGatewayId &#91;IPv4 traffic only&#93; The ID of a NAT gateway.
#' @param NetworkInterfaceId The ID of a network interface.
#' @param VpcPeeringConnectionId The ID of a VPC peering connection.
#'
#' @examples
#' # This example creates a route for the specified route table. The route
#' # matches all traffic (0.0.0.0/0) and routes it to the specified Internet
#' # gateway.
#' create_route(
#'   DestinationCidrBlock = "0.0.0.0/0",
#'   GatewayId = "igw-c0a643a9",
#'   RouteTableId = "rtb-22574640"
#' )
#'
#' @export
create_route <- function (RouteTableId, DestinationCidrBlock = NULL, 
    DestinationIpv6CidrBlock = NULL, DryRun = NULL, EgressOnlyInternetGatewayId = NULL, 
    GatewayId = NULL, InstanceId = NULL, NatGatewayId = NULL, 
    NetworkInterfaceId = NULL, VpcPeeringConnectionId = NULL) 
{
    op <- Operation(name = "CreateRoute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_route_input(RouteTableId = RouteTableId, 
        DestinationCidrBlock = DestinationCidrBlock, DestinationIpv6CidrBlock = DestinationIpv6CidrBlock, 
        DryRun = DryRun, EgressOnlyInternetGatewayId = EgressOnlyInternetGatewayId, 
        GatewayId = GatewayId, InstanceId = InstanceId, NatGatewayId = NatGatewayId, 
        NetworkInterfaceId = NetworkInterfaceId, VpcPeeringConnectionId = VpcPeeringConnectionId)
    output <- create_route_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a route table for the specified VPC
#'
#' Creates a route table for the specified VPC. After you create a route table, you can add routes and associate the table with a subnet.
#' 
#' For more information, see [Route Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param VpcId The ID of the VPC.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example creates a route table for the specified VPC.
#' create_route_table(
#'   VpcId = "vpc-a01106c2"
#' )
#'
#' @export
create_route_table <- function (VpcId, DryRun = NULL) 
{
    op <- Operation(name = "CreateRouteTable", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_route_table_input(VpcId = VpcId, DryRun = DryRun)
    output <- create_route_table_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a security group
#'
#' Creates a security group.
#' 
#' A security group is for use with instances either in the EC2-Classic platform or in a specific VPC. For more information, see [Amazon EC2 Security Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html) in the *Amazon Elastic Compute Cloud User Guide* and [Security Groups for Your VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html) in the *Amazon Virtual Private Cloud User Guide*.
#' 
#' EC2-Classic: You can have up to 500 security groups.
#' 
#' EC2-VPC: You can create up to 500 security groups per VPC.
#' 
#' When you create a security group, you specify a friendly name of your choice. You can have a security group for use in EC2-Classic with the same name as a security group for use in a VPC. However, you can\'t have two security groups for use in EC2-Classic with the same name or two security groups for use in a VPC with the same name.
#' 
#' You have a default security group for use in EC2-Classic and a default security group for use in your VPC. If you don\'t specify a security group when you launch an instance, the instance is launched into the appropriate default security group. A default security group includes a default rule that grants instances unrestricted network access to each other.
#' 
#' You can add or remove rules from your security groups using AuthorizeSecurityGroupIngress, AuthorizeSecurityGroupEgress, RevokeSecurityGroupIngress, and RevokeSecurityGroupEgress.
#'
#' @param Description A description for the security group. This is informational only.
#' 
#' Constraints: Up to 255 characters in length
#' 
#' Constraints for EC2-Classic: ASCII characters
#' 
#' Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and .\_-:/()\#,@&#91;&#93;+=&;{}!\$\*
#' @param GroupName The name of the security group.
#' 
#' Constraints: Up to 255 characters in length. Cannot start with `sg-`.
#' 
#' Constraints for EC2-Classic: ASCII characters
#' 
#' Constraints for EC2-VPC: a-z, A-Z, 0-9, spaces, and .\_-:/()\#,@&#91;&#93;+=&;{}!\$\*
#' @param VpcId &#91;EC2-VPC&#93; The ID of the VPC. Required for EC2-VPC.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example creates a security group for the specified VPC.
#' create_security_group(
#'   Description = "My security group",
#'   GroupName = "my-security-group",
#'   VpcId = "vpc-1a2b3c4d"
#' )
#'
#' @export
create_security_group <- function (Description, GroupName, VpcId = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "CreateSecurityGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_security_group_input(Description = Description, 
        GroupName = GroupName, VpcId = VpcId, DryRun = DryRun)
    output <- create_security_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a snapshot of an EBS volume and stores it in Amazon S3
#'
#' Creates a snapshot of an EBS volume and stores it in Amazon S3. You can use snapshots for backups, to make copies of EBS volumes, and to save data before shutting down an instance.
#' 
#' When a snapshot is created, any AWS Marketplace product codes that are associated with the source volume are propagated to the snapshot.
#' 
#' You can take a snapshot of an attached volume that is in use. However, snapshots only capture data that has been written to your EBS volume at the time the snapshot command is issued; this may exclude any data that has been cached by any applications or the operating system. If you can pause any file systems on the volume long enough to take a snapshot, your snapshot should be complete. However, if you cannot pause all file writes to the volume, you should unmount the volume from within the instance, issue the snapshot command, and then remount the volume to ensure a consistent and complete snapshot. You may remount and use your volume while the snapshot status is `pending`.
#' 
#' To create a snapshot for EBS volumes that serve as root devices, you should stop the instance before taking the snapshot.
#' 
#' Snapshots that are taken from encrypted volumes are automatically encrypted. Volumes that are created from encrypted snapshots are also automatically encrypted. Your encrypted volumes and any associated snapshots always remain protected.
#' 
#' You can tag your snapshots during creation. For more information, see [Tagging Your Amazon EC2 Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' For more information, see [Amazon Elastic Block Store](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html) and [Amazon EBS Encryption](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param VolumeId The ID of the EBS volume.
#' @param Description A description for the snapshot.
#' @param TagSpecifications The tags to apply to the snapshot during creation.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example creates a snapshot of the volume with a volume ID of
#' # ``vol-1234567890abcdef0`` and a short description to identify the
#' # snapshot.
#' create_snapshot(
#'   Description = "This is my root volume snapshot.",
#'   VolumeId = "vol-1234567890abcdef0"
#' )
#'
#' @export
create_snapshot <- function (VolumeId, Description = NULL, TagSpecifications = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "CreateSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_snapshot_input(VolumeId = VolumeId, Description = Description, 
        TagSpecifications = TagSpecifications, DryRun = DryRun)
    output <- create_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a data feed for Spot Instances, enabling you to view Spot Instance usage logs
#'
#' Creates a data feed for Spot Instances, enabling you to view Spot Instance usage logs. You can create one data feed per AWS account. For more information, see [Spot Instance Data Feed](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html) in the *Amazon EC2 User Guide for Linux Instances*.
#'
#' @param Bucket The Amazon S3 bucket in which to store the Spot Instance data feed.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Prefix A prefix for the data feed file names.
#'
#' @examples
#' # This example creates a Spot Instance data feed for your AWS account.
#' create_spot_datafeed_subscription(
#'   Bucket = "my-s3-bucket",
#'   Prefix = "spotdata"
#' )
#'
#' @export
create_spot_datafeed_subscription <- function (Bucket, DryRun = NULL, 
    Prefix = NULL) 
{
    op <- Operation(name = "CreateSpotDatafeedSubscription", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- create_spot_datafeed_subscription_input(Bucket = Bucket, 
        DryRun = DryRun, Prefix = Prefix)
    output <- create_spot_datafeed_subscription_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a subnet in an existing VPC
#'
#' Creates a subnet in an existing VPC.
#' 
#' When you create each subnet, you provide the VPC ID and IPv4 CIDR block for the subnet. After you create a subnet, you can\'t change its CIDR block. The size of the subnet\'s IPv4 CIDR block can be the same as a VPC\'s IPv4 CIDR block, or a subset of a VPC\'s IPv4 CIDR block. If you create more than one subnet in a VPC, the subnets\' CIDR blocks must not overlap. The smallest IPv4 subnet (and VPC) you can create uses a /28 netmask (16 IPv4 addresses), and the largest uses a /16 netmask (65,536 IPv4 addresses).
#' 
#' If you\'ve associated an IPv6 CIDR block with your VPC, you can create a subnet with an IPv6 CIDR block that uses a /64 prefix length.
#' 
#' AWS reserves both the first four and the last IPv4 address in each subnet\'s CIDR block. They\'re not available for use.
#' 
#' If you add more than one subnet to a VPC, they\'re set up in a star topology with a logical router in the middle.
#' 
#' If you launch an instance in a VPC using an Amazon EBS-backed AMI, the IP address doesn\'t change if you stop and restart the instance (unlike a similar instance launched outside a VPC, which gets a new IP address when restarted). It\'s therefore possible to have a subnet with no running instances (they\'re all stopped), but no remaining IP addresses available.
#' 
#' For more information about subnets, see [Your VPC and Subnets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param CidrBlock The IPv4 network range for the subnet, in CIDR notation. For example, `10.0.0.0/24`.
#' @param VpcId The ID of the VPC.
#' @param AvailabilityZone The Availability Zone for the subnet.
#' 
#' Default: AWS selects one for you. If you create more than one subnet in your VPC, we may not necessarily select a different zone for each subnet.
#' @param Ipv6CidrBlock The IPv6 network range for the subnet, in CIDR notation. The subnet size must use a /64 prefix length.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example creates a subnet in the specified VPC with the specified
#' # CIDR block. We recommend that you let us select an Availability Zone for
#' # you.
#' create_subnet(
#'   CidrBlock = "10.0.1.0/24",
#'   VpcId = "vpc-a01106c2"
#' )
#'
#' @export
create_subnet <- function (CidrBlock, VpcId, AvailabilityZone = NULL, 
    Ipv6CidrBlock = NULL, DryRun = NULL) 
{
    op <- Operation(name = "CreateSubnet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_subnet_input(CidrBlock = CidrBlock, VpcId = VpcId, 
        AvailabilityZone = AvailabilityZone, Ipv6CidrBlock = Ipv6CidrBlock, 
        DryRun = DryRun)
    output <- create_subnet_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds or overwrites one or more tags for the specified Amazon EC2 resource or resources
#'
#' Adds or overwrites one or more tags for the specified Amazon EC2 resource or resources. Each resource can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique per resource.
#' 
#' For more information about tags, see [Tagging Your Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) in the *Amazon Elastic Compute Cloud User Guide*. For more information about creating IAM policies that control users\' access to resources based on tags, see [Supported Resource-Level Permissions for Amazon EC2 API Actions](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-iam-actions-resources.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Resources The IDs of one or more resources to tag. For example, ami-1a2b3c4d.
#' @param Tags One or more tags. The `value` parameter is required, but if you don\'t want the tag to have a value, specify the parameter with no value, and we set the value to an empty string.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example adds the tag Stack=production to the specified image, or
#' # overwrites an existing tag for the AMI where the tag key is Stack.
#' create_tags(
#'   Resources = list(
#'     "ami-78a54011"
#'   ),
#'   Tags = list(
#'     list(
#'       Key = "Stack",
#'       Value = "production"
#'     )
#'   )
#' )
#'
#' @export
create_tags <- function (Resources, Tags, DryRun = NULL) 
{
    op <- Operation(name = "CreateTags", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_tags_input(Resources = Resources, Tags = Tags, 
        DryRun = DryRun)
    output <- create_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an EBS volume that can be attached to an instance in the same Availability Zone
#'
#' Creates an EBS volume that can be attached to an instance in the same Availability Zone. The volume is created in the regional endpoint that you send the HTTP request to. For more information see [Regions and Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html).
#' 
#' You can create a new empty volume or restore a volume from an EBS snapshot. Any AWS Marketplace product codes from the snapshot are propagated to the volume.
#' 
#' You can create encrypted volumes with the `Encrypted` parameter. Encrypted volumes may only be attached to instances that support Amazon EBS encryption. Volumes that are created from encrypted snapshots are also automatically encrypted. For more information, see [Amazon EBS Encryption](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' You can tag your volumes during creation. For more information, see [Tagging Your Amazon EC2 Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' For more information, see [Creating an Amazon EBS Volume](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-creating-volume.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param AvailabilityZone The Availability Zone in which to create the volume. Use DescribeAvailabilityZones to list the Availability Zones that are currently available to you.
#' @param Encrypted Specifies whether the volume should be encrypted. Encrypted Amazon EBS volumes may only be attached to instances that support Amazon EBS encryption. Volumes that are created from encrypted snapshots are automatically encrypted. There is no way to create an encrypted volume from an unencrypted snapshot or vice versa. If your AMI uses encrypted volumes, you can only launch it on supported instance types. For more information, see [Amazon EBS Encryption](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' @param Iops The number of I/O operations per second (IOPS) to provision for the volume, with a maximum ratio of 50 IOPS/GiB. Range is 100 to 32000 IOPS for volumes in most regions. For exceptions, see [Amazon EBS Volume Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' This parameter is valid only for Provisioned IOPS SSD (io1) volumes.
#' @param KmsKeyId An identifier for the AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating the encrypted volume. This parameter is only required if you want to use a non-default CMK; if this parameter is not specified, the default CMK for EBS is used. If a `KmsKeyId` is specified, the `Encrypted` flag must also be set.
#' 
#' The CMK identifier may be provided in any of the following formats:
#' 
#' -   Key ID
#' 
#' -   Key alias
#' 
#' -   ARN using key ID. The ID ARN contains the `arn:aws:kms` namespace, followed by the region of the CMK, the AWS account ID of the CMK owner, the `key` namespace, and then the CMK ID. For example, arn:aws:kms:*us-east-1*:*012345678910*:key/*abcd1234-a123-456a-a12b-a123b4cd56ef*.
#' 
#' -   ARN using key alias. The alias ARN contains the `arn:aws:kms` namespace, followed by the region of the CMK, the AWS account ID of the CMK owner, the `alias` namespace, and then the CMK alias. For example, arn:aws:kms:*us-east-1*:*012345678910*:alias/*ExampleAlias*.
#' 
#' AWS parses `KmsKeyId` asynchronously, meaning that the action you call may appear to complete even though you provided an invalid identifier. The action will eventually fail.
#' @param Size The size of the volume, in GiBs.
#' 
#' Constraints: 1-16384 for `gp2`, 4-16384 for `io1`, 500-16384 for `st1`, 500-16384 for `sc1`, and 1-1024 for `standard`. If you specify a snapshot, the volume size must be equal to or larger than the snapshot size.
#' 
#' Default: If you\'re creating the volume from a snapshot and don\'t specify a volume size, the default is the snapshot size.
#' @param SnapshotId The snapshot from which to create the volume.
#' @param VolumeType The volume type. This can be `gp2` for General Purpose SSD, `io1` for Provisioned IOPS SSD, `st1` for Throughput Optimized HDD, `sc1` for Cold HDD, or `standard` for Magnetic volumes.
#' 
#' Defaults: If no volume type is specified, the default is `standard` in us-east-1, eu-west-1, eu-central-1, us-west-2, us-west-1, sa-east-1, ap-northeast-1, ap-northeast-2, ap-southeast-1, ap-southeast-2, ap-south-1, us-gov-west-1, and cn-north-1. In all other regions, EBS defaults to `gp2`.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param TagSpecifications The tags to apply to the volume during creation.
#'
#' @examples
#' # This example creates an 80 GiB General Purpose (SSD) volume in the
#' # Availability Zone ``us-east-1a``.
#' create_volume(
#'   AvailabilityZone = "us-east-1a",
#'   Size = 80L,
#'   VolumeType = "gp2"
#' )
#' 
#' # This example creates a new Provisioned IOPS (SSD) volume with 1000
#' # provisioned IOPS from a snapshot in the Availability Zone
#' # ``us-east-1a``.
#' create_volume(
#'   AvailabilityZone = "us-east-1a",
#'   Iops = 1000L,
#'   SnapshotId = "snap-066877671789bd71b",
#'   VolumeType = "io1"
#' )
#'
#' @export
create_volume <- function (AvailabilityZone, Encrypted = NULL, 
    Iops = NULL, KmsKeyId = NULL, Size = NULL, SnapshotId = NULL, 
    VolumeType = NULL, DryRun = NULL, TagSpecifications = NULL) 
{
    op <- Operation(name = "CreateVolume", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_volume_input(AvailabilityZone = AvailabilityZone, 
        Encrypted = Encrypted, Iops = Iops, KmsKeyId = KmsKeyId, 
        Size = Size, SnapshotId = SnapshotId, VolumeType = VolumeType, 
        DryRun = DryRun, TagSpecifications = TagSpecifications)
    output <- create_volume_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a VPC with the specified IPv4 CIDR block
#'
#' Creates a VPC with the specified IPv4 CIDR block. The smallest VPC you can create uses a /28 netmask (16 IPv4 addresses), and the largest uses a /16 netmask (65,536 IPv4 addresses). For more information about how large to make your VPC, see [Your VPC and Subnets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html) in the *Amazon Virtual Private Cloud User Guide*.
#' 
#' You can optionally request an Amazon-provided IPv6 CIDR block for the VPC. The IPv6 CIDR block uses a /56 prefix length, and is allocated from Amazon\'s pool of IPv6 addresses. You cannot choose the IPv6 range for your VPC.
#' 
#' By default, each instance you launch in the VPC has the default DHCP options, which include only a default DNS server that we provide (AmazonProvidedDNS). For more information, see [DHCP Options Sets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html) in the *Amazon Virtual Private Cloud User Guide*.
#' 
#' You can specify the instance tenancy value for the VPC when you create it. You can\'t change this value for the VPC after you create it. For more information, see [Dedicated Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param CidrBlock The IPv4 network range for the VPC, in CIDR notation. For example, `10.0.0.0/16`.
#' @param AmazonProvidedIpv6CidrBlock Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param InstanceTenancy The tenancy options for instances launched into the VPC. For `default`, instances are launched with shared tenancy by default. You can launch instances with any tenancy into a shared tenancy VPC. For `dedicated`, instances are launched as dedicated tenancy instances by default. You can only launch instances with a tenancy of `dedicated` or `host` into a dedicated tenancy VPC.
#' 
#' **Important:** The `host` value cannot be used with this parameter. Use the `default` or `dedicated` values only.
#' 
#' Default: `default`
#'
#' @examples
#' # This example creates a VPC with the specified CIDR block.
#' create_vpc(
#'   CidrBlock = "10.0.0.0/16"
#' )
#'
#' @export
create_vpc <- function (CidrBlock, AmazonProvidedIpv6CidrBlock = NULL, 
    DryRun = NULL, InstanceTenancy = NULL) 
{
    op <- Operation(name = "CreateVpc", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_vpc_input(CidrBlock = CidrBlock, AmazonProvidedIpv6CidrBlock = AmazonProvidedIpv6CidrBlock, 
        DryRun = DryRun, InstanceTenancy = InstanceTenancy)
    output <- create_vpc_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a VPC endpoint for a specified service
#'
#' Creates a VPC endpoint for a specified service. An endpoint enables you to create a private connection between your VPC and the service. The service may be provided by AWS, an AWS Marketplace partner, or another AWS account. For more information, see [VPC Endpoints](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-endpoints.html) in the *Amazon Virtual Private Cloud User Guide*.
#' 
#' A `gateway` endpoint serves as a target for a route in your route table for traffic destined for the AWS service. You can specify an endpoint policy to attach to the endpoint that will control access to the service from your VPC. You can also specify the VPC route tables that use the endpoint.
#' 
#' An `interface` endpoint is a network interface in your subnet that serves as an endpoint for communicating with the specified service. You can specify the subnets in which to create an endpoint, and the security groups to associate with the endpoint network interface.
#' 
#' Use DescribeVpcEndpointServices to get a list of supported services.
#'
#' @param VpcId The ID of the VPC in which the endpoint will be used.
#' @param ServiceName The service name. To get a list of available services, use the DescribeVpcEndpointServices request, or get the name from the service provider.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param VpcEndpointType The type of endpoint.
#' 
#' Default: Gateway
#' @param PolicyDocument (Gateway endpoint) A policy to attach to the endpoint that controls access to the service. The policy must be in valid JSON format. If this parameter is not specified, we attach a default policy that allows full access to the service.
#' @param RouteTableIds (Gateway endpoint) One or more route table IDs.
#' @param SubnetIds (Interface endpoint) The ID of one or more subnets in which to create an endpoint network interface.
#' @param SecurityGroupIds (Interface endpoint) The ID of one or more security groups to associate with the endpoint network interface.
#' @param ClientToken Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
#' @param PrivateDnsEnabled (Interface endpoint) Indicate whether to associate a private hosted zone with the specified VPC. The private hosted zone contains a record set for the default public DNS name for the service for the region (for example, `kinesis.us-east-1.amazonaws.com`) which resolves to the private IP addresses of the endpoint network interfaces in the VPC. This enables you to make requests to the default public DNS name for the service instead of the public DNS names that are automatically generated by the VPC endpoint service.
#' 
#' To use a private hosted zone, you must set the following VPC attributes to `true`: `enableDnsHostnames` and `enableDnsSupport`. Use ModifyVpcAttribute to set the VPC attributes.
#' 
#' Default: `false`
#'
#' @examples
#'
#' @export
create_vpc_endpoint <- function (VpcId, ServiceName, DryRun = NULL, 
    VpcEndpointType = NULL, PolicyDocument = NULL, RouteTableIds = NULL, 
    SubnetIds = NULL, SecurityGroupIds = NULL, ClientToken = NULL, 
    PrivateDnsEnabled = NULL) 
{
    op <- Operation(name = "CreateVpcEndpoint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_vpc_endpoint_input(VpcId = VpcId, ServiceName = ServiceName, 
        DryRun = DryRun, VpcEndpointType = VpcEndpointType, PolicyDocument = PolicyDocument, 
        RouteTableIds = RouteTableIds, SubnetIds = SubnetIds, 
        SecurityGroupIds = SecurityGroupIds, ClientToken = ClientToken, 
        PrivateDnsEnabled = PrivateDnsEnabled)
    output <- create_vpc_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a connection notification for a specified VPC endpoint or VPC endpoint service
#'
#' Creates a connection notification for a specified VPC endpoint or VPC endpoint service. A connection notification notifies you of specific endpoint events. You must create an SNS topic to receive notifications. For more information, see [Create a Topic](http://docs.aws.amazon.com/sns/latest/dg/CreateTopic.html) in the *Amazon Simple Notification Service Developer Guide*.
#' 
#' You can create a connection notification for interface endpoints only.
#'
#' @param ConnectionNotificationArn The ARN of the SNS topic for the notifications.
#' @param ConnectionEvents One or more endpoint events for which to receive notifications. Valid values are `Accept`, `Connect`, `Delete`, and `Reject`.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param ServiceId The ID of the endpoint service.
#' @param VpcEndpointId The ID of the endpoint.
#' @param ClientToken Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
#'
#' @examples
#'
#' @export
create_vpc_endpoint_connection_notification <- function (ConnectionNotificationArn, 
    ConnectionEvents, DryRun = NULL, ServiceId = NULL, VpcEndpointId = NULL, 
    ClientToken = NULL) 
{
    op <- Operation(name = "CreateVpcEndpointConnectionNotification", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- create_vpc_endpoint_connection_notification_input(ConnectionNotificationArn = ConnectionNotificationArn, 
        ConnectionEvents = ConnectionEvents, DryRun = DryRun, 
        ServiceId = ServiceId, VpcEndpointId = VpcEndpointId, 
        ClientToken = ClientToken)
    output <- create_vpc_endpoint_connection_notification_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a VPC endpoint service configuration to which service consumers (AWS accounts, IAM users, and IAM roles) can connect
#'
#' Creates a VPC endpoint service configuration to which service consumers (AWS accounts, IAM users, and IAM roles) can connect. Service consumers can create an interface VPC endpoint to connect to your service.
#' 
#' To create an endpoint service configuration, you must first create a Network Load Balancer for your service. For more information, see [VPC Endpoint Services](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/endpoint-service.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param NetworkLoadBalancerArns The Amazon Resource Names (ARNs) of one or more Network Load Balancers for your service.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param AcceptanceRequired Indicate whether requests from service consumers to create an endpoint to your service must be accepted. To accept a request, use AcceptVpcEndpointConnections.
#' @param ClientToken Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).
#'
#' @examples
#'
#' @export
create_vpc_endpoint_service_configuration <- function (NetworkLoadBalancerArns, 
    DryRun = NULL, AcceptanceRequired = NULL, ClientToken = NULL) 
{
    op <- Operation(name = "CreateVpcEndpointServiceConfiguration", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- create_vpc_endpoint_service_configuration_input(NetworkLoadBalancerArns = NetworkLoadBalancerArns, 
        DryRun = DryRun, AcceptanceRequired = AcceptanceRequired, 
        ClientToken = ClientToken)
    output <- create_vpc_endpoint_service_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Requests a VPC peering connection between two VPCs: a requester VPC that you own and an accepter VPC with which to create the connection
#'
#' Requests a VPC peering connection between two VPCs: a requester VPC that you own and an accepter VPC with which to create the connection. The accepter VPC can belong to another AWS account and can be in a different Region to the requester VPC. The requester VPC and accepter VPC cannot have overlapping CIDR blocks.
#' 
#' Limitations and rules apply to a VPC peering connection. For more information, see the [limitations](http://docs.aws.amazon.com/AmazonVPC/latest/PeeringGuide/vpc-peering-basics.html#vpc-peering-limitations) section in the *VPC Peering Guide*.
#' 
#' The owner of the accepter VPC must accept the peering request to activate the peering connection. The VPC peering connection request expires after 7 days, after which it cannot be accepted or rejected.
#' 
#' If you create a VPC peering connection request between VPCs with overlapping CIDR blocks, the VPC peering connection has a status of `failed`.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param PeerOwnerId The AWS account ID of the owner of the accepter VPC.
#' 
#' Default: Your AWS account ID
#' @param PeerVpcId The ID of the VPC with which you are creating the VPC peering connection. You must specify this parameter in the request.
#' @param VpcId The ID of the requester VPC. You must specify this parameter in the request.
#' @param PeerRegion The region code for the accepter VPC, if the accepter VPC is located in a region other than the region in which you make the request.
#' 
#' Default: The region in which you make the request.
#'
#' @examples
#'
#' @export
create_vpc_peering_connection <- function (DryRun = NULL, PeerOwnerId = NULL, 
    PeerVpcId = NULL, VpcId = NULL, PeerRegion = NULL) 
{
    op <- Operation(name = "CreateVpcPeeringConnection", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_vpc_peering_connection_input(DryRun = DryRun, 
        PeerOwnerId = PeerOwnerId, PeerVpcId = PeerVpcId, VpcId = VpcId, 
        PeerRegion = PeerRegion)
    output <- create_vpc_peering_connection_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a VPN connection between an existing virtual private gateway and a VPN customer gateway
#'
#' Creates a VPN connection between an existing virtual private gateway and a VPN customer gateway. The only supported connection type is `ipsec.1`.
#' 
#' The response includes information that you need to give to your network administrator to configure your customer gateway.
#' 
#' We strongly recommend that you use HTTPS when calling this operation because the response contains sensitive cryptographic information for configuring your customer gateway.
#' 
#' If you decide to shut down your VPN connection for any reason and later create a new VPN connection, you must reconfigure your customer gateway with the new information returned from this call.
#' 
#' This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn\'t return an error.
#' 
#' For more information, see [AWS Managed VPN Connections](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param CustomerGatewayId The ID of the customer gateway.
#' @param Type The type of VPN connection (`ipsec.1`).
#' @param VpnGatewayId The ID of the virtual private gateway.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Options The options for the VPN connection.
#'
#' @examples
#'
#' @export
create_vpn_connection <- function (CustomerGatewayId, Type, VpnGatewayId, 
    DryRun = NULL, Options = NULL) 
{
    op <- Operation(name = "CreateVpnConnection", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_vpn_connection_input(CustomerGatewayId = CustomerGatewayId, 
        Type = Type, VpnGatewayId = VpnGatewayId, DryRun = DryRun, 
        Options = Options)
    output <- create_vpn_connection_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway
#'
#' Creates a static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway.
#' 
#' For more information about VPN connections, see [AWS Managed VPN Connections](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param DestinationCidrBlock The CIDR block associated with the local subnet of the customer network.
#' @param VpnConnectionId The ID of the VPN connection.
#'
#' @examples
#'
#' @export
create_vpn_connection_route <- function (DestinationCidrBlock, 
    VpnConnectionId) 
{
    op <- Operation(name = "CreateVpnConnectionRoute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_vpn_connection_route_input(DestinationCidrBlock = DestinationCidrBlock, 
        VpnConnectionId = VpnConnectionId)
    output <- create_vpn_connection_route_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a virtual private gateway
#'
#' Creates a virtual private gateway. A virtual private gateway is the endpoint on the VPC side of your VPN connection. You can create a virtual private gateway before creating the VPC itself.
#' 
#' For more information about virtual private gateways, see [AWS Managed VPN Connections](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param Type The type of VPN connection this virtual private gateway supports.
#' @param AvailabilityZone The Availability Zone for the virtual private gateway.
#' @param AmazonSideAsn A private Autonomous System Number (ASN) for the Amazon side of a BGP session. If you\'re using a 16-bit ASN, it must be in the 64512 to 65534 range. If you\'re using a 32-bit ASN, it must be in the 4200000000 to 4294967294 range.
#' 
#' Default: 64512
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
create_vpn_gateway <- function (Type, AvailabilityZone = NULL, 
    AmazonSideAsn = NULL, DryRun = NULL) 
{
    op <- Operation(name = "CreateVpnGateway", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- create_vpn_gateway_input(Type = Type, AvailabilityZone = AvailabilityZone, 
        AmazonSideAsn = AmazonSideAsn, DryRun = DryRun)
    output <- create_vpn_gateway_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified customer gateway
#'
#' Deletes the specified customer gateway. You must delete the VPN connection before you can delete the customer gateway.
#'
#' @param CustomerGatewayId The ID of the customer gateway.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example deletes the specified customer gateway.
#' delete_customer_gateway(
#'   CustomerGatewayId = "cgw-0e11f167"
#' )
#'
#' @export
delete_customer_gateway <- function (CustomerGatewayId, DryRun = NULL) 
{
    op <- Operation(name = "DeleteCustomerGateway", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_customer_gateway_input(CustomerGatewayId = CustomerGatewayId, 
        DryRun = DryRun)
    output <- delete_customer_gateway_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified set of DHCP options
#'
#' Deletes the specified set of DHCP options. You must disassociate the set of DHCP options before you can delete it. You can disassociate the set of DHCP options by associating either a new set of options or the default set of options with the VPC.
#'
#' @param DhcpOptionsId The ID of the DHCP options set.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example deletes the specified DHCP options set.
#' delete_dhcp_options(
#'   DhcpOptionsId = "dopt-d9070ebb"
#' )
#'
#' @export
delete_dhcp_options <- function (DhcpOptionsId, DryRun = NULL) 
{
    op <- Operation(name = "DeleteDhcpOptions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_dhcp_options_input(DhcpOptionsId = DhcpOptionsId, 
        DryRun = DryRun)
    output <- delete_dhcp_options_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes an egress-only internet gateway
#'
#' Deletes an egress-only internet gateway.
#'
#' @param EgressOnlyInternetGatewayId The ID of the egress-only internet gateway.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
delete_egress_only_internet_gateway <- function (EgressOnlyInternetGatewayId, 
    DryRun = NULL) 
{
    op <- Operation(name = "DeleteEgressOnlyInternetGateway", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- delete_egress_only_internet_gateway_input(EgressOnlyInternetGatewayId = EgressOnlyInternetGatewayId, 
        DryRun = DryRun)
    output <- delete_egress_only_internet_gateway_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified EC2 Fleet
#'
#' Deletes the specified EC2 Fleet.
#' 
#' After you delete an EC2 Fleet, it launches no new instances. You must specify whether an EC2 Fleet should also terminate its instances. If you terminate the instances, the EC2 Fleet enters the `deleted_terminating` state. Otherwise, the EC2 Fleet enters the `deleted_running` state, and the instances continue to run until they are interrupted or you terminate them manually.
#'
#' @param FleetIds The IDs of the EC2 Fleets.
#' @param TerminateInstances Indicates whether to terminate instances for an EC2 Fleet if it is deleted successfully.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
delete_fleets <- function (FleetIds, TerminateInstances, DryRun = NULL) 
{
    op <- Operation(name = "DeleteFleets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_fleets_input(FleetIds = FleetIds, TerminateInstances = TerminateInstances, 
        DryRun = DryRun)
    output <- delete_fleets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes one or more flow logs
#'
#' Deletes one or more flow logs.
#'
#' @param FlowLogIds One or more flow log IDs.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
delete_flow_logs <- function (FlowLogIds, DryRun = NULL) 
{
    op <- Operation(name = "DeleteFlowLogs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_flow_logs_input(FlowLogIds = FlowLogIds, 
        DryRun = DryRun)
    output <- delete_flow_logs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified Amazon FPGA Image (AFI)
#'
#' Deletes the specified Amazon FPGA Image (AFI).
#'
#' @param FpgaImageId The ID of the AFI.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
delete_fpga_image <- function (FpgaImageId, DryRun = NULL) 
{
    op <- Operation(name = "DeleteFpgaImage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_fpga_image_input(FpgaImageId = FpgaImageId, 
        DryRun = DryRun)
    output <- delete_fpga_image_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified internet gateway
#'
#' Deletes the specified internet gateway. You must detach the internet gateway from the VPC before you can delete it.
#'
#' @param InternetGatewayId The ID of the internet gateway.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example deletes the specified Internet gateway.
#' delete_internet_gateway(
#'   InternetGatewayId = "igw-c0a643a9"
#' )
#'
#' @export
delete_internet_gateway <- function (InternetGatewayId, DryRun = NULL) 
{
    op <- Operation(name = "DeleteInternetGateway", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_internet_gateway_input(InternetGatewayId = InternetGatewayId, 
        DryRun = DryRun)
    output <- delete_internet_gateway_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified key pair, by removing the public key from Amazon EC2
#'
#' Deletes the specified key pair, by removing the public key from Amazon EC2.
#'
#' @param KeyName The name of the key pair.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example deletes the specified key pair.
#' delete_key_pair(
#'   KeyName = "my-key-pair"
#' )
#'
#' @export
delete_key_pair <- function (KeyName, DryRun = NULL) 
{
    op <- Operation(name = "DeleteKeyPair", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_key_pair_input(KeyName = KeyName, DryRun = DryRun)
    output <- delete_key_pair_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a launch template
#'
#' Deletes a launch template. Deleting a launch template deletes all of its versions.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param LaunchTemplateId The ID of the launch template. You must specify either the launch template ID or launch template name in the request.
#' @param LaunchTemplateName The name of the launch template. You must specify either the launch template ID or launch template name in the request.
#'
#' @examples
#' # This example deletes the specified launch template.
#' delete_launch_template(
#'   LaunchTemplateId = "lt-0abcd290751193123"
#' )
#'
#' @export
delete_launch_template <- function (DryRun = NULL, LaunchTemplateId = NULL, 
    LaunchTemplateName = NULL) 
{
    op <- Operation(name = "DeleteLaunchTemplate", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_launch_template_input(DryRun = DryRun, LaunchTemplateId = LaunchTemplateId, 
        LaunchTemplateName = LaunchTemplateName)
    output <- delete_launch_template_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes one or more versions of a launch template
#'
#' Deletes one or more versions of a launch template. You cannot delete the default version of a launch template; you must first assign a different version as the default. If the default version is the only version for the launch template, you must delete the entire launch template using DeleteLaunchTemplate.
#'
#' @param Versions The version numbers of one or more launch template versions to delete.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param LaunchTemplateId The ID of the launch template. You must specify either the launch template ID or launch template name in the request.
#' @param LaunchTemplateName The name of the launch template. You must specify either the launch template ID or launch template name in the request.
#'
#' @examples
#' # This example deletes the specified launch template version.
#' delete_launch_template_versions(
#'   LaunchTemplateId = "lt-0abcd290751193123",
#'   Versions = list(
#'     "1"
#'   )
#' )
#'
#' @export
delete_launch_template_versions <- function (Versions, DryRun = NULL, 
    LaunchTemplateId = NULL, LaunchTemplateName = NULL) 
{
    op <- Operation(name = "DeleteLaunchTemplateVersions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_launch_template_versions_input(Versions = Versions, 
        DryRun = DryRun, LaunchTemplateId = LaunchTemplateId, 
        LaunchTemplateName = LaunchTemplateName)
    output <- delete_launch_template_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified NAT gateway
#'
#' Deletes the specified NAT gateway. Deleting a NAT gateway disassociates its Elastic IP address, but does not release the address from your account. Deleting a NAT gateway does not delete any NAT gateway routes in your route tables.
#'
#' @param NatGatewayId The ID of the NAT gateway.
#'
#' @examples
#' # This example deletes the specified NAT gateway.
#' delete_nat_gateway(
#'   NatGatewayId = "nat-04ae55e711cec5680"
#' )
#'
#' @export
delete_nat_gateway <- function (NatGatewayId) 
{
    op <- Operation(name = "DeleteNatGateway", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_nat_gateway_input(NatGatewayId = NatGatewayId)
    output <- delete_nat_gateway_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified network ACL
#'
#' Deletes the specified network ACL. You can\'t delete the ACL if it\'s associated with any subnets. You can\'t delete the default network ACL.
#'
#' @param NetworkAclId The ID of the network ACL.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example deletes the specified network ACL.
#' delete_network_acl(
#'   NetworkAclId = "acl-5fb85d36"
#' )
#'
#' @export
delete_network_acl <- function (NetworkAclId, DryRun = NULL) 
{
    op <- Operation(name = "DeleteNetworkAcl", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_network_acl_input(NetworkAclId = NetworkAclId, 
        DryRun = DryRun)
    output <- delete_network_acl_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified ingress or egress entry (rule) from the specified network ACL
#'
#' Deletes the specified ingress or egress entry (rule) from the specified network ACL.
#'
#' @param Egress Indicates whether the rule is an egress rule.
#' @param NetworkAclId The ID of the network ACL.
#' @param RuleNumber The rule number of the entry to delete.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example deletes ingress rule number 100 from the specified network
#' # ACL.
#' delete_network_acl_entry(
#'   Egress = TRUE,
#'   NetworkAclId = "acl-5fb85d36",
#'   RuleNumber = 100L
#' )
#'
#' @export
delete_network_acl_entry <- function (Egress, NetworkAclId, RuleNumber, 
    DryRun = NULL) 
{
    op <- Operation(name = "DeleteNetworkAclEntry", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_network_acl_entry_input(Egress = Egress, 
        NetworkAclId = NetworkAclId, RuleNumber = RuleNumber, 
        DryRun = DryRun)
    output <- delete_network_acl_entry_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified network interface
#'
#' Deletes the specified network interface. You must detach the network interface before you can delete it.
#'
#' @param NetworkInterfaceId The ID of the network interface.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example deletes the specified network interface.
#' delete_network_interface(
#'   NetworkInterfaceId = "eni-e5aa89a3"
#' )
#'
#' @export
delete_network_interface <- function (NetworkInterfaceId, DryRun = NULL) 
{
    op <- Operation(name = "DeleteNetworkInterface", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_network_interface_input(NetworkInterfaceId = NetworkInterfaceId, 
        DryRun = DryRun)
    output <- delete_network_interface_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a permission for a network interface
#'
#' Deletes a permission for a network interface. By default, you cannot delete the permission if the account for which you\'re removing the permission has attached the network interface to an instance. However, you can force delete the permission, regardless of any attachment.
#'
#' @param NetworkInterfacePermissionId The ID of the network interface permission.
#' @param Force Specify `true` to remove the permission even if the network interface is attached to an instance.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
delete_network_interface_permission <- function (NetworkInterfacePermissionId, 
    Force = NULL, DryRun = NULL) 
{
    op <- Operation(name = "DeleteNetworkInterfacePermission", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- delete_network_interface_permission_input(NetworkInterfacePermissionId = NetworkInterfacePermissionId, 
        Force = Force, DryRun = DryRun)
    output <- delete_network_interface_permission_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified placement group
#'
#' Deletes the specified placement group. You must terminate all instances in the placement group before you can delete the placement group. For more information, see [Placement Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param GroupName The name of the placement group.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example deletes the specified placement group.
#' # 
#' delete_placement_group(
#'   GroupName = "my-cluster"
#' )
#'
#' @export
delete_placement_group <- function (GroupName, DryRun = NULL) 
{
    op <- Operation(name = "DeletePlacementGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_placement_group_input(GroupName = GroupName, 
        DryRun = DryRun)
    output <- delete_placement_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified route from the specified route table
#'
#' Deletes the specified route from the specified route table.
#'
#' @param RouteTableId The ID of the route table.
#' @param DestinationCidrBlock The IPv4 CIDR range for the route. The value you specify must match the CIDR for the route exactly.
#' @param DestinationIpv6CidrBlock The IPv6 CIDR range for the route. The value you specify must match the CIDR for the route exactly.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example deletes the specified route from the specified route table.
#' delete_route(
#'   DestinationCidrBlock = "0.0.0.0/0",
#'   RouteTableId = "rtb-22574640"
#' )
#'
#' @export
delete_route <- function (RouteTableId, DestinationCidrBlock = NULL, 
    DestinationIpv6CidrBlock = NULL, DryRun = NULL) 
{
    op <- Operation(name = "DeleteRoute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_route_input(RouteTableId = RouteTableId, 
        DestinationCidrBlock = DestinationCidrBlock, DestinationIpv6CidrBlock = DestinationIpv6CidrBlock, 
        DryRun = DryRun)
    output <- delete_route_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified route table
#'
#' Deletes the specified route table. You must disassociate the route table from any subnets before you can delete it. You can\'t delete the main route table.
#'
#' @param RouteTableId The ID of the route table.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example deletes the specified route table.
#' delete_route_table(
#'   RouteTableId = "rtb-22574640"
#' )
#'
#' @export
delete_route_table <- function (RouteTableId, DryRun = NULL) 
{
    op <- Operation(name = "DeleteRouteTable", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_route_table_input(RouteTableId = RouteTableId, 
        DryRun = DryRun)
    output <- delete_route_table_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a security group
#'
#' Deletes a security group.
#' 
#' If you attempt to delete a security group that is associated with an instance, or is referenced by another security group, the operation fails with `InvalidGroup.InUse` in EC2-Classic or `DependencyViolation` in EC2-VPC.
#'
#' @param GroupId The ID of the security group. Required for a nondefault VPC.
#' @param GroupName &#91;EC2-Classic, default VPC&#93; The name of the security group. You can specify either the security group name or the security group ID.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example deletes the specified security group.
#' delete_security_group(
#'   GroupId = "sg-903004f8"
#' )
#'
#' @export
delete_security_group <- function (GroupId = NULL, GroupName = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "DeleteSecurityGroup", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_security_group_input(GroupId = GroupId, GroupName = GroupName, 
        DryRun = DryRun)
    output <- delete_security_group_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified snapshot
#'
#' Deletes the specified snapshot.
#' 
#' When you make periodic snapshots of a volume, the snapshots are incremental, and only the blocks on the device that have changed since your last snapshot are saved in the new snapshot. When you delete a snapshot, only the data not needed for any other snapshot is removed. So regardless of which prior snapshots have been deleted, all active snapshots will have access to all the information needed to restore the volume.
#' 
#' You cannot delete a snapshot of the root device of an EBS volume used by a registered AMI. You must first de-register the AMI before you can delete the snapshot.
#' 
#' For more information, see [Deleting an Amazon EBS Snapshot](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-snapshot.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param SnapshotId The ID of the EBS snapshot.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example deletes a snapshot with the snapshot ID of
#' # ``snap-1234567890abcdef0``. If the command succeeds, no output is
#' # returned.
#' delete_snapshot(
#'   SnapshotId = "snap-1234567890abcdef0"
#' )
#'
#' @export
delete_snapshot <- function (SnapshotId, DryRun = NULL) 
{
    op <- Operation(name = "DeleteSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_snapshot_input(SnapshotId = SnapshotId, DryRun = DryRun)
    output <- delete_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the data feed for Spot Instances
#'
#' Deletes the data feed for Spot Instances.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example deletes a Spot data feed subscription for the account.
#' delete_spot_datafeed_subscription()
#'
#' @export
delete_spot_datafeed_subscription <- function (DryRun = NULL) 
{
    op <- Operation(name = "DeleteSpotDatafeedSubscription", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- delete_spot_datafeed_subscription_input(DryRun = DryRun)
    output <- delete_spot_datafeed_subscription_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified subnet
#'
#' Deletes the specified subnet. You must terminate all running instances in the subnet before you can delete the subnet.
#'
#' @param SubnetId The ID of the subnet.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example deletes the specified subnet.
#' delete_subnet(
#'   SubnetId = "subnet-9d4a7b6c"
#' )
#'
#' @export
delete_subnet <- function (SubnetId, DryRun = NULL) 
{
    op <- Operation(name = "DeleteSubnet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_subnet_input(SubnetId = SubnetId, DryRun = DryRun)
    output <- delete_subnet_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified set of tags from the specified set of resources
#'
#' Deletes the specified set of tags from the specified set of resources.
#' 
#' To list the current tags, use DescribeTags. For more information about tags, see [Tagging Your Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Resources The IDs of one or more resources.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Tags One or more tags to delete. Specify a tag key and an optional tag value to delete specific tags. If you specify a tag key without a tag value, we delete any tag with this key regardless of its value. If you specify a tag key with an empty string as the tag value, we delete the tag only if its value is an empty string.
#' 
#' If you omit this parameter, we delete all user-defined tags for the specified resources. We do not delete AWS-generated tags (tags that have the `aws:` prefix).
#'
#' @examples
#' # This example deletes the tag Stack=test from the specified image.
#' delete_tags(
#'   Resources = list(
#'     "ami-78a54011"
#'   ),
#'   Tags = list(
#'     list(
#'       Key = "Stack",
#'       Value = "test"
#'     )
#'   )
#' )
#'
#' @export
delete_tags <- function (Resources, DryRun = NULL, Tags = NULL) 
{
    op <- Operation(name = "DeleteTags", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_tags_input(Resources = Resources, DryRun = DryRun, 
        Tags = Tags)
    output <- delete_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified EBS volume
#'
#' Deletes the specified EBS volume. The volume must be in the `available` state (not attached to an instance).
#' 
#' The volume can remain in the `deleting` state for several minutes.
#' 
#' For more information, see [Deleting an Amazon EBS Volume](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-deleting-volume.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param VolumeId The ID of the volume.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example deletes an available volume with the volume ID of
#' # ``vol-049df61146c4d7901``. If the command succeeds, no output is
#' # returned.
#' delete_volume(
#'   VolumeId = "vol-049df61146c4d7901"
#' )
#'
#' @export
delete_volume <- function (VolumeId, DryRun = NULL) 
{
    op <- Operation(name = "DeleteVolume", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_volume_input(VolumeId = VolumeId, DryRun = DryRun)
    output <- delete_volume_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified VPC
#'
#' Deletes the specified VPC. You must detach or delete all gateways and resources that are associated with the VPC before you can delete it. For example, you must terminate all instances running in the VPC, delete all security groups associated with the VPC (except the default one), delete all route tables associated with the VPC (except the default one), and so on.
#'
#' @param VpcId The ID of the VPC.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example deletes the specified VPC.
#' delete_vpc(
#'   VpcId = "vpc-a01106c2"
#' )
#'
#' @export
delete_vpc <- function (VpcId, DryRun = NULL) 
{
    op <- Operation(name = "DeleteVpc", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_vpc_input(VpcId = VpcId, DryRun = DryRun)
    output <- delete_vpc_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes one or more VPC endpoint connection notifications
#'
#' Deletes one or more VPC endpoint connection notifications.
#'
#' @param ConnectionNotificationIds One or more notification IDs.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
delete_vpc_endpoint_connection_notifications <- function (ConnectionNotificationIds, 
    DryRun = NULL) 
{
    op <- Operation(name = "DeleteVpcEndpointConnectionNotifications", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- delete_vpc_endpoint_connection_notifications_input(ConnectionNotificationIds = ConnectionNotificationIds, 
        DryRun = DryRun)
    output <- delete_vpc_endpoint_connection_notifications_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes one or more VPC endpoint service configurations in your account
#'
#' Deletes one or more VPC endpoint service configurations in your account. Before you delete the endpoint service configuration, you must reject any `Available` or `PendingAcceptance` interface endpoint connections that are attached to the service.
#'
#' @param ServiceIds The IDs of one or more services.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
delete_vpc_endpoint_service_configurations <- function (ServiceIds, 
    DryRun = NULL) 
{
    op <- Operation(name = "DeleteVpcEndpointServiceConfigurations", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- delete_vpc_endpoint_service_configurations_input(ServiceIds = ServiceIds, 
        DryRun = DryRun)
    output <- delete_vpc_endpoint_service_configurations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes one or more specified VPC endpoints
#'
#' Deletes one or more specified VPC endpoints. Deleting a gateway endpoint also deletes the endpoint routes in the route tables that were associated with the endpoint. Deleting an interface endpoint deletes the endpoint network interfaces.
#'
#' @param VpcEndpointIds One or more VPC endpoint IDs.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
delete_vpc_endpoints <- function (VpcEndpointIds, DryRun = NULL) 
{
    op <- Operation(name = "DeleteVpcEndpoints", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_vpc_endpoints_input(VpcEndpointIds = VpcEndpointIds, 
        DryRun = DryRun)
    output <- delete_vpc_endpoints_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes a VPC peering connection
#'
#' Deletes a VPC peering connection. Either the owner of the requester VPC or the owner of the accepter VPC can delete the VPC peering connection if it\'s in the `active` state. The owner of the requester VPC can delete a VPC peering connection in the `pending-acceptance` state. You cannot delete a VPC peering connection that\'s in the `failed` state.
#'
#' @param VpcPeeringConnectionId The ID of the VPC peering connection.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
delete_vpc_peering_connection <- function (VpcPeeringConnectionId, 
    DryRun = NULL) 
{
    op <- Operation(name = "DeleteVpcPeeringConnection", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_vpc_peering_connection_input(VpcPeeringConnectionId = VpcPeeringConnectionId, 
        DryRun = DryRun)
    output <- delete_vpc_peering_connection_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified VPN connection
#'
#' Deletes the specified VPN connection.
#' 
#' If you\'re deleting the VPC and its associated components, we recommend that you detach the virtual private gateway from the VPC and delete the VPC before deleting the VPN connection. If you believe that the tunnel credentials for your VPN connection have been compromised, you can delete the VPN connection and create a new one that has new keys, without needing to delete the VPC or virtual private gateway. If you create a new VPN connection, you must reconfigure the customer gateway using the new configuration information returned with the new VPN connection ID.
#'
#' @param VpnConnectionId The ID of the VPN connection.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
delete_vpn_connection <- function (VpnConnectionId, DryRun = NULL) 
{
    op <- Operation(name = "DeleteVpnConnection", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_vpn_connection_input(VpnConnectionId = VpnConnectionId, 
        DryRun = DryRun)
    output <- delete_vpn_connection_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway
#'
#' Deletes the specified static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway.
#'
#' @param DestinationCidrBlock The CIDR block associated with the local subnet of the customer network.
#' @param VpnConnectionId The ID of the VPN connection.
#'
#' @examples
#'
#' @export
delete_vpn_connection_route <- function (DestinationCidrBlock, 
    VpnConnectionId) 
{
    op <- Operation(name = "DeleteVpnConnectionRoute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_vpn_connection_route_input(DestinationCidrBlock = DestinationCidrBlock, 
        VpnConnectionId = VpnConnectionId)
    output <- delete_vpn_connection_route_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deletes the specified virtual private gateway
#'
#' Deletes the specified virtual private gateway. We recommend that before you delete a virtual private gateway, you detach it from the VPC and delete the VPN connection. Note that you don\'t need to delete the virtual private gateway if you plan to delete and recreate the VPN connection between your VPC and your network.
#'
#' @param VpnGatewayId The ID of the virtual private gateway.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
delete_vpn_gateway <- function (VpnGatewayId, DryRun = NULL) 
{
    op <- Operation(name = "DeleteVpnGateway", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- delete_vpn_gateway_input(VpnGatewayId = VpnGatewayId, 
        DryRun = DryRun)
    output <- delete_vpn_gateway_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Deregisters the specified AMI
#'
#' Deregisters the specified AMI. After you deregister an AMI, it can\'t be used to launch new instances; however, it doesn\'t affect any instances that you\'ve already launched from the AMI. You\'ll continue to incur usage costs for those instances until you terminate them.
#' 
#' When you deregister an Amazon EBS-backed AMI, it doesn\'t affect the snapshot that was created for the root volume of the instance during the AMI creation process. When you deregister an instance store-backed AMI, it doesn\'t affect the files that you uploaded to Amazon S3 when you created the AMI.
#'
#' @param ImageId The ID of the AMI.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
deregister_image <- function (ImageId, DryRun = NULL) 
{
    op <- Operation(name = "DeregisterImage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- deregister_image_input(ImageId = ImageId, DryRun = DryRun)
    output <- deregister_image_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes attributes of your AWS account
#'
#' Describes attributes of your AWS account. The following are the supported account attributes:
#' 
#' -   `supported-platforms`: Indicates whether your account can launch instances into EC2-Classic and EC2-VPC, or only into EC2-VPC.
#' 
#' -   `default-vpc`: The ID of the default VPC for your account, or `none`.
#' 
#' -   `max-instances`: The maximum number of On-Demand Instances that you can run.
#' 
#' -   `vpc-max-security-groups-per-interface`: The maximum number of security groups that you can assign to a network interface.
#' 
#' -   `max-elastic-ips`: The maximum number of Elastic IP addresses that you can allocate for use with EC2-Classic.
#' 
#' -   `vpc-max-elastic-ips`: The maximum number of Elastic IP addresses that you can allocate for use with EC2-VPC.
#'
#' @param AttributeNames One or more account attribute names.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes the supported-platforms attribute for your AWS
#' # account.
#' describe_account_attributes(
#'   AttributeNames = list(
#'     "supported-platforms"
#'   )
#' )
#' 
#' # This example describes the attributes for your AWS account.
#' describe_account_attributes()
#'
#' @export
describe_account_attributes <- function (AttributeNames = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "DescribeAccountAttributes", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_account_attributes_input(AttributeNames = AttributeNames, 
        DryRun = DryRun)
    output <- describe_account_attributes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your Elastic IP addresses
#'
#' Describes one or more of your Elastic IP addresses.
#' 
#' An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see [Elastic IP Addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Filters One or more filters. Filter names and values are case-sensitive.
#' 
#' -   `allocation-id` - &#91;EC2-VPC&#93; The allocation ID for the address.
#' 
#' -   `association-id` - &#91;EC2-VPC&#93; The association ID for the address.
#' 
#' -   `domain` - Indicates whether the address is for use in EC2-Classic (`standard`) or in a VPC (`vpc`).
#' 
#' -   `instance-id` - The ID of the instance the address is associated with, if any.
#' 
#' -   `network-interface-id` - &#91;EC2-VPC&#93; The ID of the network interface that the address is associated with, if any.
#' 
#' -   `network-interface-owner-id` - The AWS account ID of the owner.
#' 
#' -   `private-ip-address` - &#91;EC2-VPC&#93; The private IP address associated with the Elastic IP address.
#' 
#' -   `public-ip` - The Elastic IP address.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' @param PublicIps &#91;EC2-Classic&#93; One or more Elastic IP addresses.
#' 
#' Default: Describes all your Elastic IP addresses.
#' @param AllocationIds &#91;EC2-VPC&#93; One or more allocation IDs.
#' 
#' Default: Describes all your Elastic IP addresses.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes your Elastic IP addresses.
#' describe_addresses()
#' 
#' # This example describes your Elastic IP addresses for use with instances
#' # in a VPC.
#' describe_addresses(
#'   Filters = list(
#'     list(
#'       Name = "domain",
#'       Values = list(
#'         "vpc"
#'       )
#'     )
#'   )
#' )
#' 
#' # This example describes your Elastic IP addresses for use with instances
#' # in EC2-Classic.
#' describe_addresses(
#'   Filters = list(
#'     list(
#'       Name = "domain",
#'       Values = list(
#'         "standard"
#'       )
#'     )
#'   )
#' )
#'
#' @export
describe_addresses <- function (Filters = NULL, PublicIps = NULL, 
    AllocationIds = NULL, DryRun = NULL) 
{
    op <- Operation(name = "DescribeAddresses", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_addresses_input(Filters = Filters, PublicIps = PublicIps, 
        AllocationIds = AllocationIds, DryRun = DryRun)
    output <- describe_addresses_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the longer ID format settings for all resource types in a specific region
#'
#' Describes the longer ID format settings for all resource types in a specific region. This request is useful for performing a quick audit to determine whether a specific region is fully opted in for longer IDs (17-character IDs).
#' 
#' This request only returns information about resource types that support longer IDs.
#' 
#' The following resource types support longer IDs: `bundle` \| `conversion-task` \| `customer-gateway` \| `dhcp-options` \| `elastic-ip-allocation` \| `elastic-ip-association` \| `export-task` \| `flow-log` \| `image` \| `import-task` \| `instance` \| `internet-gateway` \| `network-acl` \| `network-acl-association` \| `network-interface` \| `network-interface-attachment` \| `prefix-list` \| `reservation` \| `route-table` \| `route-table-association` \| `security-group` \| `snapshot` \| `subnet` \| `subnet-cidr-block-association` \| `volume` \| `vpc` \| `vpc-cidr-block-association` \| `vpc-endpoint` \| `vpc-peering-connection` \| `vpn-connection` \| `vpn-gateway`.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
describe_aggregate_id_format <- function (DryRun = NULL) 
{
    op <- Operation(name = "DescribeAggregateIdFormat", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_aggregate_id_format_input(DryRun = DryRun)
    output <- describe_aggregate_id_format_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of the Availability Zones that are available to you
#'
#' Describes one or more of the Availability Zones that are available to you. The results include zones only for the region you\'re currently using. If there is an event impacting an Availability Zone, you can use this request to view the state and any provided message for that Availability Zone.
#' 
#' For more information, see [Regions and Availability Zones](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Filters One or more filters.
#' 
#' -   `message` - Information about the Availability Zone.
#' 
#' -   `region-name` - The name of the region for the Availability Zone (for example, `us-east-1`).
#' 
#' -   `state` - The state of the Availability Zone (`available` \| `information` \| `impaired` \| `unavailable`).
#' 
#' -   `zone-name` - The name of the Availability Zone (for example, `us-east-1a`).
#' @param ZoneNames The names of one or more Availability Zones.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes the Availability Zones that are available to you.
#' # The response includes Availability Zones only for the current region.
#' describe_availability_zones()
#'
#' @export
describe_availability_zones <- function (Filters = NULL, ZoneNames = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "DescribeAvailabilityZones", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_availability_zones_input(Filters = Filters, 
        ZoneNames = ZoneNames, DryRun = DryRun)
    output <- describe_availability_zones_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your bundling tasks
#'
#' Describes one or more of your bundling tasks.
#' 
#' Completed bundle tasks are listed for only a limited time. If your bundle task is no longer in the list, you can still register an AMI from it. Just use `RegisterImage` with the Amazon S3 bucket name and image manifest name you provided to the bundle task.
#'
#' @param BundleIds One or more bundle task IDs.
#' 
#' Default: Describes all your bundle tasks.
#' @param Filters One or more filters.
#' 
#' -   `bundle-id` - The ID of the bundle task.
#' 
#' -   `error-code` - If the task failed, the error code returned.
#' 
#' -   `error-message` - If the task failed, the error message returned.
#' 
#' -   `instance-id` - The ID of the instance.
#' 
#' -   `progress` - The level of task completion, as a percentage (for example, 20%).
#' 
#' -   `s3-bucket` - The Amazon S3 bucket to store the AMI.
#' 
#' -   `s3-prefix` - The beginning of the AMI name.
#' 
#' -   `start-time` - The time the task started (for example, 2013-09-15T17:15:20.000Z).
#' 
#' -   `state` - The state of the task (`pending` \| `waiting-for-shutdown` \| `bundling` \| `storing` \| `cancelling` \| `complete` \| `failed`).
#' 
#' -   `update-time` - The time of the most recent update for the task.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
describe_bundle_tasks <- function (BundleIds = NULL, Filters = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "DescribeBundleTasks", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_bundle_tasks_input(BundleIds = BundleIds, 
        Filters = Filters, DryRun = DryRun)
    output <- describe_bundle_tasks_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your linked EC2-Classic instances
#'
#' Describes one or more of your linked EC2-Classic instances. This request only returns information about EC2-Classic instances linked to a VPC through ClassicLink. You cannot use this request to return information about other instances.
#'
#' @param Filters One or more filters.
#' 
#' -   `group-id` - The ID of a VPC security group that\'s associated with the instance.
#' 
#' -   `instance-id` - The ID of the instance.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `vpc-id` - The ID of the VPC to which the instance is linked.
#' 
#'     `vpc-id` - The ID of the VPC that the instance is linked to.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param InstanceIds One or more instance IDs. Must be instances linked to a VPC through ClassicLink.
#' @param MaxResults The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000. If `MaxResults` is given a value larger than 1000, only 1000 results are returned. You cannot specify this parameter and the instance IDs parameter in the same request.
#' 
#' Constraint: If the value is greater than 1000, we return only 1000 items.
#' @param NextToken The token to retrieve the next page of results.
#'
#' @examples
#'
#' @export
describe_classic_link_instances <- function (Filters = NULL, 
    DryRun = NULL, InstanceIds = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeClassicLinkInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_classic_link_instances_input(Filters = Filters, 
        DryRun = DryRun, InstanceIds = InstanceIds, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- describe_classic_link_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your conversion tasks
#'
#' Describes one or more of your conversion tasks. For more information, see the [VM Import/Export User Guide](http://docs.aws.amazon.com/vm-import/latest/userguide/).
#' 
#' For information about the import manifest referenced by this API action, see [VM Import Manifest](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
#'
#' @param ConversionTaskIds One or more conversion task IDs.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
describe_conversion_tasks <- function (ConversionTaskIds = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "DescribeConversionTasks", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_conversion_tasks_input(ConversionTaskIds = ConversionTaskIds, 
        DryRun = DryRun)
    output <- describe_conversion_tasks_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your VPN customer gateways
#'
#' Describes one or more of your VPN customer gateways.
#' 
#' For more information about VPN customer gateways, see [AWS Managed VPN Connections](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param CustomerGatewayIds One or more customer gateway IDs.
#' 
#' Default: Describes all your customer gateways.
#' @param Filters One or more filters.
#' 
#' -   `bgp-asn` - The customer gateway\'s Border Gateway Protocol (BGP) Autonomous System Number (ASN).
#' 
#' -   `customer-gateway-id` - The ID of the customer gateway.
#' 
#' -   `ip-address` - The IP address of the customer gateway\'s Internet-routable external interface.
#' 
#' -   `state` - The state of the customer gateway (`pending` \| `available` \| `deleting` \| `deleted`).
#' 
#' -   `type` - The type of customer gateway. Currently, the only supported type is `ipsec.1`.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes the specified customer gateway.
#' describe_customer_gateways(
#'   CustomerGatewayIds = list(
#'     "cgw-0e11f167"
#'   )
#' )
#'
#' @export
describe_customer_gateways <- function (CustomerGatewayIds = NULL, 
    Filters = NULL, DryRun = NULL) 
{
    op <- Operation(name = "DescribeCustomerGateways", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_customer_gateways_input(CustomerGatewayIds = CustomerGatewayIds, 
        Filters = Filters, DryRun = DryRun)
    output <- describe_customer_gateways_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your DHCP options sets
#'
#' Describes one or more of your DHCP options sets.
#' 
#' For more information, see [DHCP Options Sets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_DHCP_Options.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param DhcpOptionsIds The IDs of one or more DHCP options sets.
#' 
#' Default: Describes all your DHCP options sets.
#' @param Filters One or more filters.
#' 
#' -   `dhcp-options-id` - The ID of a set of DHCP options.
#' 
#' -   `key` - The key for one of the options (for example, `domain-name`).
#' 
#' -   `value` - The value for one of the options.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes the specified DHCP options set.
#' describe_dhcp_options(
#'   DhcpOptionsIds = list(
#'     "dopt-d9070ebb"
#'   )
#' )
#'
#' @export
describe_dhcp_options <- function (DhcpOptionsIds = NULL, Filters = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "DescribeDhcpOptions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_dhcp_options_input(DhcpOptionsIds = DhcpOptionsIds, 
        Filters = Filters, DryRun = DryRun)
    output <- describe_dhcp_options_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your egress-only internet gateways
#'
#' Describes one or more of your egress-only internet gateways.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param EgressOnlyInternetGatewayIds One or more egress-only internet gateway IDs.
#' @param MaxResults The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000. If `MaxResults` is given a value larger than 1000, only 1000 results are returned.
#' @param NextToken The token to retrieve the next page of results.
#'
#' @examples
#'
#' @export
describe_egress_only_internet_gateways <- function (DryRun = NULL, 
    EgressOnlyInternetGatewayIds = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeEgressOnlyInternetGateways", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_egress_only_internet_gateways_input(DryRun = DryRun, 
        EgressOnlyInternetGatewayIds = EgressOnlyInternetGatewayIds, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_egress_only_internet_gateways_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the Elastic GPUs associated with your instances
#'
#' Describes the Elastic GPUs associated with your instances. For more information about Elastic GPUs, see [Amazon EC2 Elastic GPUs](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/elastic-gpus.html).
#'
#' @param ElasticGpuIds One or more Elastic GPU IDs.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Filters One or more filters.
#' 
#' -   `availability-zone` - The Availability Zone in which the Elastic GPU resides.
#' 
#' -   `elastic-gpu-health` - The status of the Elastic GPU (`OK` \| `IMPAIRED`).
#' 
#' -   `elastic-gpu-state` - The state of the Elastic GPU (`ATTACHED`).
#' 
#' -   `elastic-gpu-type` - The type of Elastic GPU; for example, `eg1.medium`.
#' 
#' -   `instance-id` - The ID of the instance to which the Elastic GPU is associated.
#' @param MaxResults The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 5 and 1000.
#' @param NextToken The token to request the next page of results.
#'
#' @examples
#'
#' @export
describe_elastic_gpus <- function (ElasticGpuIds = NULL, DryRun = NULL, 
    Filters = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeElasticGpus", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_elastic_gpus_input(ElasticGpuIds = ElasticGpuIds, 
        DryRun = DryRun, Filters = Filters, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- describe_elastic_gpus_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your export tasks
#'
#' Describes one or more of your export tasks.
#'
#' @param ExportTaskIds One or more export task IDs.
#'
#' @examples
#'
#' @export
describe_export_tasks <- function (ExportTaskIds = NULL) 
{
    op <- Operation(name = "DescribeExportTasks", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_export_tasks_input(ExportTaskIds = ExportTaskIds)
    output <- describe_export_tasks_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the events for the specified EC2 Fleet during the specified time
#'
#' Describes the events for the specified EC2 Fleet during the specified time.
#'
#' @param FleetId The ID of the EC2 Fleet.
#' @param StartTime The start date and time for the events, in UTC format (for example, *YYYY*-*MM*-*DD*T*HH*:*MM*:*SS*Z).
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param EventType The type of events to describe. By default, all events are described.
#' @param MaxResults The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.
#' @param NextToken The token for the next set of results.
#'
#' @examples
#'
#' @export
describe_fleet_history <- function (FleetId, StartTime, DryRun = NULL, 
    EventType = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeFleetHistory", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_fleet_history_input(FleetId = FleetId, 
        StartTime = StartTime, DryRun = DryRun, EventType = EventType, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_fleet_history_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the running instances for the specified EC2 Fleet
#'
#' Describes the running instances for the specified EC2 Fleet.
#'
#' @param FleetId The ID of the EC2 Fleet.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param MaxResults The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.
#' @param NextToken The token for the next set of results.
#' @param Filters One or more filters.
#' 
#' -   `instance-type` - The instance type.
#'
#' @examples
#'
#' @export
describe_fleet_instances <- function (FleetId, DryRun = NULL, 
    MaxResults = NULL, NextToken = NULL, Filters = NULL) 
{
    op <- Operation(name = "DescribeFleetInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_fleet_instances_input(FleetId = FleetId, 
        DryRun = DryRun, MaxResults = MaxResults, NextToken = NextToken, 
        Filters = Filters)
    output <- describe_fleet_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your EC2 Fleet
#'
#' Describes one or more of your EC2 Fleet.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param MaxResults The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.
#' @param NextToken The token for the next set of results.
#' @param FleetIds The ID of the EC2 Fleets.
#' @param Filters One or more filters.
#' 
#' -   `activity-status` - The progress of the EC2 Fleet ( `error` \| `pending-fulfillment` \| `pending-termination` \| `fulfilled`).
#' 
#' -   `excess-capacity-termination-policy` - Indicates whether to terminate running instances if the target capacity is decreased below the current EC2 Fleet size (`true` \| `false`).
#' 
#' -   `fleet-state` - The state of the EC2 Fleet (`submitted` \| `active` \| `deleted` \| `failed` \| `deleted-running` \| `deleted-terminating` \| `modifying`).
#' 
#' -   `replace-unhealthy-instances` - Indicates whether EC2 Fleet should replace unhealthy instances (`true` \| `false`).
#' 
#' -   `type` - The type of request (`request` \| `maintain`).
#'
#' @examples
#'
#' @export
describe_fleets <- function (DryRun = NULL, MaxResults = NULL, 
    NextToken = NULL, FleetIds = NULL, Filters = NULL) 
{
    op <- Operation(name = "DescribeFleets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_fleets_input(DryRun = DryRun, MaxResults = MaxResults, 
        NextToken = NextToken, FleetIds = FleetIds, Filters = Filters)
    output <- describe_fleets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more flow logs
#'
#' Describes one or more flow logs. To view the information in your flow logs (the log streams for the network interfaces), you must use the CloudWatch Logs console or the CloudWatch Logs API.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Filter One or more filters.
#' 
#' -   `deliver-log-status` - The status of the logs delivery (`SUCCESS` \| `FAILED`).
#' 
#' -   `log-destination-type` - The type of destination to which the flow log publishes data. Possible destination types include `cloud-watch-logs` and `S3`.
#' 
#' -   `flow-log-id` - The ID of the flow log.
#' 
#' -   `log-group-name` - The name of the log group.
#' 
#' -   `resource-id` - The ID of the VPC, subnet, or network interface.
#' 
#' -   `traffic-type` - The type of traffic (`ACCEPT` \| `REJECT` \| `ALL`).
#' @param FlowLogIds One or more flow log IDs.
#' @param MaxResults The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000. If `MaxResults` is given a value larger than 1000, only 1000 results are returned. You cannot specify this parameter and the flow log IDs parameter in the same request.
#' @param NextToken The token to retrieve the next page of results.
#'
#' @examples
#'
#' @export
describe_flow_logs <- function (DryRun = NULL, Filter = NULL, 
    FlowLogIds = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeFlowLogs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_flow_logs_input(DryRun = DryRun, Filter = Filter, 
        FlowLogIds = FlowLogIds, MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_flow_logs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified attribute of the specified Amazon FPGA Image (AFI)
#'
#' Describes the specified attribute of the specified Amazon FPGA Image (AFI).
#'
#' @param FpgaImageId The ID of the AFI.
#' @param Attribute The AFI attribute.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
describe_fpga_image_attribute <- function (FpgaImageId, Attribute, 
    DryRun = NULL) 
{
    op <- Operation(name = "DescribeFpgaImageAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_fpga_image_attribute_input(FpgaImageId = FpgaImageId, 
        Attribute = Attribute, DryRun = DryRun)
    output <- describe_fpga_image_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more available Amazon FPGA Images (AFIs)
#'
#' Describes one or more available Amazon FPGA Images (AFIs). These include public AFIs, private AFIs that you own, and AFIs owned by other AWS accounts for which you have load permissions.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param FpgaImageIds One or more AFI IDs.
#' @param Owners Filters the AFI by owner. Specify an AWS account ID, `self` (owner is the sender of the request), or an AWS owner alias (valid values are `amazon` \| `aws-marketplace`).
#' @param Filters One or more filters.
#' 
#' -   `create-time` - The creation time of the AFI.
#' 
#' -   `fpga-image-id` - The FPGA image identifier (AFI ID).
#' 
#' -   `fpga-image-global-id` - The global FPGA image identifier (AGFI ID).
#' 
#' -   `name` - The name of the AFI.
#' 
#' -   `owner-id` - The AWS account ID of the AFI owner.
#' 
#' -   `product-code` - The product code.
#' 
#' -   `shell-version` - The version of the AWS Shell that was used to create the bitstream.
#' 
#' -   `state` - The state of the AFI (`pending` \| `failed` \| `available` \| `unavailable`).
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `update-time` - The time of the most recent update.
#' @param NextToken The token to retrieve the next page of results.
#' @param MaxResults The maximum number of results to return in a single call.
#'
#' @examples
#'
#' @export
describe_fpga_images <- function (DryRun = NULL, FpgaImageIds = NULL, 
    Owners = NULL, Filters = NULL, NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "DescribeFpgaImages", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_fpga_images_input(DryRun = DryRun, FpgaImageIds = FpgaImageIds, 
        Owners = Owners, Filters = Filters, NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- describe_fpga_images_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the Dedicated Host reservations that are available to purchase
#'
#' Describes the Dedicated Host reservations that are available to purchase.
#' 
#' The results describe all the Dedicated Host reservation offerings, including offerings that may not match the instance family and region of your Dedicated Hosts. When purchasing an offering, ensure that the instance family and Region of the offering matches that of the Dedicated Hosts with which it is to be associated. For more information about supported instance types, see [Dedicated Hosts Overview](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Filter One or more filters.
#' 
#' -   `instance-family` - The instance family of the offering (for example, `m4`).
#' 
#' -   `payment-option` - The payment option (`NoUpfront` \| `PartialUpfront` \| `AllUpfront`).
#' @param MaxDuration This is the maximum duration of the reservation to purchase, specified in seconds. Reservations are available in one-year and three-year terms. The number of seconds specified must be the number of seconds in a year (365x24x60x60) times one of the supported durations (1 or 3). For example, specify 94608000 for three years.
#' @param MaxResults The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `nextToken` value. This value can be between 5 and 500. If `maxResults` is given a larger value than 500, you receive an error.
#' @param MinDuration This is the minimum duration of the reservation you\'d like to purchase, specified in seconds. Reservations are available in one-year and three-year terms. The number of seconds specified must be the number of seconds in a year (365x24x60x60) times one of the supported durations (1 or 3). For example, specify 31536000 for one year.
#' @param NextToken The token to use to retrieve the next page of results.
#' @param OfferingId The ID of the reservation offering.
#'
#' @examples
#'
#' @export
describe_host_reservation_offerings <- function (Filter = NULL, 
    MaxDuration = NULL, MaxResults = NULL, MinDuration = NULL, 
    NextToken = NULL, OfferingId = NULL) 
{
    op <- Operation(name = "DescribeHostReservationOfferings", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_host_reservation_offerings_input(Filter = Filter, 
        MaxDuration = MaxDuration, MaxResults = MaxResults, MinDuration = MinDuration, 
        NextToken = NextToken, OfferingId = OfferingId)
    output <- describe_host_reservation_offerings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes reservations that are associated with Dedicated Hosts in your account
#'
#' Describes reservations that are associated with Dedicated Hosts in your account.
#'
#' @param Filter One or more filters.
#' 
#' -   `instance-family` - The instance family (for example, `m4`).
#' 
#' -   `payment-option` - The payment option (`NoUpfront` \| `PartialUpfront` \| `AllUpfront`).
#' 
#' -   `state` - The state of the reservation (`payment-pending` \| `payment-failed` \| `active` \| `retired`).
#' @param HostReservationIdSet One or more host reservation IDs.
#' @param MaxResults The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `nextToken` value. This value can be between 5 and 500. If `maxResults` is given a larger value than 500, you receive an error.
#' @param NextToken The token to use to retrieve the next page of results.
#'
#' @examples
#'
#' @export
describe_host_reservations <- function (Filter = NULL, HostReservationIdSet = NULL, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeHostReservations", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_host_reservations_input(Filter = Filter, 
        HostReservationIdSet = HostReservationIdSet, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- describe_host_reservations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your Dedicated Hosts
#'
#' Describes one or more of your Dedicated Hosts.
#' 
#' The results describe only the Dedicated Hosts in the region you\'re currently using. All listed instances consume capacity on your Dedicated Host. Dedicated Hosts that have recently been released are listed with the state `released`.
#'
#' @param Filter One or more filters.
#' 
#' -   `auto-placement` - Whether auto-placement is enabled or disabled (`on` \| `off`).
#' 
#' -   `availability-zone` - The Availability Zone of the host.
#' 
#' -   `client-token` - The idempotency token that you provided when you allocated the host.
#' 
#' -   `host-reservation-id` - The ID of the reservation assigned to this host.
#' 
#' -   `instance-type` - The instance type size that the Dedicated Host is configured to support.
#' 
#' -   `state` - The allocation state of the Dedicated Host (`available` \| `under-assessment` \| `permanent-failure` \| `released` \| `released-permanent-failure`).
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' @param HostIds The IDs of the Dedicated Hosts. The IDs are used for targeted instance launches.
#' @param MaxResults The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `nextToken` value. This value can be between 5 and 500. If `maxResults` is given a larger value than 500, you receive an error. You cannot specify this parameter and the host IDs parameter in the same request.
#' @param NextToken The token to retrieve the next page of results.
#'
#' @examples
#'
#' @export
describe_hosts <- function (Filter = NULL, HostIds = NULL, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeHosts", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_hosts_input(Filter = Filter, HostIds = HostIds, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_hosts_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes your IAM instance profile associations
#'
#' Describes your IAM instance profile associations.
#'
#' @param AssociationIds One or more IAM instance profile associations.
#' @param Filters One or more filters.
#' 
#' -   `instance-id` - The ID of the instance.
#' 
#' -   `state` - The state of the association (`associating` \| `associated` \| `disassociating` \| `disassociated`).
#' @param MaxResults The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value.
#' @param NextToken The token to request the next page of results.
#'
#' @examples
#' # This example describes the specified IAM instance profile association.
#' describe_iam_instance_profile_associations(
#'   AssociationIds = list(
#'     "iip-assoc-0db249b1f25fa24b8"
#'   )
#' )
#'
#' @export
describe_iam_instance_profile_associations <- function (AssociationIds = NULL, 
    Filters = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeIamInstanceProfileAssociations", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_iam_instance_profile_associations_input(AssociationIds = AssociationIds, 
        Filters = Filters, MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_iam_instance_profile_associations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the ID format settings for your resources on a per-region basis, for example, to view which resource types are enabled for longer IDs
#'
#' Describes the ID format settings for your resources on a per-region basis, for example, to view which resource types are enabled for longer IDs. This request only returns information about resource types whose ID formats can be modified; it does not return information about other resource types.
#' 
#' The following resource types support longer IDs: `bundle` \| `conversion-task` \| `customer-gateway` \| `dhcp-options` \| `elastic-ip-allocation` \| `elastic-ip-association` \| `export-task` \| `flow-log` \| `image` \| `import-task` \| `instance` \| `internet-gateway` \| `network-acl` \| `network-acl-association` \| `network-interface` \| `network-interface-attachment` \| `prefix-list` \| `reservation` \| `route-table` \| `route-table-association` \| `security-group` \| `snapshot` \| `subnet` \| `subnet-cidr-block-association` \| `volume` \| `vpc` \| `vpc-cidr-block-association` \| `vpc-endpoint` \| `vpc-peering-connection` \| `vpn-connection` \| `vpn-gateway`.
#' 
#' These settings apply to the IAM user who makes the request; they do not apply to the entire AWS account. By default, an IAM user defaults to the same settings as the root user, unless they explicitly override the settings by running the ModifyIdFormat command. Resources created with longer IDs are visible to all IAM users, regardless of these settings and provided that they have permission to use the relevant `Describe` command for the resource type.
#'
#' @param Resource The type of resource: `bundle` \| `conversion-task` \| `customer-gateway` \| `dhcp-options` \| `elastic-ip-allocation` \| `elastic-ip-association` \| `export-task` \| `flow-log` \| `image` \| `import-task` \| `instance` \| `internet-gateway` \| `network-acl` \| `network-acl-association` \| `network-interface` \| `network-interface-attachment` \| `prefix-list` \| `reservation` \| `route-table` \| `route-table-association` \| `security-group` \| `snapshot` \| `subnet` \| `subnet-cidr-block-association` \| `volume` \| `vpc` \| `vpc-cidr-block-association` \| `vpc-endpoint` \| `vpc-peering-connection` \| `vpn-connection` \| `vpn-gateway`
#'
#' @examples
#'
#' @export
describe_id_format <- function (Resource = NULL) 
{
    op <- Operation(name = "DescribeIdFormat", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_id_format_input(Resource = Resource)
    output <- describe_id_format_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the ID format settings for resources for the specified IAM user, IAM role, or root user
#'
#' Describes the ID format settings for resources for the specified IAM user, IAM role, or root user. For example, you can view the resource types that are enabled for longer IDs. This request only returns information about resource types whose ID formats can be modified; it does not return information about other resource types. For more information, see [Resource IDs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' The following resource types support longer IDs: `bundle` \| `conversion-task` \| `customer-gateway` \| `dhcp-options` \| `elastic-ip-allocation` \| `elastic-ip-association` \| `export-task` \| `flow-log` \| `image` \| `import-task` \| `instance` \| `internet-gateway` \| `network-acl` \| `network-acl-association` \| `network-interface` \| `network-interface-attachment` \| `prefix-list` \| `reservation` \| `route-table` \| `route-table-association` \| `security-group` \| `snapshot` \| `subnet` \| `subnet-cidr-block-association` \| `volume` \| `vpc` \| `vpc-cidr-block-association` \| `vpc-endpoint` \| `vpc-peering-connection` \| `vpn-connection` \| `vpn-gateway`.
#' 
#' These settings apply to the principal specified in the request. They do not apply to the principal that makes the request.
#'
#' @param PrincipalArn The ARN of the principal, which can be an IAM role, IAM user, or the root user.
#' @param Resource The type of resource: `bundle` \| `conversion-task` \| `customer-gateway` \| `dhcp-options` \| `elastic-ip-allocation` \| `elastic-ip-association` \| `export-task` \| `flow-log` \| `image` \| `import-task` \| `instance` \| `internet-gateway` \| `network-acl` \| `network-acl-association` \| `network-interface` \| `network-interface-attachment` \| `prefix-list` \| `reservation` \| `route-table` \| `route-table-association` \| `security-group` \| `snapshot` \| `subnet` \| `subnet-cidr-block-association` \| `volume` \| `vpc` \| `vpc-cidr-block-association` \| `vpc-endpoint` \| `vpc-peering-connection` \| `vpn-connection` \| `vpn-gateway`
#'
#' @examples
#'
#' @export
describe_identity_id_format <- function (PrincipalArn, Resource = NULL) 
{
    op <- Operation(name = "DescribeIdentityIdFormat", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_identity_id_format_input(PrincipalArn = PrincipalArn, 
        Resource = Resource)
    output <- describe_identity_id_format_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified attribute of the specified AMI
#'
#' Describes the specified attribute of the specified AMI. You can specify only one attribute at a time.
#'
#' @param Attribute The AMI attribute.
#' 
#' **Note**: Depending on your account privileges, the `blockDeviceMapping` attribute may return a `Client.AuthFailure` error. If this happens, use DescribeImages to get information about the block device mapping for the AMI.
#' @param ImageId The ID of the AMI.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes the launch permissions for the specified AMI.
#' describe_image_attribute(
#'   Attribute = "launchPermission",
#'   ImageId = "ami-5731123e"
#' )
#'
#' @export
describe_image_attribute <- function (Attribute, ImageId, DryRun = NULL) 
{
    op <- Operation(name = "DescribeImageAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_image_attribute_input(Attribute = Attribute, 
        ImageId = ImageId, DryRun = DryRun)
    output <- describe_image_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of the images (AMIs, AKIs, and ARIs) available to you
#'
#' Describes one or more of the images (AMIs, AKIs, and ARIs) available to you. Images available to you include public images, private images that you own, and private images owned by other AWS accounts but for which you have explicit launch permissions.
#' 
#' Deregistered images are included in the returned results for an unspecified interval after deregistration.
#'
#' @param ExecutableUsers Scopes the images by users with explicit launch permissions. Specify an AWS account ID, `self` (the sender of the request), or `all` (public AMIs).
#' @param Filters One or more filters.
#' 
#' -   `architecture` - The image architecture (`i386` \| `x86_64`).
#' 
#' -   `block-device-mapping.delete-on-termination` - A Boolean value that indicates whether the Amazon EBS volume is deleted on instance termination.
#' 
#' -   `block-device-mapping.device-name` - The device name specified in the block device mapping (for example, `/dev/sdh` or `xvdh`).
#' 
#' -   `block-device-mapping.snapshot-id` - The ID of the snapshot used for the EBS volume.
#' 
#' -   `block-device-mapping.volume-size` - The volume size of the EBS volume, in GiB.
#' 
#' -   `block-device-mapping.volume-type` - The volume type of the EBS volume (`gp2` \| `io1` \| `st1 `\| `sc1` \| `standard`).
#' 
#' -   `description` - The description of the image (provided during image creation).
#' 
#' -   `ena-support` - A Boolean that indicates whether enhanced networking with ENA is enabled.
#' 
#' -   `hypervisor` - The hypervisor type (`ovm` \| `xen`).
#' 
#' -   `image-id` - The ID of the image.
#' 
#' -   `image-type` - The image type (`machine` \| `kernel` \| `ramdisk`).
#' 
#' -   `is-public` - A Boolean that indicates whether the image is public.
#' 
#' -   `kernel-id` - The kernel ID.
#' 
#' -   `manifest-location` - The location of the image manifest.
#' 
#' -   `name` - The name of the AMI (provided during image creation).
#' 
#' -   `owner-alias` - String value from an Amazon-maintained list (`amazon` \| `aws-marketplace` \| `microsoft`) of snapshot owners. Not to be confused with the user-configured AWS account alias, which is set from the IAM console.
#' 
#' -   `owner-id` - The AWS account ID of the image owner.
#' 
#' -   `platform` - The platform. To only list Windows-based AMIs, use `windows`.
#' 
#' -   `product-code` - The product code.
#' 
#' -   `product-code.type` - The type of the product code (`devpay` \| `marketplace`).
#' 
#' -   `ramdisk-id` - The RAM disk ID.
#' 
#' -   `root-device-name` - The device name of the root device volume (for example, `/dev/sda1`).
#' 
#' -   `root-device-type` - The type of the root device volume (`ebs` \| `instance-store`).
#' 
#' -   `state` - The state of the image (`available` \| `pending` \| `failed`).
#' 
#' -   `state-reason-code` - The reason code for the state change.
#' 
#' -   `state-reason-message` - The message for the state change.
#' 
#' -   `sriov-net-support` - A value of `simple` indicates that enhanced networking with the Intel 82599 VF interface is enabled.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `virtualization-type` - The virtualization type (`paravirtual` \| `hvm`).
#' @param ImageIds One or more image IDs.
#' 
#' Default: Describes all images available to you.
#' @param Owners Filters the images by the owner. Specify an AWS account ID, `self` (owner is the sender of the request), or an AWS owner alias (valid values are `amazon` \| `aws-marketplace` \| `microsoft`). Omitting this option returns all images for which you have launch permissions, regardless of ownership.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes the specified AMI.
#' describe_images(
#'   ImageIds = list(
#'     "ami-5731123e"
#'   )
#' )
#'
#' @export
describe_images <- function (ExecutableUsers = NULL, Filters = NULL, 
    ImageIds = NULL, Owners = NULL, DryRun = NULL) 
{
    op <- Operation(name = "DescribeImages", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_images_input(ExecutableUsers = ExecutableUsers, 
        Filters = Filters, ImageIds = ImageIds, Owners = Owners, 
        DryRun = DryRun)
    output <- describe_images_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Displays details about an import virtual machine or import snapshot tasks that are already created
#'
#' Displays details about an import virtual machine or import snapshot tasks that are already created.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Filters Filter tasks using the `task-state` filter and one of the following values: active, completed, deleting, deleted.
#' @param ImportTaskIds A list of import image task IDs.
#' @param MaxResults The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value.
#' @param NextToken A token that indicates the next page of results.
#'
#' @examples
#'
#' @export
describe_import_image_tasks <- function (DryRun = NULL, Filters = NULL, 
    ImportTaskIds = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeImportImageTasks", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_import_image_tasks_input(DryRun = DryRun, 
        Filters = Filters, ImportTaskIds = ImportTaskIds, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- describe_import_image_tasks_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes your import snapshot tasks
#'
#' Describes your import snapshot tasks.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Filters One or more filters.
#' @param ImportTaskIds A list of import snapshot task IDs.
#' @param MaxResults The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value.
#' @param NextToken A token that indicates the next page of results.
#'
#' @examples
#'
#' @export
describe_import_snapshot_tasks <- function (DryRun = NULL, Filters = NULL, 
    ImportTaskIds = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeImportSnapshotTasks", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_import_snapshot_tasks_input(DryRun = DryRun, 
        Filters = Filters, ImportTaskIds = ImportTaskIds, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- describe_import_snapshot_tasks_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified attribute of the specified instance
#'
#' Describes the specified attribute of the specified instance. You can specify only one attribute at a time. Valid attribute values are: `instanceType` \| `kernel` \| `ramdisk` \| `userData` \| `disableApiTermination` \| `instanceInitiatedShutdownBehavior` \| `rootDeviceName` \| `blockDeviceMapping` \| `productCodes` \| `sourceDestCheck` \| `groupSet` \| `ebsOptimized` \| `sriovNetSupport`
#'
#' @param Attribute The instance attribute.
#' 
#' Note: The `enaSupport` attribute is not supported at this time.
#' @param InstanceId The ID of the instance.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes the instance type of the specified instance.
#' # 
#' describe_instance_attribute(
#'   Attribute = "instanceType",
#'   InstanceId = "i-1234567890abcdef0"
#' )
#' 
#' # This example describes the ``disableApiTermination`` attribute of the
#' # specified instance.
#' # 
#' describe_instance_attribute(
#'   Attribute = "disableApiTermination",
#'   InstanceId = "i-1234567890abcdef0"
#' )
#' 
#' # This example describes the ``blockDeviceMapping`` attribute of the
#' # specified instance.
#' # 
#' describe_instance_attribute(
#'   Attribute = "blockDeviceMapping",
#'   InstanceId = "i-1234567890abcdef0"
#' )
#'
#' @export
describe_instance_attribute <- function (Attribute, InstanceId, 
    DryRun = NULL) 
{
    op <- Operation(name = "DescribeInstanceAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_instance_attribute_input(Attribute = Attribute, 
        InstanceId = InstanceId, DryRun = DryRun)
    output <- describe_instance_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the credit option for CPU usage of one or more of your T2 or T3 instances
#'
#' Describes the credit option for CPU usage of one or more of your T2 or T3 instances. The credit options are `standard` and `unlimited`.
#' 
#' If you do not specify an instance ID, Amazon EC2 returns T2 and T3 instances with the `unlimited` credit option, as well as instances that were previously configured as T2 or T3 with the `unlimited` credit option. For example, if you resize a T2 instance, while it is configured as `unlimited`, to an M4 instance, Amazon EC2 returns the M4 instance.
#' 
#' If you specify one or more instance IDs, Amazon EC2 returns the credit option (`standard` or `unlimited`) of those instances. If you specify an instance ID that is not valid, such as an instance that is not a T2 or T3 instance, an error is returned.
#' 
#' Recently terminated instances might appear in the returned results. This interval is usually less than one hour.
#' 
#' If an Availability Zone is experiencing a service disruption and you specify instance IDs in the affected zone, or do not specify any instance IDs at all, the call fails. If you specify only instance IDs in an unaffected zone, the call works normally.
#' 
#' For more information, see [Burstable Performance Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Filters One or more filters.
#' 
#' -   `instance-id` - The ID of the instance.
#' @param InstanceIds One or more instance IDs.
#' 
#' Default: Describes all your instances.
#' 
#' Constraints: Maximum 1000 explicitly specified instance IDs.
#' @param MaxResults The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.
#' @param NextToken The token to retrieve the next page of results.
#'
#' @examples
#'
#' @export
describe_instance_credit_specifications <- function (DryRun = NULL, 
    Filters = NULL, InstanceIds = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeInstanceCreditSpecifications", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_instance_credit_specifications_input(DryRun = DryRun, 
        Filters = Filters, InstanceIds = InstanceIds, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- describe_instance_credit_specifications_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the status of one or more instances
#'
#' Describes the status of one or more instances. By default, only running instances are described, unless you specifically indicate to return the status of all instances.
#' 
#' Instance status includes the following components:
#' 
#' -   **Status checks** - Amazon EC2 performs status checks on running EC2 instances to identify hardware and software issues. For more information, see [Status Checks for Your Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-system-instance-status-check.html) and [Troubleshooting Instances with Failed Status Checks](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstances.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' -   **Scheduled events** - Amazon EC2 can schedule events (such as reboot, stop, or terminate) for your instances related to hardware issues, software updates, or system maintenance. For more information, see [Scheduled Events for Your Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-instances-status-check_sched.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' -   **Instance state** - You can manage your instances from the moment you launch them through their termination. For more information, see [Instance Lifecycle](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Filters One or more filters.
#' 
#' -   `availability-zone` - The Availability Zone of the instance.
#' 
#' -   `event.code` - The code for the scheduled event (`instance-reboot` \| `system-reboot` \| `system-maintenance` \| `instance-retirement` \| `instance-stop`).
#' 
#' -   `event.description` - A description of the event.
#' 
#' -   `event.not-after` - The latest end time for the scheduled event (for example, `2014-09-15T17:15:20.000Z`).
#' 
#' -   `event.not-before` - The earliest start time for the scheduled event (for example, `2014-09-15T17:15:20.000Z`).
#' 
#' -   `instance-state-code` - The code for the instance state, as a 16-bit unsigned integer. The high byte is used for internal purposes and should be ignored. The low byte is set based on the state represented. The valid values are 0 (pending), 16 (running), 32 (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).
#' 
#' -   `instance-state-name` - The state of the instance (`pending` \| `running` \| `shutting-down` \| `terminated` \| `stopping` \| `stopped`).
#' 
#' -   `instance-status.reachability` - Filters on instance status where the name is `reachability` (`passed` \| `failed` \| `initializing` \| `insufficient-data`).
#' 
#' -   `instance-status.status` - The status of the instance (`ok` \| `impaired` \| `initializing` \| `insufficient-data` \| `not-applicable`).
#' 
#' -   `system-status.reachability` - Filters on system status where the name is `reachability` (`passed` \| `failed` \| `initializing` \| `insufficient-data`).
#' 
#' -   `system-status.status` - The system status of the instance (`ok` \| `impaired` \| `initializing` \| `insufficient-data` \| `not-applicable`).
#' @param InstanceIds One or more instance IDs.
#' 
#' Default: Describes all your instances.
#' 
#' Constraints: Maximum 100 explicitly specified instance IDs.
#' @param MaxResults The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.
#' @param NextToken The token to retrieve the next page of results.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param IncludeAllInstances When `true`, includes the health status for all instances. When `false`, includes the health status for running instances only.
#' 
#' Default: `false`
#'
#' @examples
#' # This example describes the current status of the specified instance.
#' describe_instance_status(
#'   InstanceIds = list(
#'     "i-1234567890abcdef0"
#'   )
#' )
#'
#' @export
describe_instance_status <- function (Filters = NULL, InstanceIds = NULL, 
    MaxResults = NULL, NextToken = NULL, DryRun = NULL, IncludeAllInstances = NULL) 
{
    op <- Operation(name = "DescribeInstanceStatus", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_instance_status_input(Filters = Filters, 
        InstanceIds = InstanceIds, MaxResults = MaxResults, NextToken = NextToken, 
        DryRun = DryRun, IncludeAllInstances = IncludeAllInstances)
    output <- describe_instance_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your instances
#'
#' Describes one or more of your instances.
#' 
#' If you specify one or more instance IDs, Amazon EC2 returns information for those instances. If you do not specify instance IDs, Amazon EC2 returns information for all relevant instances. If you specify an instance ID that is not valid, an error is returned. If you specify an instance that you do not own, it is not included in the returned results.
#' 
#' Recently terminated instances might appear in the returned results. This interval is usually less than one hour.
#' 
#' If you describe instances in the rare case where an Availability Zone is experiencing a service disruption and you specify instance IDs that are in the affected zone, or do not specify any instance IDs at all, the call fails. If you describe instances and specify only instance IDs that are in an unaffected zone, the call works normally.
#'
#' @param Filters One or more filters.
#' 
#' -   `affinity` - The affinity setting for an instance running on a Dedicated Host (`default` \| `host`).
#' 
#' -   `architecture` - The instance architecture (`i386` \| `x86_64`).
#' 
#' -   `availability-zone` - The Availability Zone of the instance.
#' 
#' -   `block-device-mapping.attach-time` - The attach time for an EBS volume mapped to the instance, for example, `2010-09-15T17:15:20.000Z`.
#' 
#' -   `block-device-mapping.delete-on-termination` - A Boolean that indicates whether the EBS volume is deleted on instance termination.
#' 
#' -   `block-device-mapping.device-name` - The device name specified in the block device mapping (for example, `/dev/sdh` or `xvdh`).
#' 
#' -   `block-device-mapping.status` - The status for the EBS volume (`attaching` \| `attached` \| `detaching` \| `detached`).
#' 
#' -   `block-device-mapping.volume-id` - The volume ID of the EBS volume.
#' 
#' -   `client-token` - The idempotency token you provided when you launched the instance.
#' 
#' -   `dns-name` - The public DNS name of the instance.
#' 
#' -   `group-id` - The ID of the security group for the instance. EC2-Classic only.
#' 
#' -   `group-name` - The name of the security group for the instance. EC2-Classic only.
#' 
#' -   `host-id` - The ID of the Dedicated Host on which the instance is running, if applicable.
#' 
#' -   `hypervisor` - The hypervisor type of the instance (`ovm` \| `xen`).
#' 
#' -   `iam-instance-profile.arn` - The instance profile associated with the instance. Specified as an ARN.
#' 
#' -   `image-id` - The ID of the image used to launch the instance.
#' 
#' -   `instance-id` - The ID of the instance.
#' 
#' -   `instance-lifecycle` - Indicates whether this is a Spot Instance or a Scheduled Instance (`spot` \| `scheduled`).
#' 
#' -   `instance-state-code` - The state of the instance, as a 16-bit unsigned integer. The high byte is used for internal purposes and should be ignored. The low byte is set based on the state represented. The valid values are: 0 (pending), 16 (running), 32 (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).
#' 
#' -   `instance-state-name` - The state of the instance (`pending` \| `running` \| `shutting-down` \| `terminated` \| `stopping` \| `stopped`).
#' 
#' -   `instance-type` - The type of instance (for example, `t2.micro`).
#' 
#' -   `instance.group-id` - The ID of the security group for the instance.
#' 
#' -   `instance.group-name` - The name of the security group for the instance.
#' 
#' -   `ip-address` - The public IPv4 address of the instance.
#' 
#' -   `kernel-id` - The kernel ID.
#' 
#' -   `key-name` - The name of the key pair used when the instance was launched.
#' 
#' -   `launch-index` - When launching multiple instances, this is the index for the instance in the launch group (for example, 0, 1, 2, and so on).
#' 
#' -   `launch-time` - The time when the instance was launched.
#' 
#' -   `monitoring-state` - Indicates whether detailed monitoring is enabled (`disabled` \| `enabled`).
#' 
#' -   `network-interface.addresses.private-ip-address` - The private IPv4 address associated with the network interface.
#' 
#' -   `network-interface.addresses.primary` - Specifies whether the IPv4 address of the network interface is the primary private IPv4 address.
#' 
#' -   `network-interface.addresses.association.public-ip` - The ID of the association of an Elastic IP address (IPv4) with a network interface.
#' 
#' -   `network-interface.addresses.association.ip-owner-id` - The owner ID of the private IPv4 address associated with the network interface.
#' 
#' -   `network-interface.association.public-ip` - The address of the Elastic IP address (IPv4) bound to the network interface.
#' 
#' -   `network-interface.association.ip-owner-id` - The owner of the Elastic IP address (IPv4) associated with the network interface.
#' 
#' -   `network-interface.association.allocation-id` - The allocation ID returned when you allocated the Elastic IP address (IPv4) for your network interface.
#' 
#' -   `network-interface.association.association-id` - The association ID returned when the network interface was associated with an IPv4 address.
#' 
#' -   `network-interface.attachment.attachment-id` - The ID of the interface attachment.
#' 
#' -   `network-interface.attachment.instance-id` - The ID of the instance to which the network interface is attached.
#' 
#' -   `network-interface.attachment.instance-owner-id` - The owner ID of the instance to which the network interface is attached.
#' 
#' -   `network-interface.attachment.device-index` - The device index to which the network interface is attached.
#' 
#' -   `network-interface.attachment.status` - The status of the attachment (`attaching` \| `attached` \| `detaching` \| `detached`).
#' 
#' -   `network-interface.attachment.attach-time` - The time that the network interface was attached to an instance.
#' 
#' -   `network-interface.attachment.delete-on-termination` - Specifies whether the attachment is deleted when an instance is terminated.
#' 
#' -   `network-interface.availability-zone` - The Availability Zone for the network interface.
#' 
#' -   `network-interface.description` - The description of the network interface.
#' 
#' -   `network-interface.group-id` - The ID of a security group associated with the network interface.
#' 
#' -   `network-interface.group-name` - The name of a security group associated with the network interface.
#' 
#' -   `network-interface.ipv6-addresses.ipv6-address` - The IPv6 address associated with the network interface.
#' 
#' -   `network-interface.mac-address` - The MAC address of the network interface.
#' 
#' -   `network-interface.network-interface-id` - The ID of the network interface.
#' 
#' -   `network-interface.owner-id` - The ID of the owner of the network interface.
#' 
#' -   `network-interface.private-dns-name` - The private DNS name of the network interface.
#' 
#' -   `network-interface.requester-id` - The requester ID for the network interface.
#' 
#' -   `network-interface.requester-managed` - Indicates whether the network interface is being managed by AWS.
#' 
#' -   `network-interface.status` - The status of the network interface (`available`) \| `in-use`).
#' 
#' -   `network-interface.source-dest-check` - Whether the network interface performs source/destination checking. A value of `true` means that checking is enabled, and `false` means that checking is disabled. The value must be `false` for the network interface to perform network address translation (NAT) in your VPC.
#' 
#' -   `network-interface.subnet-id` - The ID of the subnet for the network interface.
#' 
#' -   `network-interface.vpc-id` - The ID of the VPC for the network interface.
#' 
#' -   `owner-id` - The AWS account ID of the instance owner.
#' 
#' -   `placement-group-name` - The name of the placement group for the instance.
#' 
#' -   `platform` - The platform. Use `windows` if you have Windows instances; otherwise, leave blank.
#' 
#' -   `private-dns-name` - The private IPv4 DNS name of the instance.
#' 
#' -   `private-ip-address` - The private IPv4 address of the instance.
#' 
#' -   `product-code` - The product code associated with the AMI used to launch the instance.
#' 
#' -   `product-code.type` - The type of product code (`devpay` \| `marketplace`).
#' 
#' -   `ramdisk-id` - The RAM disk ID.
#' 
#' -   `reason` - The reason for the current state of the instance (for example, shows \"User Initiated &#91;date&#93;\" when you stop or terminate the instance). Similar to the state-reason-code filter.
#' 
#' -   `requester-id` - The ID of the entity that launched the instance on your behalf (for example, AWS Management Console, Auto Scaling, and so on).
#' 
#' -   `reservation-id` - The ID of the instance\'s reservation. A reservation ID is created any time you launch an instance. A reservation ID has a one-to-one relationship with an instance launch request, but can be associated with more than one instance if you launch multiple instances using the same launch request. For example, if you launch one instance, you get one reservation ID. If you launch ten instances using the same launch request, you also get one reservation ID.
#' 
#' -   `root-device-name` - The device name of the root device volume (for example, `/dev/sda1`).
#' 
#' -   `root-device-type` - The type of the root device volume (`ebs` \| `instance-store`).
#' 
#' -   `source-dest-check` - Indicates whether the instance performs source/destination checking. A value of `true` means that checking is enabled, and `false` means that checking is disabled. The value must be `false` for the instance to perform network address translation (NAT) in your VPC.
#' 
#' -   `spot-instance-request-id` - The ID of the Spot Instance request.
#' 
#' -   `state-reason-code` - The reason code for the state change.
#' 
#' -   `state-reason-message` - A message that describes the state change.
#' 
#' -   `subnet-id` - The ID of the subnet for the instance.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources that have a tag with a specific key, regardless of the tag value.
#' 
#' -   `tenancy` - The tenancy of an instance (`dedicated` \| `default` \| `host`).
#' 
#' -   `virtualization-type` - The virtualization type of the instance (`paravirtual` \| `hvm`).
#' 
#' -   `vpc-id` - The ID of the VPC that the instance is running in.
#' @param InstanceIds One or more instance IDs.
#' 
#' Default: Describes all your instances.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param MaxResults The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 5 and 1000. You cannot specify this parameter and the instance IDs parameter in the same call.
#' @param NextToken The token to request the next page of results.
#'
#' @examples
#' # This example describes the specified instance.
#' describe_instances(
#'   InstanceIds = list(
#'     "i-1234567890abcdef0"
#'   )
#' )
#' 
#' # This example describes the instances with the t2.micro instance type.
#' describe_instances(
#'   Filters = list(
#'     list(
#'       Name = "instance-type",
#'       Values = list(
#'         "t2.micro"
#'       )
#'     )
#'   )
#' )
#' 
#' # This example describes the instances with the Purpose=test tag.
#' describe_instances(
#'   Filters = list(
#'     list(
#'       Name = "tag:Purpose",
#'       Values = list(
#'         "test"
#'       )
#'     )
#'   )
#' )
#'
#' @export
describe_instances <- function (Filters = NULL, InstanceIds = NULL, 
    DryRun = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_instances_input(Filters = Filters, InstanceIds = InstanceIds, 
        DryRun = DryRun, MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your internet gateways
#'
#' Describes one or more of your internet gateways.
#'
#' @param Filters One or more filters.
#' 
#' -   `attachment.state` - The current state of the attachment between the gateway and the VPC (`available`). Present only if a VPC is attached.
#' 
#' -   `attachment.vpc-id` - The ID of an attached VPC.
#' 
#' -   `internet-gateway-id` - The ID of the Internet gateway.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param InternetGatewayIds One or more internet gateway IDs.
#' 
#' Default: Describes all your internet gateways.
#'
#' @examples
#' # This example describes the Internet gateway for the specified VPC.
#' describe_internet_gateways(
#'   Filters = list(
#'     list(
#'       Name = "attachment.vpc-id",
#'       Values = list(
#'         "vpc-a01106c2"
#'       )
#'     )
#'   )
#' )
#'
#' @export
describe_internet_gateways <- function (Filters = NULL, DryRun = NULL, 
    InternetGatewayIds = NULL) 
{
    op <- Operation(name = "DescribeInternetGateways", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_internet_gateways_input(Filters = Filters, 
        DryRun = DryRun, InternetGatewayIds = InternetGatewayIds)
    output <- describe_internet_gateways_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your key pairs
#'
#' Describes one or more of your key pairs.
#' 
#' For more information about key pairs, see [Key Pairs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Filters One or more filters.
#' 
#' -   `fingerprint` - The fingerprint of the key pair.
#' 
#' -   `key-name` - The name of the key pair.
#' @param KeyNames One or more key pair names.
#' 
#' Default: Describes all your key pairs.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example displays the fingerprint for the specified key.
#' describe_key_pairs(
#'   KeyNames = list(
#'     "my-key-pair"
#'   )
#' )
#'
#' @export
describe_key_pairs <- function (Filters = NULL, KeyNames = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "DescribeKeyPairs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_key_pairs_input(Filters = Filters, KeyNames = KeyNames, 
        DryRun = DryRun)
    output <- describe_key_pairs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more versions of a specified launch template
#'
#' Describes one or more versions of a specified launch template. You can describe all versions, individual versions, or a range of versions.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param LaunchTemplateId The ID of the launch template. You must specify either the launch template ID or launch template name in the request.
#' @param LaunchTemplateName The name of the launch template. You must specify either the launch template ID or launch template name in the request.
#' @param Versions One or more versions of the launch template.
#' @param MinVersion The version number after which to describe launch template versions.
#' @param MaxVersion The version number up to which to describe launch template versions.
#' @param NextToken The token to request the next page of results.
#' @param MaxResults The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 1 and 200.
#' @param Filters One or more filters.
#' 
#' -   `create-time` - The time the launch template version was created.
#' 
#' -   `ebs-optimized` - A boolean that indicates whether the instance is optimized for Amazon EBS I/O.
#' 
#' -   `iam-instance-profile` - The ARN of the IAM instance profile.
#' 
#' -   `image-id` - The ID of the AMI.
#' 
#' -   `instance-type` - The instance type.
#' 
#' -   `is-default-version` - A boolean that indicates whether the launch template version is the default version.
#' 
#' -   `kernel-id` - The kernel ID.
#' 
#' -   `ram-disk-id` - The RAM disk ID.
#'
#' @examples
#' # This example describes the versions for the specified launch template.
#' describe_launch_template_versions(
#'   LaunchTemplateId = "068f72b72934aff71"
#' )
#'
#' @export
describe_launch_template_versions <- function (DryRun = NULL, 
    LaunchTemplateId = NULL, LaunchTemplateName = NULL, Versions = NULL, 
    MinVersion = NULL, MaxVersion = NULL, NextToken = NULL, MaxResults = NULL, 
    Filters = NULL) 
{
    op <- Operation(name = "DescribeLaunchTemplateVersions", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_launch_template_versions_input(DryRun = DryRun, 
        LaunchTemplateId = LaunchTemplateId, LaunchTemplateName = LaunchTemplateName, 
        Versions = Versions, MinVersion = MinVersion, MaxVersion = MaxVersion, 
        NextToken = NextToken, MaxResults = MaxResults, Filters = Filters)
    output <- describe_launch_template_versions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more launch templates
#'
#' Describes one or more launch templates.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param LaunchTemplateIds One or more launch template IDs.
#' @param LaunchTemplateNames One or more launch template names.
#' @param Filters One or more filters.
#' 
#' -   `create-time` - The time the launch template was created.
#' 
#' -   `launch-template-name` - The name of the launch template.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' @param NextToken The token to request the next page of results.
#' @param MaxResults The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. This value can be between 5 and 1000.
#'
#' @examples
#' # This example describes the specified launch template.
#' describe_launch_templates(
#'   LaunchTemplateIds = list(
#'     "lt-01238c059e3466abc"
#'   )
#' )
#'
#' @export
describe_launch_templates <- function (DryRun = NULL, LaunchTemplateIds = NULL, 
    LaunchTemplateNames = NULL, Filters = NULL, NextToken = NULL, 
    MaxResults = NULL) 
{
    op <- Operation(name = "DescribeLaunchTemplates", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_launch_templates_input(DryRun = DryRun, 
        LaunchTemplateIds = LaunchTemplateIds, LaunchTemplateNames = LaunchTemplateNames, 
        Filters = Filters, NextToken = NextToken, MaxResults = MaxResults)
    output <- describe_launch_templates_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes your Elastic IP addresses that are being moved to the EC2-VPC platform, or that are being restored to the EC2-Classic platform
#'
#' Describes your Elastic IP addresses that are being moved to the EC2-VPC platform, or that are being restored to the EC2-Classic platform. This request does not return information about any other Elastic IP addresses in your account.
#'
#' @param Filters One or more filters.
#' 
#' -   `moving-status` - The status of the Elastic IP address (`MovingToVpc` \| `RestoringToClassic`).
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param MaxResults The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000; if `MaxResults` is given a value outside of this range, an error is returned.
#' 
#' Default: If no value is provided, the default is 1000.
#' @param NextToken The token to use to retrieve the next page of results.
#' @param PublicIps One or more Elastic IP addresses.
#'
#' @examples
#' # This example describes all of your moving Elastic IP addresses.
#' describe_moving_addresses()
#'
#' @export
describe_moving_addresses <- function (Filters = NULL, DryRun = NULL, 
    MaxResults = NULL, NextToken = NULL, PublicIps = NULL) 
{
    op <- Operation(name = "DescribeMovingAddresses", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_moving_addresses_input(Filters = Filters, 
        DryRun = DryRun, MaxResults = MaxResults, NextToken = NextToken, 
        PublicIps = PublicIps)
    output <- describe_moving_addresses_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your NAT gateways
#'
#' Describes one or more of your NAT gateways.
#'
#' @param Filter One or more filters.
#' 
#' -   `nat-gateway-id` - The ID of the NAT gateway.
#' 
#' -   `state` - The state of the NAT gateway (`pending` \| `failed` \| `available` \| `deleting` \| `deleted`).
#' 
#' -   `subnet-id` - The ID of the subnet in which the NAT gateway resides.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `vpc-id` - The ID of the VPC in which the NAT gateway resides.
#' @param MaxResults The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.
#' 
#' Constraint: If the value specified is greater than 1000, we return only 1000 items.
#' @param NatGatewayIds One or more NAT gateway IDs.
#' @param NextToken The token to retrieve the next page of results.
#'
#' @examples
#' # This example describes the NAT gateway for the specified VPC.
#' describe_nat_gateways(
#'   Filter = list(
#'     list(
#'       Name = "vpc-id",
#'       Values = list(
#'         "vpc-1a2b3c4d"
#'       )
#'     )
#'   )
#' )
#'
#' @export
describe_nat_gateways <- function (Filter = NULL, MaxResults = NULL, 
    NatGatewayIds = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeNatGateways", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_nat_gateways_input(Filter = Filter, MaxResults = MaxResults, 
        NatGatewayIds = NatGatewayIds, NextToken = NextToken)
    output <- describe_nat_gateways_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your network ACLs
#'
#' Describes one or more of your network ACLs.
#' 
#' For more information, see [Network ACLs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param Filters One or more filters.
#' 
#' -   `association.association-id` - The ID of an association ID for the ACL.
#' 
#' -   `association.network-acl-id` - The ID of the network ACL involved in the association.
#' 
#' -   `association.subnet-id` - The ID of the subnet involved in the association.
#' 
#' -   `default` - Indicates whether the ACL is the default network ACL for the VPC.
#' 
#' -   `entry.cidr` - The IPv4 CIDR range specified in the entry.
#' 
#' -   `entry.icmp.code` - The ICMP code specified in the entry, if any.
#' 
#' -   `entry.icmp.type` - The ICMP type specified in the entry, if any.
#' 
#' -   `entry.ipv6-cidr` - The IPv6 CIDR range specified in the entry.
#' 
#' -   `entry.port-range.from` - The start of the port range specified in the entry.
#' 
#' -   `entry.port-range.to` - The end of the port range specified in the entry.
#' 
#' -   `entry.protocol` - The protocol specified in the entry (`tcp` \| `udp` \| `icmp` or a protocol number).
#' 
#' -   `entry.rule-action` - Allows or denies the matching traffic (`allow` \| `deny`).
#' 
#' -   `entry.rule-number` - The number of an entry (in other words, rule) in the set of ACL entries.
#' 
#' -   `network-acl-id` - The ID of the network ACL.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `vpc-id` - The ID of the VPC for the network ACL.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param NetworkAclIds One or more network ACL IDs.
#' 
#' Default: Describes all your network ACLs.
#'
#' @examples
#' # This example describes the specified network ACL.
#' describe_network_acls(
#'   NetworkAclIds = list(
#'     "acl-5fb85d36"
#'   )
#' )
#'
#' @export
describe_network_acls <- function (Filters = NULL, DryRun = NULL, 
    NetworkAclIds = NULL) 
{
    op <- Operation(name = "DescribeNetworkAcls", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_network_acls_input(Filters = Filters, DryRun = DryRun, 
        NetworkAclIds = NetworkAclIds)
    output <- describe_network_acls_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes a network interface attribute
#'
#' Describes a network interface attribute. You can specify only one attribute at a time.
#'
#' @param NetworkInterfaceId The ID of the network interface.
#' @param Attribute The attribute of the network interface. This parameter is required.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes the attachment attribute of the specified network
#' # interface.
#' describe_network_interface_attribute(
#'   Attribute = "attachment",
#'   NetworkInterfaceId = "eni-686ea200"
#' )
#' 
#' # This example describes the description attribute of the specified
#' # network interface.
#' describe_network_interface_attribute(
#'   Attribute = "description",
#'   NetworkInterfaceId = "eni-686ea200"
#' )
#' 
#' # This example describes the groupSet attribute of the specified network
#' # interface.
#' describe_network_interface_attribute(
#'   Attribute = "groupSet",
#'   NetworkInterfaceId = "eni-686ea200"
#' )
#' 
#' # This example describes the sourceDestCheck attribute of the specified
#' # network interface.
#' describe_network_interface_attribute(
#'   Attribute = "sourceDestCheck",
#'   NetworkInterfaceId = "eni-686ea200"
#' )
#'
#' @export
describe_network_interface_attribute <- function (NetworkInterfaceId, 
    Attribute = NULL, DryRun = NULL) 
{
    op <- Operation(name = "DescribeNetworkInterfaceAttribute", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_network_interface_attribute_input(NetworkInterfaceId = NetworkInterfaceId, 
        Attribute = Attribute, DryRun = DryRun)
    output <- describe_network_interface_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the permissions for your network interfaces
#'
#' Describes the permissions for your network interfaces.
#'
#' @param NetworkInterfacePermissionIds One or more network interface permission IDs.
#' @param Filters One or more filters.
#' 
#' -   `network-interface-permission.network-interface-permission-id` - The ID of the permission.
#' 
#' -   `network-interface-permission.network-interface-id` - The ID of the network interface.
#' 
#' -   `network-interface-permission.aws-account-id` - The AWS account ID.
#' 
#' -   `network-interface-permission.aws-service` - The AWS service.
#' 
#' -   `network-interface-permission.permission` - The type of permission (`INSTANCE-ATTACH` \| `EIP-ASSOCIATE`).
#' @param NextToken The token to request the next page of results.
#' @param MaxResults The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned `NextToken` value. If this parameter is not specified, up to 50 results are returned by default.
#'
#' @examples
#'
#' @export
describe_network_interface_permissions <- function (NetworkInterfacePermissionIds = NULL, 
    Filters = NULL, NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "DescribeNetworkInterfacePermissions", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_network_interface_permissions_input(NetworkInterfacePermissionIds = NetworkInterfacePermissionIds, 
        Filters = Filters, NextToken = NextToken, MaxResults = MaxResults)
    output <- describe_network_interface_permissions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your network interfaces
#'
#' Describes one or more of your network interfaces.
#'
#' @param Filters One or more filters.
#' 
#' -   `addresses.private-ip-address` - The private IPv4 addresses associated with the network interface.
#' 
#' -   `addresses.primary` - Whether the private IPv4 address is the primary IP address associated with the network interface.
#' 
#' -   `addresses.association.public-ip` - The association ID returned when the network interface was associated with the Elastic IP address (IPv4).
#' 
#' -   `addresses.association.owner-id` - The owner ID of the addresses associated with the network interface.
#' 
#' -   `association.association-id` - The association ID returned when the network interface was associated with an IPv4 address.
#' 
#' -   `association.allocation-id` - The allocation ID returned when you allocated the Elastic IP address (IPv4) for your network interface.
#' 
#' -   `association.ip-owner-id` - The owner of the Elastic IP address (IPv4) associated with the network interface.
#' 
#' -   `association.public-ip` - The address of the Elastic IP address (IPv4) bound to the network interface.
#' 
#' -   `association.public-dns-name` - The public DNS name for the network interface (IPv4).
#' 
#' -   `attachment.attachment-id` - The ID of the interface attachment.
#' 
#' -   `attachment.attach.time` - The time that the network interface was attached to an instance.
#' 
#' -   `attachment.delete-on-termination` - Indicates whether the attachment is deleted when an instance is terminated.
#' 
#' -   `attachment.device-index` - The device index to which the network interface is attached.
#' 
#' -   `attachment.instance-id` - The ID of the instance to which the network interface is attached.
#' 
#' -   `attachment.instance-owner-id` - The owner ID of the instance to which the network interface is attached.
#' 
#' -   `attachment.nat-gateway-id` - The ID of the NAT gateway to which the network interface is attached.
#' 
#' -   `attachment.status` - The status of the attachment (`attaching` \| `attached` \| `detaching` \| `detached`).
#' 
#' -   `availability-zone` - The Availability Zone of the network interface.
#' 
#' -   `description` - The description of the network interface.
#' 
#' -   `group-id` - The ID of a security group associated with the network interface.
#' 
#' -   `group-name` - The name of a security group associated with the network interface.
#' 
#' -   `ipv6-addresses.ipv6-address` - An IPv6 address associated with the network interface.
#' 
#' -   `mac-address` - The MAC address of the network interface.
#' 
#' -   `network-interface-id` - The ID of the network interface.
#' 
#' -   `owner-id` - The AWS account ID of the network interface owner.
#' 
#' -   `private-ip-address` - The private IPv4 address or addresses of the network interface.
#' 
#' -   `private-dns-name` - The private DNS name of the network interface (IPv4).
#' 
#' -   `requester-id` - The ID of the entity that launched the instance on your behalf (for example, AWS Management Console, Auto Scaling, and so on).
#' 
#' -   `requester-managed` - Indicates whether the network interface is being managed by an AWS service (for example, AWS Management Console, Auto Scaling, and so on).
#' 
#' -   `source-desk-check` - Indicates whether the network interface performs source/destination checking. A value of `true` means checking is enabled, and `false` means checking is disabled. The value must be `false` for the network interface to perform network address translation (NAT) in your VPC.
#' 
#' -   `status` - The status of the network interface. If the network interface is not attached to an instance, the status is `available`; if a network interface is attached to an instance the status is `in-use`.
#' 
#' -   `subnet-id` - The ID of the subnet for the network interface.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `vpc-id` - The ID of the VPC for the network interface.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param NetworkInterfaceIds One or more network interface IDs.
#' 
#' Default: Describes all your network interfaces.
#' @param NextToken The token to retrieve the next page of results.
#' @param MaxResults The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.
#'
#' @examples
#' # 
#' describe_network_interfaces(
#'   NetworkInterfaceIds = list(
#'     "eni-e5aa89a3"
#'   )
#' )
#'
#' @export
describe_network_interfaces <- function (Filters = NULL, DryRun = NULL, 
    NetworkInterfaceIds = NULL, NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "DescribeNetworkInterfaces", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_network_interfaces_input(Filters = Filters, 
        DryRun = DryRun, NetworkInterfaceIds = NetworkInterfaceIds, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- describe_network_interfaces_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your placement groups
#'
#' Describes one or more of your placement groups. For more information, see [Placement Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Filters One or more filters.
#' 
#' -   `group-name` - The name of the placement group.
#' 
#' -   `state` - The state of the placement group (`pending` \| `available` \| `deleting` \| `deleted`).
#' 
#' -   `strategy` - The strategy of the placement group (`cluster` \| `spread`).
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param GroupNames One or more placement group names.
#' 
#' Default: Describes all your placement groups, or only those otherwise specified.
#'
#' @examples
#'
#' @export
describe_placement_groups <- function (Filters = NULL, DryRun = NULL, 
    GroupNames = NULL) 
{
    op <- Operation(name = "DescribePlacementGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_placement_groups_input(Filters = Filters, 
        DryRun = DryRun, GroupNames = GroupNames)
    output <- describe_placement_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes available AWS services in a prefix list format, which includes the prefix list name and prefix list ID of the service and the IP address range for the service
#'
#' Describes available AWS services in a prefix list format, which includes the prefix list name and prefix list ID of the service and the IP address range for the service. A prefix list ID is required for creating an outbound security group rule that allows traffic from a VPC to access an AWS service through a gateway VPC endpoint. Currently, the services that support this action are Amazon S3 and Amazon DynamoDB.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Filters One or more filters.
#' 
#' -   `prefix-list-id`: The ID of a prefix list.
#' 
#' -   `prefix-list-name`: The name of a prefix list.
#' @param MaxResults The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.
#' 
#' Constraint: If the value specified is greater than 1000, we return only 1000 items.
#' @param NextToken The token for the next set of items to return. (You received this token from a prior call.)
#' @param PrefixListIds One or more prefix list IDs.
#'
#' @examples
#'
#' @export
describe_prefix_lists <- function (DryRun = NULL, Filters = NULL, 
    MaxResults = NULL, NextToken = NULL, PrefixListIds = NULL) 
{
    op <- Operation(name = "DescribePrefixLists", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_prefix_lists_input(DryRun = DryRun, Filters = Filters, 
        MaxResults = MaxResults, NextToken = NextToken, PrefixListIds = PrefixListIds)
    output <- describe_prefix_lists_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the ID format settings for the root user and all IAM roles and IAM users that have explicitly specified a longer ID (17-character ID) preference
#'
#' Describes the ID format settings for the root user and all IAM roles and IAM users that have explicitly specified a longer ID (17-character ID) preference.
#' 
#' By default, all IAM roles and IAM users default to the same ID settings as the root user, unless they explicitly override the settings. This request is useful for identifying those IAM users and IAM roles that have overridden the default ID settings.
#' 
#' The following resource types support longer IDs: `bundle` \| `conversion-task` \| `customer-gateway` \| `dhcp-options` \| `elastic-ip-allocation` \| `elastic-ip-association` \| `export-task` \| `flow-log` \| `image` \| `import-task` \| `instance` \| `internet-gateway` \| `network-acl` \| `network-acl-association` \| `network-interface` \| `network-interface-attachment` \| `prefix-list` \| `reservation` \| `route-table` \| `route-table-association` \| `security-group` \| `snapshot` \| `subnet` \| `subnet-cidr-block-association` \| `volume` \| `vpc` \| `vpc-cidr-block-association` \| `vpc-endpoint` \| `vpc-peering-connection` \| `vpn-connection` \| `vpn-gateway`.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Resources The type of resource: `bundle` \| `conversion-task` \| `customer-gateway` \| `dhcp-options` \| `elastic-ip-allocation` \| `elastic-ip-association` \| `export-task` \| `flow-log` \| `image` \| `import-task` \| `instance` \| `internet-gateway` \| `network-acl` \| `network-acl-association` \| `network-interface` \| `network-interface-attachment` \| `prefix-list` \| `reservation` \| `route-table` \| `route-table-association` \| `security-group` \| `snapshot` \| `subnet` \| `subnet-cidr-block-association` \| `volume` \| `vpc` \| `vpc-cidr-block-association` \| `vpc-endpoint` \| `vpc-peering-connection` \| `vpn-connection` \| `vpn-gateway`
#' @param MaxResults The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.
#' @param NextToken The token to request the next page of results.
#'
#' @examples
#'
#' @export
describe_principal_id_format <- function (DryRun = NULL, Resources = NULL, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribePrincipalIdFormat", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_principal_id_format_input(DryRun = DryRun, 
        Resources = Resources, MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_principal_id_format_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more regions that are currently available to you
#'
#' Describes one or more regions that are currently available to you.
#' 
#' For a list of the regions supported by Amazon EC2, see [Regions and Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#ec2_region).
#'
#' @param Filters One or more filters.
#' 
#' -   `endpoint` - The endpoint of the region (for example, `ec2.us-east-1.amazonaws.com`).
#' 
#' -   `region-name` - The name of the region (for example, `us-east-1`).
#' @param RegionNames The names of one or more regions.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes all the regions that are available to you.
#' describe_regions()
#'
#' @export
describe_regions <- function (Filters = NULL, RegionNames = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "DescribeRegions", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_regions_input(Filters = Filters, RegionNames = RegionNames, 
        DryRun = DryRun)
    output <- describe_regions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of the Reserved Instances that you purchased
#'
#' Describes one or more of the Reserved Instances that you purchased.
#' 
#' For more information about Reserved Instances, see [Reserved Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Filters One or more filters.
#' 
#' -   `availability-zone` - The Availability Zone where the Reserved Instance can be used.
#' 
#' -   `duration` - The duration of the Reserved Instance (one year or three years), in seconds (`31536000` \| `94608000`).
#' 
#' -   `end` - The time when the Reserved Instance expires (for example, 2015-08-07T11:54:42.000Z).
#' 
#' -   `fixed-price` - The purchase price of the Reserved Instance (for example, 9800.0).
#' 
#' -   `instance-type` - The instance type that is covered by the reservation.
#' 
#' -   `scope` - The scope of the Reserved Instance (`Region` or `Availability Zone`).
#' 
#' -   `product-description` - The Reserved Instance product platform description. Instances that include `(Amazon VPC)` in the product platform description will only be displayed to EC2-Classic account holders and are for use with Amazon VPC (`Linux/UNIX` \| `Linux/UNIX (Amazon VPC)` \| `SUSE Linux` \| `SUSE Linux (Amazon VPC)` \| `Red Hat Enterprise Linux` \| `Red Hat Enterprise Linux (Amazon VPC)` \| `Windows` \| `Windows (Amazon VPC)` \| `Windows with SQL Server Standard` \| `Windows with SQL Server Standard (Amazon VPC)` \| `Windows with SQL Server Web` \| `Windows with SQL Server Web (Amazon VPC)` \| `Windows with SQL Server Enterprise` \| `Windows with SQL Server Enterprise (Amazon VPC)`).
#' 
#' -   `reserved-instances-id` - The ID of the Reserved Instance.
#' 
#' -   `start` - The time at which the Reserved Instance purchase request was placed (for example, 2014-08-07T11:54:42.000Z).
#' 
#' -   `state` - The state of the Reserved Instance (`payment-pending` \| `active` \| `payment-failed` \| `retired`).
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `usage-price` - The usage price of the Reserved Instance, per hour (for example, 0.84).
#' @param OfferingClass Describes whether the Reserved Instance is Standard or Convertible.
#' @param ReservedInstancesIds One or more Reserved Instance IDs.
#' 
#' Default: Describes all your Reserved Instances, or only those otherwise specified.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param OfferingType The Reserved Instance offering type. If you are using tools that predate the 2011-11-01 API version, you only have access to the `Medium Utilization` Reserved Instance offering type.
#'
#' @examples
#'
#' @export
describe_reserved_instances <- function (Filters = NULL, OfferingClass = NULL, 
    ReservedInstancesIds = NULL, DryRun = NULL, OfferingType = NULL) 
{
    op <- Operation(name = "DescribeReservedInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_reserved_instances_input(Filters = Filters, 
        OfferingClass = OfferingClass, ReservedInstancesIds = ReservedInstancesIds, 
        DryRun = DryRun, OfferingType = OfferingType)
    output <- describe_reserved_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes your account\'s Reserved Instance listings in the Reserved Instance Marketplace
#'
#' Describes your account\'s Reserved Instance listings in the Reserved Instance Marketplace.
#' 
#' The Reserved Instance Marketplace matches sellers who want to resell Reserved Instance capacity that they no longer need with buyers who want to purchase additional capacity. Reserved Instances bought and sold through the Reserved Instance Marketplace work like any other Reserved Instances.
#' 
#' As a seller, you choose to list some or all of your Reserved Instances, and you specify the upfront price to receive for them. Your Reserved Instances are then listed in the Reserved Instance Marketplace and are available for purchase.
#' 
#' As a buyer, you specify the configuration of the Reserved Instance to purchase, and the Marketplace matches what you\'re searching for with what\'s available. The Marketplace first sells the lowest priced Reserved Instances to you, and continues to sell available Reserved Instance listings to you until your demand is met. You are charged based on the total price of all of the listings that you purchase.
#' 
#' For more information, see [Reserved Instance Marketplace](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Filters One or more filters.
#' 
#' -   `reserved-instances-id` - The ID of the Reserved Instances.
#' 
#' -   `reserved-instances-listing-id` - The ID of the Reserved Instances listing.
#' 
#' -   `status` - The status of the Reserved Instance listing (`pending` \| `active` \| `cancelled` \| `closed`).
#' 
#' -   `status-message` - The reason for the status.
#' @param ReservedInstancesId One or more Reserved Instance IDs.
#' @param ReservedInstancesListingId One or more Reserved Instance listing IDs.
#'
#' @examples
#'
#' @export
describe_reserved_instances_listings <- function (Filters = NULL, 
    ReservedInstancesId = NULL, ReservedInstancesListingId = NULL) 
{
    op <- Operation(name = "DescribeReservedInstancesListings", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_reserved_instances_listings_input(Filters = Filters, 
        ReservedInstancesId = ReservedInstancesId, ReservedInstancesListingId = ReservedInstancesListingId)
    output <- describe_reserved_instances_listings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the modifications made to your Reserved Instances
#'
#' Describes the modifications made to your Reserved Instances. If no parameter is specified, information about all your Reserved Instances modification requests is returned. If a modification ID is specified, only information about the specific modification is returned.
#' 
#' For more information, see [Modifying Reserved Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html) in the Amazon Elastic Compute Cloud User Guide.
#'
#' @param Filters One or more filters.
#' 
#' -   `client-token` - The idempotency token for the modification request.
#' 
#' -   `create-date` - The time when the modification request was created.
#' 
#' -   `effective-date` - The time when the modification becomes effective.
#' 
#' -   `modification-result.reserved-instances-id` - The ID for the Reserved Instances created as part of the modification request. This ID is only available when the status of the modification is `fulfilled`.
#' 
#' -   `modification-result.target-configuration.availability-zone` - The Availability Zone for the new Reserved Instances.
#' 
#' -   `modification-result.target-configuration.instance-count ` - The number of new Reserved Instances.
#' 
#' -   `modification-result.target-configuration.instance-type` - The instance type of the new Reserved Instances.
#' 
#' -   `modification-result.target-configuration.platform` - The network platform of the new Reserved Instances (`EC2-Classic` \| `EC2-VPC`).
#' 
#' -   `reserved-instances-id` - The ID of the Reserved Instances modified.
#' 
#' -   `reserved-instances-modification-id` - The ID of the modification request.
#' 
#' -   `status` - The status of the Reserved Instances modification request (`processing` \| `fulfilled` \| `failed`).
#' 
#' -   `status-message` - The reason for the status.
#' 
#' -   `update-date` - The time when the modification request was last updated.
#' @param ReservedInstancesModificationIds IDs for the submitted modification request.
#' @param NextToken The token to retrieve the next page of results.
#'
#' @examples
#'
#' @export
describe_reserved_instances_modifications <- function (Filters = NULL, 
    ReservedInstancesModificationIds = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeReservedInstancesModifications", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_reserved_instances_modifications_input(Filters = Filters, 
        ReservedInstancesModificationIds = ReservedInstancesModificationIds, 
        NextToken = NextToken)
    output <- describe_reserved_instances_modifications_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes Reserved Instance offerings that are available for purchase
#'
#' Describes Reserved Instance offerings that are available for purchase. With Reserved Instances, you purchase the right to launch instances for a period of time. During that time period, you do not receive insufficient capacity errors, and you pay a lower usage rate than the rate charged for On-Demand instances for the actual time used.
#' 
#' If you have listed your own Reserved Instances for sale in the Reserved Instance Marketplace, they will be excluded from these results. This is to ensure that you do not purchase your own Reserved Instances.
#' 
#' For more information, see [Reserved Instance Marketplace](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param AvailabilityZone The Availability Zone in which the Reserved Instance can be used.
#' @param Filters One or more filters.
#' 
#' -   `availability-zone` - The Availability Zone where the Reserved Instance can be used.
#' 
#' -   `duration` - The duration of the Reserved Instance (for example, one year or three years), in seconds (`31536000` \| `94608000`).
#' 
#' -   `fixed-price` - The purchase price of the Reserved Instance (for example, 9800.0).
#' 
#' -   `instance-type` - The instance type that is covered by the reservation.
#' 
#' -   `marketplace` - Set to `true` to show only Reserved Instance Marketplace offerings. When this filter is not used, which is the default behavior, all offerings from both AWS and the Reserved Instance Marketplace are listed.
#' 
#' -   `product-description` - The Reserved Instance product platform description. Instances that include `(Amazon VPC)` in the product platform description will only be displayed to EC2-Classic account holders and are for use with Amazon VPC. (`Linux/UNIX` \| `Linux/UNIX (Amazon VPC)` \| `SUSE Linux` \| `SUSE Linux (Amazon VPC)` \| `Red Hat Enterprise Linux` \| `Red Hat Enterprise Linux (Amazon VPC)` \| `Windows` \| `Windows (Amazon VPC)` \| `Windows with SQL Server Standard` \| `Windows with SQL Server Standard (Amazon VPC)` \| `Windows with SQL Server Web` \| ` Windows with SQL Server Web (Amazon VPC)` \| `Windows with SQL Server Enterprise` \| `Windows with SQL Server Enterprise (Amazon VPC)`)
#' 
#' -   `reserved-instances-offering-id` - The Reserved Instances offering ID.
#' 
#' -   `scope` - The scope of the Reserved Instance (`Availability Zone` or `Region`).
#' 
#' -   `usage-price` - The usage price of the Reserved Instance, per hour (for example, 0.84).
#' @param IncludeMarketplace Include Reserved Instance Marketplace offerings in the response.
#' @param InstanceType The instance type that the reservation will cover (for example, `m1.small`). For more information, see [Instance Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' @param MaxDuration The maximum duration (in seconds) to filter when searching for offerings.
#' 
#' Default: 94608000 (3 years)
#' @param MaxInstanceCount The maximum number of instances to filter when searching for offerings.
#' 
#' Default: 20
#' @param MinDuration The minimum duration (in seconds) to filter when searching for offerings.
#' 
#' Default: 2592000 (1 month)
#' @param OfferingClass The offering class of the Reserved Instance. Can be `standard` or `convertible`.
#' @param ProductDescription The Reserved Instance product platform description. Instances that include `(Amazon VPC)` in the description are for use with Amazon VPC.
#' @param ReservedInstancesOfferingIds One or more Reserved Instances offering IDs.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param InstanceTenancy The tenancy of the instances covered by the reservation. A Reserved Instance with a tenancy of `dedicated` is applied to instances that run in a VPC on single-tenant hardware (i.e., Dedicated Instances).
#' 
#' **Important:** The `host` value cannot be used with this parameter. Use the `default` or `dedicated` values only.
#' 
#' Default: `default`
#' @param MaxResults The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. The maximum is 100.
#' 
#' Default: 100
#' @param NextToken The token to retrieve the next page of results.
#' @param OfferingType The Reserved Instance offering type. If you are using tools that predate the 2011-11-01 API version, you only have access to the `Medium Utilization` Reserved Instance offering type.
#'
#' @examples
#'
#' @export
describe_reserved_instances_offerings <- function (AvailabilityZone = NULL, 
    Filters = NULL, IncludeMarketplace = NULL, InstanceType = NULL, 
    MaxDuration = NULL, MaxInstanceCount = NULL, MinDuration = NULL, 
    OfferingClass = NULL, ProductDescription = NULL, ReservedInstancesOfferingIds = NULL, 
    DryRun = NULL, InstanceTenancy = NULL, MaxResults = NULL, 
    NextToken = NULL, OfferingType = NULL) 
{
    op <- Operation(name = "DescribeReservedInstancesOfferings", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_reserved_instances_offerings_input(AvailabilityZone = AvailabilityZone, 
        Filters = Filters, IncludeMarketplace = IncludeMarketplace, 
        InstanceType = InstanceType, MaxDuration = MaxDuration, 
        MaxInstanceCount = MaxInstanceCount, MinDuration = MinDuration, 
        OfferingClass = OfferingClass, ProductDescription = ProductDescription, 
        ReservedInstancesOfferingIds = ReservedInstancesOfferingIds, 
        DryRun = DryRun, InstanceTenancy = InstanceTenancy, MaxResults = MaxResults, 
        NextToken = NextToken, OfferingType = OfferingType)
    output <- describe_reserved_instances_offerings_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your route tables
#'
#' Describes one or more of your route tables.
#' 
#' Each subnet in your VPC must be associated with a route table. If a subnet is not explicitly associated with any route table, it is implicitly associated with the main route table. This command does not return the subnet ID for implicit associations.
#' 
#' For more information, see [Route Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param Filters One or more filters.
#' 
#' -   `association.route-table-association-id` - The ID of an association ID for the route table.
#' 
#' -   `association.route-table-id` - The ID of the route table involved in the association.
#' 
#' -   `association.subnet-id` - The ID of the subnet involved in the association.
#' 
#' -   `association.main` - Indicates whether the route table is the main route table for the VPC (`true` \| `false`). Route tables that do not have an association ID are not returned in the response.
#' 
#' -   `route-table-id` - The ID of the route table.
#' 
#' -   `route.destination-cidr-block` - The IPv4 CIDR range specified in a route in the table.
#' 
#' -   `route.destination-ipv6-cidr-block` - The IPv6 CIDR range specified in a route in the route table.
#' 
#' -   `route.destination-prefix-list-id` - The ID (prefix) of the AWS service specified in a route in the table.
#' 
#' -   `route.egress-only-internet-gateway-id` - The ID of an egress-only Internet gateway specified in a route in the route table.
#' 
#' -   `route.gateway-id` - The ID of a gateway specified in a route in the table.
#' 
#' -   `route.instance-id` - The ID of an instance specified in a route in the table.
#' 
#' -   `route.nat-gateway-id` - The ID of a NAT gateway.
#' 
#' -   `route.origin` - Describes how the route was created. `CreateRouteTable` indicates that the route was automatically created when the route table was created; `CreateRoute` indicates that the route was manually added to the route table; `EnableVgwRoutePropagation` indicates that the route was propagated by route propagation.
#' 
#' -   `route.state` - The state of a route in the route table (`active` \| `blackhole`). The blackhole state indicates that the route\'s target isn\'t available (for example, the specified gateway isn\'t attached to the VPC, the specified NAT instance has been terminated, and so on).
#' 
#' -   `route.vpc-peering-connection-id` - The ID of a VPC peering connection specified in a route in the table.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `vpc-id` - The ID of the VPC for the route table.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param RouteTableIds One or more route table IDs.
#' 
#' Default: Describes all your route tables.
#' @param NextToken The token to retrieve the next page of results.
#' @param MaxResults The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned **NextToken** value. This value can be between 5 and 100.
#'
#' @examples
#' # This example describes the specified route table.
#' describe_route_tables(
#'   RouteTableIds = list(
#'     "rtb-1f382e7d"
#'   )
#' )
#'
#' @export
describe_route_tables <- function (Filters = NULL, DryRun = NULL, 
    RouteTableIds = NULL, NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "DescribeRouteTables", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_route_tables_input(Filters = Filters, DryRun = DryRun, 
        RouteTableIds = RouteTableIds, NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- describe_route_tables_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Finds available schedules that meet the specified criteria
#'
#' Finds available schedules that meet the specified criteria.
#' 
#' You can search for an available schedule no more than 3 months in advance. You must meet the minimum required duration of 1,200 hours per year. For example, the minimum daily schedule is 4 hours, the minimum weekly schedule is 24 hours, and the minimum monthly schedule is 100 hours.
#' 
#' After you find a schedule that meets your needs, call PurchaseScheduledInstances to purchase Scheduled Instances with that schedule.
#'
#' @param FirstSlotStartTimeRange The time period for the first schedule to start.
#' @param Recurrence The schedule recurrence.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Filters One or more filters.
#' 
#' -   `availability-zone` - The Availability Zone (for example, `us-west-2a`).
#' 
#' -   `instance-type` - The instance type (for example, `c4.large`).
#' 
#' -   `network-platform` - The network platform (`EC2-Classic` or `EC2-VPC`).
#' 
#' -   `platform` - The platform (`Linux/UNIX` or `Windows`).
#' @param MaxResults The maximum number of results to return in a single call. This value can be between 5 and 300. The default value is 300. To retrieve the remaining results, make another call with the returned `NextToken` value.
#' @param MaxSlotDurationInHours The maximum available duration, in hours. This value must be greater than `MinSlotDurationInHours` and less than 1,720.
#' @param MinSlotDurationInHours The minimum available duration, in hours. The minimum required duration is 1,200 hours per year. For example, the minimum daily schedule is 4 hours, the minimum weekly schedule is 24 hours, and the minimum monthly schedule is 100 hours.
#' @param NextToken The token for the next set of results.
#'
#' @examples
#' # This example describes a schedule that occurs every week on Sunday,
#' # starting on the specified date. Note that the output contains a single
#' # schedule as an example.
#' describe_scheduled_instance_availability(
#'   FirstSlotStartTimeRange = list(
#'     EarliestTime = "2016-01-31T00:00:00Z",
#'     LatestTime = "2016-01-31T04:00:00Z"
#'   ),
#'   Recurrence = list(
#'     Frequency = "Weekly",
#'     Interval = 1L,
#'     OccurrenceDays = list(
#'       1L
#'     )
#'   )
#' )
#'
#' @export
describe_scheduled_instance_availability <- function (FirstSlotStartTimeRange, 
    Recurrence, DryRun = NULL, Filters = NULL, MaxResults = NULL, 
    MaxSlotDurationInHours = NULL, MinSlotDurationInHours = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeScheduledInstanceAvailability", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_scheduled_instance_availability_input(FirstSlotStartTimeRange = FirstSlotStartTimeRange, 
        Recurrence = Recurrence, DryRun = DryRun, Filters = Filters, 
        MaxResults = MaxResults, MaxSlotDurationInHours = MaxSlotDurationInHours, 
        MinSlotDurationInHours = MinSlotDurationInHours, NextToken = NextToken)
    output <- describe_scheduled_instance_availability_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your Scheduled Instances
#'
#' Describes one or more of your Scheduled Instances.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Filters One or more filters.
#' 
#' -   `availability-zone` - The Availability Zone (for example, `us-west-2a`).
#' 
#' -   `instance-type` - The instance type (for example, `c4.large`).
#' 
#' -   `network-platform` - The network platform (`EC2-Classic` or `EC2-VPC`).
#' 
#' -   `platform` - The platform (`Linux/UNIX` or `Windows`).
#' @param MaxResults The maximum number of results to return in a single call. This value can be between 5 and 300. The default value is 100. To retrieve the remaining results, make another call with the returned `NextToken` value.
#' @param NextToken The token for the next set of results.
#' @param ScheduledInstanceIds One or more Scheduled Instance IDs.
#' @param SlotStartTimeRange The time period for the first schedule to start.
#'
#' @examples
#' # This example describes the specified Scheduled Instance.
#' describe_scheduled_instances(
#'   ScheduledInstanceIds = list(
#'     "sci-1234-1234-1234-1234-123456789012"
#'   )
#' )
#'
#' @export
describe_scheduled_instances <- function (DryRun = NULL, Filters = NULL, 
    MaxResults = NULL, NextToken = NULL, ScheduledInstanceIds = NULL, 
    SlotStartTimeRange = NULL) 
{
    op <- Operation(name = "DescribeScheduledInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_scheduled_instances_input(DryRun = DryRun, 
        Filters = Filters, MaxResults = MaxResults, NextToken = NextToken, 
        ScheduledInstanceIds = ScheduledInstanceIds, SlotStartTimeRange = SlotStartTimeRange)
    output <- describe_scheduled_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' &#91;EC2-VPC only&#93; Describes the VPCs on the other side of a VPC peering connection that are referencing the security groups you\'ve specified in this request
#'
#' &#91;EC2-VPC only&#93; Describes the VPCs on the other side of a VPC peering connection that are referencing the security groups you\'ve specified in this request.
#'
#' @param GroupId One or more security group IDs in your account.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes the security group references for the specified
#' # security group.
#' describe_security_group_references(
#'   GroupId = list(
#'     "sg-903004f8"
#'   )
#' )
#'
#' @export
describe_security_group_references <- function (GroupId, DryRun = NULL) 
{
    op <- Operation(name = "DescribeSecurityGroupReferences", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_security_group_references_input(GroupId = GroupId, 
        DryRun = DryRun)
    output <- describe_security_group_references_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your security groups
#'
#' Describes one or more of your security groups.
#' 
#' A security group is for use with instances either in the EC2-Classic platform or in a specific VPC. For more information, see [Amazon EC2 Security Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html) in the *Amazon Elastic Compute Cloud User Guide* and [Security Groups for Your VPC](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_SecurityGroups.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param Filters One or more filters. If using multiple filters for rules, the results include security groups for which any combination of rules - not necessarily a single rule - match all filters.
#' 
#' -   `description` - The description of the security group.
#' 
#' -   `egress.ip-permission.cidr` - An IPv4 CIDR block for an outbound security group rule.
#' 
#' -   `egress.ip-permission.from-port` - For an outbound rule, the start of port range for the TCP and UDP protocols, or an ICMP type number.
#' 
#' -   `egress.ip-permission.group-id` - The ID of a security group that has been referenced in an outbound security group rule.
#' 
#' -   `egress.ip-permission.group-name` - The name of a security group that has been referenced in an outbound security group rule.
#' 
#' -   `egress.ip-permission.ipv6-cidr` - An IPv6 CIDR block for an outbound security group rule.
#' 
#' -   `egress.ip-permission.prefix-list-id` - The ID (prefix) of the AWS service to which a security group rule allows outbound access.
#' 
#' -   `egress.ip-permission.protocol` - The IP protocol for an outbound security group rule (`tcp` \| `udp` \| `icmp` or a protocol number).
#' 
#' -   `egress.ip-permission.to-port` - For an outbound rule, the end of port range for the TCP and UDP protocols, or an ICMP code.
#' 
#' -   `egress.ip-permission.user-id` - The ID of an AWS account that has been referenced in an outbound security group rule.
#' 
#' -   `group-id` - The ID of the security group.
#' 
#' -   `group-name` - The name of the security group.
#' 
#' -   `ip-permission.cidr` - An IPv4 CIDR block for an inbound security group rule.
#' 
#' -   `ip-permission.from-port` - For an inbound rule, the start of port range for the TCP and UDP protocols, or an ICMP type number.
#' 
#' -   `ip-permission.group-id` - The ID of a security group that has been referenced in an inbound security group rule.
#' 
#' -   `ip-permission.group-name` - The name of a security group that has been referenced in an inbound security group rule.
#' 
#' -   `ip-permission.ipv6-cidr` - An IPv6 CIDR block for an inbound security group rule.
#' 
#' -   `ip-permission.prefix-list-id` - The ID (prefix) of the AWS service from which a security group rule allows inbound access.
#' 
#' -   `ip-permission.protocol` - The IP protocol for an inbound security group rule (`tcp` \| `udp` \| `icmp` or a protocol number).
#' 
#' -   `ip-permission.to-port` - For an inbound rule, the end of port range for the TCP and UDP protocols, or an ICMP code.
#' 
#' -   `ip-permission.user-id` - The ID of an AWS account that has been referenced in an inbound security group rule.
#' 
#' -   `owner-id` - The AWS account ID of the owner of the security group.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `vpc-id` - The ID of the VPC specified when the security group was created.
#' @param GroupIds One or more security group IDs. Required for security groups in a nondefault VPC.
#' 
#' Default: Describes all your security groups.
#' @param GroupNames &#91;EC2-Classic and default VPC only&#93; One or more security group names. You can specify either the security group name or the security group ID. For security groups in a nondefault VPC, use the `group-name` filter to describe security groups by name.
#' 
#' Default: Describes all your security groups.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param NextToken The token to request the next page of results.
#' @param MaxResults The maximum number of results to return in a single call. To retrieve the remaining results, make another request with the returned `NextToken` value. This value can be between 5 and 1000. If this parameter is not specified, then all results are returned.
#'
#' @examples
#' # This example describes the specified security group.
#' describe_security_groups(
#'   GroupIds = list(
#'     "sg-903004f8"
#'   )
#' )
#' 
#' # This example describes the security groups that include the specified
#' # tag (Purpose=test).
#' describe_security_groups(
#'   Filters = list(
#'     list(
#'       Name = "tag:Purpose",
#'       Values = list(
#'         "test"
#'       )
#'     )
#'   )
#' )
#'
#' @export
describe_security_groups <- function (Filters = NULL, GroupIds = NULL, 
    GroupNames = NULL, DryRun = NULL, NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "DescribeSecurityGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_security_groups_input(Filters = Filters, 
        GroupIds = GroupIds, GroupNames = GroupNames, DryRun = DryRun, 
        NextToken = NextToken, MaxResults = MaxResults)
    output <- describe_security_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified attribute of the specified snapshot
#'
#' Describes the specified attribute of the specified snapshot. You can specify only one attribute at a time.
#' 
#' For more information about EBS snapshots, see [Amazon EBS Snapshots](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Attribute The snapshot attribute you would like to view.
#' @param SnapshotId The ID of the EBS snapshot.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes the ``createVolumePermission`` attribute on a
#' # snapshot with the snapshot ID of ``snap-066877671789bd71b``.
#' describe_snapshot_attribute(
#'   Attribute = "createVolumePermission",
#'   SnapshotId = "snap-066877671789bd71b"
#' )
#'
#' @export
describe_snapshot_attribute <- function (Attribute, SnapshotId, 
    DryRun = NULL) 
{
    op <- Operation(name = "DescribeSnapshotAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_snapshot_attribute_input(Attribute = Attribute, 
        SnapshotId = SnapshotId, DryRun = DryRun)
    output <- describe_snapshot_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of the EBS snapshots available to you
#'
#' Describes one or more of the EBS snapshots available to you. Available snapshots include public snapshots available for any AWS account to launch, private snapshots that you own, and private snapshots owned by another AWS account but for which you\'ve been given explicit create volume permissions.
#' 
#' The create volume permissions fall into the following categories:
#' 
#' -   *public*: The owner of the snapshot granted create volume permissions for the snapshot to the `all` group. All AWS accounts have create volume permissions for these snapshots.
#' 
#' -   *explicit*: The owner of the snapshot granted create volume permissions to a specific AWS account.
#' 
#' -   *implicit*: An AWS account has implicit create volume permissions for all snapshots it owns.
#' 
#' The list of snapshots returned can be modified by specifying snapshot IDs, snapshot owners, or AWS accounts with create volume permissions. If no options are specified, Amazon EC2 returns all snapshots for which you have create volume permissions.
#' 
#' If you specify one or more snapshot IDs, only snapshots that have the specified IDs are returned. If you specify an invalid snapshot ID, an error is returned. If you specify a snapshot ID for which you do not have access, it is not included in the returned results.
#' 
#' If you specify one or more snapshot owners using the `OwnerIds` option, only snapshots from the specified owners and for which you have access are returned. The results can include the AWS account IDs of the specified owners, `amazon` for snapshots owned by Amazon, or `self` for snapshots that you own.
#' 
#' If you specify a list of restorable users, only snapshots with create snapshot permissions for those users are returned. You can specify AWS account IDs (if you own the snapshots), `self` for snapshots for which you own or have explicit permissions, or `all` for public snapshots.
#' 
#' If you are describing a long list of snapshots, you can paginate the output to make the list more manageable. The `MaxResults` parameter sets the maximum number of results returned in a single page. If the list of results exceeds your `MaxResults` value, then that number of results is returned along with a `NextToken` value that can be passed to a subsequent `DescribeSnapshots` request to retrieve the remaining results.
#' 
#' For more information about EBS snapshots, see [Amazon EBS Snapshots](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSSnapshots.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Filters One or more filters.
#' 
#' -   `description` - A description of the snapshot.
#' 
#' -   `owner-alias` - Value from an Amazon-maintained list (`amazon` \| `aws-marketplace` \| `microsoft`) of snapshot owners. Not to be confused with the user-configured AWS account alias, which is set from the IAM console.
#' 
#' -   `owner-id` - The ID of the AWS account that owns the snapshot.
#' 
#' -   `progress` - The progress of the snapshot, as a percentage (for example, 80%).
#' 
#' -   `snapshot-id` - The snapshot ID.
#' 
#' -   `start-time` - The time stamp when the snapshot was initiated.
#' 
#' -   `status` - The status of the snapshot (`pending` \| `completed` \| `error`).
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `volume-id` - The ID of the volume the snapshot is for.
#' 
#' -   `volume-size` - The size of the volume, in GiB.
#' @param MaxResults The maximum number of snapshot results returned by `DescribeSnapshots` in paginated output. When this parameter is used, `DescribeSnapshots` only returns `MaxResults` results in a single page along with a `NextToken` response element. The remaining results of the initial request can be seen by sending another `DescribeSnapshots` request with the returned `NextToken` value. This value can be between 5 and 1000; if `MaxResults` is given a value larger than 1000, only 1000 results are returned. If this parameter is not used, then `DescribeSnapshots` returns all results. You cannot specify this parameter and the snapshot IDs parameter in the same request.
#' @param NextToken The `NextToken` value returned from a previous paginated `DescribeSnapshots` request where `MaxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `NextToken` value. This value is `null` when there are no more results to return.
#' @param OwnerIds Returns the snapshots owned by the specified owner. Multiple owners can be specified.
#' @param RestorableByUserIds One or more AWS accounts IDs that can create volumes from the snapshot.
#' @param SnapshotIds One or more snapshot IDs.
#' 
#' Default: Describes snapshots for which you have launch permissions.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes a snapshot with the snapshot ID of
#' # ``snap-1234567890abcdef0``.
#' describe_snapshots(
#'   SnapshotIds = list(
#'     "snap-1234567890abcdef0"
#'   )
#' )
#' 
#' # This example describes all snapshots owned by the ID 012345678910 that
#' # are in the ``pending`` status.
#' describe_snapshots(
#'   Filters = list(
#'     list(
#'       Name = "status",
#'       Values = list(
#'         "pending"
#'       )
#'     )
#'   ),
#'   OwnerIds = list(
#'     "012345678910"
#'   )
#' )
#'
#' @export
describe_snapshots <- function (Filters = NULL, MaxResults = NULL, 
    NextToken = NULL, OwnerIds = NULL, RestorableByUserIds = NULL, 
    SnapshotIds = NULL, DryRun = NULL) 
{
    op <- Operation(name = "DescribeSnapshots", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_snapshots_input(Filters = Filters, MaxResults = MaxResults, 
        NextToken = NextToken, OwnerIds = OwnerIds, RestorableByUserIds = RestorableByUserIds, 
        SnapshotIds = SnapshotIds, DryRun = DryRun)
    output <- describe_snapshots_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the data feed for Spot Instances
#'
#' Describes the data feed for Spot Instances. For more information, see [Spot Instance Data Feed](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-data-feeds.html) in the *Amazon EC2 User Guide for Linux Instances*.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes the Spot Instance datafeed subscription for your
#' # AWS account.
#' describe_spot_datafeed_subscription()
#'
#' @export
describe_spot_datafeed_subscription <- function (DryRun = NULL) 
{
    op <- Operation(name = "DescribeSpotDatafeedSubscription", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_spot_datafeed_subscription_input(DryRun = DryRun)
    output <- describe_spot_datafeed_subscription_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the running instances for the specified Spot Fleet
#'
#' Describes the running instances for the specified Spot Fleet.
#'
#' @param SpotFleetRequestId The ID of the Spot Fleet request.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param MaxResults The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.
#' @param NextToken The token for the next set of results.
#'
#' @examples
#' # This example lists the Spot Instances associated with the specified Spot
#' # fleet.
#' describe_spot_fleet_instances(
#'   SpotFleetRequestId = "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
#' )
#'
#' @export
describe_spot_fleet_instances <- function (SpotFleetRequestId, 
    DryRun = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeSpotFleetInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_spot_fleet_instances_input(SpotFleetRequestId = SpotFleetRequestId, 
        DryRun = DryRun, MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_spot_fleet_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the events for the specified Spot Fleet request during the specified time
#'
#' Describes the events for the specified Spot Fleet request during the specified time.
#' 
#' Spot Fleet events are delayed by up to 30 seconds before they can be described. This ensures that you can query by the last evaluated time and not miss a recorded event.
#'
#' @param SpotFleetRequestId The ID of the Spot Fleet request.
#' @param StartTime The starting date and time for the events, in UTC format (for example, *YYYY*-*MM*-*DD*T*HH*:*MM*:*SS*Z).
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param EventType The type of events to describe. By default, all events are described.
#' @param MaxResults The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.
#' @param NextToken The token for the next set of results.
#'
#' @examples
#' # This example returns the history for the specified Spot fleet starting
#' # at the specified time.
#' describe_spot_fleet_request_history(
#'   SpotFleetRequestId = "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE",
#'   StartTime = "2015-05-26T00:00:00Z"
#' )
#'
#' @export
describe_spot_fleet_request_history <- function (SpotFleetRequestId, 
    StartTime, DryRun = NULL, EventType = NULL, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeSpotFleetRequestHistory", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_spot_fleet_request_history_input(SpotFleetRequestId = SpotFleetRequestId, 
        StartTime = StartTime, DryRun = DryRun, EventType = EventType, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_spot_fleet_request_history_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes your Spot Fleet requests
#'
#' Describes your Spot Fleet requests.
#' 
#' Spot Fleet requests are deleted 48 hours after they are canceled and their instances are terminated.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param MaxResults The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.
#' @param NextToken The token for the next set of results.
#' @param SpotFleetRequestIds The IDs of the Spot Fleet requests.
#'
#' @examples
#' # This example describes the specified Spot fleet request.
#' describe_spot_fleet_requests(
#'   SpotFleetRequestIds = list(
#'     "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE"
#'   )
#' )
#'
#' @export
describe_spot_fleet_requests <- function (DryRun = NULL, MaxResults = NULL, 
    NextToken = NULL, SpotFleetRequestIds = NULL) 
{
    op <- Operation(name = "DescribeSpotFleetRequests", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_spot_fleet_requests_input(DryRun = DryRun, 
        MaxResults = MaxResults, NextToken = NextToken, SpotFleetRequestIds = SpotFleetRequestIds)
    output <- describe_spot_fleet_requests_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified Spot Instance requests
#'
#' Describes the specified Spot Instance requests.
#' 
#' You can use `DescribeSpotInstanceRequests` to find a running Spot Instance by examining the response. If the status of the Spot Instance is `fulfilled`, the instance ID appears in the response and contains the identifier of the instance. Alternatively, you can use DescribeInstances with a filter to look for instances where the instance lifecycle is `spot`.
#' 
#' Spot Instance requests are deleted four hours after they are canceled and their instances are terminated.
#'
#' @param Filters One or more filters.
#' 
#' -   `availability-zone-group` - The Availability Zone group.
#' 
#' -   `create-time` - The time stamp when the Spot Instance request was created.
#' 
#' -   `fault-code` - The fault code related to the request.
#' 
#' -   `fault-message` - The fault message related to the request.
#' 
#' -   `instance-id` - The ID of the instance that fulfilled the request.
#' 
#' -   `launch-group` - The Spot Instance launch group.
#' 
#' -   `launch.block-device-mapping.delete-on-termination` - Indicates whether the EBS volume is deleted on instance termination.
#' 
#' -   `launch.block-device-mapping.device-name` - The device name for the volume in the block device mapping (for example, `/dev/sdh` or `xvdh`).
#' 
#' -   `launch.block-device-mapping.snapshot-id` - The ID of the snapshot for the EBS volume.
#' 
#' -   `launch.block-device-mapping.volume-size` - The size of the EBS volume, in GiB.
#' 
#' -   `launch.block-device-mapping.volume-type` - The type of EBS volume: `gp2` for General Purpose SSD, `io1` for Provisioned IOPS SSD, `st1` for Throughput Optimized HDD, `sc1`for Cold HDD, or `standard` for Magnetic.
#' 
#' -   `launch.group-id` - The ID of the security group for the instance.
#' 
#' -   `launch.group-name` - The name of the security group for the instance.
#' 
#' -   `launch.image-id` - The ID of the AMI.
#' 
#' -   `launch.instance-type` - The type of instance (for example, `m3.medium`).
#' 
#' -   `launch.kernel-id` - The kernel ID.
#' 
#' -   `launch.key-name` - The name of the key pair the instance launched with.
#' 
#' -   `launch.monitoring-enabled` - Whether detailed monitoring is enabled for the Spot Instance.
#' 
#' -   `launch.ramdisk-id` - The RAM disk ID.
#' 
#' -   `launched-availability-zone` - The Availability Zone in which the request is launched.
#' 
#' -   `network-interface.addresses.primary` - Indicates whether the IP address is the primary private IP address.
#' 
#' -   `network-interface.delete-on-termination` - Indicates whether the network interface is deleted when the instance is terminated.
#' 
#' -   `network-interface.description` - A description of the network interface.
#' 
#' -   `network-interface.device-index` - The index of the device for the network interface attachment on the instance.
#' 
#' -   `network-interface.group-id` - The ID of the security group associated with the network interface.
#' 
#' -   `network-interface.network-interface-id` - The ID of the network interface.
#' 
#' -   `network-interface.private-ip-address` - The primary private IP address of the network interface.
#' 
#' -   `network-interface.subnet-id` - The ID of the subnet for the instance.
#' 
#' -   `product-description` - The product description associated with the instance (`Linux/UNIX` \| `Windows`).
#' 
#' -   `spot-instance-request-id` - The Spot Instance request ID.
#' 
#' -   `spot-price` - The maximum hourly price for any Spot Instance launched to fulfill the request.
#' 
#' -   `state` - The state of the Spot Instance request (`open` \| `active` \| `closed` \| `cancelled` \| `failed`). Spot request status information can help you track your Amazon EC2 Spot Instance requests. For more information, see [Spot Request Status](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-bid-status.html) in the *Amazon EC2 User Guide for Linux Instances*.
#' 
#' -   `status-code` - The short code describing the most recent evaluation of your Spot Instance request.
#' 
#' -   `status-message` - The message explaining the status of the Spot Instance request.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `type` - The type of Spot Instance request (`one-time` \| `persistent`).
#' 
#' -   `valid-from` - The start date of the request.
#' 
#' -   `valid-until` - The end date of the request.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param SpotInstanceRequestIds One or more Spot Instance request IDs.
#'
#' @examples
#' # This example describes the specified Spot Instance request.
#' describe_spot_instance_requests(
#'   SpotInstanceRequestIds = list(
#'     "sir-08b93456"
#'   )
#' )
#'
#' @export
describe_spot_instance_requests <- function (Filters = NULL, 
    DryRun = NULL, SpotInstanceRequestIds = NULL) 
{
    op <- Operation(name = "DescribeSpotInstanceRequests", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_spot_instance_requests_input(Filters = Filters, 
        DryRun = DryRun, SpotInstanceRequestIds = SpotInstanceRequestIds)
    output <- describe_spot_instance_requests_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the Spot price history
#'
#' Describes the Spot price history. For more information, see [Spot Instance Pricing History](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances-history.html) in the *Amazon EC2 User Guide for Linux Instances*.
#' 
#' When you specify a start and end time, this operation returns the prices of the instance types within the time range that you specified and the time when the price changed. The price is valid within the time period that you specified; the response merely indicates the last time that the price changed.
#'
#' @param Filters One or more filters.
#' 
#' -   `availability-zone` - The Availability Zone for which prices should be returned.
#' 
#' -   `instance-type` - The type of instance (for example, `m3.medium`).
#' 
#' -   `product-description` - The product description for the Spot price (`Linux/UNIX` \| `SUSE Linux` \| `Windows` \| `Linux/UNIX (Amazon VPC)` \| `SUSE Linux (Amazon VPC)` \| `Windows (Amazon VPC)`).
#' 
#' -   `spot-price` - The Spot price. The value must match exactly (or use wildcards; greater than or less than comparison is not supported).
#' 
#' -   `timestamp` - The time stamp of the Spot price history, in UTC format (for example, *YYYY*-*MM*-*DD*T*HH*:*MM*:*SS*Z). You can use wildcards (\* and ?). Greater than or less than comparison is not supported.
#' @param AvailabilityZone Filters the results by the specified Availability Zone.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param EndTime The date and time, up to the current date, from which to stop retrieving the price history data, in UTC format (for example, *YYYY*-*MM*-*DD*T*HH*:*MM*:*SS*Z).
#' @param InstanceTypes Filters the results by the specified instance types.
#' @param MaxResults The maximum number of results to return in a single call. Specify a value between 1 and 1000. The default value is 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.
#' @param NextToken The token for the next set of results.
#' @param ProductDescriptions Filters the results by the specified basic product descriptions.
#' @param StartTime The date and time, up to the past 90 days, from which to start retrieving the price history data, in UTC format (for example, *YYYY*-*MM*-*DD*T*HH*:*MM*:*SS*Z).
#'
#' @examples
#' # This example returns the Spot Price history for m1.xlarge, Linux/UNIX
#' # (Amazon VPC) instances for a particular day in January.
#' describe_spot_price_history(
#'   EndTime = "2014-01-06T08:09:10",
#'   InstanceTypes = list(
#'     "m1.xlarge"
#'   ),
#'   ProductDescriptions = list(
#'     "Linux/UNIX (Amazon VPC)"
#'   ),
#'   StartTime = "2014-01-06T07:08:09"
#' )
#'
#' @export
describe_spot_price_history <- function (Filters = NULL, AvailabilityZone = NULL, 
    DryRun = NULL, EndTime = NULL, InstanceTypes = NULL, MaxResults = NULL, 
    NextToken = NULL, ProductDescriptions = NULL, StartTime = NULL) 
{
    op <- Operation(name = "DescribeSpotPriceHistory", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_spot_price_history_input(Filters = Filters, 
        AvailabilityZone = AvailabilityZone, DryRun = DryRun, 
        EndTime = EndTime, InstanceTypes = InstanceTypes, MaxResults = MaxResults, 
        NextToken = NextToken, ProductDescriptions = ProductDescriptions, 
        StartTime = StartTime)
    output <- describe_spot_price_history_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' &#91;EC2-VPC only&#93; Describes the stale security group rules for security groups in a specified VPC
#'
#' &#91;EC2-VPC only&#93; Describes the stale security group rules for security groups in a specified VPC. Rules are stale when they reference a deleted security group in a peer VPC, or a security group in a peer VPC for which the VPC peering connection has been deleted.
#'
#' @param VpcId The ID of the VPC.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param MaxResults The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.
#' @param NextToken The token for the next set of items to return. (You received this token from a prior call.)
#'
#' @examples
#'
#' @export
describe_stale_security_groups <- function (VpcId, DryRun = NULL, 
    MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeStaleSecurityGroups", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_stale_security_groups_input(VpcId = VpcId, 
        DryRun = DryRun, MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_stale_security_groups_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your subnets
#'
#' Describes one or more of your subnets.
#' 
#' For more information, see [Your VPC and Subnets](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param Filters One or more filters.
#' 
#' -   `availabilityZone` - The Availability Zone for the subnet. You can also use `availability-zone` as the filter name.
#' 
#' -   `available-ip-address-count` - The number of IPv4 addresses in the subnet that are available.
#' 
#' -   `cidrBlock` - The IPv4 CIDR block of the subnet. The CIDR block you specify must exactly match the subnet\'s CIDR block for information to be returned for the subnet. You can also use `cidr` or `cidr-block` as the filter names.
#' 
#' -   `defaultForAz` - Indicates whether this is the default subnet for the Availability Zone. You can also use `default-for-az` as the filter name.
#' 
#' -   `ipv6-cidr-block-association.ipv6-cidr-block` - An IPv6 CIDR block associated with the subnet.
#' 
#' -   `ipv6-cidr-block-association.association-id` - An association ID for an IPv6 CIDR block associated with the subnet.
#' 
#' -   `ipv6-cidr-block-association.state` - The state of an IPv6 CIDR block associated with the subnet.
#' 
#' -   `state` - The state of the subnet (`pending` \| `available`).
#' 
#' -   `subnet-id` - The ID of the subnet.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `vpc-id` - The ID of the VPC for the subnet.
#' @param SubnetIds One or more subnet IDs.
#' 
#' Default: Describes all your subnets.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes the subnets for the specified VPC.
#' describe_subnets(
#'   Filters = list(
#'     list(
#'       Name = "vpc-id",
#'       Values = list(
#'         "vpc-a01106c2"
#'       )
#'     )
#'   )
#' )
#'
#' @export
describe_subnets <- function (Filters = NULL, SubnetIds = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "DescribeSubnets", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_subnets_input(Filters = Filters, SubnetIds = SubnetIds, 
        DryRun = DryRun)
    output <- describe_subnets_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of the tags for your EC2 resources
#'
#' Describes one or more of the tags for your EC2 resources.
#' 
#' For more information about tags, see [Tagging Your Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Filters One or more filters.
#' 
#' -   `key` - The tag key.
#' 
#' -   `resource-id` - The ID of the resource.
#' 
#' -   `resource-type` - The resource type (`customer-gateway` \| `dedicated-host` \| `dhcp-options` \| `elastic-ip` \| `fleet` \| `fpga-image` \| `image` \| `instance` \| `internet-gateway` \| `launch-template` \| `natgateway` \| `network-acl` \| `network-interface` \| `reserved-instances` \| `route-table` \| `security-group` \| `snapshot` \| `spot-instances-request` \| `subnet` \| `volume` \| `vpc` \| `vpc-peering-connection` \| `vpn-connection` \| `vpn-gateway`).
#' 
#' -   `tag`:\<key\> - The key/value combination of the tag. For example, specify \"tag:Owner\" for the filter name and \"TeamA\" for the filter value to find resources with the tag \"Owner=TeamA\".
#' 
#' -   `value` - The tag value.
#' @param MaxResults The maximum number of results to return in a single call. This value can be between 5 and 1000. To retrieve the remaining results, make another call with the returned `NextToken` value.
#' @param NextToken The token to retrieve the next page of results.
#'
#' @examples
#' # This example describes the tags for the specified instance.
#' describe_tags(
#'   Filters = list(
#'     list(
#'       Name = "resource-id",
#'       Values = list(
#'         "i-1234567890abcdef8"
#'       )
#'     )
#'   )
#' )
#'
#' @export
describe_tags <- function (DryRun = NULL, Filters = NULL, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeTags", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_tags_input(DryRun = DryRun, Filters = Filters, 
        MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_tags_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified attribute of the specified volume
#'
#' Describes the specified attribute of the specified volume. You can specify only one attribute at a time.
#' 
#' For more information about EBS volumes, see [Amazon EBS Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Attribute The attribute of the volume. This parameter is required.
#' @param VolumeId The ID of the volume.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes the ``autoEnableIo`` attribute of the volume with
#' # the ID ``vol-049df61146c4d7901``.
#' describe_volume_attribute(
#'   Attribute = "autoEnableIO",
#'   VolumeId = "vol-049df61146c4d7901"
#' )
#'
#' @export
describe_volume_attribute <- function (Attribute, VolumeId, DryRun = NULL) 
{
    op <- Operation(name = "DescribeVolumeAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_volume_attribute_input(Attribute = Attribute, 
        VolumeId = VolumeId, DryRun = DryRun)
    output <- describe_volume_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the status of the specified volumes
#'
#' Describes the status of the specified volumes. Volume status provides the result of the checks performed on your volumes to determine events that can impair the performance of your volumes. The performance of a volume can be affected if an issue occurs on the volume\'s underlying host. If the volume\'s underlying host experiences a power outage or system issue, after the system is restored, there could be data inconsistencies on the volume. Volume events notify you if this occurs. Volume actions notify you if any action needs to be taken in response to the event.
#' 
#' The `DescribeVolumeStatus` operation provides the following information about the specified volumes:
#' 
#' *Status*: Reflects the current status of the volume. The possible values are `ok`, `impaired` , `warning`, or `insufficient-data`. If all checks pass, the overall status of the volume is `ok`. If the check fails, the overall status is `impaired`. If the status is `insufficient-data`, then the checks may still be taking place on your volume at the time. We recommend that you retry the request. For more information about volume status, see [Monitoring the Status of Your Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/monitoring-volume-status.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' *Events*: Reflect the cause of a volume status and may require you to take action. For example, if your volume returns an `impaired` status, then the volume event might be `potential-data-inconsistency`. This means that your volume has been affected by an issue with the underlying host, has all I/O operations disabled, and may have inconsistent data.
#' 
#' *Actions*: Reflect the actions you may have to take in response to an event. For example, if the status of the volume is `impaired` and the volume event shows `potential-data-inconsistency`, then the action shows `enable-volume-io`. This means that you may want to enable the I/O operations for the volume by calling the EnableVolumeIO action and then check the volume for data consistency.
#' 
#' Volume status is based on the volume status checks, and does not reflect the volume state. Therefore, volume status does not indicate volumes in the `error` state (for example, when a volume is incapable of accepting I/O.)
#'
#' @param Filters One or more filters.
#' 
#' -   `action.code` - The action code for the event (for example, `enable-volume-io`).
#' 
#' -   `action.description` - A description of the action.
#' 
#' -   `action.event-id` - The event ID associated with the action.
#' 
#' -   `availability-zone` - The Availability Zone of the instance.
#' 
#' -   `event.description` - A description of the event.
#' 
#' -   `event.event-id` - The event ID.
#' 
#' -   `event.event-type` - The event type (for `io-enabled`: `passed` \| `failed`; for `io-performance`: `io-performance:degraded` \| `io-performance:severely-degraded` \| `io-performance:stalled`).
#' 
#' -   `event.not-after` - The latest end time for the event.
#' 
#' -   `event.not-before` - The earliest start time for the event.
#' 
#' -   `volume-status.details-name` - The cause for `volume-status.status` (`io-enabled` \| `io-performance`).
#' 
#' -   `volume-status.details-status` - The status of `volume-status.details-name` (for `io-enabled`: `passed` \| `failed`; for `io-performance`: `normal` \| `degraded` \| `severely-degraded` \| `stalled`).
#' 
#' -   `volume-status.status` - The status of the volume (`ok` \| `impaired` \| `warning` \| `insufficient-data`).
#' @param MaxResults The maximum number of volume results returned by `DescribeVolumeStatus` in paginated output. When this parameter is used, the request only returns `MaxResults` results in a single page along with a `NextToken` response element. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000; if `MaxResults` is given a value larger than 1000, only 1000 results are returned. If this parameter is not used, then `DescribeVolumeStatus` returns all results. You cannot specify this parameter and the volume IDs parameter in the same request.
#' @param NextToken The `NextToken` value to include in a future `DescribeVolumeStatus` request. When the results of the request exceed `MaxResults`, this value can be used to retrieve the next page of results. This value is `null` when there are no more results to return.
#' @param VolumeIds One or more volume IDs.
#' 
#' Default: Describes all your volumes.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes the status for the volume
#' # ``vol-1234567890abcdef0``.
#' describe_volume_status(
#'   VolumeIds = list(
#'     "vol-1234567890abcdef0"
#'   )
#' )
#' 
#' # This example describes the status for all volumes that are impaired. In
#' # this example output, there are no impaired volumes.
#' describe_volume_status(
#'   Filters = list(
#'     list(
#'       Name = "volume-status.status",
#'       Values = list(
#'         "impaired"
#'       )
#'     )
#'   )
#' )
#'
#' @export
describe_volume_status <- function (Filters = NULL, MaxResults = NULL, 
    NextToken = NULL, VolumeIds = NULL, DryRun = NULL) 
{
    op <- Operation(name = "DescribeVolumeStatus", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_volume_status_input(Filters = Filters, 
        MaxResults = MaxResults, NextToken = NextToken, VolumeIds = VolumeIds, 
        DryRun = DryRun)
    output <- describe_volume_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified EBS volumes
#'
#' Describes the specified EBS volumes.
#' 
#' If you are describing a long list of volumes, you can paginate the output to make the list more manageable. The `MaxResults` parameter sets the maximum number of results returned in a single page. If the list of results exceeds your `MaxResults` value, then that number of results is returned along with a `NextToken` value that can be passed to a subsequent `DescribeVolumes` request to retrieve the remaining results.
#' 
#' For more information about EBS volumes, see [Amazon EBS Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumes.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Filters One or more filters.
#' 
#' -   `attachment.attach-time` - The time stamp when the attachment initiated.
#' 
#' -   `attachment.delete-on-termination` - Whether the volume is deleted on instance termination.
#' 
#' -   `attachment.device` - The device name specified in the block device mapping (for example, `/dev/sda1`).
#' 
#' -   `attachment.instance-id` - The ID of the instance the volume is attached to.
#' 
#' -   `attachment.status` - The attachment state (`attaching` \| `attached` \| `detaching`).
#' 
#' -   `availability-zone` - The Availability Zone in which the volume was created.
#' 
#' -   `create-time` - The time stamp when the volume was created.
#' 
#' -   `encrypted` - The encryption status of the volume.
#' 
#' -   `size` - The size of the volume, in GiB.
#' 
#' -   `snapshot-id` - The snapshot from which the volume was created.
#' 
#' -   `status` - The status of the volume (`creating` \| `available` \| `in-use` \| `deleting` \| `deleted` \| `error`).
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `volume-id` - The volume ID.
#' 
#' -   `volume-type` - The Amazon EBS volume type. This can be `gp2` for General Purpose SSD, `io1` for Provisioned IOPS SSD, `st1` for Throughput Optimized HDD, `sc1` for Cold HDD, or `standard` for Magnetic volumes.
#' @param VolumeIds One or more volume IDs.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param MaxResults The maximum number of volume results returned by `DescribeVolumes` in paginated output. When this parameter is used, `DescribeVolumes` only returns `MaxResults` results in a single page along with a `NextToken` response element. The remaining results of the initial request can be seen by sending another `DescribeVolumes` request with the returned `NextToken` value. This value can be between 5 and 500; if `MaxResults` is given a value larger than 500, only 500 results are returned. If this parameter is not used, then `DescribeVolumes` returns all results. You cannot specify this parameter and the volume IDs parameter in the same request.
#' @param NextToken The `NextToken` value returned from a previous paginated `DescribeVolumes` request where `MaxResults` was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the `NextToken` value. This value is `null` when there are no more results to return.
#'
#' @examples
#' # This example describes all of your volumes in the default region.
#' describe_volumes()
#' 
#' # This example describes all volumes that are both attached to the
#' # instance with the ID i-1234567890abcdef0 and set to delete when the
#' # instance terminates.
#' describe_volumes(
#'   Filters = list(
#'     list(
#'       Name = "attachment.instance-id",
#'       Values = list(
#'         "i-1234567890abcdef0"
#'       )
#'     ),
#'     list(
#'       Name = "attachment.delete-on-termination",
#'       Values = list(
#'         "true"
#'       )
#'     )
#'   )
#' )
#'
#' @export
describe_volumes <- function (Filters = NULL, VolumeIds = NULL, 
    DryRun = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeVolumes", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_volumes_input(Filters = Filters, VolumeIds = VolumeIds, 
        DryRun = DryRun, MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_volumes_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Reports the current modification status of EBS volumes
#'
#' Reports the current modification status of EBS volumes.
#' 
#' Current-generation EBS volumes support modification of attributes including type, size, and (for `io1` volumes) IOPS provisioning while either attached to or detached from an instance. Following an action from the API or the console to modify a volume, the status of the modification may be `modifying`, `optimizing`, `completed`, or `failed`. If a volume has never been modified, then certain elements of the returned `VolumeModification` objects are null.
#' 
#' You can also use CloudWatch Events to check the status of a modification to an EBS volume. For information about CloudWatch Events, see the [Amazon CloudWatch Events User Guide](http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/). For more information, see [Monitoring Volume Modifications\"](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#monitoring_mods) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param VolumeIds One or more volume IDs for which in-progress modifications will be described.
#' @param Filters One or more filters. Supported filters: `volume-id`, `modification-state`, `target-size`, `target-iops`, `target-volume-type`, `original-size`, `original-iops`, `original-volume-type`, `start-time`.
#' @param NextToken The `nextToken` value returned by a previous paginated request.
#' @param MaxResults The maximum number of results (up to a limit of 500) to be returned in a paginated request.
#'
#' @examples
#'
#' @export
describe_volumes_modifications <- function (DryRun = NULL, VolumeIds = NULL, 
    Filters = NULL, NextToken = NULL, MaxResults = NULL) 
{
    op <- Operation(name = "DescribeVolumesModifications", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_volumes_modifications_input(DryRun = DryRun, 
        VolumeIds = VolumeIds, Filters = Filters, NextToken = NextToken, 
        MaxResults = MaxResults)
    output <- describe_volumes_modifications_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the specified attribute of the specified VPC
#'
#' Describes the specified attribute of the specified VPC. You can specify only one attribute at a time.
#'
#' @param Attribute The VPC attribute.
#' @param VpcId The ID of the VPC.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes the enableDnsSupport attribute. This attribute
#' # indicates whether DNS resolution is enabled for the VPC. If this
#' # attribute is true, the Amazon DNS server resolves DNS hostnames for your
#' # instances to their corresponding IP addresses; otherwise, it does not.
#' describe_vpc_attribute(
#'   Attribute = "enableDnsSupport",
#'   VpcId = "vpc-a01106c2"
#' )
#' 
#' # This example describes the enableDnsHostnames attribute. This attribute
#' # indicates whether the instances launched in the VPC get DNS hostnames.
#' # If this attribute is true, instances in the VPC get DNS hostnames;
#' # otherwise, they do not.
#' describe_vpc_attribute(
#'   Attribute = "enableDnsHostnames",
#'   VpcId = "vpc-a01106c2"
#' )
#'
#' @export
describe_vpc_attribute <- function (Attribute, VpcId, DryRun = NULL) 
{
    op <- Operation(name = "DescribeVpcAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_vpc_attribute_input(Attribute = Attribute, 
        VpcId = VpcId, DryRun = DryRun)
    output <- describe_vpc_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the ClassicLink status of one or more VPCs
#'
#' Describes the ClassicLink status of one or more VPCs.
#'
#' @param Filters One or more filters.
#' 
#' -   `is-classic-link-enabled` - Whether the VPC is enabled for ClassicLink (`true` \| `false`).
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param VpcIds One or more VPCs for which you want to describe the ClassicLink status.
#'
#' @examples
#'
#' @export
describe_vpc_classic_link <- function (Filters = NULL, DryRun = NULL, 
    VpcIds = NULL) 
{
    op <- Operation(name = "DescribeVpcClassicLink", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_vpc_classic_link_input(Filters = Filters, 
        DryRun = DryRun, VpcIds = VpcIds)
    output <- describe_vpc_classic_link_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the ClassicLink DNS support status of one or more VPCs
#'
#' Describes the ClassicLink DNS support status of one or more VPCs. If enabled, the DNS hostname of a linked EC2-Classic instance resolves to its private IP address when addressed from an instance in the VPC to which it\'s linked. Similarly, the DNS hostname of an instance in a VPC resolves to its private IP address when addressed from a linked EC2-Classic instance. For more information, see [ClassicLink](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param MaxResults The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.
#' @param NextToken The token for the next set of items to return. (You received this token from a prior call.)
#' @param VpcIds One or more VPC IDs.
#'
#' @examples
#'
#' @export
describe_vpc_classic_link_dns_support <- function (MaxResults = NULL, 
    NextToken = NULL, VpcIds = NULL) 
{
    op <- Operation(name = "DescribeVpcClassicLinkDnsSupport", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_vpc_classic_link_dns_support_input(MaxResults = MaxResults, 
        NextToken = NextToken, VpcIds = VpcIds)
    output <- describe_vpc_classic_link_dns_support_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the connection notifications for VPC endpoints and VPC endpoint services
#'
#' Describes the connection notifications for VPC endpoints and VPC endpoint services.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param ConnectionNotificationId The ID of the notification.
#' @param Filters One or more filters.
#' 
#' -   `connection-notification-arn` - The ARN of SNS topic for the notification.
#' 
#' -   `connection-notification-id` - The ID of the notification.
#' 
#' -   `connection-notification-state` - The state of the notification (`Enabled` \| `Disabled`).
#' 
#' -   `connection-notification-type` - The type of notification (`Topic`).
#' 
#' -   `service-id` - The ID of the endpoint service.
#' 
#' -   `vpc-endpoint-id` - The ID of the VPC endpoint.
#' @param MaxResults The maximum number of results to return in a single call. To retrieve the remaining results, make another request with the returned `NextToken` value.
#' @param NextToken The token to request the next page of results.
#'
#' @examples
#'
#' @export
describe_vpc_endpoint_connection_notifications <- function (DryRun = NULL, 
    ConnectionNotificationId = NULL, Filters = NULL, MaxResults = NULL, 
    NextToken = NULL) 
{
    op <- Operation(name = "DescribeVpcEndpointConnectionNotifications", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_vpc_endpoint_connection_notifications_input(DryRun = DryRun, 
        ConnectionNotificationId = ConnectionNotificationId, 
        Filters = Filters, MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_vpc_endpoint_connection_notifications_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the VPC endpoint connections to your VPC endpoint services, including any endpoints that are pending your acceptance
#'
#' Describes the VPC endpoint connections to your VPC endpoint services, including any endpoints that are pending your acceptance.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Filters One or more filters.
#' 
#' -   `service-id` - The ID of the service.
#' 
#' -   `vpc-endpoint-owner` - The AWS account number of the owner of the endpoint.
#' 
#' -   `vpc-endpoint-state` - The state of the endpoint (`pendingAcceptance` \| `pending` \| `available` \| `deleting` \| `deleted` \| `rejected` \| `failed`).
#' 
#' -   `vpc-endpoint-id` - The ID of the endpoint.
#' @param MaxResults The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000; if `MaxResults` is given a value larger than 1000, only 1000 results are returned.
#' @param NextToken The token to retrieve the next page of results.
#'
#' @examples
#'
#' @export
describe_vpc_endpoint_connections <- function (DryRun = NULL, 
    Filters = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeVpcEndpointConnections", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_vpc_endpoint_connections_input(DryRun = DryRun, 
        Filters = Filters, MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_vpc_endpoint_connections_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the VPC endpoint service configurations in your account (your services)
#'
#' Describes the VPC endpoint service configurations in your account (your services).
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param ServiceIds The IDs of one or more services.
#' @param Filters One or more filters.
#' 
#' -   `service-name` - The name of the service.
#' 
#' -   `service-id` - The ID of the service.
#' 
#' -   `service-state` - The state of the service (`Pending` \| `Available` \| `Deleting` \| `Deleted` \| `Failed`).
#' @param MaxResults The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000; if `MaxResults` is given a value larger than 1000, only 1000 results are returned.
#' @param NextToken The token to retrieve the next page of results.
#'
#' @examples
#'
#' @export
describe_vpc_endpoint_service_configurations <- function (DryRun = NULL, 
    ServiceIds = NULL, Filters = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeVpcEndpointServiceConfigurations", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_vpc_endpoint_service_configurations_input(DryRun = DryRun, 
        ServiceIds = ServiceIds, Filters = Filters, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- describe_vpc_endpoint_service_configurations_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes the principals (service consumers) that are permitted to discover your VPC endpoint service
#'
#' Describes the principals (service consumers) that are permitted to discover your VPC endpoint service.
#'
#' @param ServiceId The ID of the service.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Filters One or more filters.
#' 
#' -   `principal` - The ARN of the principal.
#' 
#' -   `principal-type` - The principal type (`All` \| `Service` \| `OrganizationUnit` \| `Account` \| `User` \| `Role`).
#' @param MaxResults The maximum number of results to return for the request in a single page. The remaining results of the initial request can be seen by sending another request with the returned `NextToken` value. This value can be between 5 and 1000; if `MaxResults` is given a value larger than 1000, only 1000 results are returned.
#' @param NextToken The token to retrieve the next page of results.
#'
#' @examples
#'
#' @export
describe_vpc_endpoint_service_permissions <- function (ServiceId, 
    DryRun = NULL, Filters = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeVpcEndpointServicePermissions", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- describe_vpc_endpoint_service_permissions_input(ServiceId = ServiceId, 
        DryRun = DryRun, Filters = Filters, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- describe_vpc_endpoint_service_permissions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes available services to which you can create a VPC endpoint
#'
#' Describes available services to which you can create a VPC endpoint.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param ServiceNames One or more service names.
#' @param Filters One or more filters.
#' 
#' -   `service-name`: The name of the service.
#' @param MaxResults The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.
#' 
#' Constraint: If the value is greater than 1000, we return only 1000 items.
#' @param NextToken The token for the next set of items to return. (You received this token from a prior call.)
#'
#' @examples
#'
#' @export
describe_vpc_endpoint_services <- function (DryRun = NULL, ServiceNames = NULL, 
    Filters = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeVpcEndpointServices", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_vpc_endpoint_services_input(DryRun = DryRun, 
        ServiceNames = ServiceNames, Filters = Filters, MaxResults = MaxResults, 
        NextToken = NextToken)
    output <- describe_vpc_endpoint_services_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your VPC endpoints
#'
#' Describes one or more of your VPC endpoints.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param VpcEndpointIds One or more endpoint IDs.
#' @param Filters One or more filters.
#' 
#' -   `service-name`: The name of the service.
#' 
#' -   `vpc-id`: The ID of the VPC in which the endpoint resides.
#' 
#' -   `vpc-endpoint-id`: The ID of the endpoint.
#' 
#' -   `vpc-endpoint-state`: The state of the endpoint. (`pending` \| `available` \| `deleting` \| `deleted`)
#' @param MaxResults The maximum number of items to return for this request. The request returns a token that you can specify in a subsequent call to get the next set of results.
#' 
#' Constraint: If the value is greater than 1000, we return only 1000 items.
#' @param NextToken The token for the next set of items to return. (You received this token from a prior call.)
#'
#' @examples
#'
#' @export
describe_vpc_endpoints <- function (DryRun = NULL, VpcEndpointIds = NULL, 
    Filters = NULL, MaxResults = NULL, NextToken = NULL) 
{
    op <- Operation(name = "DescribeVpcEndpoints", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_vpc_endpoints_input(DryRun = DryRun, VpcEndpointIds = VpcEndpointIds, 
        Filters = Filters, MaxResults = MaxResults, NextToken = NextToken)
    output <- describe_vpc_endpoints_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your VPC peering connections
#'
#' Describes one or more of your VPC peering connections.
#'
#' @param Filters One or more filters.
#' 
#' -   `accepter-vpc-info.cidr-block` - The IPv4 CIDR block of the accepter VPC.
#' 
#' -   `accepter-vpc-info.owner-id` - The AWS account ID of the owner of the accepter VPC.
#' 
#' -   `accepter-vpc-info.vpc-id` - The ID of the accepter VPC.
#' 
#' -   `expiration-time` - The expiration date and time for the VPC peering connection.
#' 
#' -   `requester-vpc-info.cidr-block` - The IPv4 CIDR block of the requester\'s VPC.
#' 
#' -   `requester-vpc-info.owner-id` - The AWS account ID of the owner of the requester VPC.
#' 
#' -   `requester-vpc-info.vpc-id` - The ID of the requester VPC.
#' 
#' -   `status-code` - The status of the VPC peering connection (`pending-acceptance` \| `failed` \| `expired` \| `provisioning` \| `active` \| `deleting` \| `deleted` \| `rejected`).
#' 
#' -   `status-message` - A message that provides more information about the status of the VPC peering connection, if applicable.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `vpc-peering-connection-id` - The ID of the VPC peering connection.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param VpcPeeringConnectionIds One or more VPC peering connection IDs.
#' 
#' Default: Describes all your VPC peering connections.
#'
#' @examples
#'
#' @export
describe_vpc_peering_connections <- function (Filters = NULL, 
    DryRun = NULL, VpcPeeringConnectionIds = NULL) 
{
    op <- Operation(name = "DescribeVpcPeeringConnections", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_vpc_peering_connections_input(Filters = Filters, 
        DryRun = DryRun, VpcPeeringConnectionIds = VpcPeeringConnectionIds)
    output <- describe_vpc_peering_connections_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your VPCs
#'
#' Describes one or more of your VPCs.
#'
#' @param Filters One or more filters.
#' 
#' -   `cidr` - The primary IPv4 CIDR block of the VPC. The CIDR block you specify must exactly match the VPC\'s CIDR block for information to be returned for the VPC. Must contain the slash followed by one or two digits (for example, `/28`).
#' 
#' -   `cidr-block-association.cidr-block` - An IPv4 CIDR block associated with the VPC.
#' 
#' -   `cidr-block-association.association-id` - The association ID for an IPv4 CIDR block associated with the VPC.
#' 
#' -   `cidr-block-association.state` - The state of an IPv4 CIDR block associated with the VPC.
#' 
#' -   `dhcp-options-id` - The ID of a set of DHCP options.
#' 
#' -   `ipv6-cidr-block-association.ipv6-cidr-block` - An IPv6 CIDR block associated with the VPC.
#' 
#' -   `ipv6-cidr-block-association.association-id` - The association ID for an IPv6 CIDR block associated with the VPC.
#' 
#' -   `ipv6-cidr-block-association.state` - The state of an IPv6 CIDR block associated with the VPC.
#' 
#' -   `isDefault` - Indicates whether the VPC is the default VPC.
#' 
#' -   `state` - The state of the VPC (`pending` \| `available`).
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `vpc-id` - The ID of the VPC.
#' @param VpcIds One or more VPC IDs.
#' 
#' Default: Describes all your VPCs.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example describes the specified VPC.
#' describe_vpcs(
#'   VpcIds = list(
#'     "vpc-a01106c2"
#'   )
#' )
#'
#' @export
describe_vpcs <- function (Filters = NULL, VpcIds = NULL, DryRun = NULL) 
{
    op <- Operation(name = "DescribeVpcs", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_vpcs_input(Filters = Filters, VpcIds = VpcIds, 
        DryRun = DryRun)
    output <- describe_vpcs_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your VPN connections
#'
#' Describes one or more of your VPN connections.
#' 
#' For more information about VPN connections, see [AWS Managed VPN Connections](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param Filters One or more filters.
#' 
#' -   `customer-gateway-configuration` - The configuration information for the customer gateway.
#' 
#' -   `customer-gateway-id` - The ID of a customer gateway associated with the VPN connection.
#' 
#' -   `state` - The state of the VPN connection (`pending` \| `available` \| `deleting` \| `deleted`).
#' 
#' -   `option.static-routes-only` - Indicates whether the connection has static routes only. Used for devices that do not support Border Gateway Protocol (BGP).
#' 
#' -   `route.destination-cidr-block` - The destination CIDR block. This corresponds to the subnet used in a customer data center.
#' 
#' -   `bgp-asn` - The BGP Autonomous System Number (ASN) associated with a BGP device.
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `type` - The type of VPN connection. Currently the only supported type is `ipsec.1`.
#' 
#' -   `vpn-connection-id` - The ID of the VPN connection.
#' 
#' -   `vpn-gateway-id` - The ID of a virtual private gateway associated with the VPN connection.
#' @param VpnConnectionIds One or more VPN connection IDs.
#' 
#' Default: Describes your VPN connections.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
describe_vpn_connections <- function (Filters = NULL, VpnConnectionIds = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "DescribeVpnConnections", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_vpn_connections_input(Filters = Filters, 
        VpnConnectionIds = VpnConnectionIds, DryRun = DryRun)
    output <- describe_vpn_connections_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Describes one or more of your virtual private gateways
#'
#' Describes one or more of your virtual private gateways.
#' 
#' For more information about virtual private gateways, see [AWS Managed VPN Connections](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_VPN.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param Filters One or more filters.
#' 
#' -   `amazon-side-asn` - The Autonomous System Number (ASN) for the Amazon side of the gateway.
#' 
#' -   `attachment.state` - The current state of the attachment between the gateway and the VPC (`attaching` \| `attached` \| `detaching` \| `detached`).
#' 
#' -   `attachment.vpc-id` - The ID of an attached VPC.
#' 
#' -   `availability-zone` - The Availability Zone for the virtual private gateway (if applicable).
#' 
#' -   `state` - The state of the virtual private gateway (`pending` \| `available` \| `deleting` \| `deleted`).
#' 
#' -   `tag`:\<key\> - The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
#' 
#' -   `tag-key` - The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
#' 
#' -   `type` - The type of virtual private gateway. Currently the only supported type is `ipsec.1`.
#' 
#' -   `vpn-gateway-id` - The ID of the virtual private gateway.
#' @param VpnGatewayIds One or more virtual private gateway IDs.
#' 
#' Default: Describes all your virtual private gateways.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
describe_vpn_gateways <- function (Filters = NULL, VpnGatewayIds = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "DescribeVpnGateways", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- describe_vpn_gateways_input(Filters = Filters, VpnGatewayIds = VpnGatewayIds, 
        DryRun = DryRun)
    output <- describe_vpn_gateways_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Unlinks (detaches) a linked EC2-Classic instance from a VPC
#'
#' Unlinks (detaches) a linked EC2-Classic instance from a VPC. After the instance has been unlinked, the VPC security groups are no longer associated with it. An instance is automatically unlinked from a VPC when it\'s stopped.
#'
#' @param InstanceId The ID of the instance to unlink from the VPC.
#' @param VpcId The ID of the VPC to which the instance is linked.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
detach_classic_link_vpc <- function (InstanceId, VpcId, DryRun = NULL) 
{
    op <- Operation(name = "DetachClassicLinkVpc", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- detach_classic_link_vpc_input(InstanceId = InstanceId, 
        VpcId = VpcId, DryRun = DryRun)
    output <- detach_classic_link_vpc_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Detaches an internet gateway from a VPC, disabling connectivity between the internet and the VPC
#'
#' Detaches an internet gateway from a VPC, disabling connectivity between the internet and the VPC. The VPC must not contain any running instances with Elastic IP addresses or public IPv4 addresses.
#'
#' @param InternetGatewayId The ID of the internet gateway.
#' @param VpcId The ID of the VPC.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example detaches the specified Internet gateway from the specified
#' # VPC.
#' detach_internet_gateway(
#'   InternetGatewayId = "igw-c0a643a9",
#'   VpcId = "vpc-a01106c2"
#' )
#'
#' @export
detach_internet_gateway <- function (InternetGatewayId, VpcId, 
    DryRun = NULL) 
{
    op <- Operation(name = "DetachInternetGateway", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- detach_internet_gateway_input(InternetGatewayId = InternetGatewayId, 
        VpcId = VpcId, DryRun = DryRun)
    output <- detach_internet_gateway_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Detaches a network interface from an instance
#'
#' Detaches a network interface from an instance.
#'
#' @param AttachmentId The ID of the attachment.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Force Specifies whether to force a detachment.
#'
#' @examples
#' # This example detaches the specified network interface from its attached
#' # instance.
#' detach_network_interface(
#'   AttachmentId = "eni-attach-66c4350a"
#' )
#'
#' @export
detach_network_interface <- function (AttachmentId, DryRun = NULL, 
    Force = NULL) 
{
    op <- Operation(name = "DetachNetworkInterface", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- detach_network_interface_input(AttachmentId = AttachmentId, 
        DryRun = DryRun, Force = Force)
    output <- detach_network_interface_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Detaches an EBS volume from an instance
#'
#' Detaches an EBS volume from an instance. Make sure to unmount any file systems on the device within your operating system before detaching the volume. Failure to do so can result in the volume becoming stuck in the `busy` state while detaching. If this happens, detachment can be delayed indefinitely until you unmount the volume, force detachment, reboot the instance, or all three. If an EBS volume is the root device of an instance, it can\'t be detached while the instance is running. To detach the root volume, stop the instance first.
#' 
#' When a volume with an AWS Marketplace product code is detached from an instance, the product code is no longer associated with the instance.
#' 
#' For more information, see [Detaching an Amazon EBS Volume](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-detaching-volume.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param VolumeId The ID of the volume.
#' @param Device The device name.
#' @param Force Forces detachment if the previous detachment attempt did not occur cleanly (for example, logging into an instance, unmounting the volume, and detaching normally). This option can lead to data loss or a corrupted file system. Use this option only as a last resort to detach a volume from a failed instance. The instance won\'t have an opportunity to flush file system caches or file system metadata. If you use this option, you must perform file system check and repair procedures.
#' @param InstanceId The ID of the instance.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example detaches the volume (``vol-049df61146c4d7901``) from the
#' # instance it is attached to.
#' detach_volume(
#'   VolumeId = "vol-1234567890abcdef0"
#' )
#'
#' @export
detach_volume <- function (VolumeId, Device = NULL, Force = NULL, 
    InstanceId = NULL, DryRun = NULL) 
{
    op <- Operation(name = "DetachVolume", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- detach_volume_input(VolumeId = VolumeId, Device = Device, 
        Force = Force, InstanceId = InstanceId, DryRun = DryRun)
    output <- detach_volume_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Detaches a virtual private gateway from a VPC
#'
#' Detaches a virtual private gateway from a VPC. You do this if you\'re planning to turn off the VPC and not use it anymore. You can confirm a virtual private gateway has been completely detached from a VPC by describing the virtual private gateway (any attachments to the virtual private gateway are also described).
#' 
#' You must wait for the attachment\'s state to switch to `detached` before you can delete the VPC or attach a different VPC to the virtual private gateway.
#'
#' @param VpcId The ID of the VPC.
#' @param VpnGatewayId The ID of the virtual private gateway.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
detach_vpn_gateway <- function (VpcId, VpnGatewayId, DryRun = NULL) 
{
    op <- Operation(name = "DetachVpnGateway", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- detach_vpn_gateway_input(VpcId = VpcId, VpnGatewayId = VpnGatewayId, 
        DryRun = DryRun)
    output <- detach_vpn_gateway_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disables a virtual private gateway (VGW) from propagating routes to a specified route table of a VPC
#'
#' Disables a virtual private gateway (VGW) from propagating routes to a specified route table of a VPC.
#'
#' @param GatewayId The ID of the virtual private gateway.
#' @param RouteTableId The ID of the route table.
#'
#' @examples
#' # This example disables the specified virtual private gateway from
#' # propagating static routes to the specified route table.
#' disable_vgw_route_propagation(
#'   GatewayId = "vgw-9a4cacf3",
#'   RouteTableId = "rtb-22574640"
#' )
#'
#' @export
disable_vgw_route_propagation <- function (GatewayId, RouteTableId) 
{
    op <- Operation(name = "DisableVgwRoutePropagation", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disable_vgw_route_propagation_input(GatewayId = GatewayId, 
        RouteTableId = RouteTableId)
    output <- disable_vgw_route_propagation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disables ClassicLink for a VPC
#'
#' Disables ClassicLink for a VPC. You cannot disable ClassicLink for a VPC that has EC2-Classic instances linked to it.
#'
#' @param VpcId The ID of the VPC.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
disable_vpc_classic_link <- function (VpcId, DryRun = NULL) 
{
    op <- Operation(name = "DisableVpcClassicLink", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disable_vpc_classic_link_input(VpcId = VpcId, DryRun = DryRun)
    output <- disable_vpc_classic_link_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disables ClassicLink DNS support for a VPC
#'
#' Disables ClassicLink DNS support for a VPC. If disabled, DNS hostnames resolve to public IP addresses when addressed between a linked EC2-Classic instance and instances in the VPC to which it\'s linked. For more information, see [ClassicLink](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param VpcId The ID of the VPC.
#'
#' @examples
#'
#' @export
disable_vpc_classic_link_dns_support <- function (VpcId = NULL) 
{
    op <- Operation(name = "DisableVpcClassicLinkDnsSupport", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- disable_vpc_classic_link_dns_support_input(VpcId = VpcId)
    output <- disable_vpc_classic_link_dns_support_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates an Elastic IP address from the instance or network interface it\'s associated with
#'
#' Disassociates an Elastic IP address from the instance or network interface it\'s associated with.
#' 
#' An Elastic IP address is for use in either the EC2-Classic platform or in a VPC. For more information, see [Elastic IP Addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' This is an idempotent operation. If you perform the operation more than once, Amazon EC2 doesn\'t return an error.
#'
#' @param AssociationId &#91;EC2-VPC&#93; The association ID. Required for EC2-VPC.
#' @param PublicIp &#91;EC2-Classic&#93; The Elastic IP address. Required for EC2-Classic.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example disassociates an Elastic IP address from an instance in a
#' # VPC.
#' disassociate_address(
#'   AssociationId = "eipassoc-2bebb745"
#' )
#' 
#' # This example disassociates an Elastic IP address from an instance in
#' # EC2-Classic.
#' disassociate_address(
#'   PublicIp = "198.51.100.0"
#' )
#'
#' @export
disassociate_address <- function (AssociationId = NULL, PublicIp = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "DisassociateAddress", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disassociate_address_input(AssociationId = AssociationId, 
        PublicIp = PublicIp, DryRun = DryRun)
    output <- disassociate_address_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates an IAM instance profile from a running or stopped instance
#'
#' Disassociates an IAM instance profile from a running or stopped instance.
#' 
#' Use DescribeIamInstanceProfileAssociations to get the association ID.
#'
#' @param AssociationId The ID of the IAM instance profile association.
#'
#' @examples
#' # This example disassociates the specified IAM instance profile from an
#' # instance.
#' disassociate_iam_instance_profile(
#'   AssociationId = "iip-assoc-05020b59952902f5f"
#' )
#'
#' @export
disassociate_iam_instance_profile <- function (AssociationId) 
{
    op <- Operation(name = "DisassociateIamInstanceProfile", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- disassociate_iam_instance_profile_input(AssociationId = AssociationId)
    output <- disassociate_iam_instance_profile_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates a subnet from a route table
#'
#' Disassociates a subnet from a route table.
#' 
#' After you perform this action, the subnet no longer uses the routes in the route table. Instead, it uses the routes in the VPC\'s main route table. For more information about route tables, see [Route Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param AssociationId The association ID representing the current association between the route table and subnet.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example disassociates the specified route table from its associated
#' # subnet.
#' disassociate_route_table(
#'   AssociationId = "rtbassoc-781d0d1a"
#' )
#'
#' @export
disassociate_route_table <- function (AssociationId, DryRun = NULL) 
{
    op <- Operation(name = "DisassociateRouteTable", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disassociate_route_table_input(AssociationId = AssociationId, 
        DryRun = DryRun)
    output <- disassociate_route_table_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates a CIDR block from a subnet
#'
#' Disassociates a CIDR block from a subnet. Currently, you can disassociate an IPv6 CIDR block only. You must detach or delete all gateways and resources that are associated with the CIDR block before you can disassociate it.
#'
#' @param AssociationId The association ID for the CIDR block.
#'
#' @examples
#'
#' @export
disassociate_subnet_cidr_block <- function (AssociationId) 
{
    op <- Operation(name = "DisassociateSubnetCidrBlock", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disassociate_subnet_cidr_block_input(AssociationId = AssociationId)
    output <- disassociate_subnet_cidr_block_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disassociates a CIDR block from a VPC
#'
#' Disassociates a CIDR block from a VPC. To disassociate the CIDR block, you must specify its association ID. You can get the association ID by using DescribeVpcs. You must detach or delete all gateways and resources that are associated with the CIDR block before you can disassociate it.
#' 
#' You cannot disassociate the CIDR block with which you originally created the VPC (the primary CIDR block).
#'
#' @param AssociationId The association ID for the CIDR block.
#'
#' @examples
#'
#' @export
disassociate_vpc_cidr_block <- function (AssociationId) 
{
    op <- Operation(name = "DisassociateVpcCidrBlock", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- disassociate_vpc_cidr_block_input(AssociationId = AssociationId)
    output <- disassociate_vpc_cidr_block_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Enables a virtual private gateway (VGW) to propagate routes to the specified route table of a VPC
#'
#' Enables a virtual private gateway (VGW) to propagate routes to the specified route table of a VPC.
#'
#' @param GatewayId The ID of the virtual private gateway.
#' @param RouteTableId The ID of the route table.
#'
#' @examples
#' # This example enables the specified virtual private gateway to propagate
#' # static routes to the specified route table.
#' enable_vgw_route_propagation(
#'   GatewayId = "vgw-9a4cacf3",
#'   RouteTableId = "rtb-22574640"
#' )
#'
#' @export
enable_vgw_route_propagation <- function (GatewayId, RouteTableId) 
{
    op <- Operation(name = "EnableVgwRoutePropagation", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- enable_vgw_route_propagation_input(GatewayId = GatewayId, 
        RouteTableId = RouteTableId)
    output <- enable_vgw_route_propagation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Enables I/O operations for a volume that had I/O operations disabled because the data on the volume was potentially inconsistent
#'
#' Enables I/O operations for a volume that had I/O operations disabled because the data on the volume was potentially inconsistent.
#'
#' @param VolumeId The ID of the volume.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example enables I/O on volume ``vol-1234567890abcdef0``.
#' enable_volume_io(
#'   VolumeId = "vol-1234567890abcdef0"
#' )
#'
#' @export
enable_volume_io <- function (VolumeId, DryRun = NULL) 
{
    op <- Operation(name = "EnableVolumeIO", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- enable_volume_io_input(VolumeId = VolumeId, DryRun = DryRun)
    output <- enable_volume_io_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Enables a VPC for ClassicLink
#'
#' Enables a VPC for ClassicLink. You can then link EC2-Classic instances to your ClassicLink-enabled VPC to allow communication over private IP addresses. You cannot enable your VPC for ClassicLink if any of your VPC route tables have existing routes for address ranges within the `10.0.0.0/8` IP address range, excluding local routes for VPCs in the `10.0.0.0/16` and `10.1.0.0/16` IP address ranges. For more information, see [ClassicLink](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param VpcId The ID of the VPC.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
enable_vpc_classic_link <- function (VpcId, DryRun = NULL) 
{
    op <- Operation(name = "EnableVpcClassicLink", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- enable_vpc_classic_link_input(VpcId = VpcId, DryRun = DryRun)
    output <- enable_vpc_classic_link_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Enables a VPC to support DNS hostname resolution for ClassicLink
#'
#' Enables a VPC to support DNS hostname resolution for ClassicLink. If enabled, the DNS hostname of a linked EC2-Classic instance resolves to its private IP address when addressed from an instance in the VPC to which it\'s linked. Similarly, the DNS hostname of an instance in a VPC resolves to its private IP address when addressed from a linked EC2-Classic instance. For more information, see [ClassicLink](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param VpcId The ID of the VPC.
#'
#' @examples
#'
#' @export
enable_vpc_classic_link_dns_support <- function (VpcId = NULL) 
{
    op <- Operation(name = "EnableVpcClassicLinkDnsSupport", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- enable_vpc_classic_link_dns_support_input(VpcId = VpcId)
    output <- enable_vpc_classic_link_dns_support_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Gets the console output for the specified instance
#'
#' Gets the console output for the specified instance. For Linux instances, the instance console output displays the exact console output that would normally be displayed on a physical monitor attached to a computer. For Windows instances, the instance console output includes the last three system event log errors.
#' 
#' By default, the console output returns buffered information that was posted shortly after an instance transition state (start, stop, reboot, or terminate). This information is available for at least one hour after the most recent post. Only the most recent 64 KB of console output is available.
#' 
#' You can optionally retrieve the latest serial console output at any time during the instance lifecycle. This option is supported on instance types that use the Nitro hypervisor.
#' 
#' For more information, see [Instance Console Output](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html#instance-console-console-output) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param InstanceId The ID of the instance.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Latest When enabled, retrieves the latest console output for the instance.
#' 
#' Default: disabled (`false`)
#'
#' @examples
#' # This example gets the console output for the specified instance.
#' get_console_output(
#'   InstanceId = "i-1234567890abcdef0"
#' )
#'
#' @export
get_console_output <- function (InstanceId, DryRun = NULL, Latest = NULL) 
{
    op <- Operation(name = "GetConsoleOutput", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_console_output_input(InstanceId = InstanceId, 
        DryRun = DryRun, Latest = Latest)
    output <- get_console_output_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieve a JPG-format screenshot of a running instance to help with troubleshooting
#'
#' Retrieve a JPG-format screenshot of a running instance to help with troubleshooting.
#' 
#' The returned content is Base64-encoded.
#'
#' @param InstanceId The ID of the instance.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param WakeUp When set to `true`, acts as keystroke input and wakes up an instance that\'s in standby or \"sleep\" mode.
#'
#' @examples
#'
#' @export
get_console_screenshot <- function (InstanceId, DryRun = NULL, 
    WakeUp = NULL) 
{
    op <- Operation(name = "GetConsoleScreenshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_console_screenshot_input(InstanceId = InstanceId, 
        DryRun = DryRun, WakeUp = WakeUp)
    output <- get_console_screenshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Preview a reservation purchase with configurations that match those of your Dedicated Host
#'
#' Preview a reservation purchase with configurations that match those of your Dedicated Host. You must have active Dedicated Hosts in your account before you purchase a reservation.
#' 
#' This is a preview of the PurchaseHostReservation action and does not result in the offering being purchased.
#'
#' @param HostIdSet The IDs of the Dedicated Hosts with which the reservation is associated.
#' @param OfferingId The offering ID of the reservation.
#'
#' @examples
#'
#' @export
get_host_reservation_purchase_preview <- function (HostIdSet, 
    OfferingId) 
{
    op <- Operation(name = "GetHostReservationPurchasePreview", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- get_host_reservation_purchase_preview_input(HostIdSet = HostIdSet, 
        OfferingId = OfferingId)
    output <- get_host_reservation_purchase_preview_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the configuration data of the specified instance
#'
#' Retrieves the configuration data of the specified instance. You can use this data to create a launch template.
#'
#' @param InstanceId The ID of the instance.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example gets the launch template data for the specified instance.
#' get_launch_template_data(
#'   InstanceId = "0123d646e8048babc"
#' )
#'
#' @export
get_launch_template_data <- function (InstanceId, DryRun = NULL) 
{
    op <- Operation(name = "GetLaunchTemplateData", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_launch_template_data_input(InstanceId = InstanceId, 
        DryRun = DryRun)
    output <- get_launch_template_data_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Retrieves the encrypted administrator password for a running Windows instance
#'
#' Retrieves the encrypted administrator password for a running Windows instance.
#' 
#' The Windows password is generated at boot by the `EC2Config` service or `EC2Launch` scripts (Windows Server 2016 and later). This usually only happens the first time an instance is launched. For more information, see [EC2Config](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/UsingConfig_WinAMI.html) and [EC2Launch](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2launch.html) in the Amazon Elastic Compute Cloud User Guide.
#' 
#' For the `EC2Config` service, the password is not generated for rebundled AMIs unless `Ec2SetPassword` is enabled before bundling.
#' 
#' The password is encrypted using the key pair that you specified when you launched the instance. You must provide the corresponding key pair file.
#' 
#' When you launch an instance, password generation and encryption may take a few minutes. If you try to retrieve the password before it\'s available, the output returns an empty string. We recommend that you wait up to 15 minutes after launching an instance before trying to retrieve the generated password.
#'
#' @param InstanceId The ID of the Windows instance.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
get_password_data <- function (InstanceId, DryRun = NULL) 
{
    op <- Operation(name = "GetPasswordData", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- get_password_data_input(InstanceId = InstanceId, 
        DryRun = DryRun)
    output <- get_password_data_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Returns a quote and exchange information for exchanging one or more specified Convertible Reserved Instances for a new Convertible Reserved Instance
#'
#' Returns a quote and exchange information for exchanging one or more specified Convertible Reserved Instances for a new Convertible Reserved Instance. If the exchange cannot be performed, the reason is returned in the response. Use AcceptReservedInstancesExchangeQuote to perform the exchange.
#'
#' @param ReservedInstanceIds The IDs of the Convertible Reserved Instances to exchange.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param TargetConfigurations The configuration of the target Convertible Reserved Instance to exchange for your current Convertible Reserved Instances.
#'
#' @examples
#'
#' @export
get_reserved_instances_exchange_quote <- function (ReservedInstanceIds, 
    DryRun = NULL, TargetConfigurations = NULL) 
{
    op <- Operation(name = "GetReservedInstancesExchangeQuote", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- get_reserved_instances_exchange_quote_input(ReservedInstanceIds = ReservedInstanceIds, 
        DryRun = DryRun, TargetConfigurations = TargetConfigurations)
    output <- get_reserved_instances_exchange_quote_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Import single or multi-volume disk images or EBS snapshots into an Amazon Machine Image (AMI)
#'
#' Import single or multi-volume disk images or EBS snapshots into an Amazon Machine Image (AMI). For more information, see [Importing a VM as an Image Using VM Import/Export](http://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html) in the *VM Import/Export User Guide*.
#'
#' @param Architecture The architecture of the virtual machine.
#' 
#' Valid values: `i386` \| `x86_64`
#' @param ClientData The client-specific data.
#' @param ClientToken The token to enable idempotency for VM import requests.
#' @param Description A description string for the import image task.
#' @param DiskContainers Information about the disk containers.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Hypervisor The target hypervisor platform.
#' 
#' Valid values: `xen`
#' @param LicenseType The license type to be used for the Amazon Machine Image (AMI) after importing.
#' 
#' **Note:** You may only use BYOL if you have existing licenses with rights to use these licenses in a third party cloud like AWS. For more information, see [Prerequisites](http://docs.aws.amazon.com/vm-import/latest/userguide/vmimport-image-import.html#prerequisites-image) in the VM Import/Export User Guide.
#' 
#' Valid values: `AWS` \| `BYOL`
#' @param Platform The operating system of the virtual machine.
#' 
#' Valid values: `Windows` \| `Linux`
#' @param RoleName The name of the role to use when not using the default role, \'vmimport\'.
#'
#' @examples
#'
#' @export
import_image <- function (Architecture = NULL, ClientData = NULL, 
    ClientToken = NULL, Description = NULL, DiskContainers = NULL, 
    DryRun = NULL, Hypervisor = NULL, LicenseType = NULL, Platform = NULL, 
    RoleName = NULL) 
{
    op <- Operation(name = "ImportImage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- import_image_input(Architecture = Architecture, 
        ClientData = ClientData, ClientToken = ClientToken, Description = Description, 
        DiskContainers = DiskContainers, DryRun = DryRun, Hypervisor = Hypervisor, 
        LicenseType = LicenseType, Platform = Platform, RoleName = RoleName)
    output <- import_image_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an import instance task using metadata from the specified disk image
#'
#' Creates an import instance task using metadata from the specified disk image. `ImportInstance` only supports single-volume VMs. To import multi-volume VMs, use ImportImage. For more information, see [Importing a Virtual Machine Using the Amazon EC2 CLI](http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/ec2-cli-vmimport-export.html).
#' 
#' For information about the import manifest referenced by this API action, see [VM Import Manifest](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
#'
#' @param Platform The instance operating system.
#' @param Description A description for the instance being imported.
#' @param DiskImages The disk image.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param LaunchSpecification The launch specification.
#'
#' @examples
#'
#' @export
import_instance <- function (Platform, Description = NULL, DiskImages = NULL, 
    DryRun = NULL, LaunchSpecification = NULL) 
{
    op <- Operation(name = "ImportInstance", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- import_instance_input(Platform = Platform, Description = Description, 
        DiskImages = DiskImages, DryRun = DryRun, LaunchSpecification = LaunchSpecification)
    output <- import_instance_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Imports the public key from an RSA key pair that you created with a third-party tool
#'
#' Imports the public key from an RSA key pair that you created with a third-party tool. Compare this with CreateKeyPair, in which AWS creates the key pair and gives the keys to you (AWS keeps a copy of the public key). With ImportKeyPair, you create the key pair and give AWS just the public key. The private key is never transferred between you and AWS.
#' 
#' For more information about key pairs, see [Key Pairs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param KeyName A unique name for the key pair.
#' @param PublicKeyMaterial The public key. For API calls, the text must be base64-encoded. For command line tools, base64 encoding is performed for you.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
import_key_pair <- function (KeyName, PublicKeyMaterial, DryRun = NULL) 
{
    op <- Operation(name = "ImportKeyPair", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- import_key_pair_input(KeyName = KeyName, PublicKeyMaterial = PublicKeyMaterial, 
        DryRun = DryRun)
    output <- import_key_pair_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Imports a disk into an EBS snapshot
#'
#' Imports a disk into an EBS snapshot.
#'
#' @param ClientData The client-specific data.
#' @param ClientToken Token to enable idempotency for VM import requests.
#' @param Description The description string for the import snapshot task.
#' @param DiskContainer Information about the disk container.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param RoleName The name of the role to use when not using the default role, \'vmimport\'.
#'
#' @examples
#'
#' @export
import_snapshot <- function (ClientData = NULL, ClientToken = NULL, 
    Description = NULL, DiskContainer = NULL, DryRun = NULL, 
    RoleName = NULL) 
{
    op <- Operation(name = "ImportSnapshot", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- import_snapshot_input(ClientData = ClientData, ClientToken = ClientToken, 
        Description = Description, DiskContainer = DiskContainer, 
        DryRun = DryRun, RoleName = RoleName)
    output <- import_snapshot_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates an import volume task using metadata from the specified disk image
#'
#' Creates an import volume task using metadata from the specified disk image.For more information, see [Importing Disks to Amazon EBS](http://docs.aws.amazon.com/AWSEC2/latest/CommandLineReference/importing-your-volumes-into-amazon-ebs.html).
#' 
#' For information about the import manifest referenced by this API action, see [VM Import Manifest](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/manifest.html).
#'
#' @param AvailabilityZone The Availability Zone for the resulting EBS volume.
#' @param Image The disk image.
#' @param Volume The volume size.
#' @param Description A description of the volume.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
import_volume <- function (AvailabilityZone, Image, Volume, Description = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "ImportVolume", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- import_volume_input(AvailabilityZone = AvailabilityZone, 
        Image = Image, Volume = Volume, Description = Description, 
        DryRun = DryRun)
    output <- import_volume_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the specified EC2 Fleet
#'
#' Modifies the specified EC2 Fleet.
#' 
#' While the EC2 Fleet is being modified, it is in the `modifying` state.
#'
#' @param FleetId The ID of the EC2 Fleet.
#' @param TargetCapacitySpecification The size of the EC2 Fleet.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param ExcessCapacityTerminationPolicy Indicates whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2 Fleet.
#'
#' @examples
#'
#' @export
modify_fleet <- function (FleetId, TargetCapacitySpecification, 
    DryRun = NULL, ExcessCapacityTerminationPolicy = NULL) 
{
    op <- Operation(name = "ModifyFleet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_fleet_input(FleetId = FleetId, TargetCapacitySpecification = TargetCapacitySpecification, 
        DryRun = DryRun, ExcessCapacityTerminationPolicy = ExcessCapacityTerminationPolicy)
    output <- modify_fleet_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the specified attribute of the specified Amazon FPGA Image (AFI)
#'
#' Modifies the specified attribute of the specified Amazon FPGA Image (AFI).
#'
#' @param FpgaImageId The ID of the AFI.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Attribute The name of the attribute.
#' @param OperationType The operation type.
#' @param UserIds One or more AWS account IDs. This parameter is valid only when modifying the `loadPermission` attribute.
#' @param UserGroups One or more user groups. This parameter is valid only when modifying the `loadPermission` attribute.
#' @param ProductCodes One or more product codes. After you add a product code to an AFI, it can\'t be removed. This parameter is valid only when modifying the `productCodes` attribute.
#' @param LoadPermission The load permission for the AFI.
#' @param Description A description for the AFI.
#' @param Name A name for the AFI.
#'
#' @examples
#'
#' @export
modify_fpga_image_attribute <- function (FpgaImageId, DryRun = NULL, 
    Attribute = NULL, OperationType = NULL, UserIds = NULL, UserGroups = NULL, 
    ProductCodes = NULL, LoadPermission = NULL, Description = NULL, 
    Name = NULL) 
{
    op <- Operation(name = "ModifyFpgaImageAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_fpga_image_attribute_input(FpgaImageId = FpgaImageId, 
        DryRun = DryRun, Attribute = Attribute, OperationType = OperationType, 
        UserIds = UserIds, UserGroups = UserGroups, ProductCodes = ProductCodes, 
        LoadPermission = LoadPermission, Description = Description, 
        Name = Name)
    output <- modify_fpga_image_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modify the auto-placement setting of a Dedicated Host
#'
#' Modify the auto-placement setting of a Dedicated Host. When auto-placement is enabled, any instances that you launch with a tenancy of `host` but without a specific host ID are placed onto any available Dedicated Host in your account that has auto-placement enabled. When auto-placement is disabled, you need to provide a host ID to have the instance launch onto a specific host. If no host ID is provided, the instance is launched onto a suitable host with auto-placement enabled.
#'
#' @param AutoPlacement Specify whether to enable or disable auto-placement.
#' @param HostIds The IDs of the Dedicated Hosts to modify.
#'
#' @examples
#'
#' @export
modify_hosts <- function (AutoPlacement, HostIds) 
{
    op <- Operation(name = "ModifyHosts", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_hosts_input(AutoPlacement = AutoPlacement, 
        HostIds = HostIds)
    output <- modify_hosts_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the ID format for the specified resource on a per-region basis
#'
#' Modifies the ID format for the specified resource on a per-region basis. You can specify that resources should receive longer IDs (17-character IDs) when they are created.
#' 
#' This request can only be used to modify longer ID settings for resource types that are within the opt-in period. Resources currently in their opt-in period include: `bundle` \| `conversion-task` \| `customer-gateway` \| `dhcp-options` \| `elastic-ip-allocation` \| `elastic-ip-association` \| `export-task` \| `flow-log` \| `image` \| `import-task` \| `internet-gateway` \| `network-acl` \| `network-acl-association` \| `network-interface` \| `network-interface-attachment` \| `prefix-list` \| `route-table` \| `route-table-association` \| `security-group` \| `subnet` \| `subnet-cidr-block-association` \| `vpc` \| `vpc-cidr-block-association` \| `vpc-endpoint` \| `vpc-peering-connection` \| `vpn-connection` \| `vpn-gateway`.
#' 
#' This setting applies to the IAM user who makes the request; it does not apply to the entire AWS account. By default, an IAM user defaults to the same settings as the root user. If you\'re using this action as the root user, then these settings apply to the entire account, unless an IAM user explicitly overrides these settings for themselves. For more information, see [Resource IDs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' Resources created with longer IDs are visible to all IAM roles and users, regardless of these settings and provided that they have permission to use the relevant `Describe` command for the resource type.
#'
#' @param Resource The type of resource: `bundle` \| `conversion-task` \| `customer-gateway` \| `dhcp-options` \| `elastic-ip-allocation` \| `elastic-ip-association` \| `export-task` \| `flow-log` \| `image` \| `import-task` \| `internet-gateway` \| `network-acl` \| `network-acl-association` \| `network-interface` \| `network-interface-attachment` \| `prefix-list` \| `route-table` \| `route-table-association` \| `security-group` \| `subnet` \| `subnet-cidr-block-association` \| `vpc` \| `vpc-cidr-block-association` \| `vpc-endpoint` \| `vpc-peering-connection` \| `vpn-connection` \| `vpn-gateway`.
#' 
#' Alternatively, use the `all-current` option to include all resource types that are currently within their opt-in period for longer IDs.
#' @param UseLongIds Indicate whether the resource should use longer IDs (17-character IDs).
#'
#' @examples
#'
#' @export
modify_id_format <- function (Resource, UseLongIds) 
{
    op <- Operation(name = "ModifyIdFormat", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_id_format_input(Resource = Resource, UseLongIds = UseLongIds)
    output <- modify_id_format_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the ID format of a resource for a specified IAM user, IAM role, or the root user for an account; or all IAM users, IAM roles, and the root user for an account
#'
#' Modifies the ID format of a resource for a specified IAM user, IAM role, or the root user for an account; or all IAM users, IAM roles, and the root user for an account. You can specify that resources should receive longer IDs (17-character IDs) when they are created.
#' 
#' This request can only be used to modify longer ID settings for resource types that are within the opt-in period. Resources currently in their opt-in period include: `bundle` \| `conversion-task` \| `customer-gateway` \| `dhcp-options` \| `elastic-ip-allocation` \| `elastic-ip-association` \| `export-task` \| `flow-log` \| `image` \| `import-task` \| `internet-gateway` \| `network-acl` \| `network-acl-association` \| `network-interface` \| `network-interface-attachment` \| `prefix-list` \| `route-table` \| `route-table-association` \| `security-group` \| `subnet` \| `subnet-cidr-block-association` \| `vpc` \| `vpc-cidr-block-association` \| `vpc-endpoint` \| `vpc-peering-connection` \| `vpn-connection` \| `vpn-gateway`.
#' 
#' For more information, see [Resource IDs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/resource-ids.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' This setting applies to the principal specified in the request; it does not apply to the principal that makes the request.
#' 
#' Resources created with longer IDs are visible to all IAM roles and users, regardless of these settings and provided that they have permission to use the relevant `Describe` command for the resource type.
#'
#' @param PrincipalArn The ARN of the principal, which can be an IAM user, IAM role, or the root user. Specify `all` to modify the ID format for all IAM users, IAM roles, and the root user of the account.
#' @param Resource The type of resource: `bundle` \| `conversion-task` \| `customer-gateway` \| `dhcp-options` \| `elastic-ip-allocation` \| `elastic-ip-association` \| `export-task` \| `flow-log` \| `image` \| `import-task` \| `internet-gateway` \| `network-acl` \| `network-acl-association` \| `network-interface` \| `network-interface-attachment` \| `prefix-list` \| `route-table` \| `route-table-association` \| `security-group` \| `subnet` \| `subnet-cidr-block-association` \| `vpc` \| `vpc-cidr-block-association` \| `vpc-endpoint` \| `vpc-peering-connection` \| `vpn-connection` \| `vpn-gateway`.
#' 
#' Alternatively, use the `all-current` option to include all resource types that are currently within their opt-in period for longer IDs.
#' @param UseLongIds Indicates whether the resource should use longer IDs (17-character IDs)
#'
#' @examples
#'
#' @export
modify_identity_id_format <- function (PrincipalArn, Resource, 
    UseLongIds) 
{
    op <- Operation(name = "ModifyIdentityIdFormat", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_identity_id_format_input(PrincipalArn = PrincipalArn, 
        Resource = Resource, UseLongIds = UseLongIds)
    output <- modify_identity_id_format_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the specified attribute of the specified AMI
#'
#' Modifies the specified attribute of the specified AMI. You can specify only one attribute at a time. You can use the `Attribute` parameter to specify the attribute or one of the following parameters: `Description`, `LaunchPermission`, or `ProductCode`.
#' 
#' AWS Marketplace product codes cannot be modified. Images with an AWS Marketplace product code cannot be made public.
#' 
#' To enable the SriovNetSupport enhanced networking attribute of an image, enable SriovNetSupport on an instance and create an AMI from the instance.
#'
#' @param ImageId The ID of the AMI.
#' @param Attribute The name of the attribute to modify. The valid values are `description`, `launchPermission`, and `productCodes`.
#' @param Description A new description for the AMI.
#' @param LaunchPermission A new launch permission for the AMI.
#' @param OperationType The operation type. This parameter can be used only when the `Attribute` parameter is `launchPermission`.
#' @param ProductCodes One or more DevPay product codes. After you add a product code to an AMI, it can\'t be removed.
#' @param UserGroups One or more user groups. This parameter can be used only when the `Attribute` parameter is `launchPermission`.
#' @param UserIds One or more AWS account IDs. This parameter can be used only when the `Attribute` parameter is `launchPermission`.
#' @param Value The value of the attribute being modified. This parameter can be used only when the `Attribute` parameter is `description` or `productCodes`.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example makes the specified AMI public.
#' modify_image_attribute(
#'   ImageId = "ami-5731123e",
#'   LaunchPermission = list(
#'     Add = list(
#'       list(
#'         Group = "all"
#'       )
#'     )
#'   )
#' )
#' 
#' # This example grants launch permissions for the specified AMI to the
#' # specified AWS account.
#' modify_image_attribute(
#'   ImageId = "ami-5731123e",
#'   LaunchPermission = list(
#'     Add = list(
#'       list(
#'         UserId = "123456789012"
#'       )
#'     )
#'   )
#' )
#'
#' @export
modify_image_attribute <- function (ImageId, Attribute = NULL, 
    Description = NULL, LaunchPermission = NULL, OperationType = NULL, 
    ProductCodes = NULL, UserGroups = NULL, UserIds = NULL, Value = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "ModifyImageAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_image_attribute_input(ImageId = ImageId, 
        Attribute = Attribute, Description = Description, LaunchPermission = LaunchPermission, 
        OperationType = OperationType, ProductCodes = ProductCodes, 
        UserGroups = UserGroups, UserIds = UserIds, Value = Value, 
        DryRun = DryRun)
    output <- modify_image_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the specified attribute of the specified instance
#'
#' Modifies the specified attribute of the specified instance. You can specify only one attribute at a time.
#' 
#' **Note:** Using this action to change the security groups associated with an elastic network interface (ENI) attached to an instance in a VPC can result in an error if the instance has more than one ENI. To change the security groups associated with an ENI attached to an instance that has multiple ENIs, we recommend that you use the ModifyNetworkInterfaceAttribute action.
#' 
#' To modify some attributes, the instance must be stopped. For more information, see [Modifying Attributes of a Stopped Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_ChangingAttributesWhileInstanceStopped.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param InstanceId The ID of the instance.
#' @param SourceDestCheck Specifies whether source/destination checking is enabled. A value of `true` means that checking is enabled, and `false` means that checking is disabled. This value must be `false` for a NAT instance to perform NAT.
#' @param Attribute The name of the attribute.
#' @param BlockDeviceMappings Modifies the `DeleteOnTermination` attribute for volumes that are currently attached. The volume must be owned by the caller. If no value is specified for `DeleteOnTermination`, the default is `true` and the volume is deleted when the instance is terminated.
#' 
#' To add instance store volumes to an Amazon EBS-backed instance, you must add them when you launch the instance. For more information, see [Updating the Block Device Mapping when Launching an Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html#Using_OverridingAMIBDM) in the *Amazon Elastic Compute Cloud User Guide*.
#' @param DisableApiTermination If the value is `true`, you can\'t terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. You cannot use this parameter for Spot Instances.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param EbsOptimized Specifies whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal EBS I/O performance. This optimization isn\'t available with all instance types. Additional usage charges apply when using an EBS Optimized instance.
#' @param EnaSupport Set to `true` to enable enhanced networking with ENA for the instance.
#' 
#' This option is supported only for HVM instances. Specifying this option with a PV instance can make it unreachable.
#' @param Groups &#91;EC2-VPC&#93; Changes the security groups of the instance. You must specify at least one security group, even if it\'s just the default security group for the VPC. You must specify the security group ID, not the security group name.
#' @param InstanceInitiatedShutdownBehavior Specifies whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
#' @param InstanceType Changes the instance type to the specified value. For more information, see [Instance Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html). If the instance type is not valid, the error returned is `InvalidInstanceAttributeValue`.
#' @param Kernel Changes the instance\'s kernel to the specified value. We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [PV-GRUB](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html).
#' @param Ramdisk Changes the instance\'s RAM disk to the specified value. We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [PV-GRUB](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedKernels.html).
#' @param SriovNetSupport Set to `simple` to enable enhanced networking with the Intel 82599 Virtual Function interface for the instance.
#' 
#' There is no way to disable enhanced networking with the Intel 82599 Virtual Function interface at this time.
#' 
#' This option is supported only for HVM instances. Specifying this option with a PV instance can make it unreachable.
#' @param UserData Changes the instance\'s user data to the specified value. If you are using an AWS SDK or command line tool, base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide base64-encoded text.
#' @param Value A new value for the attribute. Use only with the `kernel`, `ramdisk`, `userData`, `disableApiTermination`, or `instanceInitiatedShutdownBehavior` attribute.
#'
#' @examples
#' # This example modifies the instance type of the specified stopped
#' # instance.
#' modify_instance_attribute(
#'   InstanceId = "i-1234567890abcdef0",
#'   InstanceType = list(
#'     Value = "m5.large"
#'   )
#' )
#' 
#' # This example enables enhanced networking for the specified stopped
#' # instance.
#' modify_instance_attribute(
#'   EnaSupport = list(
#'     Value = TRUE
#'   ),
#'   InstanceId = "i-1234567890abcdef0"
#' )
#'
#' @export
modify_instance_attribute <- function (InstanceId, SourceDestCheck = NULL, 
    Attribute = NULL, BlockDeviceMappings = NULL, DisableApiTermination = NULL, 
    DryRun = NULL, EbsOptimized = NULL, EnaSupport = NULL, Groups = NULL, 
    InstanceInitiatedShutdownBehavior = NULL, InstanceType = NULL, 
    Kernel = NULL, Ramdisk = NULL, SriovNetSupport = NULL, UserData = NULL, 
    Value = NULL) 
{
    op <- Operation(name = "ModifyInstanceAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_instance_attribute_input(InstanceId = InstanceId, 
        SourceDestCheck = SourceDestCheck, Attribute = Attribute, 
        BlockDeviceMappings = BlockDeviceMappings, DisableApiTermination = DisableApiTermination, 
        DryRun = DryRun, EbsOptimized = EbsOptimized, EnaSupport = EnaSupport, 
        Groups = Groups, InstanceInitiatedShutdownBehavior = InstanceInitiatedShutdownBehavior, 
        InstanceType = InstanceType, Kernel = Kernel, Ramdisk = Ramdisk, 
        SriovNetSupport = SriovNetSupport, UserData = UserData, 
        Value = Value)
    output <- modify_instance_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the credit option for CPU usage on a running or stopped T2 or T3 instance
#'
#' Modifies the credit option for CPU usage on a running or stopped T2 or T3 instance. The credit options are `standard` and `unlimited`.
#' 
#' For more information, see [Burstable Performance Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param InstanceCreditSpecifications Information about the credit option for CPU usage.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param ClientToken A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
#'
#' @examples
#'
#' @export
modify_instance_credit_specification <- function (InstanceCreditSpecifications, 
    DryRun = NULL, ClientToken = NULL) 
{
    op <- Operation(name = "ModifyInstanceCreditSpecification", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- modify_instance_credit_specification_input(InstanceCreditSpecifications = InstanceCreditSpecifications, 
        DryRun = DryRun, ClientToken = ClientToken)
    output <- modify_instance_credit_specification_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the placement attributes for a specified instance
#'
#' Modifies the placement attributes for a specified instance. You can do the following:
#' 
#' -   Modify the affinity between an instance and a [Dedicated Host](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html). When affinity is set to `host` and the instance is not associated with a specific Dedicated Host, the next time the instance is launched, it is automatically associated with the host on which it lands. If the instance is restarted or rebooted, this relationship persists.
#' 
#' -   Change the Dedicated Host with which an instance is associated.
#' 
#' -   Change the instance tenancy of an instance from `host` to `dedicated`, or from `dedicated` to `host`.
#' 
#' -   Move an instance to or from a [placement group](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html).
#' 
#' At least one attribute for affinity, host ID, tenancy, or placement group name must be specified in the request. Affinity and tenancy can be modified in the same request.
#' 
#' To modify the host ID, tenancy, or placement group for an instance, the instance must be in the `stopped` state.
#'
#' @param InstanceId The ID of the instance that you are modifying.
#' @param Affinity The affinity setting for the instance.
#' @param GroupName The name of the placement group in which to place the instance. For spread placement groups, the instance must have a tenancy of `default`. For cluster placement groups, the instance must have a tenancy of `default` or `dedicated`.
#' 
#' To remove an instance from a placement group, specify an empty string (\"\").
#' @param HostId The ID of the Dedicated Host with which to associate the instance.
#' @param Tenancy The tenancy for the instance.
#'
#' @examples
#'
#' @export
modify_instance_placement <- function (InstanceId, Affinity = NULL, 
    GroupName = NULL, HostId = NULL, Tenancy = NULL) 
{
    op <- Operation(name = "ModifyInstancePlacement", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_instance_placement_input(InstanceId = InstanceId, 
        Affinity = Affinity, GroupName = GroupName, HostId = HostId, 
        Tenancy = Tenancy)
    output <- modify_instance_placement_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies a launch template
#'
#' Modifies a launch template. You can specify which version of the launch template to set as the default version. When launching an instance, the default version applies when a launch template version is not specified.
#'
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param ClientToken Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
#' @param LaunchTemplateId The ID of the launch template. You must specify either the launch template ID or launch template name in the request.
#' @param LaunchTemplateName The name of the launch template. You must specify either the launch template ID or launch template name in the request.
#' @param DefaultVersion The version number of the launch template to set as the default version.
#'
#' @examples
#' # This example specifies version 2 as the default version of the specified
#' # launch template.
#' modify_launch_template(
#'   DefaultVersion = "2",
#'   LaunchTemplateId = "lt-0abcd290751193123"
#' )
#'
#' @export
modify_launch_template <- function (DryRun = NULL, ClientToken = NULL, 
    LaunchTemplateId = NULL, LaunchTemplateName = NULL, DefaultVersion = NULL) 
{
    op <- Operation(name = "ModifyLaunchTemplate", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_launch_template_input(DryRun = DryRun, ClientToken = ClientToken, 
        LaunchTemplateId = LaunchTemplateId, LaunchTemplateName = LaunchTemplateName, 
        DefaultVersion = DefaultVersion)
    output <- modify_launch_template_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the specified network interface attribute
#'
#' Modifies the specified network interface attribute. You can specify only one attribute at a time.
#'
#' @param NetworkInterfaceId The ID of the network interface.
#' @param Attachment Information about the interface attachment. If modifying the \'delete on termination\' attribute, you must specify the ID of the interface attachment.
#' @param Description A description for the network interface.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Groups Changes the security groups for the network interface. The new set of groups you specify replaces the current set. You must specify at least one group, even if it\'s just the default security group in the VPC. You must specify the ID of the security group, not the name.
#' @param SourceDestCheck Indicates whether source/destination checking is enabled. A value of `true` means checking is enabled, and `false` means checking is disabled. This value must be `false` for a NAT instance to perform NAT. For more information, see [NAT Instances](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @examples
#' # This example modifies the attachment attribute of the specified network
#' # interface.
#' modify_network_interface_attribute(
#'   Attachment = list(
#'     AttachmentId = "eni-attach-43348162",
#'     DeleteOnTermination = FALSE
#'   ),
#'   NetworkInterfaceId = "eni-686ea200"
#' )
#' 
#' # This example modifies the description attribute of the specified network
#' # interface.
#' modify_network_interface_attribute(
#'   Description = list(
#'     Value = "My description"
#'   ),
#'   NetworkInterfaceId = "eni-686ea200"
#' )
#' 
#' # This example command modifies the groupSet attribute of the specified
#' # network interface.
#' modify_network_interface_attribute(
#'   Groups = list(
#'     "sg-903004f8",
#'     "sg-1a2b3c4d"
#'   ),
#'   NetworkInterfaceId = "eni-686ea200"
#' )
#' 
#' # This example command modifies the sourceDestCheck attribute of the
#' # specified network interface.
#' modify_network_interface_attribute(
#'   NetworkInterfaceId = "eni-686ea200",
#'   SourceDestCheck = list(
#'     Value = FALSE
#'   )
#' )
#'
#' @export
modify_network_interface_attribute <- function (NetworkInterfaceId, 
    Attachment = NULL, Description = NULL, DryRun = NULL, Groups = NULL, 
    SourceDestCheck = NULL) 
{
    op <- Operation(name = "ModifyNetworkInterfaceAttribute", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- modify_network_interface_attribute_input(NetworkInterfaceId = NetworkInterfaceId, 
        Attachment = Attachment, Description = Description, DryRun = DryRun, 
        Groups = Groups, SourceDestCheck = SourceDestCheck)
    output <- modify_network_interface_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the Availability Zone, instance count, instance type, or network platform (EC2-Classic or EC2-VPC) of your Reserved Instances
#'
#' Modifies the Availability Zone, instance count, instance type, or network platform (EC2-Classic or EC2-VPC) of your Reserved Instances. The Reserved Instances to be modified must be identical, except for Availability Zone, network platform, and instance type.
#' 
#' For more information, see [Modifying Reserved Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-modifying.html) in the Amazon Elastic Compute Cloud User Guide.
#'
#' @param ReservedInstancesIds The IDs of the Reserved Instances to modify.
#' @param TargetConfigurations The configuration settings for the Reserved Instances to modify.
#' @param ClientToken A unique, case-sensitive token you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
#'
#' @examples
#'
#' @export
modify_reserved_instances <- function (ReservedInstancesIds, 
    TargetConfigurations, ClientToken = NULL) 
{
    op <- Operation(name = "ModifyReservedInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_reserved_instances_input(ReservedInstancesIds = ReservedInstancesIds, 
        TargetConfigurations = TargetConfigurations, ClientToken = ClientToken)
    output <- modify_reserved_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Adds or removes permission settings for the specified snapshot
#'
#' Adds or removes permission settings for the specified snapshot. You may add or remove specified AWS account IDs from a snapshot\'s list of create volume permissions, but you cannot do both in a single API call. If you need to both add and remove account IDs for a snapshot, you must use multiple API calls.
#' 
#' Encrypted snapshots and snapshots with AWS Marketplace product codes cannot be made public. Snapshots encrypted with your default CMK cannot be shared with other accounts.
#' 
#' For more information about modifying snapshot permissions, see [Sharing Snapshots](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param SnapshotId The ID of the snapshot.
#' @param Attribute The snapshot attribute to modify. Only volume creation permissions can be modified.
#' @param CreateVolumePermission A JSON representation of the snapshot attribute modification.
#' @param GroupNames The group to modify for the snapshot.
#' @param OperationType The type of operation to perform to the attribute.
#' @param UserIds The account ID to modify for the snapshot.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example modifies snapshot ``snap-1234567890abcdef0`` to remove the
#' # create volume permission for a user with the account ID
#' # ``123456789012``. If the command succeeds, no output is returned.
#' modify_snapshot_attribute(
#'   Attribute = "createVolumePermission",
#'   OperationType = "remove",
#'   SnapshotId = "snap-1234567890abcdef0",
#'   UserIds = list(
#'     "123456789012"
#'   )
#' )
#' 
#' # This example makes the snapshot ``snap-1234567890abcdef0`` public.
#' modify_snapshot_attribute(
#'   Attribute = "createVolumePermission",
#'   GroupNames = list(
#'     "all"
#'   ),
#'   OperationType = "add",
#'   SnapshotId = "snap-1234567890abcdef0"
#' )
#'
#' @export
modify_snapshot_attribute <- function (SnapshotId, Attribute = NULL, 
    CreateVolumePermission = NULL, GroupNames = NULL, OperationType = NULL, 
    UserIds = NULL, DryRun = NULL) 
{
    op <- Operation(name = "ModifySnapshotAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_snapshot_attribute_input(SnapshotId = SnapshotId, 
        Attribute = Attribute, CreateVolumePermission = CreateVolumePermission, 
        GroupNames = GroupNames, OperationType = OperationType, 
        UserIds = UserIds, DryRun = DryRun)
    output <- modify_snapshot_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the specified Spot Fleet request
#'
#' Modifies the specified Spot Fleet request.
#' 
#' While the Spot Fleet request is being modified, it is in the `modifying` state.
#' 
#' To scale up your Spot Fleet, increase its target capacity. The Spot Fleet launches the additional Spot Instances according to the allocation strategy for the Spot Fleet request. If the allocation strategy is `lowestPrice`, the Spot Fleet launches instances using the Spot pool with the lowest price. If the allocation strategy is `diversified`, the Spot Fleet distributes the instances across the Spot pools.
#' 
#' To scale down your Spot Fleet, decrease its target capacity. First, the Spot Fleet cancels any open requests that exceed the new target capacity. You can request that the Spot Fleet terminate Spot Instances until the size of the fleet no longer exceeds the new target capacity. If the allocation strategy is `lowestPrice`, the Spot Fleet terminates the instances with the highest price per unit. If the allocation strategy is `diversified`, the Spot Fleet terminates instances across the Spot pools. Alternatively, you can request that the Spot Fleet keep the fleet at its current size, but not replace any Spot Instances that are interrupted or that you terminate manually.
#' 
#' If you are finished with your Spot Fleet for now, but will use it again later, you can set the target capacity to 0.
#'
#' @param SpotFleetRequestId The ID of the Spot Fleet request.
#' @param ExcessCapacityTerminationPolicy Indicates whether running Spot Instances should be terminated if the target capacity of the Spot Fleet request is decreased below the current size of the Spot Fleet.
#' @param TargetCapacity The size of the fleet.
#'
#' @examples
#' # This example increases the target capacity of the specified Spot fleet
#' # request.
#' modify_spot_fleet_request(
#'   SpotFleetRequestId = "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE",
#'   TargetCapacity = 20L
#' )
#' 
#' # This example decreases the target capacity of the specified Spot fleet
#' # request without terminating any Spot Instances as a result.
#' modify_spot_fleet_request(
#'   ExcessCapacityTerminationPolicy = "NoTermination ",
#'   SpotFleetRequestId = "sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE",
#'   TargetCapacity = 10L
#' )
#'
#' @export
modify_spot_fleet_request <- function (SpotFleetRequestId, ExcessCapacityTerminationPolicy = NULL, 
    TargetCapacity = NULL) 
{
    op <- Operation(name = "ModifySpotFleetRequest", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_spot_fleet_request_input(SpotFleetRequestId = SpotFleetRequestId, 
        ExcessCapacityTerminationPolicy = ExcessCapacityTerminationPolicy, 
        TargetCapacity = TargetCapacity)
    output <- modify_spot_fleet_request_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies a subnet attribute
#'
#' Modifies a subnet attribute. You can only modify one attribute at a time.
#'
#' @param SubnetId The ID of the subnet.
#' @param AssignIpv6AddressOnCreation Specify `true` to indicate that network interfaces created in the specified subnet should be assigned an IPv6 address. This includes a network interface that\'s created when launching an instance into the subnet (the instance therefore receives an IPv6 address).
#' 
#' If you enable the IPv6 addressing feature for your subnet, your network interface or instance only receives an IPv6 address if it\'s created using version `2016-11-15` or later of the Amazon EC2 API.
#' @param MapPublicIpOnLaunch Specify `true` to indicate that network interfaces created in the specified subnet should be assigned a public IPv4 address. This includes a network interface that\'s created when launching an instance into the subnet (the instance therefore receives a public IPv4 address).
#'
#' @examples
#' # This example modifies the specified subnet so that all instances
#' # launched into this subnet are assigned a public IP address.
#' modify_subnet_attribute(
#'   MapPublicIpOnLaunch = list(
#'     Value = TRUE
#'   ),
#'   SubnetId = "subnet-1a2b3c4d"
#' )
#'
#' @export
modify_subnet_attribute <- function (SubnetId, AssignIpv6AddressOnCreation = NULL, 
    MapPublicIpOnLaunch = NULL) 
{
    op <- Operation(name = "ModifySubnetAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_subnet_attribute_input(SubnetId = SubnetId, 
        AssignIpv6AddressOnCreation = AssignIpv6AddressOnCreation, 
        MapPublicIpOnLaunch = MapPublicIpOnLaunch)
    output <- modify_subnet_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' You can modify several parameters of an existing EBS volume, including volume size, volume type, and IOPS capacity
#'
#' You can modify several parameters of an existing EBS volume, including volume size, volume type, and IOPS capacity. If your EBS volume is attached to a current-generation EC2 instance type, you may be able to apply these changes without stopping the instance or detaching the volume from it. For more information about modifying an EBS volume running Linux, see [Modifying the Size, IOPS, or Type of an EBS Volume on Linux](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html). For more information about modifying an EBS volume running Windows, see [Modifying the Size, IOPS, or Type of an EBS Volume on Windows](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html).
#' 
#' When you complete a resize operation on your volume, you need to extend the volume\'s file-system size to take advantage of the new storage capacity. For information about extending a Linux file system, see [Extending a Linux File System](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#recognize-expanded-volume-linux). For information about extending a Windows file system, see [Extending a Windows File System](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html#recognize-expanded-volume-windows).
#' 
#' You can use CloudWatch Events to check the status of a modification to an EBS volume. For information about CloudWatch Events, see the [Amazon CloudWatch Events User Guide](http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/). You can also track the status of a modification using the DescribeVolumesModifications API. For information about tracking status changes using either method, see [Monitoring Volume Modifications](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html#monitoring_mods).
#' 
#' With previous-generation instance types, resizing an EBS volume may require detaching and reattaching the volume or stopping and restarting the instance. For more information, see [Modifying the Size, IOPS, or Type of an EBS Volume on Linux](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-expand-volume.html) and [Modifying the Size, IOPS, or Type of an EBS Volume on Windows](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ebs-expand-volume.html).
#' 
#' If you reach the maximum volume modification rate per volume limit, you will need to wait at least six hours before applying further modifications to the affected EBS volume.
#'
#' @param VolumeId The ID of the volume.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Size The target size of the volume, in GiB. The target volume size must be greater than or equal to than the existing size of the volume. For information about available EBS volume sizes, see [Amazon EBS Volume Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html).
#' 
#' Default: If no size is specified, the existing size is retained.
#' @param VolumeType The target EBS volume type of the volume.
#' 
#' Default: If no type is specified, the existing type is retained.
#' @param Iops The target IOPS rate of the volume.
#' 
#' This is only valid for Provisioned IOPS SSD (`io1`) volumes. For more information, see [Provisioned IOPS SSD (io1) Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html#EBSVolumeTypes_piops).
#' 
#' Default: If no IOPS value is specified, the existing value is retained.
#'
#' @examples
#'
#' @export
modify_volume <- function (VolumeId, DryRun = NULL, Size = NULL, 
    VolumeType = NULL, Iops = NULL) 
{
    op <- Operation(name = "ModifyVolume", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_volume_input(VolumeId = VolumeId, DryRun = DryRun, 
        Size = Size, VolumeType = VolumeType, Iops = Iops)
    output <- modify_volume_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies a volume attribute
#'
#' Modifies a volume attribute.
#' 
#' By default, all I/O operations for the volume are suspended when the data on the volume is determined to be potentially inconsistent, to prevent undetectable, latent data corruption. The I/O access to the volume can be resumed by first enabling I/O access and then checking the data consistency on your volume.
#' 
#' You can change the default behavior to resume I/O operations. We recommend that you change this only for boot volumes or for volumes that are stateless or disposable.
#'
#' @param VolumeId The ID of the volume.
#' @param AutoEnableIO Indicates whether the volume should be auto-enabled for I/O operations.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example sets the ``autoEnableIo`` attribute of the volume with the
#' # ID ``vol-1234567890abcdef0`` to ``true``. If the command succeeds, no
#' # output is returned.
#' modify_volume_attribute(
#'   AutoEnableIO = list(
#'     Value = TRUE
#'   ),
#'   DryRun = TRUE,
#'   VolumeId = "vol-1234567890abcdef0"
#' )
#'
#' @export
modify_volume_attribute <- function (VolumeId, AutoEnableIO = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "ModifyVolumeAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_volume_attribute_input(VolumeId = VolumeId, 
        AutoEnableIO = AutoEnableIO, DryRun = DryRun)
    output <- modify_volume_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the specified attribute of the specified VPC
#'
#' Modifies the specified attribute of the specified VPC.
#'
#' @param VpcId The ID of the VPC.
#' @param EnableDnsHostnames Indicates whether the instances launched in the VPC get DNS hostnames. If enabled, instances in the VPC get DNS hostnames; otherwise, they do not.
#' 
#' You cannot modify the DNS resolution and DNS hostnames attributes in the same request. Use separate requests for each attribute. You can only enable DNS hostnames if you\'ve enabled DNS support.
#' @param EnableDnsSupport Indicates whether the DNS resolution is supported for the VPC. If enabled, queries to the Amazon provided DNS server at the 169.254.169.253 IP address, or the reserved IP address at the base of the VPC network range \"plus two\" succeed. If disabled, the Amazon provided DNS service in the VPC that resolves public DNS hostnames to IP addresses is not enabled.
#' 
#' You cannot modify the DNS resolution and DNS hostnames attributes in the same request. Use separate requests for each attribute.
#'
#' @examples
#' # This example modifies the enableDnsSupport attribute. This attribute
#' # indicates whether DNS resolution is enabled for the VPC. If this
#' # attribute is true, the Amazon DNS server resolves DNS hostnames for
#' # instances in the VPC to their corresponding IP addresses; otherwise, it
#' # does not.
#' modify_vpc_attribute(
#'   EnableDnsSupport = list(
#'     Value = FALSE
#'   ),
#'   VpcId = "vpc-a01106c2"
#' )
#' 
#' # This example modifies the enableDnsHostnames attribute. This attribute
#' # indicates whether instances launched in the VPC get DNS hostnames. If
#' # this attribute is true, instances in the VPC get DNS hostnames;
#' # otherwise, they do not.
#' modify_vpc_attribute(
#'   EnableDnsHostnames = list(
#'     Value = FALSE
#'   ),
#'   VpcId = "vpc-a01106c2"
#' )
#'
#' @export
modify_vpc_attribute <- function (VpcId, EnableDnsHostnames = NULL, 
    EnableDnsSupport = NULL) 
{
    op <- Operation(name = "ModifyVpcAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_vpc_attribute_input(VpcId = VpcId, EnableDnsHostnames = EnableDnsHostnames, 
        EnableDnsSupport = EnableDnsSupport)
    output <- modify_vpc_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies attributes of a specified VPC endpoint
#'
#' Modifies attributes of a specified VPC endpoint. The attributes that you can modify depend on the type of VPC endpoint (interface or gateway). For more information, see [VPC Endpoints](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-endpoints.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param VpcEndpointId The ID of the endpoint.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param ResetPolicy (Gateway endpoint) Specify `true` to reset the policy document to the default policy. The default policy allows full access to the service.
#' @param PolicyDocument (Gateway endpoint) A policy document to attach to the endpoint. The policy must be in valid JSON format.
#' @param AddRouteTableIds (Gateway endpoint) One or more route tables IDs to associate with the endpoint.
#' @param RemoveRouteTableIds (Gateway endpoint) One or more route table IDs to disassociate from the endpoint.
#' @param AddSubnetIds (Interface endpoint) One or more subnet IDs in which to serve the endpoint.
#' @param RemoveSubnetIds (Interface endpoint) One or more subnets IDs in which to remove the endpoint.
#' @param AddSecurityGroupIds (Interface endpoint) One or more security group IDs to associate with the network interface.
#' @param RemoveSecurityGroupIds (Interface endpoint) One or more security group IDs to disassociate from the network interface.
#' @param PrivateDnsEnabled (Interface endpoint) Indicate whether a private hosted zone is associated with the VPC.
#'
#' @examples
#'
#' @export
modify_vpc_endpoint <- function (VpcEndpointId, DryRun = NULL, 
    ResetPolicy = NULL, PolicyDocument = NULL, AddRouteTableIds = NULL, 
    RemoveRouteTableIds = NULL, AddSubnetIds = NULL, RemoveSubnetIds = NULL, 
    AddSecurityGroupIds = NULL, RemoveSecurityGroupIds = NULL, 
    PrivateDnsEnabled = NULL) 
{
    op <- Operation(name = "ModifyVpcEndpoint", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_vpc_endpoint_input(VpcEndpointId = VpcEndpointId, 
        DryRun = DryRun, ResetPolicy = ResetPolicy, PolicyDocument = PolicyDocument, 
        AddRouteTableIds = AddRouteTableIds, RemoveRouteTableIds = RemoveRouteTableIds, 
        AddSubnetIds = AddSubnetIds, RemoveSubnetIds = RemoveSubnetIds, 
        AddSecurityGroupIds = AddSecurityGroupIds, RemoveSecurityGroupIds = RemoveSecurityGroupIds, 
        PrivateDnsEnabled = PrivateDnsEnabled)
    output <- modify_vpc_endpoint_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies a connection notification for VPC endpoint or VPC endpoint service
#'
#' Modifies a connection notification for VPC endpoint or VPC endpoint service. You can change the SNS topic for the notification, or the events for which to be notified.
#'
#' @param ConnectionNotificationId The ID of the notification.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param ConnectionNotificationArn The ARN for the SNS topic for the notification.
#' @param ConnectionEvents One or more events for the endpoint. Valid values are `Accept`, `Connect`, `Delete`, and `Reject`.
#'
#' @examples
#'
#' @export
modify_vpc_endpoint_connection_notification <- function (ConnectionNotificationId, 
    DryRun = NULL, ConnectionNotificationArn = NULL, ConnectionEvents = NULL) 
{
    op <- Operation(name = "ModifyVpcEndpointConnectionNotification", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- modify_vpc_endpoint_connection_notification_input(ConnectionNotificationId = ConnectionNotificationId, 
        DryRun = DryRun, ConnectionNotificationArn = ConnectionNotificationArn, 
        ConnectionEvents = ConnectionEvents)
    output <- modify_vpc_endpoint_connection_notification_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the attributes of your VPC endpoint service configuration
#'
#' Modifies the attributes of your VPC endpoint service configuration. You can change the Network Load Balancers for your service, and you can specify whether acceptance is required for requests to connect to your endpoint service through an interface VPC endpoint.
#'
#' @param ServiceId The ID of the service.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param AcceptanceRequired Indicate whether requests to create an endpoint to your service must be accepted.
#' @param AddNetworkLoadBalancerArns The Amazon Resource Names (ARNs) of Network Load Balancers to add to your service configuration.
#' @param RemoveNetworkLoadBalancerArns The Amazon Resource Names (ARNs) of Network Load Balancers to remove from your service configuration.
#'
#' @examples
#'
#' @export
modify_vpc_endpoint_service_configuration <- function (ServiceId, 
    DryRun = NULL, AcceptanceRequired = NULL, AddNetworkLoadBalancerArns = NULL, 
    RemoveNetworkLoadBalancerArns = NULL) 
{
    op <- Operation(name = "ModifyVpcEndpointServiceConfiguration", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- modify_vpc_endpoint_service_configuration_input(ServiceId = ServiceId, 
        DryRun = DryRun, AcceptanceRequired = AcceptanceRequired, 
        AddNetworkLoadBalancerArns = AddNetworkLoadBalancerArns, 
        RemoveNetworkLoadBalancerArns = RemoveNetworkLoadBalancerArns)
    output <- modify_vpc_endpoint_service_configuration_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the permissions for your [VPC endpoint service](http://docs
#'
#' Modifies the permissions for your [VPC endpoint service](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/endpoint-service.html). You can add or remove permissions for service consumers (IAM users, IAM roles, and AWS accounts) to connect to your endpoint service.
#' 
#' If you grant permissions to all principals, the service is public. Any users who know the name of a public service can send a request to attach an endpoint. If the service does not require manual approval, attachments are automatically approved.
#'
#' @param ServiceId The ID of the service.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param AddAllowedPrincipals The Amazon Resource Names (ARN) of one or more principals. Permissions are granted to the principals in this list. To grant permissions to all principals, specify an asterisk (\*).
#' @param RemoveAllowedPrincipals The Amazon Resource Names (ARN) of one or more principals. Permissions are revoked for principals in this list.
#'
#' @examples
#'
#' @export
modify_vpc_endpoint_service_permissions <- function (ServiceId, 
    DryRun = NULL, AddAllowedPrincipals = NULL, RemoveAllowedPrincipals = NULL) 
{
    op <- Operation(name = "ModifyVpcEndpointServicePermissions", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- modify_vpc_endpoint_service_permissions_input(ServiceId = ServiceId, 
        DryRun = DryRun, AddAllowedPrincipals = AddAllowedPrincipals, 
        RemoveAllowedPrincipals = RemoveAllowedPrincipals)
    output <- modify_vpc_endpoint_service_permissions_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the VPC peering connection options on one side of a VPC peering connection
#'
#' Modifies the VPC peering connection options on one side of a VPC peering connection. You can do the following:
#' 
#' -   Enable/disable communication over the peering connection between an EC2-Classic instance that\'s linked to your VPC (using ClassicLink) and instances in the peer VPC.
#' 
#' -   Enable/disable communication over the peering connection between instances in your VPC and an EC2-Classic instance that\'s linked to the peer VPC.
#' 
#' -   Enable/disable the ability to resolve public DNS hostnames to private IP addresses when queried from instances in the peer VPC.
#' 
#' If the peered VPCs are in different accounts, each owner must initiate a separate request to modify the peering connection options, depending on whether their VPC was the requester or accepter for the VPC peering connection. If the peered VPCs are in the same account, you can modify the requester and accepter options in the same request. To confirm which VPC is the accepter and requester for a VPC peering connection, use the DescribeVpcPeeringConnections command.
#'
#' @param VpcPeeringConnectionId The ID of the VPC peering connection.
#' @param AccepterPeeringConnectionOptions The VPC peering connection options for the accepter VPC.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param RequesterPeeringConnectionOptions The VPC peering connection options for the requester VPC.
#'
#' @examples
#'
#' @export
modify_vpc_peering_connection_options <- function (VpcPeeringConnectionId, 
    AccepterPeeringConnectionOptions = NULL, DryRun = NULL, RequesterPeeringConnectionOptions = NULL) 
{
    op <- Operation(name = "ModifyVpcPeeringConnectionOptions", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- modify_vpc_peering_connection_options_input(VpcPeeringConnectionId = VpcPeeringConnectionId, 
        AccepterPeeringConnectionOptions = AccepterPeeringConnectionOptions, 
        DryRun = DryRun, RequesterPeeringConnectionOptions = RequesterPeeringConnectionOptions)
    output <- modify_vpc_peering_connection_options_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Modifies the instance tenancy attribute of the specified VPC
#'
#' Modifies the instance tenancy attribute of the specified VPC. You can change the instance tenancy attribute of a VPC to `default` only. You cannot change the instance tenancy attribute to `dedicated`.
#' 
#' After you modify the tenancy of the VPC, any new instances that you launch into the VPC have a tenancy of `default`, unless you specify otherwise during launch. The tenancy of any existing instances in the VPC is not affected.
#' 
#' For more information, see [Dedicated Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-instance.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param VpcId The ID of the VPC.
#' @param InstanceTenancy The instance tenancy attribute for the VPC.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
modify_vpc_tenancy <- function (VpcId, InstanceTenancy, DryRun = NULL) 
{
    op <- Operation(name = "ModifyVpcTenancy", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- modify_vpc_tenancy_input(VpcId = VpcId, InstanceTenancy = InstanceTenancy, 
        DryRun = DryRun)
    output <- modify_vpc_tenancy_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Enables detailed monitoring for a running instance
#'
#' Enables detailed monitoring for a running instance. Otherwise, basic monitoring is enabled. For more information, see [Monitoring Your Instances and Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' To disable detailed monitoring, see .
#'
#' @param InstanceIds One or more instance IDs.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
monitor_instances <- function (InstanceIds, DryRun = NULL) 
{
    op <- Operation(name = "MonitorInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- monitor_instances_input(InstanceIds = InstanceIds, 
        DryRun = DryRun)
    output <- monitor_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC platform
#'
#' Moves an Elastic IP address from the EC2-Classic platform to the EC2-VPC platform. The Elastic IP address must be allocated to your account for more than 24 hours, and it must not be associated with an instance. After the Elastic IP address is moved, it is no longer available for use in the EC2-Classic platform, unless you move it back using the RestoreAddressToClassic request. You cannot move an Elastic IP address that was originally allocated for use in the EC2-VPC platform to the EC2-Classic platform.
#'
#' @param PublicIp The Elastic IP address.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example moves the specified Elastic IP address to the EC2-VPC
#' # platform.
#' move_address_to_vpc(
#'   PublicIp = "54.123.4.56"
#' )
#'
#' @export
move_address_to_vpc <- function (PublicIp, DryRun = NULL) 
{
    op <- Operation(name = "MoveAddressToVpc", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- move_address_to_vpc_input(PublicIp = PublicIp, DryRun = DryRun)
    output <- move_address_to_vpc_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Purchase a reservation with configurations that match those of your Dedicated Host
#'
#' Purchase a reservation with configurations that match those of your Dedicated Host. You must have active Dedicated Hosts in your account before you purchase a reservation. This action results in the specified reservation being purchased and charged to your account.
#'
#' @param HostIdSet The IDs of the Dedicated Hosts with which the reservation will be associated.
#' @param OfferingId The ID of the offering.
#' @param ClientToken Unique, case-sensitive identifier you provide to ensure idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' @param CurrencyCode The currency in which the `totalUpfrontPrice`, `LimitPrice`, and `totalHourlyPrice` amounts are specified. At this time, the only supported currency is `USD`.
#' @param LimitPrice The specified limit is checked against the total upfront cost of the reservation (calculated as the offering\'s upfront cost multiplied by the host count). If the total upfront cost is greater than the specified price limit, the request fails. This is used to ensure that the purchase does not exceed the expected upfront cost of the purchase. At this time, the only supported currency is `USD`. For example, to indicate a limit price of USD 100, specify 100.00.
#'
#' @examples
#'
#' @export
purchase_host_reservation <- function (HostIdSet, OfferingId, 
    ClientToken = NULL, CurrencyCode = NULL, LimitPrice = NULL) 
{
    op <- Operation(name = "PurchaseHostReservation", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- purchase_host_reservation_input(HostIdSet = HostIdSet, 
        OfferingId = OfferingId, ClientToken = ClientToken, CurrencyCode = CurrencyCode, 
        LimitPrice = LimitPrice)
    output <- purchase_host_reservation_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Purchases a Reserved Instance for use with your account
#'
#' Purchases a Reserved Instance for use with your account. With Reserved Instances, you pay a lower hourly rate compared to On-Demand instance pricing.
#' 
#' Use DescribeReservedInstancesOfferings to get a list of Reserved Instance offerings that match your specifications. After you\'ve purchased a Reserved Instance, you can check for your new Reserved Instance with DescribeReservedInstances.
#' 
#' For more information, see [Reserved Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/concepts-on-demand-reserved-instances.html) and [Reserved Instance Marketplace](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param InstanceCount The number of Reserved Instances to purchase.
#' @param ReservedInstancesOfferingId The ID of the Reserved Instance offering to purchase.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param LimitPrice Specified for Reserved Instance Marketplace offerings to limit the total order and ensure that the Reserved Instances are not purchased at unexpected prices.
#'
#' @examples
#'
#' @export
purchase_reserved_instances_offering <- function (InstanceCount, 
    ReservedInstancesOfferingId, DryRun = NULL, LimitPrice = NULL) 
{
    op <- Operation(name = "PurchaseReservedInstancesOffering", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- purchase_reserved_instances_offering_input(InstanceCount = InstanceCount, 
        ReservedInstancesOfferingId = ReservedInstancesOfferingId, 
        DryRun = DryRun, LimitPrice = LimitPrice)
    output <- purchase_reserved_instances_offering_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Purchases one or more Scheduled Instances with the specified schedule
#'
#' Purchases one or more Scheduled Instances with the specified schedule.
#' 
#' Scheduled Instances enable you to purchase Amazon EC2 compute capacity by the hour for a one-year term. Before you can purchase a Scheduled Instance, you must call DescribeScheduledInstanceAvailability to check for available schedules and obtain a purchase token. After you purchase a Scheduled Instance, you must call RunScheduledInstances during each scheduled time period.
#' 
#' After you purchase a Scheduled Instance, you can\'t cancel, modify, or resell your purchase.
#'
#' @param PurchaseRequests One or more purchase requests.
#' @param ClientToken Unique, case-sensitive identifier that ensures the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example purchases a Scheduled Instance.
#' purchase_scheduled_instances(
#'   PurchaseRequests = list(
#'     list(
#'       InstanceCount = 1L,
#'       PurchaseToken = "eyJ2IjoiMSIsInMiOjEsImMiOi..."
#'     )
#'   )
#' )
#'
#' @export
purchase_scheduled_instances <- function (PurchaseRequests, ClientToken = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "PurchaseScheduledInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- purchase_scheduled_instances_input(PurchaseRequests = PurchaseRequests, 
        ClientToken = ClientToken, DryRun = DryRun)
    output <- purchase_scheduled_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Requests a reboot of one or more instances
#'
#' Requests a reboot of one or more instances. This operation is asynchronous; it only queues a request to reboot the specified instances. The operation succeeds if the instances are valid and belong to you. Requests to reboot terminated instances are ignored.
#' 
#' If an instance does not cleanly shut down within four minutes, Amazon EC2 performs a hard reboot.
#' 
#' For more information about troubleshooting, see [Getting Console Output and Rebooting Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-console.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param InstanceIds One or more instance IDs.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example reboots the specified EC2 instance.
#' reboot_instances(
#'   InstanceIds = list(
#'     "i-1234567890abcdef5"
#'   )
#' )
#'
#' @export
reboot_instances <- function (InstanceIds, DryRun = NULL) 
{
    op <- Operation(name = "RebootInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reboot_instances_input(InstanceIds = InstanceIds, 
        DryRun = DryRun)
    output <- reboot_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Registers an AMI
#'
#' Registers an AMI. When you\'re creating an AMI, this is the final step you must complete before you can launch an instance from the AMI. For more information about creating AMIs, see [Creating Your Own AMIs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' For Amazon EBS-backed instances, CreateImage creates and registers the AMI in a single request, so you don\'t have to register the AMI yourself.
#' 
#' You can also use `RegisterImage` to create an Amazon EBS-backed Linux AMI from a snapshot of a root device volume. You specify the snapshot using the block device mapping. For more information, see [Launching a Linux Instance from a Backup](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-launch-snapshot.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' You can\'t register an image where a secondary (non-root) snapshot has AWS Marketplace product codes.
#' 
#' Some Linux distributions, such as Red Hat Enterprise Linux (RHEL) and SUSE Linux Enterprise Server (SLES), use the EC2 billing product code associated with an AMI to verify the subscription status for package updates. Creating an AMI from an EBS snapshot does not maintain this billing code, and instances launched from such an AMI are not able to connect to package update infrastructure. If you purchase a Reserved Instance offering for one of these Linux distributions and launch instances using an AMI that does not contain the required billing code, your Reserved Instance is not applied to these instances.
#' 
#' To create an AMI for operating systems that require a billing code, see CreateImage.
#' 
#' If needed, you can deregister an AMI at any time. Any modifications you make to an AMI backed by an instance store volume invalidates its registration. If you make changes to an image, deregister the previous image and register the new image.
#'
#' @param Name A name for your AMI.
#' 
#' Constraints: 3-128 alphanumeric characters, parentheses (()), square brackets (&#91;&#93;), spaces ( ), periods (.), slashes (/), dashes (-), single quotes (\'), at-signs (@), or underscores(\_)
#' @param ImageLocation The full path to your AMI manifest in Amazon S3 storage.
#' @param Architecture The architecture of the AMI.
#' 
#' Default: For Amazon EBS-backed AMIs, `i386`. For instance store-backed AMIs, the architecture specified in the manifest file.
#' @param BlockDeviceMappings One or more block device mapping entries.
#' @param Description A description for your AMI.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param EnaSupport Set to `true` to enable enhanced networking with ENA for the AMI and any instances that you launch from the AMI.
#' 
#' This option is supported only for HVM AMIs. Specifying this option with a PV AMI can make instances launched from the AMI unreachable.
#' @param KernelId The ID of the kernel.
#' @param BillingProducts The billing product codes. Your account must be authorized to specify billing product codes. Otherwise, you can use the AWS Marketplace to bill for the use of an AMI.
#' @param RamdiskId The ID of the RAM disk.
#' @param RootDeviceName The device name of the root device volume (for example, `/dev/sda1`).
#' @param SriovNetSupport Set to `simple` to enable enhanced networking with the Intel 82599 Virtual Function interface for the AMI and any instances that you launch from the AMI.
#' 
#' There is no way to disable `sriovNetSupport` at this time.
#' 
#' This option is supported only for HVM AMIs. Specifying this option with a PV AMI can make instances launched from the AMI unreachable.
#' @param VirtualizationType The type of virtualization (`hvm` \| `paravirtual`).
#' 
#' Default: `paravirtual`
#'
#' @examples
#'
#' @export
register_image <- function (Name, ImageLocation = NULL, Architecture = NULL, 
    BlockDeviceMappings = NULL, Description = NULL, DryRun = NULL, 
    EnaSupport = NULL, KernelId = NULL, BillingProducts = NULL, 
    RamdiskId = NULL, RootDeviceName = NULL, SriovNetSupport = NULL, 
    VirtualizationType = NULL) 
{
    op <- Operation(name = "RegisterImage", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- register_image_input(Name = Name, ImageLocation = ImageLocation, 
        Architecture = Architecture, BlockDeviceMappings = BlockDeviceMappings, 
        Description = Description, DryRun = DryRun, EnaSupport = EnaSupport, 
        KernelId = KernelId, BillingProducts = BillingProducts, 
        RamdiskId = RamdiskId, RootDeviceName = RootDeviceName, 
        SriovNetSupport = SriovNetSupport, VirtualizationType = VirtualizationType)
    output <- register_image_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Rejects one or more VPC endpoint connection requests to your VPC endpoint service
#'
#' Rejects one or more VPC endpoint connection requests to your VPC endpoint service.
#'
#' @param ServiceId The ID of the service.
#' @param VpcEndpointIds The IDs of one or more VPC endpoints.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
reject_vpc_endpoint_connections <- function (ServiceId, VpcEndpointIds, 
    DryRun = NULL) 
{
    op <- Operation(name = "RejectVpcEndpointConnections", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reject_vpc_endpoint_connections_input(ServiceId = ServiceId, 
        VpcEndpointIds = VpcEndpointIds, DryRun = DryRun)
    output <- reject_vpc_endpoint_connections_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Rejects a VPC peering connection request
#'
#' Rejects a VPC peering connection request. The VPC peering connection must be in the `pending-acceptance` state. Use the DescribeVpcPeeringConnections request to view your outstanding VPC peering connection requests. To delete an active VPC peering connection, or to delete a VPC peering connection request that you initiated, use DeleteVpcPeeringConnection.
#'
#' @param VpcPeeringConnectionId The ID of the VPC peering connection.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
reject_vpc_peering_connection <- function (VpcPeeringConnectionId, 
    DryRun = NULL) 
{
    op <- Operation(name = "RejectVpcPeeringConnection", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reject_vpc_peering_connection_input(VpcPeeringConnectionId = VpcPeeringConnectionId, 
        DryRun = DryRun)
    output <- reject_vpc_peering_connection_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Releases the specified Elastic IP address
#'
#' Releases the specified Elastic IP address.
#' 
#' &#91;EC2-Classic, default VPC&#93; Releasing an Elastic IP address automatically disassociates it from any instance that it\'s associated with. To disassociate an Elastic IP address without releasing it, use DisassociateAddress.
#' 
#' &#91;Nondefault VPC&#93; You must use DisassociateAddress to disassociate the Elastic IP address before you can release it. Otherwise, Amazon EC2 returns an error (`InvalidIPAddress.InUse`).
#' 
#' After releasing an Elastic IP address, it is released to the IP address pool. Be sure to update your DNS records and any servers or devices that communicate with the address. If you attempt to release an Elastic IP address that you already released, you\'ll get an `AuthFailure` error if the address is already allocated to another AWS account.
#' 
#' &#91;EC2-VPC&#93; After you release an Elastic IP address for use in a VPC, you might be able to recover it. For more information, see AllocateAddress.
#'
#' @param AllocationId &#91;EC2-VPC&#93; The allocation ID. Required for EC2-VPC.
#' @param PublicIp &#91;EC2-Classic&#93; The Elastic IP address. Required for EC2-Classic.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example releases an Elastic IP address for use with instances in a
#' # VPC.
#' release_address(
#'   AllocationId = "eipalloc-64d5890a"
#' )
#' 
#' # This example releases an Elastic IP address for use with instances in
#' # EC2-Classic.
#' release_address(
#'   PublicIp = "198.51.100.0"
#' )
#'
#' @export
release_address <- function (AllocationId = NULL, PublicIp = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "ReleaseAddress", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- release_address_input(AllocationId = AllocationId, 
        PublicIp = PublicIp, DryRun = DryRun)
    output <- release_address_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' When you no longer want to use an On-Demand Dedicated Host it can be released
#'
#' When you no longer want to use an On-Demand Dedicated Host it can be released. On-Demand billing is stopped and the host goes into `released` state. The host ID of Dedicated Hosts that have been released can no longer be specified in another request, for example, to modify the host. You must stop or terminate all instances on a host before it can be released.
#' 
#' When Dedicated Hosts are released, it may take some time for them to stop counting toward your limit and you may receive capacity errors when trying to allocate new Dedicated Hosts. Wait a few minutes and then try again.
#' 
#' Released hosts still appear in a DescribeHosts response.
#'
#' @param HostIds The IDs of the Dedicated Hosts to release.
#'
#' @examples
#'
#' @export
release_hosts <- function (HostIds) 
{
    op <- Operation(name = "ReleaseHosts", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- release_hosts_input(HostIds = HostIds)
    output <- release_hosts_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Replaces an IAM instance profile for the specified running instance
#'
#' Replaces an IAM instance profile for the specified running instance. You can use this action to change the IAM instance profile that\'s associated with an instance without having to disassociate the existing IAM instance profile first.
#' 
#' Use DescribeIamInstanceProfileAssociations to get the association ID.
#'
#' @param IamInstanceProfile The IAM instance profile.
#' @param AssociationId The ID of the existing IAM instance profile association.
#'
#' @examples
#'
#' @export
replace_iam_instance_profile_association <- function (IamInstanceProfile, 
    AssociationId) 
{
    op <- Operation(name = "ReplaceIamInstanceProfileAssociation", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- replace_iam_instance_profile_association_input(IamInstanceProfile = IamInstanceProfile, 
        AssociationId = AssociationId)
    output <- replace_iam_instance_profile_association_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes which network ACL a subnet is associated with
#'
#' Changes which network ACL a subnet is associated with. By default when you create a subnet, it\'s automatically associated with the default network ACL. For more information, see [Network ACLs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html) in the *Amazon Virtual Private Cloud User Guide*.
#' 
#' This is an idempotent operation.
#'
#' @param AssociationId The ID of the current association between the original network ACL and the subnet.
#' @param NetworkAclId The ID of the new network ACL to associate with the subnet.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example associates the specified network ACL with the subnet for
#' # the specified network ACL association.
#' replace_network_acl_association(
#'   AssociationId = "aclassoc-e5b95c8c",
#'   NetworkAclId = "acl-5fb85d36"
#' )
#'
#' @export
replace_network_acl_association <- function (AssociationId, NetworkAclId, 
    DryRun = NULL) 
{
    op <- Operation(name = "ReplaceNetworkAclAssociation", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- replace_network_acl_association_input(AssociationId = AssociationId, 
        NetworkAclId = NetworkAclId, DryRun = DryRun)
    output <- replace_network_acl_association_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Replaces an entry (rule) in a network ACL
#'
#' Replaces an entry (rule) in a network ACL. For more information, see [Network ACLs](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_ACLs.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param Egress Indicates whether to replace the egress rule.
#' 
#' Default: If no value is specified, we replace the ingress rule.
#' @param NetworkAclId The ID of the ACL.
#' @param Protocol The IP protocol. You can specify `all` or `-1` to mean all protocols. If you specify `all`, `-1`, or a protocol number other than `tcp`, `udp`, or `icmp`, traffic on all ports is allowed, regardless of any ports or ICMP types or codes you that specify. If you specify protocol `58` (ICMPv6) and specify an IPv4 CIDR block, traffic for all ICMP types and codes allowed, regardless of any that you specify. If you specify protocol `58` (ICMPv6) and specify an IPv6 CIDR block, you must specify an ICMP type and code.
#' @param RuleAction Indicates whether to allow or deny the traffic that matches the rule.
#' @param RuleNumber The rule number of the entry to replace.
#' @param CidrBlock The IPv4 network range to allow or deny, in CIDR notation (for example `172.16.0.0/24`).
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param IcmpTypeCode ICMP protocol: The ICMP or ICMPv6 type and code. Required if specifying the ICMP (1) protocol, or protocol 58 (ICMPv6) with an IPv6 CIDR block.
#' @param Ipv6CidrBlock The IPv6 network range to allow or deny, in CIDR notation (for example `2001:bd8:1234:1a00::/64`).
#' @param PortRange TCP or UDP protocols: The range of ports the rule applies to. Required if specifying TCP (6) or UDP (17) for the protocol.
#'
#' @examples
#' # This example replaces an entry for the specified network ACL. The new
#' # rule 100 allows ingress traffic from 203.0.113.12/24 on UDP port 53
#' # (DNS) into any associated subnet.
#' replace_network_acl_entry(
#'   CidrBlock = "203.0.113.12/24",
#'   Egress = FALSE,
#'   NetworkAclId = "acl-5fb85d36",
#'   PortRange = list(
#'     From = 53L,
#'     To = 53L
#'   ),
#'   Protocol = "udp",
#'   RuleAction = "allow",
#'   RuleNumber = 100L
#' )
#'
#' @export
replace_network_acl_entry <- function (Egress, NetworkAclId, 
    Protocol, RuleAction, RuleNumber, CidrBlock = NULL, DryRun = NULL, 
    IcmpTypeCode = NULL, Ipv6CidrBlock = NULL, PortRange = NULL) 
{
    op <- Operation(name = "ReplaceNetworkAclEntry", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- replace_network_acl_entry_input(Egress = Egress, 
        NetworkAclId = NetworkAclId, Protocol = Protocol, RuleAction = RuleAction, 
        RuleNumber = RuleNumber, CidrBlock = CidrBlock, DryRun = DryRun, 
        IcmpTypeCode = IcmpTypeCode, Ipv6CidrBlock = Ipv6CidrBlock, 
        PortRange = PortRange)
    output <- replace_network_acl_entry_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Replaces an existing route within a route table in a VPC
#'
#' Replaces an existing route within a route table in a VPC. You must provide only one of the following: internet gateway or virtual private gateway, NAT instance, NAT gateway, VPC peering connection, network interface, or egress-only internet gateway.
#' 
#' For more information, see [Route Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param RouteTableId The ID of the route table.
#' @param DestinationCidrBlock The IPv4 CIDR address block used for the destination match. The value that you provide must match the CIDR of an existing route in the table.
#' @param DestinationIpv6CidrBlock The IPv6 CIDR address block used for the destination match. The value that you provide must match the CIDR of an existing route in the table.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param EgressOnlyInternetGatewayId &#91;IPv6 traffic only&#93; The ID of an egress-only internet gateway.
#' @param GatewayId The ID of an internet gateway or virtual private gateway.
#' @param InstanceId The ID of a NAT instance in your VPC.
#' @param NatGatewayId &#91;IPv4 traffic only&#93; The ID of a NAT gateway.
#' @param NetworkInterfaceId The ID of a network interface.
#' @param VpcPeeringConnectionId The ID of a VPC peering connection.
#'
#' @examples
#' # This example replaces the specified route in the specified table table.
#' # The new route matches the specified CIDR and sends the traffic to the
#' # specified virtual private gateway.
#' replace_route(
#'   DestinationCidrBlock = "10.0.0.0/16",
#'   GatewayId = "vgw-9a4cacf3",
#'   RouteTableId = "rtb-22574640"
#' )
#'
#' @export
replace_route <- function (RouteTableId, DestinationCidrBlock = NULL, 
    DestinationIpv6CidrBlock = NULL, DryRun = NULL, EgressOnlyInternetGatewayId = NULL, 
    GatewayId = NULL, InstanceId = NULL, NatGatewayId = NULL, 
    NetworkInterfaceId = NULL, VpcPeeringConnectionId = NULL) 
{
    op <- Operation(name = "ReplaceRoute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- replace_route_input(RouteTableId = RouteTableId, 
        DestinationCidrBlock = DestinationCidrBlock, DestinationIpv6CidrBlock = DestinationIpv6CidrBlock, 
        DryRun = DryRun, EgressOnlyInternetGatewayId = EgressOnlyInternetGatewayId, 
        GatewayId = GatewayId, InstanceId = InstanceId, NatGatewayId = NatGatewayId, 
        NetworkInterfaceId = NetworkInterfaceId, VpcPeeringConnectionId = VpcPeeringConnectionId)
    output <- replace_route_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Changes the route table associated with a given subnet in a VPC
#'
#' Changes the route table associated with a given subnet in a VPC. After the operation completes, the subnet uses the routes in the new route table it\'s associated with. For more information about route tables, see [Route Tables](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Route_Tables.html) in the *Amazon Virtual Private Cloud User Guide*.
#' 
#' You can also use ReplaceRouteTableAssociation to change which table is the main route table in the VPC. You just specify the main route table\'s association ID and the route table to be the new main route table.
#'
#' @param AssociationId The association ID.
#' @param RouteTableId The ID of the new route table to associate with the subnet.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example associates the specified route table with the subnet for
#' # the specified route table association.
#' replace_route_table_association(
#'   AssociationId = "rtbassoc-781d0d1a",
#'   RouteTableId = "rtb-22574640"
#' )
#'
#' @export
replace_route_table_association <- function (AssociationId, RouteTableId, 
    DryRun = NULL) 
{
    op <- Operation(name = "ReplaceRouteTableAssociation", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- replace_route_table_association_input(AssociationId = AssociationId, 
        RouteTableId = RouteTableId, DryRun = DryRun)
    output <- replace_route_table_association_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Submits feedback about the status of an instance
#'
#' Submits feedback about the status of an instance. The instance must be in the `running` state. If your experience with the instance differs from the instance status returned by DescribeInstanceStatus, use ReportInstanceStatus to report your experience with the instance. Amazon EC2 collects this information to improve the accuracy of status checks.
#' 
#' Use of this action does not change the value returned by DescribeInstanceStatus.
#'
#' @param Instances One or more instances.
#' @param ReasonCodes One or more reason codes that describe the health state of your instance.
#' 
#' -   `instance-stuck-in-state`: My instance is stuck in a state.
#' 
#' -   `unresponsive`: My instance is unresponsive.
#' 
#' -   `not-accepting-credentials`: My instance is not accepting my credentials.
#' 
#' -   `password-not-available`: A password is not available for my instance.
#' 
#' -   `performance-network`: My instance is experiencing performance problems that I believe are network related.
#' 
#' -   `performance-instance-store`: My instance is experiencing performance problems that I believe are related to the instance stores.
#' 
#' -   `performance-ebs-volume`: My instance is experiencing performance problems that I believe are related to an EBS volume.
#' 
#' -   `performance-other`: My instance is experiencing performance problems.
#' 
#' -   `other`: &#91;explain using the description parameter&#93;
#' @param Status The status of all instances listed.
#' @param Description Descriptive text about the health state of your instance.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param EndTime The time at which the reported instance health state ended.
#' @param StartTime The time at which the reported instance health state began.
#'
#' @examples
#'
#' @export
report_instance_status <- function (Instances, ReasonCodes, Status, 
    Description = NULL, DryRun = NULL, EndTime = NULL, StartTime = NULL) 
{
    op <- Operation(name = "ReportInstanceStatus", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- report_instance_status_input(Instances = Instances, 
        ReasonCodes = ReasonCodes, Status = Status, Description = Description, 
        DryRun = DryRun, EndTime = EndTime, StartTime = StartTime)
    output <- report_instance_status_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a Spot Fleet request
#'
#' Creates a Spot Fleet request.
#' 
#' The Spot Fleet request specifies the total target capacity and the On-Demand target capacity. Amazon EC2 calculates the difference between the total capacity and On-Demand capacity, and launches the difference as Spot capacity.
#' 
#' You can submit a single request that includes multiple launch specifications that vary by instance type, AMI, Availability Zone, or subnet.
#' 
#' By default, the Spot Fleet requests Spot Instances in the Spot pool where the price per unit is the lowest. Each launch specification can include its own instance weighting that reflects the value of the instance type to your application workload.
#' 
#' Alternatively, you can specify that the Spot Fleet distribute the target capacity across the Spot pools included in its launch specifications. By ensuring that the Spot Instances in your Spot Fleet are in different Spot pools, you can improve the availability of your fleet.
#' 
#' You can specify tags for the Spot Instances. You cannot tag other resource types in a Spot Fleet request because only the `instance` resource type is supported.
#' 
#' For more information, see [Spot Fleet Requests](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html) in the *Amazon EC2 User Guide for Linux Instances*.
#'
#' @param SpotFleetRequestConfig The configuration for the Spot Fleet request.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example creates a Spot fleet request with two launch specifications
#' # that differ only by subnet. The Spot fleet launches the instances in the
#' # specified subnet with the lowest price. If the instances are launched in
#' # a default VPC, they receive a public IP address by default. If the
#' # instances are launched in a nondefault VPC, they do not receive a public
#' # IP address by default. Note that you can't specify different subnets
#' # from the same Availability Zone in a Spot fleet request.
#' request_spot_fleet(
#'   SpotFleetRequestConfig = list(
#'     IamFleetRole = "arn:aws:iam::123456789012:role/my-spot-fleet-role",
#'     LaunchSpecifications = list(
#'       list(
#'         IamInstanceProfile = list(
#'           Arn = "arn:aws:iam::123456789012:instance-profile/my-iam-role"
#'         ),
#'         ImageId = "ami-1a2b3c4d",
#'         InstanceType = "m3.medium",
#'         KeyName = "my-key-pair",
#'         SecurityGroups = list(
#'           list(
#'             GroupId = "sg-1a2b3c4d"
#'           )
#'         ),
#'         SubnetId = "subnet-1a2b3c4d, subnet-3c4d5e6f"
#'       )
#'     ),
#'     SpotPrice = "0.04",
#'     TargetCapacity = 2L
#'   )
#' )
#' 
#' # This example creates a Spot fleet request with two launch specifications
#' # that differ only by Availability Zone. The Spot fleet launches the
#' # instances in the specified Availability Zone with the lowest price. If
#' # your account supports EC2-VPC only, Amazon EC2 launches the Spot
#' # instances in the default subnet of the Availability Zone. If your
#' # account supports EC2-Classic, Amazon EC2 launches the instances in
#' # EC2-Classic in the Availability Zone.
#' request_spot_fleet(
#'   SpotFleetRequestConfig = list(
#'     IamFleetRole = "arn:aws:iam::123456789012:role/my-spot-fleet-role",
#'     LaunchSpecifications = list(
#'       list(
#'         IamInstanceProfile = list(
#'           Arn = "arn:aws:iam::123456789012:instance-profile/my-iam-role"
#'         ),
#'         ImageId = "ami-1a2b3c4d",
#'         InstanceType = "m3.medium",
#'         KeyName = "my-key-pair",
#'         Placement = list(
#'           AvailabilityZone = "us-west-2a, us-west-2b"
#'         ),
#'         SecurityGroups = list(
#'           list(
#'             GroupId = "sg-1a2b3c4d"
#'           )
#'         )
#'       )
#'     ),
#'     SpotPrice = "0.04",
#'     TargetCapacity = 2L
#'   )
#' )
#' 
#' # This example assigns public addresses to instances launched in a
#' # nondefault VPC. Note that when you specify a network interface, you must
#' # include the subnet ID and security group ID using the network interface.
#' request_spot_fleet(
#'   SpotFleetRequestConfig = list(
#'     IamFleetRole = "arn:aws:iam::123456789012:role/my-spot-fleet-role",
#'     LaunchSpecifications = list(
#'       list(
#'         IamInstanceProfile = list(
#'           Arn = "arn:aws:iam::880185128111:instance-profile/my-iam-role"
#'         ),
#'         ImageId = "ami-1a2b3c4d",
#'         InstanceType = "m3.medium",
#'         KeyName = "my-key-pair",
#'         NetworkInterfaces = list(
#'           list(
#'             AssociatePublicIpAddress = TRUE,
#'             DeviceIndex = 0L,
#'             Groups = list(
#'               "sg-1a2b3c4d"
#'             ),
#'             SubnetId = "subnet-1a2b3c4d"
#'           )
#'         )
#'       )
#'     ),
#'     SpotPrice = "0.04",
#'     TargetCapacity = 2L
#'   )
#' )
#' 
#' # This example creates a Spot fleet request that launches 30 instances
#' # using the diversified allocation strategy. The launch specifications
#' # differ by instance type. The Spot fleet distributes the instances across
#' # the launch specifications such that there are 10 instances of each type.
#' request_spot_fleet(
#'   SpotFleetRequestConfig = list(
#'     AllocationStrategy = "diversified",
#'     IamFleetRole = "arn:aws:iam::123456789012:role/my-spot-fleet-role",
#'     LaunchSpecifications = list(
#'       list(
#'         ImageId = "ami-1a2b3c4d",
#'         InstanceType = "c4.2xlarge",
#'         SubnetId = "subnet-1a2b3c4d"
#'       ),
#'       list(
#'         ImageId = "ami-1a2b3c4d",
#'         InstanceType = "m3.2xlarge",
#'         SubnetId = "subnet-1a2b3c4d"
#'       ),
#'       list(
#'         ImageId = "ami-1a2b3c4d",
#'         InstanceType = "r3.2xlarge",
#'         SubnetId = "subnet-1a2b3c4d"
#'       )
#'     ),
#'     SpotPrice = "0.70",
#'     TargetCapacity = 30L
#'   )
#' )
#'
#' @export
request_spot_fleet <- function (SpotFleetRequestConfig, DryRun = NULL) 
{
    op <- Operation(name = "RequestSpotFleet", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- request_spot_fleet_input(SpotFleetRequestConfig = SpotFleetRequestConfig, 
        DryRun = DryRun)
    output <- request_spot_fleet_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Creates a Spot Instance request
#'
#' Creates a Spot Instance request.
#' 
#' For more information, see [Spot Instance Requests](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-requests.html) in the *Amazon EC2 User Guide for Linux Instances*.
#'
#' @param AvailabilityZoneGroup The user-specified name for a logical grouping of requests.
#' 
#' When you specify an Availability Zone group in a Spot Instance request, all Spot Instances in the request are launched in the same Availability Zone. Instance proximity is maintained with this parameter, but the choice of Availability Zone is not. The group applies only to requests for Spot Instances of the same instance type. Any additional Spot Instance requests that are specified with the same Availability Zone group name are launched in that same Availability Zone, as long as at least one instance from the group is still active.
#' 
#' If there is no active instance running in the Availability Zone group that you specify for a new Spot Instance request (all instances are terminated, the request is expired, or the maximum price you specified falls below current Spot price), then Amazon EC2 launches the instance in any Availability Zone where the constraint can be met. Consequently, the subsequent set of Spot Instances could be placed in a different zone from the original request, even if you specified the same Availability Zone group.
#' 
#' Default: Instances are launched in any available Availability Zone.
#' @param BlockDurationMinutes The required duration for the Spot Instances (also known as Spot blocks), in minutes. This value must be a multiple of 60 (60, 120, 180, 240, 300, or 360).
#' 
#' The duration period starts as soon as your Spot Instance receives its instance ID. At the end of the duration period, Amazon EC2 marks the Spot Instance for termination and provides a Spot Instance termination notice, which gives the instance a two-minute warning before it terminates.
#' 
#' You can\'t specify an Availability Zone group or a launch group if you specify a duration.
#' @param ClientToken Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to Ensure Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html) in the *Amazon EC2 User Guide for Linux Instances*.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param InstanceCount The maximum number of Spot Instances to launch.
#' 
#' Default: 1
#' @param LaunchGroup The instance launch group. Launch groups are Spot Instances that launch together and terminate together.
#' 
#' Default: Instances are launched and terminated individually
#' @param LaunchSpecification The launch specification.
#' @param SpotPrice The maximum price per hour that you are willing to pay for a Spot Instance. The default is the On-Demand price.
#' @param Type The Spot Instance request type.
#' 
#' Default: `one-time`
#' @param ValidFrom The start date of the request. If this is a one-time request, the request becomes active at this date and time and remains active until all instances launch, the request expires, or the request is canceled. If the request is persistent, the request becomes active at this date and time and remains active until it expires or is canceled.
#' @param ValidUntil The end date of the request. If this is a one-time request, the request remains active until all instances launch, the request is canceled, or this date is reached. If the request is persistent, it remains active until it is canceled or this date is reached. The default end date is 7 days from the current date.
#' @param InstanceInterruptionBehavior The behavior when a Spot Instance is interrupted. The default is `terminate`.
#'
#' @examples
#' # This example creates a one-time Spot Instance request for five instances
#' # in the specified Availability Zone. If your account supports EC2-VPC
#' # only, Amazon EC2 launches the instances in the default subnet of the
#' # specified Availability Zone. If your account supports EC2-Classic,
#' # Amazon EC2 launches the instances in EC2-Classic in the specified
#' # Availability Zone.
#' request_spot_instances(
#'   InstanceCount = 5L,
#'   LaunchSpecification = list(
#'     IamInstanceProfile = list(
#'       Arn = "arn:aws:iam::123456789012:instance-profile/my-iam-role"
#'     ),
#'     ImageId = "ami-1a2b3c4d",
#'     InstanceType = "m3.medium",
#'     KeyName = "my-key-pair",
#'     Placement = list(
#'       AvailabilityZone = "us-west-2a"
#'     ),
#'     SecurityGroupIds = list(
#'       "sg-1a2b3c4d"
#'     )
#'   ),
#'   SpotPrice = "0.03",
#'   Type = "one-time"
#' )
#' 
#' # This example command creates a one-time Spot Instance request for five
#' # instances in the specified subnet. Amazon EC2 launches the instances in
#' # the specified subnet. If the VPC is a nondefault VPC, the instances do
#' # not receive a public IP address by default.
#' request_spot_instances(
#'   InstanceCount = 5L,
#'   LaunchSpecification = list(
#'     IamInstanceProfile = list(
#'       Arn = "arn:aws:iam::123456789012:instance-profile/my-iam-role"
#'     ),
#'     ImageId = "ami-1a2b3c4d",
#'     InstanceType = "m3.medium",
#'     SecurityGroupIds = list(
#'       "sg-1a2b3c4d"
#'     ),
#'     SubnetId = "subnet-1a2b3c4d"
#'   ),
#'   SpotPrice = "0.050",
#'   Type = "one-time"
#' )
#'
#' @export
request_spot_instances <- function (AvailabilityZoneGroup = NULL, 
    BlockDurationMinutes = NULL, ClientToken = NULL, DryRun = NULL, 
    InstanceCount = NULL, LaunchGroup = NULL, LaunchSpecification = NULL, 
    SpotPrice = NULL, Type = NULL, ValidFrom = NULL, ValidUntil = NULL, 
    InstanceInterruptionBehavior = NULL) 
{
    op <- Operation(name = "RequestSpotInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- request_spot_instances_input(AvailabilityZoneGroup = AvailabilityZoneGroup, 
        BlockDurationMinutes = BlockDurationMinutes, ClientToken = ClientToken, 
        DryRun = DryRun, InstanceCount = InstanceCount, LaunchGroup = LaunchGroup, 
        LaunchSpecification = LaunchSpecification, SpotPrice = SpotPrice, 
        Type = Type, ValidFrom = ValidFrom, ValidUntil = ValidUntil, 
        InstanceInterruptionBehavior = InstanceInterruptionBehavior)
    output <- request_spot_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Resets the specified attribute of the specified Amazon FPGA Image (AFI) to its default value
#'
#' Resets the specified attribute of the specified Amazon FPGA Image (AFI) to its default value. You can only reset the load permission attribute.
#'
#' @param FpgaImageId The ID of the AFI.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Attribute The attribute.
#'
#' @examples
#'
#' @export
reset_fpga_image_attribute <- function (FpgaImageId, DryRun = NULL, 
    Attribute = NULL) 
{
    op <- Operation(name = "ResetFpgaImageAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reset_fpga_image_attribute_input(FpgaImageId = FpgaImageId, 
        DryRun = DryRun, Attribute = Attribute)
    output <- reset_fpga_image_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Resets an attribute of an AMI to its default value
#'
#' Resets an attribute of an AMI to its default value.
#' 
#' The productCodes attribute can\'t be reset.
#'
#' @param Attribute The attribute to reset (currently you can only reset the launch permission attribute).
#' @param ImageId The ID of the AMI.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example resets the launchPermission attribute for the specified
#' # AMI. By default, AMIs are private.
#' reset_image_attribute(
#'   Attribute = "launchPermission",
#'   ImageId = "ami-5731123e"
#' )
#'
#' @export
reset_image_attribute <- function (Attribute, ImageId, DryRun = NULL) 
{
    op <- Operation(name = "ResetImageAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reset_image_attribute_input(Attribute = Attribute, 
        ImageId = ImageId, DryRun = DryRun)
    output <- reset_image_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Resets an attribute of an instance to its default value
#'
#' Resets an attribute of an instance to its default value. To reset the `kernel` or `ramdisk`, the instance must be in a stopped state. To reset the `sourceDestCheck`, the instance can be either running or stopped.
#' 
#' The `sourceDestCheck` attribute controls whether source/destination checking is enabled. The default value is `true`, which means checking is enabled. This value must be `false` for a NAT instance to perform NAT. For more information, see [NAT Instances](http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_NAT_Instance.html) in the *Amazon Virtual Private Cloud User Guide*.
#'
#' @param Attribute The attribute to reset.
#' 
#' You can only reset the following attributes: `kernel` \| `ramdisk` \| `sourceDestCheck`. To change an instance attribute, use ModifyInstanceAttribute.
#' @param InstanceId The ID of the instance.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example resets the sourceDestCheck attribute for the specified
#' # instance.
#' reset_instance_attribute(
#'   Attribute = "sourceDestCheck",
#'   InstanceId = "i-1234567890abcdef0"
#' )
#'
#' @export
reset_instance_attribute <- function (Attribute, InstanceId, 
    DryRun = NULL) 
{
    op <- Operation(name = "ResetInstanceAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reset_instance_attribute_input(Attribute = Attribute, 
        InstanceId = InstanceId, DryRun = DryRun)
    output <- reset_instance_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Resets a network interface attribute
#'
#' Resets a network interface attribute. You can specify only one attribute at a time.
#'
#' @param NetworkInterfaceId The ID of the network interface.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param SourceDestCheck The source/destination checking attribute. Resets the value to `true`.
#'
#' @examples
#'
#' @export
reset_network_interface_attribute <- function (NetworkInterfaceId, 
    DryRun = NULL, SourceDestCheck = NULL) 
{
    op <- Operation(name = "ResetNetworkInterfaceAttribute", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- reset_network_interface_attribute_input(NetworkInterfaceId = NetworkInterfaceId, 
        DryRun = DryRun, SourceDestCheck = SourceDestCheck)
    output <- reset_network_interface_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Resets permission settings for the specified snapshot
#'
#' Resets permission settings for the specified snapshot.
#' 
#' For more information about modifying snapshot permissions, see [Sharing Snapshots](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-modifying-snapshot-permissions.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param Attribute The attribute to reset. Currently, only the attribute for permission to create volumes can be reset.
#' @param SnapshotId The ID of the snapshot.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example resets the create volume permissions for snapshot
#' # ``snap-1234567890abcdef0``. If the command succeeds, no output is
#' # returned.
#' reset_snapshot_attribute(
#'   Attribute = "createVolumePermission",
#'   SnapshotId = "snap-1234567890abcdef0"
#' )
#'
#' @export
reset_snapshot_attribute <- function (Attribute, SnapshotId, 
    DryRun = NULL) 
{
    op <- Operation(name = "ResetSnapshotAttribute", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- reset_snapshot_attribute_input(Attribute = Attribute, 
        SnapshotId = SnapshotId, DryRun = DryRun)
    output <- reset_snapshot_attribute_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Restores an Elastic IP address that was previously moved to the EC2-VPC platform back to the EC2-Classic platform
#'
#' Restores an Elastic IP address that was previously moved to the EC2-VPC platform back to the EC2-Classic platform. You cannot move an Elastic IP address that was originally allocated for use in EC2-VPC. The Elastic IP address must not be associated with an instance or network interface.
#'
#' @param PublicIp The Elastic IP address.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example restores the specified Elastic IP address to the
#' # EC2-Classic platform.
#' restore_address_to_classic(
#'   PublicIp = "198.51.100.0"
#' )
#'
#' @export
restore_address_to_classic <- function (PublicIp, DryRun = NULL) 
{
    op <- Operation(name = "RestoreAddressToClassic", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- restore_address_to_classic_input(PublicIp = PublicIp, 
        DryRun = DryRun)
    output <- restore_address_to_classic_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' &#91;EC2-VPC only&#93; Removes one or more egress rules from a security group for EC2-VPC
#'
#' &#91;EC2-VPC only&#93; Removes one or more egress rules from a security group for EC2-VPC. This action doesn\'t apply to security groups for use in EC2-Classic. To remove a rule, the values that you specify (for example, ports) must match the existing rule\'s values exactly.
#' 
#' Each rule consists of the protocol and the IPv4 or IPv6 CIDR range or source security group. For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code. If the security group rule has a description, you do not have to specify the description to revoke the rule.
#' 
#' Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.
#'
#' @param GroupId The ID of the security group.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param IpPermissions One or more sets of IP permissions. You can\'t specify a destination security group and a CIDR IP address range in the same set of permissions.
#' @param CidrIp Not supported. Use a set of IP permissions to specify the CIDR.
#' @param FromPort Not supported. Use a set of IP permissions to specify the port.
#' @param IpProtocol Not supported. Use a set of IP permissions to specify the protocol name or number.
#' @param ToPort Not supported. Use a set of IP permissions to specify the port.
#' @param SourceSecurityGroupName Not supported. Use a set of IP permissions to specify a destination security group.
#' @param SourceSecurityGroupOwnerId Not supported. Use a set of IP permissions to specify a destination security group.
#'
#' @examples
#'
#' @export
revoke_security_group_egress <- function (GroupId, DryRun = NULL, 
    IpPermissions = NULL, CidrIp = NULL, FromPort = NULL, IpProtocol = NULL, 
    ToPort = NULL, SourceSecurityGroupName = NULL, SourceSecurityGroupOwnerId = NULL) 
{
    op <- Operation(name = "RevokeSecurityGroupEgress", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- revoke_security_group_egress_input(GroupId = GroupId, 
        DryRun = DryRun, IpPermissions = IpPermissions, CidrIp = CidrIp, 
        FromPort = FromPort, IpProtocol = IpProtocol, ToPort = ToPort, 
        SourceSecurityGroupName = SourceSecurityGroupName, SourceSecurityGroupOwnerId = SourceSecurityGroupOwnerId)
    output <- revoke_security_group_egress_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Removes one or more ingress rules from a security group
#'
#' Removes one or more ingress rules from a security group. To remove a rule, the values that you specify (for example, ports) must match the existing rule\'s values exactly.
#' 
#' &#91;EC2-Classic security groups only&#93; If the values you specify do not match the existing rule\'s values, no error is returned. Use DescribeSecurityGroups to verify that the rule has been removed.
#' 
#' Each rule consists of the protocol and the CIDR range or source security group. For the TCP and UDP protocols, you must also specify the destination port or range of ports. For the ICMP protocol, you must also specify the ICMP type and code. If the security group rule has a description, you do not have to specify the description to revoke the rule.
#' 
#' Rule changes are propagated to instances within the security group as quickly as possible. However, a small delay might occur.
#'
#' @param CidrIp The CIDR IP address range. You can\'t specify this parameter when specifying a source security group.
#' @param FromPort The start of port range for the TCP and UDP protocols, or an ICMP type number. For the ICMP type number, use `-1` to specify all ICMP types.
#' @param GroupId The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.
#' @param GroupName &#91;EC2-Classic, default VPC&#93; The name of the security group. You must specify either the security group ID or the security group name in the request.
#' @param IpPermissions One or more sets of IP permissions. You can\'t specify a source security group and a CIDR IP address range in the same set of permissions.
#' @param IpProtocol The IP protocol name (`tcp`, `udp`, `icmp`) or number (see [Protocol Numbers](http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)). Use `-1` to specify all.
#' @param SourceSecurityGroupName &#91;EC2-Classic, default VPC&#93; The name of the source security group. You can\'t specify this parameter in combination with the following parameters: the CIDR IP address range, the start of the port range, the IP protocol, and the end of the port range. For EC2-VPC, the source security group must be in the same VPC. To revoke a specific rule for an IP protocol and port range, use a set of IP permissions instead.
#' @param SourceSecurityGroupOwnerId &#91;EC2-Classic&#93; The AWS account ID of the source security group, if the source security group is in a different account. You can\'t specify this parameter in combination with the following parameters: the CIDR IP address range, the IP protocol, the start of the port range, and the end of the port range. To revoke a specific rule for an IP protocol and port range, use a set of IP permissions instead.
#' @param ToPort The end of port range for the TCP and UDP protocols, or an ICMP code number. For the ICMP code number, use `-1` to specify all ICMP codes for the ICMP type.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
revoke_security_group_ingress <- function (CidrIp = NULL, FromPort = NULL, 
    GroupId = NULL, GroupName = NULL, IpPermissions = NULL, IpProtocol = NULL, 
    SourceSecurityGroupName = NULL, SourceSecurityGroupOwnerId = NULL, 
    ToPort = NULL, DryRun = NULL) 
{
    op <- Operation(name = "RevokeSecurityGroupIngress", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- revoke_security_group_ingress_input(CidrIp = CidrIp, 
        FromPort = FromPort, GroupId = GroupId, GroupName = GroupName, 
        IpPermissions = IpPermissions, IpProtocol = IpProtocol, 
        SourceSecurityGroupName = SourceSecurityGroupName, SourceSecurityGroupOwnerId = SourceSecurityGroupOwnerId, 
        ToPort = ToPort, DryRun = DryRun)
    output <- revoke_security_group_ingress_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Launches the specified number of instances using an AMI for which you have permissions
#'
#' Launches the specified number of instances using an AMI for which you have permissions.
#' 
#' You can specify a number of options, or leave the default options. The following rules apply:
#' 
#' -   &#91;EC2-VPC&#93; If you don\'t specify a subnet ID, we choose a default subnet from your default VPC for you. If you don\'t have a default VPC, you must specify a subnet ID in the request.
#' 
#' -   &#91;EC2-Classic&#93; If don\'t specify an Availability Zone, we choose one for you.
#' 
#' -   Some instance types must be launched into a VPC. If you do not have a default VPC, or if you do not specify a subnet ID, the request fails. For more information, see [Instance Types Available Only in a VPC](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-vpc.html#vpc-only-instance-types).
#' 
#' -   &#91;EC2-VPC&#93; All instances have a network interface with a primary private IPv4 address. If you don\'t specify this address, we choose one from the IPv4 range of your subnet.
#' 
#' -   Not all instance types support IPv6 addresses. For more information, see [Instance Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).
#' 
#' -   If you don\'t specify a security group ID, we use the default security group. For more information, see [Security Groups](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-network-security.html).
#' 
#' -   If any of the AMIs have a product code attached for which the user has not subscribed, the request fails.
#' 
#' You can create a [launch template](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html), which is a resource that contains the parameters to launch an instance. When you launch an instance using RunInstances, you can specify the launch template instead of specifying the launch parameters.
#' 
#' To ensure faster instance launches, break up large requests into smaller batches. For example, create five separate launch requests for 100 instances each instead of one launch request for 500 instances.
#' 
#' An instance is ready for you to use when it\'s in the `running` state. You can check the state of your instance using DescribeInstances. You can tag instances and EBS volumes during launch, after launch, or both. For more information, see CreateTags and [Tagging Your Amazon EC2 Resources](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html).
#' 
#' Linux instances have access to the public key of the key pair at boot. You can use this key to provide secure access to the instance. Amazon EC2 public images use this feature to provide secure access without passwords. For more information, see [Key Pairs](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' For troubleshooting, see [What To Do If An Instance Immediately Terminates](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_InstanceStraightToTerminated.html), and [Troubleshooting Connecting to Your Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesConnecting.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param MaxCount The maximum number of instances to launch. If you specify more instances than Amazon EC2 can launch in the target Availability Zone, Amazon EC2 launches the largest possible number of instances above `MinCount`.
#' 
#' Constraints: Between 1 and the maximum number you\'re allowed for the specified instance type. For more information about the default limits, and how to request an increase, see [How many instances can I run in Amazon EC2](http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2) in the Amazon EC2 FAQ.
#' @param MinCount The minimum number of instances to launch. If you specify a minimum that is more instances than Amazon EC2 can launch in the target Availability Zone, Amazon EC2 launches no instances.
#' 
#' Constraints: Between 1 and the maximum number you\'re allowed for the specified instance type. For more information about the default limits, and how to request an increase, see [How many instances can I run in Amazon EC2](http://aws.amazon.com/ec2/faqs/#How_many_instances_can_I_run_in_Amazon_EC2) in the Amazon EC2 General FAQ.
#' @param BlockDeviceMappings One or more block device mapping entries. You can\'t specify both a snapshot ID and an encryption value. This is because only blank volumes can be encrypted on creation. If a snapshot is the basis for a volume, it is not blank and its encryption status is used for the volume encryption status.
#' @param ImageId The ID of the AMI, which you can get by calling DescribeImages. An AMI is required to launch an instance and must be specified here or in a launch template.
#' @param InstanceType The instance type. For more information, see [Instance Types](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' Default: `m1.small`
#' @param Ipv6AddressCount &#91;EC2-VPC&#93; A number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet. You cannot specify this option and the option to assign specific IPv6 addresses in the same request. You can specify this option if you\'ve specified a minimum number of instances to launch.
#' @param Ipv6Addresses &#91;EC2-VPC&#93; Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface. You cannot specify this option and the option to assign a number of IPv6 addresses in the same request. You cannot specify this option if you\'ve specified a minimum number of instances to launch.
#' @param KernelId The ID of the kernel.
#' 
#' We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [PV-GRUB](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' @param KeyName The name of the key pair. You can create a key pair using CreateKeyPair or ImportKeyPair.
#' 
#' If you do not specify a key pair, you can\'t connect to the instance unless you choose an AMI that is configured to allow users another way to log in.
#' @param Monitoring The monitoring for the instance.
#' @param Placement The placement for the instance.
#' @param RamdiskId The ID of the RAM disk.
#' 
#' We recommend that you use PV-GRUB instead of kernels and RAM disks. For more information, see [PV-GRUB](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UserProvidedkernels.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' @param SecurityGroupIds One or more security group IDs. You can create a security group using CreateSecurityGroup.
#' 
#' Default: Amazon EC2 uses the default security group.
#' @param SecurityGroups &#91;EC2-Classic, default VPC&#93; One or more security group names. For a nondefault VPC, you must use security group IDs instead.
#' 
#' Default: Amazon EC2 uses the default security group.
#' @param SubnetId &#91;EC2-VPC&#93; The ID of the subnet to launch the instance into.
#' @param UserData The user data to make available to the instance. For more information, see [Running Commands on Your Linux Instance at Launch](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html) (Linux) and [Adding User Data](http://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/ec2-instance-metadata.html#instancedata-add-user-data) (Windows). If you are using a command line tool, base64-encoding is performed for you, and you can load the text from a file. Otherwise, you must provide base64-encoded text.
#' @param AdditionalInfo Reserved.
#' @param ClientToken Unique, case-sensitive identifier you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
#' 
#' Constraints: Maximum 64 ASCII characters
#' @param DisableApiTermination If you set this parameter to `true`, you can\'t terminate the instance using the Amazon EC2 console, CLI, or API; otherwise, you can. To change this attribute to `false` after launch, use ModifyInstanceAttribute. Alternatively, if you set `InstanceInitiatedShutdownBehavior` to `terminate`, you can terminate the instance by running the shutdown command from the instance.
#' 
#' Default: `false`
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param EbsOptimized Indicates whether the instance is optimized for Amazon EBS I/O. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal Amazon EBS I/O performance. This optimization isn\'t available with all instance types. Additional usage charges apply when using an EBS-optimized instance.
#' 
#' Default: `false`
#' @param IamInstanceProfile The IAM instance profile.
#' @param InstanceInitiatedShutdownBehavior Indicates whether an instance stops or terminates when you initiate shutdown from the instance (using the operating system command for system shutdown).
#' 
#' Default: `stop`
#' @param NetworkInterfaces One or more network interfaces.
#' @param PrivateIpAddress &#91;EC2-VPC&#93; The primary IPv4 address. You must specify a value from the IPv4 address range of the subnet.
#' 
#' Only one private IP address can be designated as primary. You can\'t specify this option if you\'ve specified the option to designate a private IP address as the primary IP address in a network interface specification. You cannot specify this option if you\'re launching more than one instance in the request.
#' @param ElasticGpuSpecification An elastic GPU to associate with the instance.
#' @param TagSpecifications The tags to apply to the resources during launch. You can only tag instances and volumes on launch. The specified tags are applied to all instances or volumes that are created during launch. To tag a resource after it has been created, see CreateTags.
#' @param LaunchTemplate The launch template to use to launch the instances. Any parameters that you specify in RunInstances override the same parameters in the launch template. You can specify either the name or ID of a launch template, but not both.
#' @param InstanceMarketOptions The market (purchasing) option for the instances.
#' 
#' For RunInstances, persistent Spot Instance requests are only supported when **InstanceInterruptionBehavior** is set to either `hibernate` or `stop`.
#' @param CreditSpecification The credit option for CPU usage of the instance. Valid values are `standard` and `unlimited`. To change this attribute after launch, use ModifyInstanceCreditSpecification. For more information, see [Burstable Performance Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' Default: `standard` (T2 instances) or `unlimited` (T3 instances)
#' @param CpuOptions The CPU options for the instance. For more information, see [Optimizing CPU Options](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-optimize-cpu.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @examples
#' # This example launches an instance using the specified AMI, instance
#' # type, security group, subnet, block device mapping, and tags.
#' run_instances(
#'   BlockDeviceMappings = list(
#'     list(
#'       DeviceName = "/dev/sdh",
#'       Ebs = list(
#'         VolumeSize = 100L
#'       )
#'     )
#'   ),
#'   ImageId = "ami-abc12345",
#'   InstanceType = "t2.micro",
#'   KeyName = "my-key-pair",
#'   MaxCount = 1L,
#'   MinCount = 1L,
#'   SecurityGroupIds = list(
#'     "sg-1a2b3c4d"
#'   ),
#'   SubnetId = "subnet-6e7f829e",
#'   TagSpecifications = list(
#'     list(
#'       ResourceType = "instance",
#'       Tags = list(
#'         list(
#'           Key = "Purpose",
#'           Value = "test"
#'         )
#'       )
#'     )
#'   )
#' )
#'
#' @export
run_instances <- function (MaxCount, MinCount, BlockDeviceMappings = NULL, 
    ImageId = NULL, InstanceType = NULL, Ipv6AddressCount = NULL, 
    Ipv6Addresses = NULL, KernelId = NULL, KeyName = NULL, Monitoring = NULL, 
    Placement = NULL, RamdiskId = NULL, SecurityGroupIds = NULL, 
    SecurityGroups = NULL, SubnetId = NULL, UserData = NULL, 
    AdditionalInfo = NULL, ClientToken = NULL, DisableApiTermination = NULL, 
    DryRun = NULL, EbsOptimized = NULL, IamInstanceProfile = NULL, 
    InstanceInitiatedShutdownBehavior = NULL, NetworkInterfaces = NULL, 
    PrivateIpAddress = NULL, ElasticGpuSpecification = NULL, 
    TagSpecifications = NULL, LaunchTemplate = NULL, InstanceMarketOptions = NULL, 
    CreditSpecification = NULL, CpuOptions = NULL) 
{
    op <- Operation(name = "RunInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- run_instances_input(MaxCount = MaxCount, MinCount = MinCount, 
        BlockDeviceMappings = BlockDeviceMappings, ImageId = ImageId, 
        InstanceType = InstanceType, Ipv6AddressCount = Ipv6AddressCount, 
        Ipv6Addresses = Ipv6Addresses, KernelId = KernelId, KeyName = KeyName, 
        Monitoring = Monitoring, Placement = Placement, RamdiskId = RamdiskId, 
        SecurityGroupIds = SecurityGroupIds, SecurityGroups = SecurityGroups, 
        SubnetId = SubnetId, UserData = UserData, AdditionalInfo = AdditionalInfo, 
        ClientToken = ClientToken, DisableApiTermination = DisableApiTermination, 
        DryRun = DryRun, EbsOptimized = EbsOptimized, IamInstanceProfile = IamInstanceProfile, 
        InstanceInitiatedShutdownBehavior = InstanceInitiatedShutdownBehavior, 
        NetworkInterfaces = NetworkInterfaces, PrivateIpAddress = PrivateIpAddress, 
        ElasticGpuSpecification = ElasticGpuSpecification, TagSpecifications = TagSpecifications, 
        LaunchTemplate = LaunchTemplate, InstanceMarketOptions = InstanceMarketOptions, 
        CreditSpecification = CreditSpecification, CpuOptions = CpuOptions)
    output <- run_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Launches the specified Scheduled Instances
#'
#' Launches the specified Scheduled Instances.
#' 
#' Before you can launch a Scheduled Instance, you must purchase it and obtain an identifier using PurchaseScheduledInstances.
#' 
#' You must launch a Scheduled Instance during its scheduled time period. You can\'t stop or reboot a Scheduled Instance, but you can terminate it as needed. If you terminate a Scheduled Instance before the current scheduled time period ends, you can launch it again after a few minutes. For more information, see [Scheduled Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-scheduled-instances.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param LaunchSpecification The launch specification. You must match the instance type, Availability Zone, network, and platform of the schedule that you purchased.
#' @param ScheduledInstanceId The Scheduled Instance ID.
#' @param ClientToken Unique, case-sensitive identifier that ensures the idempotency of the request. For more information, see [Ensuring Idempotency](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param InstanceCount The number of instances.
#' 
#' Default: 1
#'
#' @examples
#' # This example launches the specified Scheduled Instance in a VPC.
#' run_scheduled_instances(
#'   InstanceCount = 1L,
#'   LaunchSpecification = list(
#'     IamInstanceProfile = list(
#'       Name = "my-iam-role"
#'     ),
#'     ImageId = "ami-12345678",
#'     InstanceType = "c4.large",
#'     KeyName = "my-key-pair",
#'     NetworkInterfaces = list(
#'       list(
#'         AssociatePublicIpAddress = TRUE,
#'         DeviceIndex = 0L,
#'         Groups = list(
#'           "sg-12345678"
#'         ),
#'         SubnetId = "subnet-12345678"
#'       )
#'     )
#'   ),
#'   ScheduledInstanceId = "sci-1234-1234-1234-1234-123456789012"
#' )
#' 
#' # This example launches the specified Scheduled Instance in EC2-Classic.
#' run_scheduled_instances(
#'   InstanceCount = 1L,
#'   LaunchSpecification = list(
#'     IamInstanceProfile = list(
#'       Name = "my-iam-role"
#'     ),
#'     ImageId = "ami-12345678",
#'     InstanceType = "c4.large",
#'     KeyName = "my-key-pair",
#'     Placement = list(
#'       AvailabilityZone = "us-west-2b"
#'     ),
#'     SecurityGroupIds = list(
#'       "sg-12345678"
#'     )
#'   ),
#'   ScheduledInstanceId = "sci-1234-1234-1234-1234-123456789012"
#' )
#'
#' @export
run_scheduled_instances <- function (LaunchSpecification, ScheduledInstanceId, 
    ClientToken = NULL, DryRun = NULL, InstanceCount = NULL) 
{
    op <- Operation(name = "RunScheduledInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- run_scheduled_instances_input(LaunchSpecification = LaunchSpecification, 
        ScheduledInstanceId = ScheduledInstanceId, ClientToken = ClientToken, 
        DryRun = DryRun, InstanceCount = InstanceCount)
    output <- run_scheduled_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Starts an Amazon EBS-backed instance that you\'ve previously stopped
#'
#' Starts an Amazon EBS-backed instance that you\'ve previously stopped.
#' 
#' Instances that use Amazon EBS volumes as their root devices can be quickly stopped and started. When an instance is stopped, the compute resources are released and you are not billed for instance usage. However, your root partition Amazon EBS volume remains and continues to persist your data, and you are charged for Amazon EBS volume usage. You can restart your instance at any time. Every time you start your Windows instance, Amazon EC2 charges you for a full instance hour. If you stop and restart your Windows instance, a new instance hour begins and Amazon EC2 charges you for another full instance hour even if you are still within the same 60-minute period when it was stopped. Every time you start your Linux instance, Amazon EC2 charges a one-minute minimum for instance usage, and thereafter charges per second for instance usage.
#' 
#' Before stopping an instance, make sure it is in a state from which it can be restarted. Stopping an instance does not preserve data stored in RAM.
#' 
#' Performing this operation on an instance that uses an instance store as its root device returns an error.
#' 
#' For more information, see [Stopping Instances](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Stop_Start.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param InstanceIds One or more instance IDs.
#' @param AdditionalInfo Reserved.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example starts the specified EC2 instance.
#' start_instances(
#'   InstanceIds = list(
#'     "i-1234567890abcdef0"
#'   )
#' )
#'
#' @export
start_instances <- function (InstanceIds, AdditionalInfo = NULL, 
    DryRun = NULL) 
{
    op <- Operation(name = "StartInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- start_instances_input(InstanceIds = InstanceIds, 
        AdditionalInfo = AdditionalInfo, DryRun = DryRun)
    output <- start_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Stops an Amazon EBS-backed instance
#'
#' Stops an Amazon EBS-backed instance.
#' 
#' We don\'t charge usage for a stopped instance, or data transfer fees; however, your root partition Amazon EBS volume remains and continues to persist your data, and you are charged for Amazon EBS volume usage. Every time you start your Windows instance, Amazon EC2 charges you for a full instance hour. If you stop and restart your Windows instance, a new instance hour begins and Amazon EC2 charges you for another full instance hour even if you are still within the same 60-minute period when it was stopped. Every time you start your Linux instance, Amazon EC2 charges a one-minute minimum for instance usage, and thereafter charges per second for instance usage.
#' 
#' You can\'t start or stop Spot Instances, and you can\'t stop instance store-backed instances.
#' 
#' When you stop an instance, we shut it down. You can restart your instance at any time. Before stopping an instance, make sure it is in a state from which it can be restarted. Stopping an instance does not preserve data stored in RAM.
#' 
#' Stopping an instance is different to rebooting or terminating it. For example, when you stop an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, the root device and any other devices attached during the instance launch are automatically deleted. For more information about the differences between rebooting, stopping, and terminating instances, see [Instance Lifecycle](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' When you stop an instance, we attempt to shut it down forcibly after a short while. If your instance appears stuck in the stopping state after a period of time, there may be an issue with the underlying host computer. For more information, see [Troubleshooting Stopping Your Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param InstanceIds One or more instance IDs.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param Force Forces the instances to stop. The instances do not have an opportunity to flush file system caches or file system metadata. If you use this option, you must perform file system check and repair procedures. This option is not recommended for Windows instances.
#' 
#' Default: `false`
#'
#' @examples
#' # This example stops the specified EC2 instance.
#' stop_instances(
#'   InstanceIds = list(
#'     "i-1234567890abcdef0"
#'   )
#' )
#'
#' @export
stop_instances <- function (InstanceIds, DryRun = NULL, Force = NULL) 
{
    op <- Operation(name = "StopInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- stop_instances_input(InstanceIds = InstanceIds, 
        DryRun = DryRun, Force = Force)
    output <- stop_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Shuts down one or more instances
#'
#' Shuts down one or more instances. This operation is idempotent; if you terminate an instance more than once, each call succeeds.
#' 
#' If you specify multiple instances and the request fails (for example, because of a single incorrect instance ID), none of the instances are terminated.
#' 
#' Terminated instances remain visible after termination (for approximately one hour).
#' 
#' By default, Amazon EC2 deletes all EBS volumes that were attached when the instance launched. Volumes attached after instance launch continue running.
#' 
#' You can stop, start, and terminate EBS-backed instances. You can only terminate instance store-backed instances. What happens to an instance differs if you stop it or terminate it. For example, when you stop an instance, the root device and any other devices attached to the instance persist. When you terminate an instance, any attached EBS volumes with the `DeleteOnTermination` block device mapping parameter set to `true` are automatically deleted. For more information about the differences between stopping and terminating instances, see [Instance Lifecycle](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-lifecycle.html) in the *Amazon Elastic Compute Cloud User Guide*.
#' 
#' For more information about troubleshooting, see [Troubleshooting Terminating Your Instance](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesShuttingDown.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param InstanceIds One or more instance IDs.
#' 
#' Constraints: Up to 1000 instance IDs. We recommend breaking up this request into smaller batches.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#' # This example terminates the specified EC2 instance.
#' terminate_instances(
#'   InstanceIds = list(
#'     "i-1234567890abcdef0"
#'   )
#' )
#'
#' @export
terminate_instances <- function (InstanceIds, DryRun = NULL) 
{
    op <- Operation(name = "TerminateInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- terminate_instances_input(InstanceIds = InstanceIds, 
        DryRun = DryRun)
    output <- terminate_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Unassigns one or more IPv6 addresses from a network interface
#'
#' Unassigns one or more IPv6 addresses from a network interface.
#'
#' @param Ipv6Addresses The IPv6 addresses to unassign from the network interface.
#' @param NetworkInterfaceId The ID of the network interface.
#'
#' @examples
#'
#' @export
unassign_ipv_6_addresses <- function (Ipv6Addresses, NetworkInterfaceId) 
{
    op <- Operation(name = "UnassignIpv6Addresses", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- unassign_ipv_6_addresses_input(Ipv6Addresses = Ipv6Addresses, 
        NetworkInterfaceId = NetworkInterfaceId)
    output <- unassign_ipv_6_addresses_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Unassigns one or more secondary private IP addresses from a network interface
#'
#' Unassigns one or more secondary private IP addresses from a network interface.
#'
#' @param NetworkInterfaceId The ID of the network interface.
#' @param PrivateIpAddresses The secondary private IP addresses to unassign from the network interface. You can specify this option multiple times to unassign more than one IP address.
#'
#' @examples
#' # This example unassigns the specified private IP address from the
#' # specified network interface.
#' unassign_private_ip_addresses(
#'   NetworkInterfaceId = "eni-e5aa89a3",
#'   PrivateIpAddresses = list(
#'     "10.0.0.82"
#'   )
#' )
#'
#' @export
unassign_private_ip_addresses <- function (NetworkInterfaceId, 
    PrivateIpAddresses) 
{
    op <- Operation(name = "UnassignPrivateIpAddresses", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- unassign_private_ip_addresses_input(NetworkInterfaceId = NetworkInterfaceId, 
        PrivateIpAddresses = PrivateIpAddresses)
    output <- unassign_private_ip_addresses_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Disables detailed monitoring for a running instance
#'
#' Disables detailed monitoring for a running instance. For more information, see [Monitoring Your Instances and Volumes](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch.html) in the *Amazon Elastic Compute Cloud User Guide*.
#'
#' @param InstanceIds One or more instance IDs.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#'
#' @examples
#'
#' @export
unmonitor_instances <- function (InstanceIds, DryRun = NULL) 
{
    op <- Operation(name = "UnmonitorInstances", http_method = "POST", 
        http_path = "/", paginator = list())
    input <- unmonitor_instances_input(InstanceIds = InstanceIds, 
        DryRun = DryRun)
    output <- unmonitor_instances_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' &#91;EC2-VPC only&#93; Updates the description of an egress (outbound) security group rule
#'
#' &#91;EC2-VPC only&#93; Updates the description of an egress (outbound) security group rule. You can replace an existing description, or add a description to a rule that did not have one previously.
#' 
#' You specify the description as part of the IP permissions structure. You can remove a description for a security group rule by omitting the description parameter in the request.
#'
#' @param IpPermissions The IP permissions for the security group rule.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param GroupId The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.
#' @param GroupName &#91;Default VPC&#93; The name of the security group. You must specify either the security group ID or the security group name in the request.
#'
#' @examples
#' # This example updates the description for the specified security group
#' # rule.
#' update_security_group_rule_descriptions_egress(
#'   GroupId = "sg-123abc12",
#'   IpPermissions = list(
#'     list(
#'       FromPort = 80L,
#'       IpProtocol = "tcp",
#'       IpRanges = list(
#'         list(
#'           CidrIp = "203.0.113.0/24",
#'           Description = "Outbound HTTP access to server 2"
#'         )
#'       ),
#'       ToPort = 80L
#'     )
#'   )
#' )
#'
#' @export
update_security_group_rule_descriptions_egress <- function (IpPermissions, 
    DryRun = NULL, GroupId = NULL, GroupName = NULL) 
{
    op <- Operation(name = "UpdateSecurityGroupRuleDescriptionsEgress", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- update_security_group_rule_descriptions_egress_input(IpPermissions = IpPermissions, 
        DryRun = DryRun, GroupId = GroupId, GroupName = GroupName)
    output <- update_security_group_rule_descriptions_egress_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}

#' Updates the description of an ingress (inbound) security group rule
#'
#' Updates the description of an ingress (inbound) security group rule. You can replace an existing description, or add a description to a rule that did not have one previously.
#' 
#' You specify the description as part of the IP permissions structure. You can remove a description for a security group rule by omitting the description parameter in the request.
#'
#' @param IpPermissions The IP permissions for the security group rule.
#' @param DryRun Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
#' @param GroupId The ID of the security group. You must specify either the security group ID or the security group name in the request. For security groups in a nondefault VPC, you must specify the security group ID.
#' @param GroupName &#91;EC2-Classic, default VPC&#93; The name of the security group. You must specify either the security group ID or the security group name in the request.
#'
#' @examples
#' # This example updates the description for the specified security group
#' # rule.
#' update_security_group_rule_descriptions_ingress(
#'   GroupId = "sg-123abc12",
#'   IpPermissions = list(
#'     list(
#'       FromPort = 22L,
#'       IpProtocol = "tcp",
#'       IpRanges = list(
#'         list(
#'           CidrIp = "203.0.113.0/16",
#'           Description = "SSH access from the LA office"
#'         )
#'       ),
#'       ToPort = 22L
#'     )
#'   )
#' )
#'
#' @export
update_security_group_rule_descriptions_ingress <- function (IpPermissions, 
    DryRun = NULL, GroupId = NULL, GroupName = NULL) 
{
    op <- Operation(name = "UpdateSecurityGroupRuleDescriptionsIngress", 
        http_method = "POST", http_path = "/", paginator = list())
    input <- update_security_group_rule_descriptions_ingress_input(IpPermissions = IpPermissions, 
        DryRun = DryRun, GroupId = GroupId, GroupName = GroupName)
    output <- update_security_group_rule_descriptions_ingress_output()
    svc <- service()
    request <- new_request(svc, op, input, output)
    response <- send_request(request)
    return(response)
}
