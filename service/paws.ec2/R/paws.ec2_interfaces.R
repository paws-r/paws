accept_reserved_instances_exchange_quote_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ReservedInstanceIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "ReservedInstanceId", 
        type = "string")), shape = "ReservedInstanceIdSet", locationName = "ReservedInstanceId", 
        type = "list"), TargetConfigurations = structure(list(structure(list(InstanceCount = structure(logical(0), 
        shape = "Integer", type = "integer"), OfferingId = structure(logical(0), 
        shape = "String", type = "string")), shape = "TargetConfigurationRequest", 
        locationName = "TargetConfigurationRequest", type = "structure")), 
        shape = "TargetConfigurationRequestSet", locationName = "TargetConfiguration", 
        type = "list")), shape = "AcceptReservedInstancesExchangeQuoteRequest", 
        type = "structure")
    return(populate(args, shape))
}

accept_reserved_instances_exchange_quote_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExchangeId = structure(logical(0), 
        shape = "String", locationName = "exchangeId", type = "string")), 
        shape = "AcceptReservedInstancesExchangeQuoteResult", 
        type = "structure")
    return(populate(args, shape))
}

accept_vpc_endpoint_connections_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ServiceId = structure(logical(0), 
        shape = "String", type = "string"), VpcEndpointIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "VpcEndpointId", 
        type = "list")), shape = "AcceptVpcEndpointConnectionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

accept_vpc_endpoint_connections_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Unsuccessful = structure(list(structure(list(Error = structure(list(Code = structure(logical(0), 
        shape = "String", locationName = "code", type = "string"), 
        Message = structure(logical(0), shape = "String", locationName = "message", 
            type = "string")), shape = "UnsuccessfulItemError", 
        locationName = "error", type = "structure"), ResourceId = structure(logical(0), 
        shape = "String", locationName = "resourceId", type = "string")), 
        shape = "UnsuccessfulItem", locationName = "item", type = "structure")), 
        shape = "UnsuccessfulItemSet", locationName = "unsuccessful", 
        type = "list")), shape = "AcceptVpcEndpointConnectionsResult", 
        type = "structure")
    return(populate(args, shape))
}

accept_vpc_peering_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), VpcPeeringConnectionId = structure(logical(0), 
        shape = "String", locationName = "vpcPeeringConnectionId", 
        type = "string")), shape = "AcceptVpcPeeringConnectionRequest", 
        type = "structure")
    return(populate(args, shape))
}

accept_vpc_peering_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcPeeringConnection = structure(list(AccepterVpcInfo = structure(list(CidrBlock = structure(logical(0), 
        shape = "String", locationName = "cidrBlock", type = "string"), 
        Ipv6CidrBlockSet = structure(list(structure(list(Ipv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "ipv6CidrBlock", 
            type = "string")), shape = "Ipv6CidrBlock", locationName = "item", 
            type = "structure")), shape = "Ipv6CidrBlockSet", 
            locationName = "ipv6CidrBlockSet", type = "list"), 
        CidrBlockSet = structure(list(structure(list(CidrBlock = structure(logical(0), 
            shape = "String", locationName = "cidrBlock", type = "string")), 
            shape = "CidrBlock", locationName = "item", type = "structure")), 
            shape = "CidrBlockSet", locationName = "cidrBlockSet", 
            type = "list"), OwnerId = structure(logical(0), shape = "String", 
            locationName = "ownerId", type = "string"), PeeringOptions = structure(list(AllowDnsResolutionFromRemoteVpc = structure(logical(0), 
            shape = "Boolean", locationName = "allowDnsResolutionFromRemoteVpc", 
            type = "boolean"), AllowEgressFromLocalClassicLinkToRemoteVpc = structure(logical(0), 
            shape = "Boolean", locationName = "allowEgressFromLocalClassicLinkToRemoteVpc", 
            type = "boolean"), AllowEgressFromLocalVpcToRemoteClassicLink = structure(logical(0), 
            shape = "Boolean", locationName = "allowEgressFromLocalVpcToRemoteClassicLink", 
            type = "boolean")), shape = "VpcPeeringConnectionOptionsDescription", 
            locationName = "peeringOptions", type = "structure"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string"), Region = structure(logical(0), 
            shape = "String", locationName = "region", type = "string")), 
        shape = "VpcPeeringConnectionVpcInfo", locationName = "accepterVpcInfo", 
        type = "structure"), ExpirationTime = structure(logical(0), 
        shape = "DateTime", locationName = "expirationTime", 
        type = "timestamp"), RequesterVpcInfo = structure(list(CidrBlock = structure(logical(0), 
        shape = "String", locationName = "cidrBlock", type = "string"), 
        Ipv6CidrBlockSet = structure(list(structure(list(Ipv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "ipv6CidrBlock", 
            type = "string")), shape = "Ipv6CidrBlock", locationName = "item", 
            type = "structure")), shape = "Ipv6CidrBlockSet", 
            locationName = "ipv6CidrBlockSet", type = "list"), 
        CidrBlockSet = structure(list(structure(list(CidrBlock = structure(logical(0), 
            shape = "String", locationName = "cidrBlock", type = "string")), 
            shape = "CidrBlock", locationName = "item", type = "structure")), 
            shape = "CidrBlockSet", locationName = "cidrBlockSet", 
            type = "list"), OwnerId = structure(logical(0), shape = "String", 
            locationName = "ownerId", type = "string"), PeeringOptions = structure(list(AllowDnsResolutionFromRemoteVpc = structure(logical(0), 
            shape = "Boolean", locationName = "allowDnsResolutionFromRemoteVpc", 
            type = "boolean"), AllowEgressFromLocalClassicLinkToRemoteVpc = structure(logical(0), 
            shape = "Boolean", locationName = "allowEgressFromLocalClassicLinkToRemoteVpc", 
            type = "boolean"), AllowEgressFromLocalVpcToRemoteClassicLink = structure(logical(0), 
            shape = "Boolean", locationName = "allowEgressFromLocalVpcToRemoteClassicLink", 
            type = "boolean")), shape = "VpcPeeringConnectionOptionsDescription", 
            locationName = "peeringOptions", type = "structure"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string"), Region = structure(logical(0), 
            shape = "String", locationName = "region", type = "string")), 
        shape = "VpcPeeringConnectionVpcInfo", locationName = "requesterVpcInfo", 
        type = "structure"), Status = structure(list(Code = structure(logical(0), 
        shape = "VpcPeeringConnectionStateReasonCode", locationName = "code", 
        type = "string"), Message = structure(logical(0), shape = "String", 
        locationName = "message", type = "string")), shape = "VpcPeeringConnectionStateReason", 
        locationName = "status", type = "structure"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", locationName = "key", type = "string"), 
        Value = structure(logical(0), shape = "String", locationName = "value", 
            type = "string")), shape = "Tag", locationName = "item", 
        type = "structure")), shape = "TagList", locationName = "tagSet", 
        type = "list"), VpcPeeringConnectionId = structure(logical(0), 
        shape = "String", locationName = "vpcPeeringConnectionId", 
        type = "string")), shape = "VpcPeeringConnection", locationName = "vpcPeeringConnection", 
        type = "structure")), shape = "AcceptVpcPeeringConnectionResult", 
        type = "structure")
    return(populate(args, shape))
}

allocate_address_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Domain = structure(logical(0), shape = "DomainType", 
        type = "string"), Address = structure(logical(0), shape = "String", 
        type = "string"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "AllocateAddressRequest", 
        type = "structure")
    return(populate(args, shape))
}

allocate_address_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PublicIp = structure(logical(0), 
        shape = "String", locationName = "publicIp", type = "string"), 
        AllocationId = structure(logical(0), shape = "String", 
            locationName = "allocationId", type = "string"), 
        Domain = structure(logical(0), shape = "DomainType", 
            locationName = "domain", type = "string")), shape = "AllocateAddressResult", 
        type = "structure")
    return(populate(args, shape))
}

allocate_hosts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoPlacement = structure(logical(0), 
        shape = "AutoPlacement", locationName = "autoPlacement", 
        type = "string"), AvailabilityZone = structure(logical(0), 
        shape = "String", locationName = "availabilityZone", 
        type = "string"), ClientToken = structure(logical(0), 
        shape = "String", locationName = "clientToken", type = "string"), 
        InstanceType = structure(logical(0), shape = "String", 
            locationName = "instanceType", type = "string"), 
        Quantity = structure(logical(0), shape = "Integer", locationName = "quantity", 
            type = "integer"), TagSpecifications = structure(list(structure(list(ResourceType = structure(logical(0), 
            shape = "ResourceType", locationName = "resourceType", 
            type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "Tag", 
            type = "list")), shape = "TagSpecification", locationName = "item", 
            type = "structure")), shape = "TagSpecificationList", 
            locationName = "TagSpecification", type = "list")), 
        shape = "AllocateHostsRequest", type = "structure")
    return(populate(args, shape))
}

allocate_hosts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HostIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ResponseHostIdList", locationName = "hostIdSet", 
        type = "list")), shape = "AllocateHostsResult", type = "structure")
    return(populate(args, shape))
}

assign_ipv_6_addresses_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Ipv6AddressCount = structure(logical(0), 
        shape = "Integer", locationName = "ipv6AddressCount", 
        type = "integer"), Ipv6Addresses = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "Ipv6AddressList", locationName = "ipv6Addresses", 
        type = "list"), NetworkInterfaceId = structure(logical(0), 
        shape = "String", locationName = "networkInterfaceId", 
        type = "string")), shape = "AssignIpv6AddressesRequest", 
        type = "structure")
    return(populate(args, shape))
}

assign_ipv_6_addresses_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssignedIpv6Addresses = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "Ipv6AddressList", locationName = "assignedIpv6Addresses", 
        type = "list"), NetworkInterfaceId = structure(logical(0), 
        shape = "String", locationName = "networkInterfaceId", 
        type = "string")), shape = "AssignIpv6AddressesResult", 
        type = "structure")
    return(populate(args, shape))
}

assign_private_ip_addresses_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AllowReassignment = structure(logical(0), 
        shape = "Boolean", locationName = "allowReassignment", 
        type = "boolean"), NetworkInterfaceId = structure(logical(0), 
        shape = "String", locationName = "networkInterfaceId", 
        type = "string"), PrivateIpAddresses = structure(list(structure(logical(0), 
        shape = "String", locationName = "PrivateIpAddress", 
        type = "string")), shape = "PrivateIpAddressStringList", 
        locationName = "privateIpAddress", type = "list"), SecondaryPrivateIpAddressCount = structure(logical(0), 
        shape = "Integer", locationName = "secondaryPrivateIpAddressCount", 
        type = "integer")), shape = "AssignPrivateIpAddressesRequest", 
        type = "structure")
    return(populate(args, shape))
}

assign_private_ip_addresses_output <- function () 
{
    return(list())
}

associate_address_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AllocationId = structure(logical(0), 
        shape = "String", type = "string"), InstanceId = structure(logical(0), 
        shape = "String", type = "string"), PublicIp = structure(logical(0), 
        shape = "String", type = "string"), AllowReassociation = structure(logical(0), 
        shape = "Boolean", locationName = "allowReassociation", 
        type = "boolean"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), NetworkInterfaceId = structure(logical(0), 
        shape = "String", locationName = "networkInterfaceId", 
        type = "string"), PrivateIpAddress = structure(logical(0), 
        shape = "String", locationName = "privateIpAddress", 
        type = "string")), shape = "AssociateAddressRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_address_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationId = structure(logical(0), 
        shape = "String", locationName = "associationId", type = "string")), 
        shape = "AssociateAddressResult", type = "structure")
    return(populate(args, shape))
}

associate_dhcp_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DhcpOptionsId = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "AssociateDhcpOptionsRequest", type = "structure")
    return(populate(args, shape))
}

associate_dhcp_options_output <- function () 
{
    return(list())
}

associate_iam_instance_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IamInstanceProfile = structure(list(Arn = structure(logical(0), 
        shape = "String", locationName = "arn", type = "string"), 
        Name = structure(logical(0), shape = "String", locationName = "name", 
            type = "string")), shape = "IamInstanceProfileSpecification", 
        type = "structure"), InstanceId = structure(logical(0), 
        shape = "String", type = "string")), shape = "AssociateIamInstanceProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_iam_instance_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IamInstanceProfileAssociation = structure(list(AssociationId = structure(logical(0), 
        shape = "String", locationName = "associationId", type = "string"), 
        InstanceId = structure(logical(0), shape = "String", 
            locationName = "instanceId", type = "string"), IamInstanceProfile = structure(list(Arn = structure(logical(0), 
            shape = "String", locationName = "arn", type = "string"), 
            Id = structure(logical(0), shape = "String", locationName = "id", 
                type = "string")), shape = "IamInstanceProfile", 
            locationName = "iamInstanceProfile", type = "structure"), 
        State = structure(logical(0), shape = "IamInstanceProfileAssociationState", 
            locationName = "state", type = "string"), Timestamp = structure(logical(0), 
            shape = "DateTime", locationName = "timestamp", type = "timestamp")), 
        shape = "IamInstanceProfileAssociation", locationName = "iamInstanceProfileAssociation", 
        type = "structure")), shape = "AssociateIamInstanceProfileResult", 
        type = "structure")
    return(populate(args, shape))
}

associate_route_table_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), RouteTableId = structure(logical(0), 
        shape = "String", locationName = "routeTableId", type = "string"), 
        SubnetId = structure(logical(0), shape = "String", locationName = "subnetId", 
            type = "string")), shape = "AssociateRouteTableRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_route_table_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationId = structure(logical(0), 
        shape = "String", locationName = "associationId", type = "string")), 
        shape = "AssociateRouteTableResult", type = "structure")
    return(populate(args, shape))
}

associate_subnet_cidr_block_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Ipv6CidrBlock = structure(logical(0), 
        shape = "String", locationName = "ipv6CidrBlock", type = "string"), 
        SubnetId = structure(logical(0), shape = "String", locationName = "subnetId", 
            type = "string")), shape = "AssociateSubnetCidrBlockRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_subnet_cidr_block_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Ipv6CidrBlockAssociation = structure(list(AssociationId = structure(logical(0), 
        shape = "String", locationName = "associationId", type = "string"), 
        Ipv6CidrBlock = structure(logical(0), shape = "String", 
            locationName = "ipv6CidrBlock", type = "string"), 
        Ipv6CidrBlockState = structure(list(State = structure(logical(0), 
            shape = "SubnetCidrBlockStateCode", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "SubnetCidrBlockState", 
            locationName = "ipv6CidrBlockState", type = "structure")), 
        shape = "SubnetIpv6CidrBlockAssociation", locationName = "ipv6CidrBlockAssociation", 
        type = "structure"), SubnetId = structure(logical(0), 
        shape = "String", locationName = "subnetId", type = "string")), 
        shape = "AssociateSubnetCidrBlockResult", type = "structure")
    return(populate(args, shape))
}

associate_vpc_cidr_block_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AmazonProvidedIpv6CidrBlock = structure(logical(0), 
        shape = "Boolean", locationName = "amazonProvidedIpv6CidrBlock", 
        type = "boolean"), CidrBlock = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", locationName = "vpcId", type = "string")), 
        shape = "AssociateVpcCidrBlockRequest", type = "structure")
    return(populate(args, shape))
}

associate_vpc_cidr_block_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Ipv6CidrBlockAssociation = structure(list(AssociationId = structure(logical(0), 
        shape = "String", locationName = "associationId", type = "string"), 
        Ipv6CidrBlock = structure(logical(0), shape = "String", 
            locationName = "ipv6CidrBlock", type = "string"), 
        Ipv6CidrBlockState = structure(list(State = structure(logical(0), 
            shape = "VpcCidrBlockStateCode", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "VpcCidrBlockState", locationName = "ipv6CidrBlockState", 
            type = "structure")), shape = "VpcIpv6CidrBlockAssociation", 
        locationName = "ipv6CidrBlockAssociation", type = "structure"), 
        CidrBlockAssociation = structure(list(AssociationId = structure(logical(0), 
            shape = "String", locationName = "associationId", 
            type = "string"), CidrBlock = structure(logical(0), 
            shape = "String", locationName = "cidrBlock", type = "string"), 
            CidrBlockState = structure(list(State = structure(logical(0), 
                shape = "VpcCidrBlockStateCode", locationName = "state", 
                type = "string"), StatusMessage = structure(logical(0), 
                shape = "String", locationName = "statusMessage", 
                type = "string")), shape = "VpcCidrBlockState", 
                locationName = "cidrBlockState", type = "structure")), 
            shape = "VpcCidrBlockAssociation", locationName = "cidrBlockAssociation", 
            type = "structure"), VpcId = structure(logical(0), 
            shape = "String", locationName = "vpcId", type = "string")), 
        shape = "AssociateVpcCidrBlockResult", type = "structure")
    return(populate(args, shape))
}

attach_classic_link_vpc_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), Groups = structure(list(structure(logical(0), 
        shape = "String", locationName = "groupId", type = "string")), 
        shape = "GroupIdStringList", locationName = "SecurityGroupId", 
        type = "list"), InstanceId = structure(logical(0), shape = "String", 
        locationName = "instanceId", type = "string"), VpcId = structure(logical(0), 
        shape = "String", locationName = "vpcId", type = "string")), 
        shape = "AttachClassicLinkVpcRequest", type = "structure")
    return(populate(args, shape))
}

attach_classic_link_vpc_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "AttachClassicLinkVpcResult", 
        type = "structure")
    return(populate(args, shape))
}

attach_internet_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), InternetGatewayId = structure(logical(0), 
        shape = "String", locationName = "internetGatewayId", 
        type = "string"), VpcId = structure(logical(0), shape = "String", 
        locationName = "vpcId", type = "string")), shape = "AttachInternetGatewayRequest", 
        type = "structure")
    return(populate(args, shape))
}

attach_internet_gateway_output <- function () 
{
    return(list())
}

attach_network_interface_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DeviceIndex = structure(logical(0), 
        shape = "Integer", locationName = "deviceIndex", type = "integer"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
        NetworkInterfaceId = structure(logical(0), shape = "String", 
            locationName = "networkInterfaceId", type = "string")), 
        shape = "AttachNetworkInterfaceRequest", type = "structure")
    return(populate(args, shape))
}

attach_network_interface_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttachmentId = structure(logical(0), 
        shape = "String", locationName = "attachmentId", type = "string")), 
        shape = "AttachNetworkInterfaceResult", type = "structure")
    return(populate(args, shape))
}

attach_volume_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Device = structure(logical(0), shape = "String", 
        type = "string"), InstanceId = structure(logical(0), 
        shape = "String", type = "string"), VolumeId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "AttachVolumeRequest", type = "structure")
    return(populate(args, shape))
}

attach_volume_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttachTime = structure(logical(0), 
        shape = "DateTime", locationName = "attachTime", type = "timestamp"), 
        Device = structure(logical(0), shape = "String", locationName = "device", 
            type = "string"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
        State = structure(logical(0), shape = "VolumeAttachmentState", 
            locationName = "status", type = "string"), VolumeId = structure(logical(0), 
            shape = "String", locationName = "volumeId", type = "string"), 
        DeleteOnTermination = structure(logical(0), shape = "Boolean", 
            locationName = "deleteOnTermination", type = "boolean")), 
        shape = "VolumeAttachment", type = "structure")
    return(populate(args, shape))
}

attach_vpn_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcId = structure(logical(0), shape = "String", 
        type = "string"), VpnGatewayId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "AttachVpnGatewayRequest", type = "structure")
    return(populate(args, shape))
}

attach_vpn_gateway_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcAttachment = structure(list(State = structure(logical(0), 
        shape = "AttachmentStatus", locationName = "state", type = "string"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string")), shape = "VpcAttachment", locationName = "attachment", 
        type = "structure")), shape = "AttachVpnGatewayResult", 
        type = "structure")
    return(populate(args, shape))
}

authorize_security_group_egress_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), GroupId = structure(logical(0), 
        shape = "String", locationName = "groupId", type = "string"), 
        IpPermissions = structure(list(structure(list(FromPort = structure(logical(0), 
            shape = "Integer", locationName = "fromPort", type = "integer"), 
            IpProtocol = structure(logical(0), shape = "String", 
                locationName = "ipProtocol", type = "string"), 
            IpRanges = structure(list(structure(list(CidrIp = structure(logical(0), 
                shape = "String", locationName = "cidrIp", type = "string"), 
                Description = structure(logical(0), shape = "String", 
                  locationName = "description", type = "string")), 
                shape = "IpRange", locationName = "item", type = "structure")), 
                shape = "IpRangeList", locationName = "ipRanges", 
                type = "list"), Ipv6Ranges = structure(list(structure(list(CidrIpv6 = structure(logical(0), 
                shape = "String", locationName = "cidrIpv6", 
                type = "string"), Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string")), shape = "Ipv6Range", locationName = "item", 
                type = "structure")), shape = "Ipv6RangeList", 
                locationName = "ipv6Ranges", type = "list"), 
            PrefixListIds = structure(list(structure(list(Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string"), PrefixListId = structure(logical(0), 
                shape = "String", locationName = "prefixListId", 
                type = "string")), shape = "PrefixListId", locationName = "item", 
                type = "structure")), shape = "PrefixListIdList", 
                locationName = "prefixListIds", type = "list"), 
            ToPort = structure(logical(0), shape = "Integer", 
                locationName = "toPort", type = "integer"), UserIdGroupPairs = structure(list(structure(list(Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string"), GroupId = structure(logical(0), 
                shape = "String", locationName = "groupId", type = "string"), 
                GroupName = structure(logical(0), shape = "String", 
                  locationName = "groupName", type = "string"), 
                PeeringStatus = structure(logical(0), shape = "String", 
                  locationName = "peeringStatus", type = "string"), 
                UserId = structure(logical(0), shape = "String", 
                  locationName = "userId", type = "string"), 
                VpcId = structure(logical(0), shape = "String", 
                  locationName = "vpcId", type = "string"), VpcPeeringConnectionId = structure(logical(0), 
                  shape = "String", locationName = "vpcPeeringConnectionId", 
                  type = "string")), shape = "UserIdGroupPair", 
                locationName = "item", type = "structure")), 
                shape = "UserIdGroupPairList", locationName = "groups", 
                type = "list")), shape = "IpPermission", locationName = "item", 
            type = "structure")), shape = "IpPermissionList", 
            locationName = "ipPermissions", type = "list"), CidrIp = structure(logical(0), 
            shape = "String", locationName = "cidrIp", type = "string"), 
        FromPort = structure(logical(0), shape = "Integer", locationName = "fromPort", 
            type = "integer"), IpProtocol = structure(logical(0), 
            shape = "String", locationName = "ipProtocol", type = "string"), 
        ToPort = structure(logical(0), shape = "Integer", locationName = "toPort", 
            type = "integer"), SourceSecurityGroupName = structure(logical(0), 
            shape = "String", locationName = "sourceSecurityGroupName", 
            type = "string"), SourceSecurityGroupOwnerId = structure(logical(0), 
            shape = "String", locationName = "sourceSecurityGroupOwnerId", 
            type = "string")), shape = "AuthorizeSecurityGroupEgressRequest", 
        type = "structure")
    return(populate(args, shape))
}

authorize_security_group_egress_output <- function () 
{
    return(list())
}

authorize_security_group_ingress_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CidrIp = structure(logical(0), shape = "String", 
        type = "string"), FromPort = structure(logical(0), shape = "Integer", 
        type = "integer"), GroupId = structure(logical(0), shape = "String", 
        type = "string"), GroupName = structure(logical(0), shape = "String", 
        type = "string"), IpPermissions = structure(list(structure(list(FromPort = structure(logical(0), 
        shape = "Integer", locationName = "fromPort", type = "integer"), 
        IpProtocol = structure(logical(0), shape = "String", 
            locationName = "ipProtocol", type = "string"), IpRanges = structure(list(structure(list(CidrIp = structure(logical(0), 
            shape = "String", locationName = "cidrIp", type = "string"), 
            Description = structure(logical(0), shape = "String", 
                locationName = "description", type = "string")), 
            shape = "IpRange", locationName = "item", type = "structure")), 
            shape = "IpRangeList", locationName = "ipRanges", 
            type = "list"), Ipv6Ranges = structure(list(structure(list(CidrIpv6 = structure(logical(0), 
            shape = "String", locationName = "cidrIpv6", type = "string"), 
            Description = structure(logical(0), shape = "String", 
                locationName = "description", type = "string")), 
            shape = "Ipv6Range", locationName = "item", type = "structure")), 
            shape = "Ipv6RangeList", locationName = "ipv6Ranges", 
            type = "list"), PrefixListIds = structure(list(structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            PrefixListId = structure(logical(0), shape = "String", 
                locationName = "prefixListId", type = "string")), 
            shape = "PrefixListId", locationName = "item", type = "structure")), 
            shape = "PrefixListIdList", locationName = "prefixListIds", 
            type = "list"), ToPort = structure(logical(0), shape = "Integer", 
            locationName = "toPort", type = "integer"), UserIdGroupPairs = structure(list(structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            GroupId = structure(logical(0), shape = "String", 
                locationName = "groupId", type = "string"), GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), PeeringStatus = structure(logical(0), 
                shape = "String", locationName = "peeringStatus", 
                type = "string"), UserId = structure(logical(0), 
                shape = "String", locationName = "userId", type = "string"), 
            VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
                type = "string"), VpcPeeringConnectionId = structure(logical(0), 
                shape = "String", locationName = "vpcPeeringConnectionId", 
                type = "string")), shape = "UserIdGroupPair", 
            locationName = "item", type = "structure")), shape = "UserIdGroupPairList", 
            locationName = "groups", type = "list")), shape = "IpPermission", 
        locationName = "item", type = "structure")), shape = "IpPermissionList", 
        type = "list"), IpProtocol = structure(logical(0), shape = "String", 
        type = "string"), SourceSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), SourceSecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string"), ToPort = structure(logical(0), 
        shape = "Integer", type = "integer"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "AuthorizeSecurityGroupIngressRequest", type = "structure")
    return(populate(args, shape))
}

authorize_security_group_ingress_output <- function () 
{
    return(list())
}

bundle_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string"), Storage = structure(list(S3 = structure(list(AWSAccessKeyId = structure(logical(0), 
        shape = "String", type = "string"), Bucket = structure(logical(0), 
        shape = "String", locationName = "bucket", type = "string"), 
        Prefix = structure(logical(0), shape = "String", locationName = "prefix", 
            type = "string"), UploadPolicy = structure(logical(0), 
            shape = "Blob", locationName = "uploadPolicy", type = "blob"), 
        UploadPolicySignature = structure(logical(0), shape = "String", 
            locationName = "uploadPolicySignature", type = "string")), 
        shape = "S3Storage", type = "structure")), shape = "Storage", 
        type = "structure"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "BundleInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

bundle_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BundleTask = structure(list(BundleId = structure(logical(0), 
        shape = "String", locationName = "bundleId", type = "string"), 
        BundleTaskError = structure(list(Code = structure(logical(0), 
            shape = "String", locationName = "code", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                locationName = "message", type = "string")), 
            shape = "BundleTaskError", locationName = "error", 
            type = "structure"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
        Progress = structure(logical(0), shape = "String", locationName = "progress", 
            type = "string"), StartTime = structure(logical(0), 
            shape = "DateTime", locationName = "startTime", type = "timestamp"), 
        State = structure(logical(0), shape = "BundleTaskState", 
            locationName = "state", type = "string"), Storage = structure(list(S3 = structure(list(AWSAccessKeyId = structure(logical(0), 
            shape = "String", type = "string"), Bucket = structure(logical(0), 
            shape = "String", locationName = "bucket", type = "string"), 
            Prefix = structure(logical(0), shape = "String", 
                locationName = "prefix", type = "string"), UploadPolicy = structure(logical(0), 
                shape = "Blob", locationName = "uploadPolicy", 
                type = "blob"), UploadPolicySignature = structure(logical(0), 
                shape = "String", locationName = "uploadPolicySignature", 
                type = "string")), shape = "S3Storage", type = "structure")), 
            shape = "Storage", locationName = "storage", type = "structure"), 
        UpdateTime = structure(logical(0), shape = "DateTime", 
            locationName = "updateTime", type = "timestamp")), 
        shape = "BundleTask", locationName = "bundleInstanceTask", 
        type = "structure")), shape = "BundleInstanceResult", 
        type = "structure")
    return(populate(args, shape))
}

cancel_bundle_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BundleId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "CancelBundleTaskRequest", type = "structure")
    return(populate(args, shape))
}

cancel_bundle_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BundleTask = structure(list(BundleId = structure(logical(0), 
        shape = "String", locationName = "bundleId", type = "string"), 
        BundleTaskError = structure(list(Code = structure(logical(0), 
            shape = "String", locationName = "code", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                locationName = "message", type = "string")), 
            shape = "BundleTaskError", locationName = "error", 
            type = "structure"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
        Progress = structure(logical(0), shape = "String", locationName = "progress", 
            type = "string"), StartTime = structure(logical(0), 
            shape = "DateTime", locationName = "startTime", type = "timestamp"), 
        State = structure(logical(0), shape = "BundleTaskState", 
            locationName = "state", type = "string"), Storage = structure(list(S3 = structure(list(AWSAccessKeyId = structure(logical(0), 
            shape = "String", type = "string"), Bucket = structure(logical(0), 
            shape = "String", locationName = "bucket", type = "string"), 
            Prefix = structure(logical(0), shape = "String", 
                locationName = "prefix", type = "string"), UploadPolicy = structure(logical(0), 
                shape = "Blob", locationName = "uploadPolicy", 
                type = "blob"), UploadPolicySignature = structure(logical(0), 
                shape = "String", locationName = "uploadPolicySignature", 
                type = "string")), shape = "S3Storage", type = "structure")), 
            shape = "Storage", locationName = "storage", type = "structure"), 
        UpdateTime = structure(logical(0), shape = "DateTime", 
            locationName = "updateTime", type = "timestamp")), 
        shape = "BundleTask", locationName = "bundleInstanceTask", 
        type = "structure")), shape = "CancelBundleTaskResult", 
        type = "structure")
    return(populate(args, shape))
}

cancel_conversion_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConversionTaskId = structure(logical(0), 
        shape = "String", locationName = "conversionTaskId", 
        type = "string"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), ReasonMessage = structure(logical(0), 
        shape = "String", locationName = "reasonMessage", type = "string")), 
        shape = "CancelConversionRequest", type = "structure")
    return(populate(args, shape))
}

cancel_conversion_task_output <- function () 
{
    return(list())
}

cancel_export_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportTaskId = structure(logical(0), 
        shape = "String", locationName = "exportTaskId", type = "string")), 
        shape = "CancelExportTaskRequest", type = "structure")
    return(populate(args, shape))
}

cancel_export_task_output <- function () 
{
    return(list())
}

cancel_import_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CancelReason = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", type = "boolean"), ImportTaskId = structure(logical(0), 
        shape = "String", type = "string")), shape = "CancelImportTaskRequest", 
        type = "structure")
    return(populate(args, shape))
}

cancel_import_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImportTaskId = structure(logical(0), 
        shape = "String", locationName = "importTaskId", type = "string"), 
        PreviousState = structure(logical(0), shape = "String", 
            locationName = "previousState", type = "string"), 
        State = structure(logical(0), shape = "String", locationName = "state", 
            type = "string")), shape = "CancelImportTaskResult", 
        type = "structure")
    return(populate(args, shape))
}

cancel_reserved_instances_listing_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedInstancesListingId = structure(logical(0), 
        shape = "String", locationName = "reservedInstancesListingId", 
        type = "string")), shape = "CancelReservedInstancesListingRequest", 
        type = "structure")
    return(populate(args, shape))
}

cancel_reserved_instances_listing_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedInstancesListings = structure(list(structure(list(ClientToken = structure(logical(0), 
        shape = "String", locationName = "clientToken", type = "string"), 
        CreateDate = structure(logical(0), shape = "DateTime", 
            locationName = "createDate", type = "timestamp"), 
        InstanceCounts = structure(list(structure(list(InstanceCount = structure(logical(0), 
            shape = "Integer", locationName = "instanceCount", 
            type = "integer"), State = structure(logical(0), 
            shape = "ListingState", locationName = "state", type = "string")), 
            shape = "InstanceCount", locationName = "item", type = "structure")), 
            shape = "InstanceCountList", locationName = "instanceCounts", 
            type = "list"), PriceSchedules = structure(list(structure(list(Active = structure(logical(0), 
            shape = "Boolean", locationName = "active", type = "boolean"), 
            CurrencyCode = structure(logical(0), shape = "CurrencyCodeValues", 
                locationName = "currencyCode", type = "string"), 
            Price = structure(logical(0), shape = "Double", locationName = "price", 
                type = "double"), Term = structure(logical(0), 
                shape = "Long", locationName = "term", type = "long")), 
            shape = "PriceSchedule", locationName = "item", type = "structure")), 
            shape = "PriceScheduleList", locationName = "priceSchedules", 
            type = "list"), ReservedInstancesId = structure(logical(0), 
            shape = "String", locationName = "reservedInstancesId", 
            type = "string"), ReservedInstancesListingId = structure(logical(0), 
            shape = "String", locationName = "reservedInstancesListingId", 
            type = "string"), Status = structure(logical(0), 
            shape = "ListingStatus", locationName = "status", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), UpdateDate = structure(logical(0), 
            shape = "DateTime", locationName = "updateDate", 
            type = "timestamp")), shape = "ReservedInstancesListing", 
        locationName = "item", type = "structure")), shape = "ReservedInstancesListingList", 
        locationName = "reservedInstancesListingsSet", type = "list")), 
        shape = "CancelReservedInstancesListingResult", type = "structure")
    return(populate(args, shape))
}

cancel_spot_fleet_requests_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), SpotFleetRequestIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "spotFleetRequestId", 
        type = "list"), TerminateInstances = structure(logical(0), 
        shape = "Boolean", locationName = "terminateInstances", 
        type = "boolean")), shape = "CancelSpotFleetRequestsRequest", 
        type = "structure")
    return(populate(args, shape))
}

cancel_spot_fleet_requests_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SuccessfulFleetRequests = structure(list(structure(list(CurrentSpotFleetRequestState = structure(logical(0), 
        shape = "BatchState", locationName = "currentSpotFleetRequestState", 
        type = "string"), PreviousSpotFleetRequestState = structure(logical(0), 
        shape = "BatchState", locationName = "previousSpotFleetRequestState", 
        type = "string"), SpotFleetRequestId = structure(logical(0), 
        shape = "String", locationName = "spotFleetRequestId", 
        type = "string")), shape = "CancelSpotFleetRequestsSuccessItem", 
        locationName = "item", type = "structure")), shape = "CancelSpotFleetRequestsSuccessSet", 
        locationName = "successfulFleetRequestSet", type = "list"), 
        UnsuccessfulFleetRequests = structure(list(structure(list(Error = structure(list(Code = structure(logical(0), 
            shape = "CancelBatchErrorCode", locationName = "code", 
            type = "string"), Message = structure(logical(0), 
            shape = "String", locationName = "message", type = "string")), 
            shape = "CancelSpotFleetRequestsError", locationName = "error", 
            type = "structure"), SpotFleetRequestId = structure(logical(0), 
            shape = "String", locationName = "spotFleetRequestId", 
            type = "string")), shape = "CancelSpotFleetRequestsErrorItem", 
            locationName = "item", type = "structure")), shape = "CancelSpotFleetRequestsErrorSet", 
            locationName = "unsuccessfulFleetRequestSet", type = "list")), 
        shape = "CancelSpotFleetRequestsResponse", type = "structure")
    return(populate(args, shape))
}

cancel_spot_instance_requests_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), SpotInstanceRequestIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "SpotInstanceRequestId", 
        type = "string")), shape = "SpotInstanceRequestIdList", 
        locationName = "SpotInstanceRequestId", type = "list")), 
        shape = "CancelSpotInstanceRequestsRequest", type = "structure")
    return(populate(args, shape))
}

cancel_spot_instance_requests_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CancelledSpotInstanceRequests = structure(list(structure(list(SpotInstanceRequestId = structure(logical(0), 
        shape = "String", locationName = "spotInstanceRequestId", 
        type = "string"), State = structure(logical(0), shape = "CancelSpotInstanceRequestState", 
        locationName = "state", type = "string")), shape = "CancelledSpotInstanceRequest", 
        locationName = "item", type = "structure")), shape = "CancelledSpotInstanceRequestList", 
        locationName = "spotInstanceRequestSet", type = "list")), 
        shape = "CancelSpotInstanceRequestsResult", type = "structure")
    return(populate(args, shape))
}

confirm_product_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string"), ProductCode = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "ConfirmProductInstanceRequest", type = "structure")
    return(populate(args, shape))
}

confirm_product_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerId = structure(logical(0), shape = "String", 
        locationName = "ownerId", type = "string"), Return = structure(logical(0), 
        shape = "Boolean", locationName = "return", type = "boolean")), 
        shape = "ConfirmProductInstanceResult", type = "structure")
    return(populate(args, shape))
}

copy_fpga_image_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), SourceFpgaImageId = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), SourceRegion = structure(logical(0), 
        shape = "String", type = "string"), ClientToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "CopyFpgaImageRequest", 
        type = "structure")
    return(populate(args, shape))
}

copy_fpga_image_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FpgaImageId = structure(logical(0), 
        shape = "String", locationName = "fpgaImageId", type = "string")), 
        shape = "CopyFpgaImageResult", type = "structure")
    return(populate(args, shape))
}

copy_image_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientToken = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), Encrypted = structure(logical(0), 
        shape = "Boolean", locationName = "encrypted", type = "boolean"), 
        KmsKeyId = structure(logical(0), shape = "String", locationName = "kmsKeyId", 
            type = "string"), Name = structure(logical(0), shape = "String", 
            type = "string"), SourceImageId = structure(logical(0), 
            shape = "String", type = "string"), SourceRegion = structure(logical(0), 
            shape = "String", type = "string"), DryRun = structure(logical(0), 
            shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "CopyImageRequest", type = "structure")
    return(populate(args, shape))
}

copy_image_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImageId = structure(logical(0), shape = "String", 
        locationName = "imageId", type = "string")), shape = "CopyImageResult", 
        type = "structure")
    return(populate(args, shape))
}

copy_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Description = structure(logical(0), 
        shape = "String", type = "string"), DestinationRegion = structure(logical(0), 
        shape = "String", locationName = "destinationRegion", 
        type = "string"), Encrypted = structure(logical(0), shape = "Boolean", 
        locationName = "encrypted", type = "boolean"), KmsKeyId = structure(logical(0), 
        shape = "String", locationName = "kmsKeyId", type = "string"), 
        PresignedUrl = structure(logical(0), shape = "String", 
            locationName = "presignedUrl", type = "string"), 
        SourceRegion = structure(logical(0), shape = "String", 
            type = "string"), SourceSnapshotId = structure(logical(0), 
            shape = "String", type = "string"), DryRun = structure(logical(0), 
            shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "CopySnapshotRequest", type = "structure")
    return(populate(args, shape))
}

copy_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotId = structure(logical(0), 
        shape = "String", locationName = "snapshotId", type = "string")), 
        shape = "CopySnapshotResult", type = "structure")
    return(populate(args, shape))
}

create_customer_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BgpAsn = structure(logical(0), shape = "Integer", 
        type = "integer"), PublicIp = structure(logical(0), shape = "String", 
        locationName = "IpAddress", type = "string"), Type = structure(logical(0), 
        shape = "GatewayType", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "CreateCustomerGatewayRequest", type = "structure")
    return(populate(args, shape))
}

create_customer_gateway_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CustomerGateway = structure(list(BgpAsn = structure(logical(0), 
        shape = "String", locationName = "bgpAsn", type = "string"), 
        CustomerGatewayId = structure(logical(0), shape = "String", 
            locationName = "customerGatewayId", type = "string"), 
        IpAddress = structure(logical(0), shape = "String", locationName = "ipAddress", 
            type = "string"), State = structure(logical(0), shape = "String", 
            locationName = "state", type = "string"), Type = structure(logical(0), 
            shape = "String", locationName = "type", type = "string"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "CustomerGateway", locationName = "customerGateway", 
        type = "structure")), shape = "CreateCustomerGatewayResult", 
        type = "structure")
    return(populate(args, shape))
}

create_default_subnet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "CreateDefaultSubnetRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_default_subnet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Subnet = structure(list(AvailabilityZone = structure(logical(0), 
        shape = "String", locationName = "availabilityZone", 
        type = "string"), AvailableIpAddressCount = structure(logical(0), 
        shape = "Integer", locationName = "availableIpAddressCount", 
        type = "integer"), CidrBlock = structure(logical(0), 
        shape = "String", locationName = "cidrBlock", type = "string"), 
        DefaultForAz = structure(logical(0), shape = "Boolean", 
            locationName = "defaultForAz", type = "boolean"), 
        MapPublicIpOnLaunch = structure(logical(0), shape = "Boolean", 
            locationName = "mapPublicIpOnLaunch", type = "boolean"), 
        State = structure(logical(0), shape = "SubnetState", 
            locationName = "state", type = "string"), SubnetId = structure(logical(0), 
            shape = "String", locationName = "subnetId", type = "string"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string"), AssignIpv6AddressOnCreation = structure(logical(0), 
            shape = "Boolean", locationName = "assignIpv6AddressOnCreation", 
            type = "boolean"), Ipv6CidrBlockAssociationSet = structure(list(structure(list(AssociationId = structure(logical(0), 
            shape = "String", locationName = "associationId", 
            type = "string"), Ipv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "ipv6CidrBlock", 
            type = "string"), Ipv6CidrBlockState = structure(list(State = structure(logical(0), 
            shape = "SubnetCidrBlockStateCode", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "SubnetCidrBlockState", 
            locationName = "ipv6CidrBlockState", type = "structure")), 
            shape = "SubnetIpv6CidrBlockAssociation", locationName = "item", 
            type = "structure")), shape = "SubnetIpv6CidrBlockAssociationSet", 
            locationName = "ipv6CidrBlockAssociationSet", type = "list"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "Subnet", locationName = "subnet", 
        type = "structure")), shape = "CreateDefaultSubnetResult", 
        type = "structure")
    return(populate(args, shape))
}

create_default_vpc_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean")), shape = "CreateDefaultVpcRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_default_vpc_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Vpc = structure(list(CidrBlock = structure(logical(0), 
        shape = "String", locationName = "cidrBlock", type = "string"), 
        DhcpOptionsId = structure(logical(0), shape = "String", 
            locationName = "dhcpOptionsId", type = "string"), 
        State = structure(logical(0), shape = "VpcState", locationName = "state", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string"), InstanceTenancy = structure(logical(0), 
            shape = "Tenancy", locationName = "instanceTenancy", 
            type = "string"), Ipv6CidrBlockAssociationSet = structure(list(structure(list(AssociationId = structure(logical(0), 
            shape = "String", locationName = "associationId", 
            type = "string"), Ipv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "ipv6CidrBlock", 
            type = "string"), Ipv6CidrBlockState = structure(list(State = structure(logical(0), 
            shape = "VpcCidrBlockStateCode", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "VpcCidrBlockState", locationName = "ipv6CidrBlockState", 
            type = "structure")), shape = "VpcIpv6CidrBlockAssociation", 
            locationName = "item", type = "structure")), shape = "VpcIpv6CidrBlockAssociationSet", 
            locationName = "ipv6CidrBlockAssociationSet", type = "list"), 
        CidrBlockAssociationSet = structure(list(structure(list(AssociationId = structure(logical(0), 
            shape = "String", locationName = "associationId", 
            type = "string"), CidrBlock = structure(logical(0), 
            shape = "String", locationName = "cidrBlock", type = "string"), 
            CidrBlockState = structure(list(State = structure(logical(0), 
                shape = "VpcCidrBlockStateCode", locationName = "state", 
                type = "string"), StatusMessage = structure(logical(0), 
                shape = "String", locationName = "statusMessage", 
                type = "string")), shape = "VpcCidrBlockState", 
                locationName = "cidrBlockState", type = "structure")), 
            shape = "VpcCidrBlockAssociation", locationName = "item", 
            type = "structure")), shape = "VpcCidrBlockAssociationSet", 
            locationName = "cidrBlockAssociationSet", type = "list"), 
        IsDefault = structure(logical(0), shape = "Boolean", 
            locationName = "isDefault", type = "boolean"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "Vpc", locationName = "vpc", 
        type = "structure")), shape = "CreateDefaultVpcResult", 
        type = "structure")
    return(populate(args, shape))
}

create_dhcp_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DhcpConfigurations = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", locationName = "key", type = "string"), 
        Values = structure(list(structure(logical(0), shape = "String", 
            locationName = "item", type = "string")), shape = "ValueStringList", 
            locationName = "Value", type = "list")), shape = "NewDhcpConfiguration", 
        locationName = "item", type = "structure")), shape = "NewDhcpConfigurationList", 
        locationName = "dhcpConfiguration", type = "list"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "CreateDhcpOptionsRequest", type = "structure")
    return(populate(args, shape))
}

create_dhcp_options_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DhcpOptions = structure(list(DhcpConfigurations = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", locationName = "key", type = "string"), 
        Values = structure(list(structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "item", 
            type = "structure")), shape = "DhcpConfigurationValueList", 
            locationName = "valueSet", type = "list")), shape = "DhcpConfiguration", 
        locationName = "item", type = "structure")), shape = "DhcpConfigurationList", 
        locationName = "dhcpConfigurationSet", type = "list"), 
        DhcpOptionsId = structure(logical(0), shape = "String", 
            locationName = "dhcpOptionsId", type = "string"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "DhcpOptions", locationName = "dhcpOptions", 
        type = "structure")), shape = "CreateDhcpOptionsResult", 
        type = "structure")
    return(populate(args, shape))
}

create_egress_only_internet_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientToken = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", type = "boolean"), VpcId = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateEgressOnlyInternetGatewayRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_egress_only_internet_gateway_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientToken = structure(logical(0), 
        shape = "String", locationName = "clientToken", type = "string"), 
        EgressOnlyInternetGateway = structure(list(Attachments = structure(list(structure(list(State = structure(logical(0), 
            shape = "AttachmentStatus", locationName = "state", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string")), shape = "InternetGatewayAttachment", 
            locationName = "item", type = "structure")), shape = "InternetGatewayAttachmentList", 
            locationName = "attachmentSet", type = "list"), EgressOnlyInternetGatewayId = structure(logical(0), 
            shape = "EgressOnlyInternetGatewayId", locationName = "egressOnlyInternetGatewayId", 
            type = "string")), shape = "EgressOnlyInternetGateway", 
            locationName = "egressOnlyInternetGateway", type = "structure")), 
        shape = "CreateEgressOnlyInternetGatewayResult", type = "structure")
    return(populate(args, shape))
}

create_fleet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ClientToken = structure(logical(0), 
        shape = "String", type = "string"), SpotOptions = structure(list(AllocationStrategy = structure(logical(0), 
        shape = "SpotAllocationStrategy", type = "string"), InstanceInterruptionBehavior = structure(logical(0), 
        shape = "SpotInstanceInterruptionBehavior", type = "string"), 
        InstancePoolsToUseCount = structure(logical(0), shape = "Integer", 
            type = "integer")), shape = "SpotOptionsRequest", 
        type = "structure"), OnDemandOptions = structure(list(AllocationStrategy = structure(logical(0), 
        shape = "FleetOnDemandAllocationStrategy", type = "string")), 
        shape = "OnDemandOptionsRequest", type = "structure"), 
        ExcessCapacityTerminationPolicy = structure(logical(0), 
            shape = "FleetExcessCapacityTerminationPolicy", type = "string"), 
        LaunchTemplateConfigs = structure(list(structure(list(LaunchTemplateSpecification = structure(list(LaunchTemplateId = structure(logical(0), 
            shape = "String", type = "string"), LaunchTemplateName = structure(logical(0), 
            shape = "LaunchTemplateName", type = "string", max = 128L, 
            min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), 
            Version = structure(logical(0), shape = "String", 
                type = "string")), shape = "FleetLaunchTemplateSpecificationRequest", 
            type = "structure"), Overrides = structure(list(structure(list(InstanceType = structure(logical(0), 
            shape = "InstanceType", type = "string"), MaxPrice = structure(logical(0), 
            shape = "String", type = "string"), SubnetId = structure(logical(0), 
            shape = "String", type = "string"), AvailabilityZone = structure(logical(0), 
            shape = "String", type = "string"), WeightedCapacity = structure(logical(0), 
            shape = "Double", type = "double"), Priority = structure(logical(0), 
            shape = "Double", type = "double")), shape = "FleetLaunchTemplateOverridesRequest", 
            locationName = "item", type = "structure")), shape = "FleetLaunchTemplateOverridesListRequest", 
            type = "list", max = 50L)), shape = "FleetLaunchTemplateConfigRequest", 
            locationName = "item", type = "structure")), shape = "FleetLaunchTemplateConfigListRequest", 
            type = "list", max = 50L), TargetCapacitySpecification = structure(list(TotalTargetCapacity = structure(logical(0), 
            shape = "Integer", type = "integer"), OnDemandTargetCapacity = structure(logical(0), 
            shape = "Integer", type = "integer"), SpotTargetCapacity = structure(logical(0), 
            shape = "Integer", type = "integer"), DefaultTargetCapacityType = structure(logical(0), 
            shape = "DefaultTargetCapacityType", type = "string")), 
            shape = "TargetCapacitySpecificationRequest", type = "structure"), 
        TerminateInstancesWithExpiration = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Type = structure(logical(0), 
            shape = "FleetType", type = "string"), ValidFrom = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), ValidUntil = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), ReplaceUnhealthyInstances = structure(logical(0), 
            shape = "Boolean", type = "boolean"), TagSpecifications = structure(list(structure(list(ResourceType = structure(logical(0), 
            shape = "ResourceType", locationName = "resourceType", 
            type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "Tag", 
            type = "list")), shape = "TagSpecification", locationName = "item", 
            type = "structure")), shape = "TagSpecificationList", 
            locationName = "TagSpecification", type = "list")), 
        shape = "CreateFleetRequest", type = "structure")
    return(populate(args, shape))
}

create_fleet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FleetId = structure(logical(0), shape = "FleetIdentifier", 
        locationName = "fleetId", type = "string")), shape = "CreateFleetResult", 
        type = "structure")
    return(populate(args, shape))
}

create_flow_logs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ClientToken = structure(logical(0), 
        shape = "String", type = "string"), DeliverLogsPermissionArn = structure(logical(0), 
        shape = "String", type = "string"), LogGroupName = structure(logical(0), 
        shape = "String", type = "string"), ResourceIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "ResourceId", 
        type = "list"), ResourceType = structure(logical(0), 
        shape = "FlowLogsResourceType", type = "string"), TrafficType = structure(logical(0), 
        shape = "TrafficType", type = "string"), LogDestinationType = structure(logical(0), 
        shape = "LogDestinationType", type = "string"), LogDestination = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateFlowLogsRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_flow_logs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientToken = structure(logical(0), 
        shape = "String", locationName = "clientToken", type = "string"), 
        FlowLogIds = structure(list(structure(logical(0), shape = "String", 
            locationName = "item", type = "string")), shape = "ValueStringList", 
            locationName = "flowLogIdSet", type = "list"), Unsuccessful = structure(list(structure(list(Error = structure(list(Code = structure(logical(0), 
            shape = "String", locationName = "code", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                locationName = "message", type = "string")), 
            shape = "UnsuccessfulItemError", locationName = "error", 
            type = "structure"), ResourceId = structure(logical(0), 
            shape = "String", locationName = "resourceId", type = "string")), 
            shape = "UnsuccessfulItem", locationName = "item", 
            type = "structure")), shape = "UnsuccessfulItemSet", 
            locationName = "unsuccessful", type = "list")), shape = "CreateFlowLogsResult", 
        type = "structure")
    return(populate(args, shape))
}

create_fpga_image_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), InputStorageLocation = structure(list(Bucket = structure(logical(0), 
        shape = "String", type = "string"), Key = structure(logical(0), 
        shape = "String", type = "string")), shape = "StorageLocation", 
        type = "structure"), LogsStorageLocation = structure(list(Bucket = structure(logical(0), 
        shape = "String", type = "string"), Key = structure(logical(0), 
        shape = "String", type = "string")), shape = "StorageLocation", 
        type = "structure"), Description = structure(logical(0), 
        shape = "String", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string"), ClientToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateFpgaImageRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_fpga_image_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FpgaImageId = structure(logical(0), 
        shape = "String", locationName = "fpgaImageId", type = "string"), 
        FpgaImageGlobalId = structure(logical(0), shape = "String", 
            locationName = "fpgaImageGlobalId", type = "string")), 
        shape = "CreateFpgaImageResult", type = "structure")
    return(populate(args, shape))
}

create_image_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
        shape = "String", locationName = "deviceName", type = "string"), 
        VirtualName = structure(logical(0), shape = "String", 
            locationName = "virtualName", type = "string"), Ebs = structure(list(DeleteOnTermination = structure(logical(0), 
            shape = "Boolean", locationName = "deleteOnTermination", 
            type = "boolean"), Iops = structure(logical(0), shape = "Integer", 
            locationName = "iops", type = "integer"), SnapshotId = structure(logical(0), 
            shape = "String", locationName = "snapshotId", type = "string"), 
            VolumeSize = structure(logical(0), shape = "Integer", 
                locationName = "volumeSize", type = "integer"), 
            VolumeType = structure(logical(0), shape = "VolumeType", 
                locationName = "volumeType", type = "string"), 
            Encrypted = structure(logical(0), shape = "Boolean", 
                locationName = "encrypted", type = "boolean"), 
            KmsKeyId = structure(logical(0), shape = "String", 
                type = "string")), shape = "EbsBlockDevice", 
            locationName = "ebs", type = "structure"), NoDevice = structure(logical(0), 
            shape = "String", locationName = "noDevice", type = "string")), 
        shape = "BlockDeviceMapping", locationName = "BlockDeviceMapping", 
        type = "structure")), shape = "BlockDeviceMappingRequestList", 
        locationName = "blockDeviceMapping", type = "list"), 
        Description = structure(logical(0), shape = "String", 
            locationName = "description", type = "string"), DryRun = structure(logical(0), 
            shape = "Boolean", locationName = "dryRun", type = "boolean"), 
        InstanceId = structure(logical(0), shape = "String", 
            locationName = "instanceId", type = "string"), Name = structure(logical(0), 
            shape = "String", locationName = "name", type = "string"), 
        NoReboot = structure(logical(0), shape = "Boolean", locationName = "noReboot", 
            type = "boolean")), shape = "CreateImageRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_image_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImageId = structure(logical(0), shape = "String", 
        locationName = "imageId", type = "string")), shape = "CreateImageResult", 
        type = "structure")
    return(populate(args, shape))
}

create_instance_export_task_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Description = structure(logical(0), 
        shape = "String", locationName = "description", type = "string"), 
        ExportToS3Task = structure(list(ContainerFormat = structure(logical(0), 
            shape = "ContainerFormat", locationName = "containerFormat", 
            type = "string"), DiskImageFormat = structure(logical(0), 
            shape = "DiskImageFormat", locationName = "diskImageFormat", 
            type = "string"), S3Bucket = structure(logical(0), 
            shape = "String", locationName = "s3Bucket", type = "string"), 
            S3Prefix = structure(logical(0), shape = "String", 
                locationName = "s3Prefix", type = "string")), 
            shape = "ExportToS3TaskSpecification", locationName = "exportToS3", 
            type = "structure"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
        TargetEnvironment = structure(logical(0), shape = "ExportEnvironment", 
            locationName = "targetEnvironment", type = "string")), 
        shape = "CreateInstanceExportTaskRequest", type = "structure")
    return(populate(args, shape))
}

create_instance_export_task_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportTask = structure(list(Description = structure(logical(0), 
        shape = "String", locationName = "description", type = "string"), 
        ExportTaskId = structure(logical(0), shape = "String", 
            locationName = "exportTaskId", type = "string"), 
        ExportToS3Task = structure(list(ContainerFormat = structure(logical(0), 
            shape = "ContainerFormat", locationName = "containerFormat", 
            type = "string"), DiskImageFormat = structure(logical(0), 
            shape = "DiskImageFormat", locationName = "diskImageFormat", 
            type = "string"), S3Bucket = structure(logical(0), 
            shape = "String", locationName = "s3Bucket", type = "string"), 
            S3Key = structure(logical(0), shape = "String", locationName = "s3Key", 
                type = "string")), shape = "ExportToS3Task", 
            locationName = "exportToS3", type = "structure"), 
        InstanceExportDetails = structure(list(InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
            TargetEnvironment = structure(logical(0), shape = "ExportEnvironment", 
                locationName = "targetEnvironment", type = "string")), 
            shape = "InstanceExportDetails", locationName = "instanceExport", 
            type = "structure"), State = structure(logical(0), 
            shape = "ExportTaskState", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "ExportTask", locationName = "exportTask", 
        type = "structure")), shape = "CreateInstanceExportTaskResult", 
        type = "structure")
    return(populate(args, shape))
}

create_internet_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "CreateInternetGatewayRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_internet_gateway_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InternetGateway = structure(list(Attachments = structure(list(structure(list(State = structure(logical(0), 
        shape = "AttachmentStatus", locationName = "state", type = "string"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string")), shape = "InternetGatewayAttachment", 
        locationName = "item", type = "structure")), shape = "InternetGatewayAttachmentList", 
        locationName = "attachmentSet", type = "list"), InternetGatewayId = structure(logical(0), 
        shape = "String", locationName = "internetGatewayId", 
        type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", locationName = "key", type = "string"), 
        Value = structure(logical(0), shape = "String", locationName = "value", 
            type = "string")), shape = "Tag", locationName = "item", 
        type = "structure")), shape = "TagList", locationName = "tagSet", 
        type = "list")), shape = "InternetGateway", locationName = "internetGateway", 
        type = "structure")), shape = "CreateInternetGatewayResult", 
        type = "structure")
    return(populate(args, shape))
}

create_key_pair_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyName = structure(logical(0), shape = "String", 
        type = "string"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "CreateKeyPairRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_key_pair_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyFingerprint = structure(logical(0), 
        shape = "String", locationName = "keyFingerprint", type = "string"), 
        KeyMaterial = structure(logical(0), shape = "String", 
            locationName = "keyMaterial", type = "string"), KeyName = structure(logical(0), 
            shape = "String", locationName = "keyName", type = "string")), 
        shape = "KeyPair", type = "structure")
    return(populate(args, shape))
}

create_launch_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ClientToken = structure(logical(0), 
        shape = "String", type = "string"), LaunchTemplateName = structure(logical(0), 
        shape = "LaunchTemplateName", type = "string", max = 128L, 
        min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), VersionDescription = structure(logical(0), 
        shape = "VersionDescription", type = "string", max = 255L), 
        LaunchTemplateData = structure(list(KernelId = structure(logical(0), 
            shape = "String", type = "string"), EbsOptimized = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IamInstanceProfile = structure(list(Arn = structure(logical(0), 
            shape = "String", type = "string"), Name = structure(logical(0), 
            shape = "String", type = "string")), shape = "LaunchTemplateIamInstanceProfileSpecificationRequest", 
            type = "structure"), BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
            shape = "String", type = "string"), VirtualName = structure(logical(0), 
            shape = "String", type = "string"), Ebs = structure(list(Encrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DeleteOnTermination = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Iops = structure(logical(0), 
            shape = "Integer", type = "integer"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), SnapshotId = structure(logical(0), 
            shape = "String", type = "string"), VolumeSize = structure(logical(0), 
            shape = "Integer", type = "integer"), VolumeType = structure(logical(0), 
            shape = "VolumeType", type = "string")), shape = "LaunchTemplateEbsBlockDeviceRequest", 
            type = "structure"), NoDevice = structure(logical(0), 
            shape = "String", type = "string")), shape = "LaunchTemplateBlockDeviceMappingRequest", 
            locationName = "BlockDeviceMapping", type = "structure")), 
            shape = "LaunchTemplateBlockDeviceMappingRequestList", 
            locationName = "BlockDeviceMapping", type = "list"), 
            NetworkInterfaces = structure(list(structure(list(AssociatePublicIpAddress = structure(logical(0), 
                shape = "Boolean", type = "boolean"), DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", type = "boolean"), Description = structure(logical(0), 
                shape = "String", type = "string"), DeviceIndex = structure(logical(0), 
                shape = "Integer", type = "integer"), Groups = structure(list(structure(logical(0), 
                shape = "String", locationName = "SecurityGroupId", 
                type = "string")), shape = "SecurityGroupIdStringList", 
                locationName = "SecurityGroupId", type = "list"), 
                Ipv6AddressCount = structure(logical(0), shape = "Integer", 
                  type = "integer"), Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
                  shape = "String", type = "string")), shape = "InstanceIpv6AddressRequest", 
                  locationName = "InstanceIpv6Address", type = "structure")), 
                  shape = "InstanceIpv6AddressListRequest", type = "list"), 
                NetworkInterfaceId = structure(logical(0), shape = "String", 
                  type = "string"), PrivateIpAddress = structure(logical(0), 
                  shape = "String", type = "string"), PrivateIpAddresses = structure(list(structure(list(Primary = structure(logical(0), 
                  shape = "Boolean", locationName = "primary", 
                  type = "boolean"), PrivateIpAddress = structure(logical(0), 
                  shape = "String", locationName = "privateIpAddress", 
                  type = "string")), shape = "PrivateIpAddressSpecification", 
                  locationName = "item", type = "structure")), 
                  shape = "PrivateIpAddressSpecificationList", 
                  type = "list"), SecondaryPrivateIpAddressCount = structure(logical(0), 
                  shape = "Integer", type = "integer"), SubnetId = structure(logical(0), 
                  shape = "String", type = "string")), shape = "LaunchTemplateInstanceNetworkInterfaceSpecificationRequest", 
                locationName = "InstanceNetworkInterfaceSpecification", 
                type = "structure")), shape = "LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList", 
                locationName = "NetworkInterface", type = "list"), 
            ImageId = structure(logical(0), shape = "String", 
                type = "string"), InstanceType = structure(logical(0), 
                shape = "InstanceType", type = "string"), KeyName = structure(logical(0), 
                shape = "String", type = "string"), Monitoring = structure(list(Enabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "LaunchTemplatesMonitoringRequest", 
                type = "structure"), Placement = structure(list(AvailabilityZone = structure(logical(0), 
                shape = "String", type = "string"), Affinity = structure(logical(0), 
                shape = "String", type = "string"), GroupName = structure(logical(0), 
                shape = "String", type = "string"), HostId = structure(logical(0), 
                shape = "String", type = "string"), Tenancy = structure(logical(0), 
                shape = "Tenancy", type = "string"), SpreadDomain = structure(logical(0), 
                shape = "String", type = "string")), shape = "LaunchTemplatePlacementRequest", 
                type = "structure"), RamDiskId = structure(logical(0), 
                shape = "String", type = "string"), DisableApiTermination = structure(logical(0), 
                shape = "Boolean", type = "boolean"), InstanceInitiatedShutdownBehavior = structure(logical(0), 
                shape = "ShutdownBehavior", type = "string"), 
            UserData = structure(logical(0), shape = "String", 
                type = "string"), TagSpecifications = structure(list(structure(list(ResourceType = structure(logical(0), 
                shape = "ResourceType", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
                shape = "String", locationName = "key", type = "string"), 
                Value = structure(logical(0), shape = "String", 
                  locationName = "value", type = "string")), 
                shape = "Tag", locationName = "item", type = "structure")), 
                shape = "TagList", locationName = "Tag", type = "list")), 
                shape = "LaunchTemplateTagSpecificationRequest", 
                locationName = "LaunchTemplateTagSpecificationRequest", 
                type = "structure")), shape = "LaunchTemplateTagSpecificationRequestList", 
                locationName = "TagSpecification", type = "list"), 
            ElasticGpuSpecifications = structure(list(structure(list(Type = structure(logical(0), 
                shape = "String", type = "string")), shape = "ElasticGpuSpecification", 
                locationName = "ElasticGpuSpecification", type = "structure")), 
                shape = "ElasticGpuSpecificationList", locationName = "ElasticGpuSpecification", 
                type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
                shape = "String", locationName = "SecurityGroupId", 
                type = "string")), shape = "SecurityGroupIdStringList", 
                locationName = "SecurityGroupId", type = "list"), 
            SecurityGroups = structure(list(structure(logical(0), 
                shape = "String", locationName = "SecurityGroup", 
                type = "string")), shape = "SecurityGroupStringList", 
                locationName = "SecurityGroup", type = "list"), 
            InstanceMarketOptions = structure(list(MarketType = structure(logical(0), 
                shape = "MarketType", type = "string"), SpotOptions = structure(list(MaxPrice = structure(logical(0), 
                shape = "String", type = "string"), SpotInstanceType = structure(logical(0), 
                shape = "SpotInstanceType", type = "string"), 
                BlockDurationMinutes = structure(logical(0), 
                  shape = "Integer", type = "integer"), ValidUntil = structure(logical(0), 
                  shape = "DateTime", type = "timestamp"), InstanceInterruptionBehavior = structure(logical(0), 
                  shape = "InstanceInterruptionBehavior", type = "string")), 
                shape = "LaunchTemplateSpotMarketOptionsRequest", 
                type = "structure")), shape = "LaunchTemplateInstanceMarketOptionsRequest", 
                type = "structure"), CreditSpecification = structure(list(CpuCredits = structure(logical(0), 
                shape = "String", type = "string")), shape = "CreditSpecificationRequest", 
                type = "structure"), CpuOptions = structure(list(CoreCount = structure(logical(0), 
                shape = "Integer", type = "integer"), ThreadsPerCore = structure(logical(0), 
                shape = "Integer", type = "integer")), shape = "LaunchTemplateCpuOptionsRequest", 
                type = "structure")), shape = "RequestLaunchTemplateData", 
            type = "structure")), shape = "CreateLaunchTemplateRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_launch_template_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LaunchTemplate = structure(list(LaunchTemplateId = structure(logical(0), 
        shape = "String", locationName = "launchTemplateId", 
        type = "string"), LaunchTemplateName = structure(logical(0), 
        shape = "LaunchTemplateName", locationName = "launchTemplateName", 
        type = "string", max = 128L, min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), 
        CreateTime = structure(logical(0), shape = "DateTime", 
            locationName = "createTime", type = "timestamp"), 
        CreatedBy = structure(logical(0), shape = "String", locationName = "createdBy", 
            type = "string"), DefaultVersionNumber = structure(logical(0), 
            shape = "Long", locationName = "defaultVersionNumber", 
            type = "long"), LatestVersionNumber = structure(logical(0), 
            shape = "Long", locationName = "latestVersionNumber", 
            type = "long"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "LaunchTemplate", locationName = "launchTemplate", 
        type = "structure")), shape = "CreateLaunchTemplateResult", 
        type = "structure")
    return(populate(args, shape))
}

create_launch_template_version_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ClientToken = structure(logical(0), 
        shape = "String", type = "string"), LaunchTemplateId = structure(logical(0), 
        shape = "String", type = "string"), LaunchTemplateName = structure(logical(0), 
        shape = "LaunchTemplateName", type = "string", max = 128L, 
        min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), SourceVersion = structure(logical(0), 
        shape = "String", type = "string"), VersionDescription = structure(logical(0), 
        shape = "VersionDescription", type = "string", max = 255L), 
        LaunchTemplateData = structure(list(KernelId = structure(logical(0), 
            shape = "String", type = "string"), EbsOptimized = structure(logical(0), 
            shape = "Boolean", type = "boolean"), IamInstanceProfile = structure(list(Arn = structure(logical(0), 
            shape = "String", type = "string"), Name = structure(logical(0), 
            shape = "String", type = "string")), shape = "LaunchTemplateIamInstanceProfileSpecificationRequest", 
            type = "structure"), BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
            shape = "String", type = "string"), VirtualName = structure(logical(0), 
            shape = "String", type = "string"), Ebs = structure(list(Encrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), DeleteOnTermination = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Iops = structure(logical(0), 
            shape = "Integer", type = "integer"), KmsKeyId = structure(logical(0), 
            shape = "String", type = "string"), SnapshotId = structure(logical(0), 
            shape = "String", type = "string"), VolumeSize = structure(logical(0), 
            shape = "Integer", type = "integer"), VolumeType = structure(logical(0), 
            shape = "VolumeType", type = "string")), shape = "LaunchTemplateEbsBlockDeviceRequest", 
            type = "structure"), NoDevice = structure(logical(0), 
            shape = "String", type = "string")), shape = "LaunchTemplateBlockDeviceMappingRequest", 
            locationName = "BlockDeviceMapping", type = "structure")), 
            shape = "LaunchTemplateBlockDeviceMappingRequestList", 
            locationName = "BlockDeviceMapping", type = "list"), 
            NetworkInterfaces = structure(list(structure(list(AssociatePublicIpAddress = structure(logical(0), 
                shape = "Boolean", type = "boolean"), DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", type = "boolean"), Description = structure(logical(0), 
                shape = "String", type = "string"), DeviceIndex = structure(logical(0), 
                shape = "Integer", type = "integer"), Groups = structure(list(structure(logical(0), 
                shape = "String", locationName = "SecurityGroupId", 
                type = "string")), shape = "SecurityGroupIdStringList", 
                locationName = "SecurityGroupId", type = "list"), 
                Ipv6AddressCount = structure(logical(0), shape = "Integer", 
                  type = "integer"), Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
                  shape = "String", type = "string")), shape = "InstanceIpv6AddressRequest", 
                  locationName = "InstanceIpv6Address", type = "structure")), 
                  shape = "InstanceIpv6AddressListRequest", type = "list"), 
                NetworkInterfaceId = structure(logical(0), shape = "String", 
                  type = "string"), PrivateIpAddress = structure(logical(0), 
                  shape = "String", type = "string"), PrivateIpAddresses = structure(list(structure(list(Primary = structure(logical(0), 
                  shape = "Boolean", locationName = "primary", 
                  type = "boolean"), PrivateIpAddress = structure(logical(0), 
                  shape = "String", locationName = "privateIpAddress", 
                  type = "string")), shape = "PrivateIpAddressSpecification", 
                  locationName = "item", type = "structure")), 
                  shape = "PrivateIpAddressSpecificationList", 
                  type = "list"), SecondaryPrivateIpAddressCount = structure(logical(0), 
                  shape = "Integer", type = "integer"), SubnetId = structure(logical(0), 
                  shape = "String", type = "string")), shape = "LaunchTemplateInstanceNetworkInterfaceSpecificationRequest", 
                locationName = "InstanceNetworkInterfaceSpecification", 
                type = "structure")), shape = "LaunchTemplateInstanceNetworkInterfaceSpecificationRequestList", 
                locationName = "NetworkInterface", type = "list"), 
            ImageId = structure(logical(0), shape = "String", 
                type = "string"), InstanceType = structure(logical(0), 
                shape = "InstanceType", type = "string"), KeyName = structure(logical(0), 
                shape = "String", type = "string"), Monitoring = structure(list(Enabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "LaunchTemplatesMonitoringRequest", 
                type = "structure"), Placement = structure(list(AvailabilityZone = structure(logical(0), 
                shape = "String", type = "string"), Affinity = structure(logical(0), 
                shape = "String", type = "string"), GroupName = structure(logical(0), 
                shape = "String", type = "string"), HostId = structure(logical(0), 
                shape = "String", type = "string"), Tenancy = structure(logical(0), 
                shape = "Tenancy", type = "string"), SpreadDomain = structure(logical(0), 
                shape = "String", type = "string")), shape = "LaunchTemplatePlacementRequest", 
                type = "structure"), RamDiskId = structure(logical(0), 
                shape = "String", type = "string"), DisableApiTermination = structure(logical(0), 
                shape = "Boolean", type = "boolean"), InstanceInitiatedShutdownBehavior = structure(logical(0), 
                shape = "ShutdownBehavior", type = "string"), 
            UserData = structure(logical(0), shape = "String", 
                type = "string"), TagSpecifications = structure(list(structure(list(ResourceType = structure(logical(0), 
                shape = "ResourceType", type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
                shape = "String", locationName = "key", type = "string"), 
                Value = structure(logical(0), shape = "String", 
                  locationName = "value", type = "string")), 
                shape = "Tag", locationName = "item", type = "structure")), 
                shape = "TagList", locationName = "Tag", type = "list")), 
                shape = "LaunchTemplateTagSpecificationRequest", 
                locationName = "LaunchTemplateTagSpecificationRequest", 
                type = "structure")), shape = "LaunchTemplateTagSpecificationRequestList", 
                locationName = "TagSpecification", type = "list"), 
            ElasticGpuSpecifications = structure(list(structure(list(Type = structure(logical(0), 
                shape = "String", type = "string")), shape = "ElasticGpuSpecification", 
                locationName = "ElasticGpuSpecification", type = "structure")), 
                shape = "ElasticGpuSpecificationList", locationName = "ElasticGpuSpecification", 
                type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
                shape = "String", locationName = "SecurityGroupId", 
                type = "string")), shape = "SecurityGroupIdStringList", 
                locationName = "SecurityGroupId", type = "list"), 
            SecurityGroups = structure(list(structure(logical(0), 
                shape = "String", locationName = "SecurityGroup", 
                type = "string")), shape = "SecurityGroupStringList", 
                locationName = "SecurityGroup", type = "list"), 
            InstanceMarketOptions = structure(list(MarketType = structure(logical(0), 
                shape = "MarketType", type = "string"), SpotOptions = structure(list(MaxPrice = structure(logical(0), 
                shape = "String", type = "string"), SpotInstanceType = structure(logical(0), 
                shape = "SpotInstanceType", type = "string"), 
                BlockDurationMinutes = structure(logical(0), 
                  shape = "Integer", type = "integer"), ValidUntil = structure(logical(0), 
                  shape = "DateTime", type = "timestamp"), InstanceInterruptionBehavior = structure(logical(0), 
                  shape = "InstanceInterruptionBehavior", type = "string")), 
                shape = "LaunchTemplateSpotMarketOptionsRequest", 
                type = "structure")), shape = "LaunchTemplateInstanceMarketOptionsRequest", 
                type = "structure"), CreditSpecification = structure(list(CpuCredits = structure(logical(0), 
                shape = "String", type = "string")), shape = "CreditSpecificationRequest", 
                type = "structure"), CpuOptions = structure(list(CoreCount = structure(logical(0), 
                shape = "Integer", type = "integer"), ThreadsPerCore = structure(logical(0), 
                shape = "Integer", type = "integer")), shape = "LaunchTemplateCpuOptionsRequest", 
                type = "structure")), shape = "RequestLaunchTemplateData", 
            type = "structure")), shape = "CreateLaunchTemplateVersionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_launch_template_version_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LaunchTemplateVersion = structure(list(LaunchTemplateId = structure(logical(0), 
        shape = "String", locationName = "launchTemplateId", 
        type = "string"), LaunchTemplateName = structure(logical(0), 
        shape = "LaunchTemplateName", locationName = "launchTemplateName", 
        type = "string", max = 128L, min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), 
        VersionNumber = structure(logical(0), shape = "Long", 
            locationName = "versionNumber", type = "long"), VersionDescription = structure(logical(0), 
            shape = "VersionDescription", locationName = "versionDescription", 
            type = "string", max = 255L), CreateTime = structure(logical(0), 
            shape = "DateTime", locationName = "createTime", 
            type = "timestamp"), CreatedBy = structure(logical(0), 
            shape = "String", locationName = "createdBy", type = "string"), 
        DefaultVersion = structure(logical(0), shape = "Boolean", 
            locationName = "defaultVersion", type = "boolean"), 
        LaunchTemplateData = structure(list(KernelId = structure(logical(0), 
            shape = "String", locationName = "kernelId", type = "string"), 
            EbsOptimized = structure(logical(0), shape = "Boolean", 
                locationName = "ebsOptimized", type = "boolean"), 
            IamInstanceProfile = structure(list(Arn = structure(logical(0), 
                shape = "String", locationName = "arn", type = "string"), 
                Name = structure(logical(0), shape = "String", 
                  locationName = "name", type = "string")), shape = "LaunchTemplateIamInstanceProfileSpecification", 
                locationName = "iamInstanceProfile", type = "structure"), 
            BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
                shape = "String", locationName = "deviceName", 
                type = "string"), VirtualName = structure(logical(0), 
                shape = "String", locationName = "virtualName", 
                type = "string"), Ebs = structure(list(Encrypted = structure(logical(0), 
                shape = "Boolean", locationName = "encrypted", 
                type = "boolean"), DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Iops = structure(logical(0), 
                shape = "Integer", locationName = "iops", type = "integer"), 
                KmsKeyId = structure(logical(0), shape = "String", 
                  locationName = "kmsKeyId", type = "string"), 
                SnapshotId = structure(logical(0), shape = "String", 
                  locationName = "snapshotId", type = "string"), 
                VolumeSize = structure(logical(0), shape = "Integer", 
                  locationName = "volumeSize", type = "integer"), 
                VolumeType = structure(logical(0), shape = "VolumeType", 
                  locationName = "volumeType", type = "string")), 
                shape = "LaunchTemplateEbsBlockDevice", locationName = "ebs", 
                type = "structure"), NoDevice = structure(logical(0), 
                shape = "String", locationName = "noDevice", 
                type = "string")), shape = "LaunchTemplateBlockDeviceMapping", 
                locationName = "item", type = "structure")), 
                shape = "LaunchTemplateBlockDeviceMappingList", 
                locationName = "blockDeviceMappingSet", type = "list"), 
            NetworkInterfaces = structure(list(structure(list(AssociatePublicIpAddress = structure(logical(0), 
                shape = "Boolean", locationName = "associatePublicIpAddress", 
                type = "boolean"), DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string"), DeviceIndex = structure(logical(0), 
                shape = "Integer", locationName = "deviceIndex", 
                type = "integer"), Groups = structure(list(structure(logical(0), 
                shape = "String", locationName = "groupId", type = "string")), 
                shape = "GroupIdStringList", locationName = "groupSet", 
                type = "list"), Ipv6AddressCount = structure(logical(0), 
                shape = "Integer", locationName = "ipv6AddressCount", 
                type = "integer"), Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
                shape = "String", locationName = "ipv6Address", 
                type = "string")), shape = "InstanceIpv6Address", 
                locationName = "item", type = "structure")), 
                shape = "InstanceIpv6AddressList", locationName = "ipv6AddressesSet", 
                type = "list"), NetworkInterfaceId = structure(logical(0), 
                shape = "String", locationName = "networkInterfaceId", 
                type = "string"), PrivateIpAddress = structure(logical(0), 
                shape = "String", locationName = "privateIpAddress", 
                type = "string"), PrivateIpAddresses = structure(list(structure(list(Primary = structure(logical(0), 
                shape = "Boolean", locationName = "primary", 
                type = "boolean"), PrivateIpAddress = structure(logical(0), 
                shape = "String", locationName = "privateIpAddress", 
                type = "string")), shape = "PrivateIpAddressSpecification", 
                locationName = "item", type = "structure")), 
                shape = "PrivateIpAddressSpecificationList", 
                locationName = "privateIpAddressesSet", type = "list"), 
                SecondaryPrivateIpAddressCount = structure(logical(0), 
                  shape = "Integer", locationName = "secondaryPrivateIpAddressCount", 
                  type = "integer"), SubnetId = structure(logical(0), 
                  shape = "String", locationName = "subnetId", 
                  type = "string")), shape = "LaunchTemplateInstanceNetworkInterfaceSpecification", 
                locationName = "item", type = "structure")), 
                shape = "LaunchTemplateInstanceNetworkInterfaceSpecificationList", 
                locationName = "networkInterfaceSet", type = "list"), 
            ImageId = structure(logical(0), shape = "String", 
                locationName = "imageId", type = "string"), InstanceType = structure(logical(0), 
                shape = "InstanceType", locationName = "instanceType", 
                type = "string"), KeyName = structure(logical(0), 
                shape = "String", locationName = "keyName", type = "string"), 
            Monitoring = structure(list(Enabled = structure(logical(0), 
                shape = "Boolean", locationName = "enabled", 
                type = "boolean")), shape = "LaunchTemplatesMonitoring", 
                locationName = "monitoring", type = "structure"), 
            Placement = structure(list(AvailabilityZone = structure(logical(0), 
                shape = "String", locationName = "availabilityZone", 
                type = "string"), Affinity = structure(logical(0), 
                shape = "String", locationName = "affinity", 
                type = "string"), GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), HostId = structure(logical(0), 
                shape = "String", locationName = "hostId", type = "string"), 
                Tenancy = structure(logical(0), shape = "Tenancy", 
                  locationName = "tenancy", type = "string"), 
                SpreadDomain = structure(logical(0), shape = "String", 
                  locationName = "spreadDomain", type = "string")), 
                shape = "LaunchTemplatePlacement", locationName = "placement", 
                type = "structure"), RamDiskId = structure(logical(0), 
                shape = "String", locationName = "ramDiskId", 
                type = "string"), DisableApiTermination = structure(logical(0), 
                shape = "Boolean", locationName = "disableApiTermination", 
                type = "boolean"), InstanceInitiatedShutdownBehavior = structure(logical(0), 
                shape = "ShutdownBehavior", locationName = "instanceInitiatedShutdownBehavior", 
                type = "string"), UserData = structure(logical(0), 
                shape = "String", locationName = "userData", 
                type = "string"), TagSpecifications = structure(list(structure(list(ResourceType = structure(logical(0), 
                shape = "ResourceType", locationName = "resourceType", 
                type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
                shape = "String", locationName = "key", type = "string"), 
                Value = structure(logical(0), shape = "String", 
                  locationName = "value", type = "string")), 
                shape = "Tag", locationName = "item", type = "structure")), 
                shape = "TagList", locationName = "tagSet", type = "list")), 
                shape = "LaunchTemplateTagSpecification", locationName = "item", 
                type = "structure")), shape = "LaunchTemplateTagSpecificationList", 
                locationName = "tagSpecificationSet", type = "list"), 
            ElasticGpuSpecifications = structure(list(structure(list(Type = structure(logical(0), 
                shape = "String", locationName = "type", type = "string")), 
                shape = "ElasticGpuSpecificationResponse", locationName = "item", 
                type = "structure")), shape = "ElasticGpuSpecificationResponseList", 
                locationName = "elasticGpuSpecificationSet", 
                type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
                shape = "String", locationName = "item", type = "string")), 
                shape = "ValueStringList", locationName = "securityGroupIdSet", 
                type = "list"), SecurityGroups = structure(list(structure(logical(0), 
                shape = "String", locationName = "item", type = "string")), 
                shape = "ValueStringList", locationName = "securityGroupSet", 
                type = "list"), InstanceMarketOptions = structure(list(MarketType = structure(logical(0), 
                shape = "MarketType", locationName = "marketType", 
                type = "string"), SpotOptions = structure(list(MaxPrice = structure(logical(0), 
                shape = "String", locationName = "maxPrice", 
                type = "string"), SpotInstanceType = structure(logical(0), 
                shape = "SpotInstanceType", locationName = "spotInstanceType", 
                type = "string"), BlockDurationMinutes = structure(logical(0), 
                shape = "Integer", locationName = "blockDurationMinutes", 
                type = "integer"), ValidUntil = structure(logical(0), 
                shape = "DateTime", locationName = "validUntil", 
                type = "timestamp"), InstanceInterruptionBehavior = structure(logical(0), 
                shape = "InstanceInterruptionBehavior", locationName = "instanceInterruptionBehavior", 
                type = "string")), shape = "LaunchTemplateSpotMarketOptions", 
                locationName = "spotOptions", type = "structure")), 
                shape = "LaunchTemplateInstanceMarketOptions", 
                locationName = "instanceMarketOptions", type = "structure"), 
            CreditSpecification = structure(list(CpuCredits = structure(logical(0), 
                shape = "String", locationName = "cpuCredits", 
                type = "string")), shape = "CreditSpecification", 
                locationName = "creditSpecification", type = "structure"), 
            CpuOptions = structure(list(CoreCount = structure(logical(0), 
                shape = "Integer", locationName = "coreCount", 
                type = "integer"), ThreadsPerCore = structure(logical(0), 
                shape = "Integer", locationName = "threadsPerCore", 
                type = "integer")), shape = "LaunchTemplateCpuOptions", 
                locationName = "cpuOptions", type = "structure")), 
            shape = "ResponseLaunchTemplateData", locationName = "launchTemplateData", 
            type = "structure")), shape = "LaunchTemplateVersion", 
        locationName = "launchTemplateVersion", type = "structure")), 
        shape = "CreateLaunchTemplateVersionResult", type = "structure")
    return(populate(args, shape))
}

create_nat_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AllocationId = structure(logical(0), 
        shape = "String", type = "string"), ClientToken = structure(logical(0), 
        shape = "String", type = "string"), SubnetId = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateNatGatewayRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_nat_gateway_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientToken = structure(logical(0), 
        shape = "String", locationName = "clientToken", type = "string"), 
        NatGateway = structure(list(CreateTime = structure(logical(0), 
            shape = "DateTime", locationName = "createTime", 
            type = "timestamp"), DeleteTime = structure(logical(0), 
            shape = "DateTime", locationName = "deleteTime", 
            type = "timestamp"), FailureCode = structure(logical(0), 
            shape = "String", locationName = "failureCode", type = "string"), 
            FailureMessage = structure(logical(0), shape = "String", 
                locationName = "failureMessage", type = "string"), 
            NatGatewayAddresses = structure(list(structure(list(AllocationId = structure(logical(0), 
                shape = "String", locationName = "allocationId", 
                type = "string"), NetworkInterfaceId = structure(logical(0), 
                shape = "String", locationName = "networkInterfaceId", 
                type = "string"), PrivateIp = structure(logical(0), 
                shape = "String", locationName = "privateIp", 
                type = "string"), PublicIp = structure(logical(0), 
                shape = "String", locationName = "publicIp", 
                type = "string")), shape = "NatGatewayAddress", 
                locationName = "item", type = "structure")), 
                shape = "NatGatewayAddressList", locationName = "natGatewayAddressSet", 
                type = "list"), NatGatewayId = structure(logical(0), 
                shape = "String", locationName = "natGatewayId", 
                type = "string"), ProvisionedBandwidth = structure(list(ProvisionTime = structure(logical(0), 
                shape = "DateTime", locationName = "provisionTime", 
                type = "timestamp"), Provisioned = structure(logical(0), 
                shape = "String", locationName = "provisioned", 
                type = "string"), RequestTime = structure(logical(0), 
                shape = "DateTime", locationName = "requestTime", 
                type = "timestamp"), Requested = structure(logical(0), 
                shape = "String", locationName = "requested", 
                type = "string"), Status = structure(logical(0), 
                shape = "String", locationName = "status", type = "string")), 
                shape = "ProvisionedBandwidth", locationName = "provisionedBandwidth", 
                type = "structure"), State = structure(logical(0), 
                shape = "NatGatewayState", locationName = "state", 
                type = "string"), SubnetId = structure(logical(0), 
                shape = "String", locationName = "subnetId", 
                type = "string"), VpcId = structure(logical(0), 
                shape = "String", locationName = "vpcId", type = "string"), 
            Tags = structure(list(structure(list(Key = structure(logical(0), 
                shape = "String", locationName = "key", type = "string"), 
                Value = structure(logical(0), shape = "String", 
                  locationName = "value", type = "string")), 
                shape = "Tag", locationName = "item", type = "structure")), 
                shape = "TagList", locationName = "tagSet", type = "list")), 
            shape = "NatGateway", locationName = "natGateway", 
            type = "structure")), shape = "CreateNatGatewayResult", 
        type = "structure")
    return(populate(args, shape))
}

create_network_acl_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), VpcId = structure(logical(0), 
        shape = "String", locationName = "vpcId", type = "string")), 
        shape = "CreateNetworkAclRequest", type = "structure")
    return(populate(args, shape))
}

create_network_acl_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NetworkAcl = structure(list(Associations = structure(list(structure(list(NetworkAclAssociationId = structure(logical(0), 
        shape = "String", locationName = "networkAclAssociationId", 
        type = "string"), NetworkAclId = structure(logical(0), 
        shape = "String", locationName = "networkAclId", type = "string"), 
        SubnetId = structure(logical(0), shape = "String", locationName = "subnetId", 
            type = "string")), shape = "NetworkAclAssociation", 
        locationName = "item", type = "structure")), shape = "NetworkAclAssociationList", 
        locationName = "associationSet", type = "list"), Entries = structure(list(structure(list(CidrBlock = structure(logical(0), 
        shape = "String", locationName = "cidrBlock", type = "string"), 
        Egress = structure(logical(0), shape = "Boolean", locationName = "egress", 
            type = "boolean"), IcmpTypeCode = structure(list(Code = structure(logical(0), 
            shape = "Integer", locationName = "code", type = "integer"), 
            Type = structure(logical(0), shape = "Integer", locationName = "type", 
                type = "integer")), shape = "IcmpTypeCode", locationName = "icmpTypeCode", 
            type = "structure"), Ipv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "ipv6CidrBlock", 
            type = "string"), PortRange = structure(list(From = structure(logical(0), 
            shape = "Integer", locationName = "from", type = "integer"), 
            To = structure(logical(0), shape = "Integer", locationName = "to", 
                type = "integer")), shape = "PortRange", locationName = "portRange", 
            type = "structure"), Protocol = structure(logical(0), 
            shape = "String", locationName = "protocol", type = "string"), 
        RuleAction = structure(logical(0), shape = "RuleAction", 
            locationName = "ruleAction", type = "string"), RuleNumber = structure(logical(0), 
            shape = "Integer", locationName = "ruleNumber", type = "integer")), 
        shape = "NetworkAclEntry", locationName = "item", type = "structure")), 
        shape = "NetworkAclEntryList", locationName = "entrySet", 
        type = "list"), IsDefault = structure(logical(0), shape = "Boolean", 
        locationName = "default", type = "boolean"), NetworkAclId = structure(logical(0), 
        shape = "String", locationName = "networkAclId", type = "string"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string")), shape = "NetworkAcl", 
        locationName = "networkAcl", type = "structure")), shape = "CreateNetworkAclResult", 
        type = "structure")
    return(populate(args, shape))
}

create_network_acl_entry_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CidrBlock = structure(logical(0), 
        shape = "String", locationName = "cidrBlock", type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), Egress = structure(logical(0), 
            shape = "Boolean", locationName = "egress", type = "boolean"), 
        IcmpTypeCode = structure(list(Code = structure(logical(0), 
            shape = "Integer", locationName = "code", type = "integer"), 
            Type = structure(logical(0), shape = "Integer", locationName = "type", 
                type = "integer")), shape = "IcmpTypeCode", locationName = "Icmp", 
            type = "structure"), Ipv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "ipv6CidrBlock", 
            type = "string"), NetworkAclId = structure(logical(0), 
            shape = "String", locationName = "networkAclId", 
            type = "string"), PortRange = structure(list(From = structure(logical(0), 
            shape = "Integer", locationName = "from", type = "integer"), 
            To = structure(logical(0), shape = "Integer", locationName = "to", 
                type = "integer")), shape = "PortRange", locationName = "portRange", 
            type = "structure"), Protocol = structure(logical(0), 
            shape = "String", locationName = "protocol", type = "string"), 
        RuleAction = structure(logical(0), shape = "RuleAction", 
            locationName = "ruleAction", type = "string"), RuleNumber = structure(logical(0), 
            shape = "Integer", locationName = "ruleNumber", type = "integer")), 
        shape = "CreateNetworkAclEntryRequest", type = "structure")
    return(populate(args, shape))
}

create_network_acl_entry_output <- function () 
{
    return(list())
}

create_network_interface_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Description = structure(logical(0), 
        shape = "String", locationName = "description", type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), Groups = structure(list(structure(logical(0), 
            shape = "String", locationName = "SecurityGroupId", 
            type = "string")), shape = "SecurityGroupIdStringList", 
            locationName = "SecurityGroupId", type = "list"), 
        Ipv6AddressCount = structure(logical(0), shape = "Integer", 
            locationName = "ipv6AddressCount", type = "integer"), 
        Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
            shape = "String", locationName = "ipv6Address", type = "string")), 
            shape = "InstanceIpv6Address", locationName = "item", 
            type = "structure")), shape = "InstanceIpv6AddressList", 
            locationName = "ipv6Addresses", type = "list"), PrivateIpAddress = structure(logical(0), 
            shape = "String", locationName = "privateIpAddress", 
            type = "string"), PrivateIpAddresses = structure(list(structure(list(Primary = structure(logical(0), 
            shape = "Boolean", locationName = "primary", type = "boolean"), 
            PrivateIpAddress = structure(logical(0), shape = "String", 
                locationName = "privateIpAddress", type = "string")), 
            shape = "PrivateIpAddressSpecification", locationName = "item", 
            type = "structure")), shape = "PrivateIpAddressSpecificationList", 
            locationName = "privateIpAddresses", type = "list"), 
        SecondaryPrivateIpAddressCount = structure(logical(0), 
            shape = "Integer", locationName = "secondaryPrivateIpAddressCount", 
            type = "integer"), SubnetId = structure(logical(0), 
            shape = "String", locationName = "subnetId", type = "string")), 
        shape = "CreateNetworkInterfaceRequest", type = "structure")
    return(populate(args, shape))
}

create_network_interface_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NetworkInterface = structure(list(Association = structure(list(AllocationId = structure(logical(0), 
        shape = "String", locationName = "allocationId", type = "string"), 
        AssociationId = structure(logical(0), shape = "String", 
            locationName = "associationId", type = "string"), 
        IpOwnerId = structure(logical(0), shape = "String", locationName = "ipOwnerId", 
            type = "string"), PublicDnsName = structure(logical(0), 
            shape = "String", locationName = "publicDnsName", 
            type = "string"), PublicIp = structure(logical(0), 
            shape = "String", locationName = "publicIp", type = "string")), 
        shape = "NetworkInterfaceAssociation", locationName = "association", 
        type = "structure"), Attachment = structure(list(AttachTime = structure(logical(0), 
        shape = "DateTime", locationName = "attachTime", type = "timestamp"), 
        AttachmentId = structure(logical(0), shape = "String", 
            locationName = "attachmentId", type = "string"), 
        DeleteOnTermination = structure(logical(0), shape = "Boolean", 
            locationName = "deleteOnTermination", type = "boolean"), 
        DeviceIndex = structure(logical(0), shape = "Integer", 
            locationName = "deviceIndex", type = "integer"), 
        InstanceId = structure(logical(0), shape = "String", 
            locationName = "instanceId", type = "string"), InstanceOwnerId = structure(logical(0), 
            shape = "String", locationName = "instanceOwnerId", 
            type = "string"), Status = structure(logical(0), 
            shape = "AttachmentStatus", locationName = "status", 
            type = "string")), shape = "NetworkInterfaceAttachment", 
        locationName = "attachment", type = "structure"), AvailabilityZone = structure(logical(0), 
        shape = "String", locationName = "availabilityZone", 
        type = "string"), Description = structure(logical(0), 
        shape = "String", locationName = "description", type = "string"), 
        Groups = structure(list(structure(list(GroupName = structure(logical(0), 
            shape = "String", locationName = "groupName", type = "string"), 
            GroupId = structure(logical(0), shape = "String", 
                locationName = "groupId", type = "string")), 
            shape = "GroupIdentifier", locationName = "item", 
            type = "structure")), shape = "GroupIdentifierList", 
            locationName = "groupSet", type = "list"), InterfaceType = structure(logical(0), 
            shape = "NetworkInterfaceType", locationName = "interfaceType", 
            type = "string"), Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
            shape = "String", locationName = "ipv6Address", type = "string")), 
            shape = "NetworkInterfaceIpv6Address", locationName = "item", 
            type = "structure")), shape = "NetworkInterfaceIpv6AddressesList", 
            locationName = "ipv6AddressesSet", type = "list"), 
        MacAddress = structure(logical(0), shape = "String", 
            locationName = "macAddress", type = "string"), NetworkInterfaceId = structure(logical(0), 
            shape = "String", locationName = "networkInterfaceId", 
            type = "string"), OwnerId = structure(logical(0), 
            shape = "String", locationName = "ownerId", type = "string"), 
        PrivateDnsName = structure(logical(0), shape = "String", 
            locationName = "privateDnsName", type = "string"), 
        PrivateIpAddress = structure(logical(0), shape = "String", 
            locationName = "privateIpAddress", type = "string"), 
        PrivateIpAddresses = structure(list(structure(list(Association = structure(list(AllocationId = structure(logical(0), 
            shape = "String", locationName = "allocationId", 
            type = "string"), AssociationId = structure(logical(0), 
            shape = "String", locationName = "associationId", 
            type = "string"), IpOwnerId = structure(logical(0), 
            shape = "String", locationName = "ipOwnerId", type = "string"), 
            PublicDnsName = structure(logical(0), shape = "String", 
                locationName = "publicDnsName", type = "string"), 
            PublicIp = structure(logical(0), shape = "String", 
                locationName = "publicIp", type = "string")), 
            shape = "NetworkInterfaceAssociation", locationName = "association", 
            type = "structure"), Primary = structure(logical(0), 
            shape = "Boolean", locationName = "primary", type = "boolean"), 
            PrivateDnsName = structure(logical(0), shape = "String", 
                locationName = "privateDnsName", type = "string"), 
            PrivateIpAddress = structure(logical(0), shape = "String", 
                locationName = "privateIpAddress", type = "string")), 
            shape = "NetworkInterfacePrivateIpAddress", locationName = "item", 
            type = "structure")), shape = "NetworkInterfacePrivateIpAddressList", 
            locationName = "privateIpAddressesSet", type = "list"), 
        RequesterId = structure(logical(0), shape = "String", 
            locationName = "requesterId", type = "string"), RequesterManaged = structure(logical(0), 
            shape = "Boolean", locationName = "requesterManaged", 
            type = "boolean"), SourceDestCheck = structure(logical(0), 
            shape = "Boolean", locationName = "sourceDestCheck", 
            type = "boolean"), Status = structure(logical(0), 
            shape = "NetworkInterfaceStatus", locationName = "status", 
            type = "string"), SubnetId = structure(logical(0), 
            shape = "String", locationName = "subnetId", type = "string"), 
        TagSet = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string")), shape = "NetworkInterface", 
        locationName = "networkInterface", type = "structure")), 
        shape = "CreateNetworkInterfaceResult", type = "structure")
    return(populate(args, shape))
}

create_network_interface_permission_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NetworkInterfaceId = structure(logical(0), 
        shape = "String", type = "string"), AwsAccountId = structure(logical(0), 
        shape = "String", type = "string"), AwsService = structure(logical(0), 
        shape = "String", type = "string"), Permission = structure(logical(0), 
        shape = "InterfacePermissionType", type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", type = "boolean")), 
        shape = "CreateNetworkInterfacePermissionRequest", type = "structure")
    return(populate(args, shape))
}

create_network_interface_permission_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InterfacePermission = structure(list(NetworkInterfacePermissionId = structure(logical(0), 
        shape = "String", locationName = "networkInterfacePermissionId", 
        type = "string"), NetworkInterfaceId = structure(logical(0), 
        shape = "String", locationName = "networkInterfaceId", 
        type = "string"), AwsAccountId = structure(logical(0), 
        shape = "String", locationName = "awsAccountId", type = "string"), 
        AwsService = structure(logical(0), shape = "String", 
            locationName = "awsService", type = "string"), Permission = structure(logical(0), 
            shape = "InterfacePermissionType", locationName = "permission", 
            type = "string"), PermissionState = structure(list(State = structure(logical(0), 
            shape = "NetworkInterfacePermissionStateCode", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "NetworkInterfacePermissionState", 
            locationName = "permissionState", type = "structure")), 
        shape = "NetworkInterfacePermission", locationName = "interfacePermission", 
        type = "structure")), shape = "CreateNetworkInterfacePermissionResult", 
        type = "structure")
    return(populate(args, shape))
}

create_placement_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), GroupName = structure(logical(0), 
        shape = "String", locationName = "groupName", type = "string"), 
        Strategy = structure(logical(0), shape = "PlacementStrategy", 
            locationName = "strategy", type = "string")), shape = "CreatePlacementGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_placement_group_output <- function () 
{
    return(list())
}

create_reserved_instances_listing_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientToken = structure(logical(0), 
        shape = "String", locationName = "clientToken", type = "string"), 
        InstanceCount = structure(logical(0), shape = "Integer", 
            locationName = "instanceCount", type = "integer"), 
        PriceSchedules = structure(list(structure(list(CurrencyCode = structure(logical(0), 
            shape = "CurrencyCodeValues", locationName = "currencyCode", 
            type = "string"), Price = structure(logical(0), shape = "Double", 
            locationName = "price", type = "double"), Term = structure(logical(0), 
            shape = "Long", locationName = "term", type = "long")), 
            shape = "PriceScheduleSpecification", locationName = "item", 
            type = "structure")), shape = "PriceScheduleSpecificationList", 
            locationName = "priceSchedules", type = "list"), 
        ReservedInstancesId = structure(logical(0), shape = "String", 
            locationName = "reservedInstancesId", type = "string")), 
        shape = "CreateReservedInstancesListingRequest", type = "structure")
    return(populate(args, shape))
}

create_reserved_instances_listing_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedInstancesListings = structure(list(structure(list(ClientToken = structure(logical(0), 
        shape = "String", locationName = "clientToken", type = "string"), 
        CreateDate = structure(logical(0), shape = "DateTime", 
            locationName = "createDate", type = "timestamp"), 
        InstanceCounts = structure(list(structure(list(InstanceCount = structure(logical(0), 
            shape = "Integer", locationName = "instanceCount", 
            type = "integer"), State = structure(logical(0), 
            shape = "ListingState", locationName = "state", type = "string")), 
            shape = "InstanceCount", locationName = "item", type = "structure")), 
            shape = "InstanceCountList", locationName = "instanceCounts", 
            type = "list"), PriceSchedules = structure(list(structure(list(Active = structure(logical(0), 
            shape = "Boolean", locationName = "active", type = "boolean"), 
            CurrencyCode = structure(logical(0), shape = "CurrencyCodeValues", 
                locationName = "currencyCode", type = "string"), 
            Price = structure(logical(0), shape = "Double", locationName = "price", 
                type = "double"), Term = structure(logical(0), 
                shape = "Long", locationName = "term", type = "long")), 
            shape = "PriceSchedule", locationName = "item", type = "structure")), 
            shape = "PriceScheduleList", locationName = "priceSchedules", 
            type = "list"), ReservedInstancesId = structure(logical(0), 
            shape = "String", locationName = "reservedInstancesId", 
            type = "string"), ReservedInstancesListingId = structure(logical(0), 
            shape = "String", locationName = "reservedInstancesListingId", 
            type = "string"), Status = structure(logical(0), 
            shape = "ListingStatus", locationName = "status", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), UpdateDate = structure(logical(0), 
            shape = "DateTime", locationName = "updateDate", 
            type = "timestamp")), shape = "ReservedInstancesListing", 
        locationName = "item", type = "structure")), shape = "ReservedInstancesListingList", 
        locationName = "reservedInstancesListingsSet", type = "list")), 
        shape = "CreateReservedInstancesListingResult", type = "structure")
    return(populate(args, shape))
}

create_route_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DestinationCidrBlock = structure(logical(0), 
        shape = "String", locationName = "destinationCidrBlock", 
        type = "string"), DestinationIpv6CidrBlock = structure(logical(0), 
        shape = "String", locationName = "destinationIpv6CidrBlock", 
        type = "string"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), EgressOnlyInternetGatewayId = structure(logical(0), 
        shape = "String", locationName = "egressOnlyInternetGatewayId", 
        type = "string"), GatewayId = structure(logical(0), shape = "String", 
        locationName = "gatewayId", type = "string"), InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        NatGatewayId = structure(logical(0), shape = "String", 
            locationName = "natGatewayId", type = "string"), 
        NetworkInterfaceId = structure(logical(0), shape = "String", 
            locationName = "networkInterfaceId", type = "string"), 
        RouteTableId = structure(logical(0), shape = "String", 
            locationName = "routeTableId", type = "string"), 
        VpcPeeringConnectionId = structure(logical(0), shape = "String", 
            locationName = "vpcPeeringConnectionId", type = "string")), 
        shape = "CreateRouteRequest", type = "structure")
    return(populate(args, shape))
}

create_route_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "CreateRouteResult", 
        type = "structure")
    return(populate(args, shape))
}

create_route_table_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), VpcId = structure(logical(0), 
        shape = "String", locationName = "vpcId", type = "string")), 
        shape = "CreateRouteTableRequest", type = "structure")
    return(populate(args, shape))
}

create_route_table_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RouteTable = structure(list(Associations = structure(list(structure(list(Main = structure(logical(0), 
        shape = "Boolean", locationName = "main", type = "boolean"), 
        RouteTableAssociationId = structure(logical(0), shape = "String", 
            locationName = "routeTableAssociationId", type = "string"), 
        RouteTableId = structure(logical(0), shape = "String", 
            locationName = "routeTableId", type = "string"), 
        SubnetId = structure(logical(0), shape = "String", locationName = "subnetId", 
            type = "string")), shape = "RouteTableAssociation", 
        locationName = "item", type = "structure")), shape = "RouteTableAssociationList", 
        locationName = "associationSet", type = "list"), PropagatingVgws = structure(list(structure(list(GatewayId = structure(logical(0), 
        shape = "String", locationName = "gatewayId", type = "string")), 
        shape = "PropagatingVgw", locationName = "item", type = "structure")), 
        shape = "PropagatingVgwList", locationName = "propagatingVgwSet", 
        type = "list"), RouteTableId = structure(logical(0), 
        shape = "String", locationName = "routeTableId", type = "string"), 
        Routes = structure(list(structure(list(DestinationCidrBlock = structure(logical(0), 
            shape = "String", locationName = "destinationCidrBlock", 
            type = "string"), DestinationIpv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "destinationIpv6CidrBlock", 
            type = "string"), DestinationPrefixListId = structure(logical(0), 
            shape = "String", locationName = "destinationPrefixListId", 
            type = "string"), EgressOnlyInternetGatewayId = structure(logical(0), 
            shape = "String", locationName = "egressOnlyInternetGatewayId", 
            type = "string"), GatewayId = structure(logical(0), 
            shape = "String", locationName = "gatewayId", type = "string"), 
            InstanceId = structure(logical(0), shape = "String", 
                locationName = "instanceId", type = "string"), 
            InstanceOwnerId = structure(logical(0), shape = "String", 
                locationName = "instanceOwnerId", type = "string"), 
            NatGatewayId = structure(logical(0), shape = "String", 
                locationName = "natGatewayId", type = "string"), 
            NetworkInterfaceId = structure(logical(0), shape = "String", 
                locationName = "networkInterfaceId", type = "string"), 
            Origin = structure(logical(0), shape = "RouteOrigin", 
                locationName = "origin", type = "string"), State = structure(logical(0), 
                shape = "RouteState", locationName = "state", 
                type = "string"), VpcPeeringConnectionId = structure(logical(0), 
                shape = "String", locationName = "vpcPeeringConnectionId", 
                type = "string")), shape = "Route", locationName = "item", 
            type = "structure")), shape = "RouteList", locationName = "routeSet", 
            type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string")), shape = "RouteTable", 
        locationName = "routeTable", type = "structure")), shape = "CreateRouteTableResult", 
        type = "structure")
    return(populate(args, shape))
}

create_security_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Description = structure(logical(0), 
        shape = "String", locationName = "GroupDescription", 
        type = "string"), GroupName = structure(logical(0), shape = "String", 
        type = "string"), VpcId = structure(logical(0), shape = "String", 
        type = "string"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "CreateSecurityGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_security_group_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "String", 
        locationName = "groupId", type = "string")), shape = "CreateSecurityGroupResult", 
        type = "structure")
    return(populate(args, shape))
}

create_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Description = structure(logical(0), 
        shape = "String", type = "string"), VolumeId = structure(logical(0), 
        shape = "String", type = "string"), TagSpecifications = structure(list(structure(list(ResourceType = structure(logical(0), 
        shape = "ResourceType", locationName = "resourceType", 
        type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", locationName = "key", type = "string"), 
        Value = structure(logical(0), shape = "String", locationName = "value", 
            type = "string")), shape = "Tag", locationName = "item", 
        type = "structure")), shape = "TagList", locationName = "Tag", 
        type = "list")), shape = "TagSpecification", locationName = "item", 
        type = "structure")), shape = "TagSpecificationList", 
        locationName = "TagSpecification", type = "list"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "CreateSnapshotRequest", type = "structure")
    return(populate(args, shape))
}

create_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DataEncryptionKeyId = structure(logical(0), 
        shape = "String", locationName = "dataEncryptionKeyId", 
        type = "string"), Description = structure(logical(0), 
        shape = "String", locationName = "description", type = "string"), 
        Encrypted = structure(logical(0), shape = "Boolean", 
            locationName = "encrypted", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", locationName = "kmsKeyId", type = "string"), 
        OwnerId = structure(logical(0), shape = "String", locationName = "ownerId", 
            type = "string"), Progress = structure(logical(0), 
            shape = "String", locationName = "progress", type = "string"), 
        SnapshotId = structure(logical(0), shape = "String", 
            locationName = "snapshotId", type = "string"), StartTime = structure(logical(0), 
            shape = "DateTime", locationName = "startTime", type = "timestamp"), 
        State = structure(logical(0), shape = "SnapshotState", 
            locationName = "status", type = "string"), StateMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string"), VolumeId = structure(logical(0), 
            shape = "String", locationName = "volumeId", type = "string"), 
        VolumeSize = structure(logical(0), shape = "Integer", 
            locationName = "volumeSize", type = "integer"), OwnerAlias = structure(logical(0), 
            shape = "String", locationName = "ownerAlias", type = "string"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "Snapshot", type = "structure")
    return(populate(args, shape))
}

create_spot_datafeed_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Bucket = structure(logical(0), shape = "String", 
        locationName = "bucket", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean"), 
        Prefix = structure(logical(0), shape = "String", locationName = "prefix", 
            type = "string")), shape = "CreateSpotDatafeedSubscriptionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_spot_datafeed_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SpotDatafeedSubscription = structure(list(Bucket = structure(logical(0), 
        shape = "String", locationName = "bucket", type = "string"), 
        Fault = structure(list(Code = structure(logical(0), shape = "String", 
            locationName = "code", type = "string"), Message = structure(logical(0), 
            shape = "String", locationName = "message", type = "string")), 
            shape = "SpotInstanceStateFault", locationName = "fault", 
            type = "structure"), OwnerId = structure(logical(0), 
            shape = "String", locationName = "ownerId", type = "string"), 
        Prefix = structure(logical(0), shape = "String", locationName = "prefix", 
            type = "string"), State = structure(logical(0), shape = "DatafeedSubscriptionState", 
            locationName = "state", type = "string")), shape = "SpotDatafeedSubscription", 
        locationName = "spotDatafeedSubscription", type = "structure")), 
        shape = "CreateSpotDatafeedSubscriptionResult", type = "structure")
    return(populate(args, shape))
}

create_subnet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), CidrBlock = structure(logical(0), 
        shape = "String", type = "string"), Ipv6CidrBlock = structure(logical(0), 
        shape = "String", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "CreateSubnetRequest", type = "structure")
    return(populate(args, shape))
}

create_subnet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Subnet = structure(list(AvailabilityZone = structure(logical(0), 
        shape = "String", locationName = "availabilityZone", 
        type = "string"), AvailableIpAddressCount = structure(logical(0), 
        shape = "Integer", locationName = "availableIpAddressCount", 
        type = "integer"), CidrBlock = structure(logical(0), 
        shape = "String", locationName = "cidrBlock", type = "string"), 
        DefaultForAz = structure(logical(0), shape = "Boolean", 
            locationName = "defaultForAz", type = "boolean"), 
        MapPublicIpOnLaunch = structure(logical(0), shape = "Boolean", 
            locationName = "mapPublicIpOnLaunch", type = "boolean"), 
        State = structure(logical(0), shape = "SubnetState", 
            locationName = "state", type = "string"), SubnetId = structure(logical(0), 
            shape = "String", locationName = "subnetId", type = "string"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string"), AssignIpv6AddressOnCreation = structure(logical(0), 
            shape = "Boolean", locationName = "assignIpv6AddressOnCreation", 
            type = "boolean"), Ipv6CidrBlockAssociationSet = structure(list(structure(list(AssociationId = structure(logical(0), 
            shape = "String", locationName = "associationId", 
            type = "string"), Ipv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "ipv6CidrBlock", 
            type = "string"), Ipv6CidrBlockState = structure(list(State = structure(logical(0), 
            shape = "SubnetCidrBlockStateCode", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "SubnetCidrBlockState", 
            locationName = "ipv6CidrBlockState", type = "structure")), 
            shape = "SubnetIpv6CidrBlockAssociation", locationName = "item", 
            type = "structure")), shape = "SubnetIpv6CidrBlockAssociationSet", 
            locationName = "ipv6CidrBlockAssociationSet", type = "list"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "Subnet", locationName = "subnet", 
        type = "structure")), shape = "CreateSubnetResult", type = "structure")
    return(populate(args, shape))
}

create_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), Resources = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ResourceIdList", 
        locationName = "ResourceId", type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", locationName = "key", type = "string"), 
        Value = structure(logical(0), shape = "String", locationName = "value", 
            type = "string")), shape = "Tag", locationName = "item", 
        type = "structure")), shape = "TagList", locationName = "Tag", 
        type = "list")), shape = "CreateTagsRequest", type = "structure")
    return(populate(args, shape))
}

create_tags_output <- function () 
{
    return(list())
}

create_volume_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), Encrypted = structure(logical(0), 
        shape = "Boolean", locationName = "encrypted", type = "boolean"), 
        Iops = structure(logical(0), shape = "Integer", type = "integer"), 
        KmsKeyId = structure(logical(0), shape = "String", type = "string"), 
        Size = structure(logical(0), shape = "Integer", type = "integer"), 
        SnapshotId = structure(logical(0), shape = "String", 
            type = "string"), VolumeType = structure(logical(0), 
            shape = "VolumeType", type = "string"), DryRun = structure(logical(0), 
            shape = "Boolean", locationName = "dryRun", type = "boolean"), 
        TagSpecifications = structure(list(structure(list(ResourceType = structure(logical(0), 
            shape = "ResourceType", locationName = "resourceType", 
            type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "Tag", 
            type = "list")), shape = "TagSpecification", locationName = "item", 
            type = "structure")), shape = "TagSpecificationList", 
            locationName = "TagSpecification", type = "list")), 
        shape = "CreateVolumeRequest", type = "structure")
    return(populate(args, shape))
}

create_volume_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attachments = structure(list(structure(list(AttachTime = structure(logical(0), 
        shape = "DateTime", locationName = "attachTime", type = "timestamp"), 
        Device = structure(logical(0), shape = "String", locationName = "device", 
            type = "string"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
        State = structure(logical(0), shape = "VolumeAttachmentState", 
            locationName = "status", type = "string"), VolumeId = structure(logical(0), 
            shape = "String", locationName = "volumeId", type = "string"), 
        DeleteOnTermination = structure(logical(0), shape = "Boolean", 
            locationName = "deleteOnTermination", type = "boolean")), 
        shape = "VolumeAttachment", locationName = "item", type = "structure")), 
        shape = "VolumeAttachmentList", locationName = "attachmentSet", 
        type = "list"), AvailabilityZone = structure(logical(0), 
        shape = "String", locationName = "availabilityZone", 
        type = "string"), CreateTime = structure(logical(0), 
        shape = "DateTime", locationName = "createTime", type = "timestamp"), 
        Encrypted = structure(logical(0), shape = "Boolean", 
            locationName = "encrypted", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", locationName = "kmsKeyId", type = "string"), 
        Size = structure(logical(0), shape = "Integer", locationName = "size", 
            type = "integer"), SnapshotId = structure(logical(0), 
            shape = "String", locationName = "snapshotId", type = "string"), 
        State = structure(logical(0), shape = "VolumeState", 
            locationName = "status", type = "string"), VolumeId = structure(logical(0), 
            shape = "String", locationName = "volumeId", type = "string"), 
        Iops = structure(logical(0), shape = "Integer", locationName = "iops", 
            type = "integer"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), VolumeType = structure(logical(0), 
            shape = "VolumeType", locationName = "volumeType", 
            type = "string")), shape = "Volume", type = "structure")
    return(populate(args, shape))
}

create_vpc_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CidrBlock = structure(logical(0), 
        shape = "String", type = "string"), AmazonProvidedIpv6CidrBlock = structure(logical(0), 
        shape = "Boolean", locationName = "amazonProvidedIpv6CidrBlock", 
        type = "boolean"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), InstanceTenancy = structure(logical(0), 
        shape = "Tenancy", locationName = "instanceTenancy", 
        type = "string")), shape = "CreateVpcRequest", type = "structure")
    return(populate(args, shape))
}

create_vpc_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Vpc = structure(list(CidrBlock = structure(logical(0), 
        shape = "String", locationName = "cidrBlock", type = "string"), 
        DhcpOptionsId = structure(logical(0), shape = "String", 
            locationName = "dhcpOptionsId", type = "string"), 
        State = structure(logical(0), shape = "VpcState", locationName = "state", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string"), InstanceTenancy = structure(logical(0), 
            shape = "Tenancy", locationName = "instanceTenancy", 
            type = "string"), Ipv6CidrBlockAssociationSet = structure(list(structure(list(AssociationId = structure(logical(0), 
            shape = "String", locationName = "associationId", 
            type = "string"), Ipv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "ipv6CidrBlock", 
            type = "string"), Ipv6CidrBlockState = structure(list(State = structure(logical(0), 
            shape = "VpcCidrBlockStateCode", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "VpcCidrBlockState", locationName = "ipv6CidrBlockState", 
            type = "structure")), shape = "VpcIpv6CidrBlockAssociation", 
            locationName = "item", type = "structure")), shape = "VpcIpv6CidrBlockAssociationSet", 
            locationName = "ipv6CidrBlockAssociationSet", type = "list"), 
        CidrBlockAssociationSet = structure(list(structure(list(AssociationId = structure(logical(0), 
            shape = "String", locationName = "associationId", 
            type = "string"), CidrBlock = structure(logical(0), 
            shape = "String", locationName = "cidrBlock", type = "string"), 
            CidrBlockState = structure(list(State = structure(logical(0), 
                shape = "VpcCidrBlockStateCode", locationName = "state", 
                type = "string"), StatusMessage = structure(logical(0), 
                shape = "String", locationName = "statusMessage", 
                type = "string")), shape = "VpcCidrBlockState", 
                locationName = "cidrBlockState", type = "structure")), 
            shape = "VpcCidrBlockAssociation", locationName = "item", 
            type = "structure")), shape = "VpcCidrBlockAssociationSet", 
            locationName = "cidrBlockAssociationSet", type = "list"), 
        IsDefault = structure(logical(0), shape = "Boolean", 
            locationName = "isDefault", type = "boolean"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "Vpc", locationName = "vpc", 
        type = "structure")), shape = "CreateVpcResult", type = "structure")
    return(populate(args, shape))
}

create_vpc_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), VpcEndpointType = structure(logical(0), 
        shape = "VpcEndpointType", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), ServiceName = structure(logical(0), 
        shape = "String", type = "string"), PolicyDocument = structure(logical(0), 
        shape = "String", type = "string"), RouteTableIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "RouteTableId", 
        type = "list"), SubnetIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "SubnetId", 
        type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "SecurityGroupId", 
        type = "list"), ClientToken = structure(logical(0), shape = "String", 
        type = "string"), PrivateDnsEnabled = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "CreateVpcEndpointRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_vpc_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcEndpoint = structure(list(VpcEndpointId = structure(logical(0), 
        shape = "String", locationName = "vpcEndpointId", type = "string"), 
        VpcEndpointType = structure(logical(0), shape = "VpcEndpointType", 
            locationName = "vpcEndpointType", type = "string"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string"), ServiceName = structure(logical(0), 
            shape = "String", locationName = "serviceName", type = "string"), 
        State = structure(logical(0), shape = "State", locationName = "state", 
            type = "string"), PolicyDocument = structure(logical(0), 
            shape = "String", locationName = "policyDocument", 
            type = "string"), RouteTableIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "routeTableIdSet", 
            type = "list"), SubnetIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "subnetIdSet", 
            type = "list"), Groups = structure(list(structure(list(GroupId = structure(logical(0), 
            shape = "String", locationName = "groupId", type = "string"), 
            GroupName = structure(logical(0), shape = "String", 
                locationName = "groupName", type = "string")), 
            shape = "SecurityGroupIdentifier", locationName = "item", 
            type = "structure")), shape = "GroupIdentifierSet", 
            locationName = "groupSet", type = "list"), PrivateDnsEnabled = structure(logical(0), 
            shape = "Boolean", locationName = "privateDnsEnabled", 
            type = "boolean"), NetworkInterfaceIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "networkInterfaceIdSet", 
            type = "list"), DnsEntries = structure(list(structure(list(DnsName = structure(logical(0), 
            shape = "String", locationName = "dnsName", type = "string"), 
            HostedZoneId = structure(logical(0), shape = "String", 
                locationName = "hostedZoneId", type = "string")), 
            shape = "DnsEntry", locationName = "item", type = "structure")), 
            shape = "DnsEntrySet", locationName = "dnsEntrySet", 
            type = "list"), CreationTimestamp = structure(logical(0), 
            shape = "DateTime", locationName = "creationTimestamp", 
            type = "timestamp")), shape = "VpcEndpoint", locationName = "vpcEndpoint", 
        type = "structure"), ClientToken = structure(logical(0), 
        shape = "String", locationName = "clientToken", type = "string")), 
        shape = "CreateVpcEndpointResult", type = "structure")
    return(populate(args, shape))
}

create_vpc_endpoint_connection_notification_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ServiceId = structure(logical(0), 
        shape = "String", type = "string"), VpcEndpointId = structure(logical(0), 
        shape = "String", type = "string"), ConnectionNotificationArn = structure(logical(0), 
        shape = "String", type = "string"), ConnectionEvents = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", type = "list"), ClientToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateVpcEndpointConnectionNotificationRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_vpc_endpoint_connection_notification_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionNotification = structure(list(ConnectionNotificationId = structure(logical(0), 
        shape = "String", locationName = "connectionNotificationId", 
        type = "string"), ServiceId = structure(logical(0), shape = "String", 
        locationName = "serviceId", type = "string"), VpcEndpointId = structure(logical(0), 
        shape = "String", locationName = "vpcEndpointId", type = "string"), 
        ConnectionNotificationType = structure(logical(0), shape = "ConnectionNotificationType", 
            locationName = "connectionNotificationType", type = "string"), 
        ConnectionNotificationArn = structure(logical(0), shape = "String", 
            locationName = "connectionNotificationArn", type = "string"), 
        ConnectionEvents = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "connectionEvents", 
            type = "list"), ConnectionNotificationState = structure(logical(0), 
            shape = "ConnectionNotificationState", locationName = "connectionNotificationState", 
            type = "string")), shape = "ConnectionNotification", 
        locationName = "connectionNotification", type = "structure"), 
        ClientToken = structure(logical(0), shape = "String", 
            locationName = "clientToken", type = "string")), 
        shape = "CreateVpcEndpointConnectionNotificationResult", 
        type = "structure")
    return(populate(args, shape))
}

create_vpc_endpoint_service_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), AcceptanceRequired = structure(logical(0), 
        shape = "Boolean", type = "boolean"), NetworkLoadBalancerArns = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "NetworkLoadBalancerArn", 
        type = "list"), ClientToken = structure(logical(0), shape = "String", 
        type = "string")), shape = "CreateVpcEndpointServiceConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_vpc_endpoint_service_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceConfiguration = structure(list(ServiceType = structure(list(structure(list(ServiceType = structure(logical(0), 
        shape = "ServiceType", locationName = "serviceType", 
        type = "string")), shape = "ServiceTypeDetail", locationName = "item", 
        type = "structure")), shape = "ServiceTypeDetailSet", 
        locationName = "serviceType", type = "list"), ServiceId = structure(logical(0), 
        shape = "String", locationName = "serviceId", type = "string"), 
        ServiceName = structure(logical(0), shape = "String", 
            locationName = "serviceName", type = "string"), ServiceState = structure(logical(0), 
            shape = "ServiceState", locationName = "serviceState", 
            type = "string"), AvailabilityZones = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "availabilityZoneSet", 
            type = "list"), AcceptanceRequired = structure(logical(0), 
            shape = "Boolean", locationName = "acceptanceRequired", 
            type = "boolean"), NetworkLoadBalancerArns = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "networkLoadBalancerArnSet", 
            type = "list"), BaseEndpointDnsNames = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "baseEndpointDnsNameSet", 
            type = "list"), PrivateDnsName = structure(logical(0), 
            shape = "String", locationName = "privateDnsName", 
            type = "string")), shape = "ServiceConfiguration", 
        locationName = "serviceConfiguration", type = "structure"), 
        ClientToken = structure(logical(0), shape = "String", 
            locationName = "clientToken", type = "string")), 
        shape = "CreateVpcEndpointServiceConfigurationResult", 
        type = "structure")
    return(populate(args, shape))
}

create_vpc_peering_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), PeerOwnerId = structure(logical(0), 
        shape = "String", locationName = "peerOwnerId", type = "string"), 
        PeerVpcId = structure(logical(0), shape = "String", locationName = "peerVpcId", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string"), PeerRegion = structure(logical(0), 
            shape = "String", type = "string")), shape = "CreateVpcPeeringConnectionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_vpc_peering_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcPeeringConnection = structure(list(AccepterVpcInfo = structure(list(CidrBlock = structure(logical(0), 
        shape = "String", locationName = "cidrBlock", type = "string"), 
        Ipv6CidrBlockSet = structure(list(structure(list(Ipv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "ipv6CidrBlock", 
            type = "string")), shape = "Ipv6CidrBlock", locationName = "item", 
            type = "structure")), shape = "Ipv6CidrBlockSet", 
            locationName = "ipv6CidrBlockSet", type = "list"), 
        CidrBlockSet = structure(list(structure(list(CidrBlock = structure(logical(0), 
            shape = "String", locationName = "cidrBlock", type = "string")), 
            shape = "CidrBlock", locationName = "item", type = "structure")), 
            shape = "CidrBlockSet", locationName = "cidrBlockSet", 
            type = "list"), OwnerId = structure(logical(0), shape = "String", 
            locationName = "ownerId", type = "string"), PeeringOptions = structure(list(AllowDnsResolutionFromRemoteVpc = structure(logical(0), 
            shape = "Boolean", locationName = "allowDnsResolutionFromRemoteVpc", 
            type = "boolean"), AllowEgressFromLocalClassicLinkToRemoteVpc = structure(logical(0), 
            shape = "Boolean", locationName = "allowEgressFromLocalClassicLinkToRemoteVpc", 
            type = "boolean"), AllowEgressFromLocalVpcToRemoteClassicLink = structure(logical(0), 
            shape = "Boolean", locationName = "allowEgressFromLocalVpcToRemoteClassicLink", 
            type = "boolean")), shape = "VpcPeeringConnectionOptionsDescription", 
            locationName = "peeringOptions", type = "structure"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string"), Region = structure(logical(0), 
            shape = "String", locationName = "region", type = "string")), 
        shape = "VpcPeeringConnectionVpcInfo", locationName = "accepterVpcInfo", 
        type = "structure"), ExpirationTime = structure(logical(0), 
        shape = "DateTime", locationName = "expirationTime", 
        type = "timestamp"), RequesterVpcInfo = structure(list(CidrBlock = structure(logical(0), 
        shape = "String", locationName = "cidrBlock", type = "string"), 
        Ipv6CidrBlockSet = structure(list(structure(list(Ipv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "ipv6CidrBlock", 
            type = "string")), shape = "Ipv6CidrBlock", locationName = "item", 
            type = "structure")), shape = "Ipv6CidrBlockSet", 
            locationName = "ipv6CidrBlockSet", type = "list"), 
        CidrBlockSet = structure(list(structure(list(CidrBlock = structure(logical(0), 
            shape = "String", locationName = "cidrBlock", type = "string")), 
            shape = "CidrBlock", locationName = "item", type = "structure")), 
            shape = "CidrBlockSet", locationName = "cidrBlockSet", 
            type = "list"), OwnerId = structure(logical(0), shape = "String", 
            locationName = "ownerId", type = "string"), PeeringOptions = structure(list(AllowDnsResolutionFromRemoteVpc = structure(logical(0), 
            shape = "Boolean", locationName = "allowDnsResolutionFromRemoteVpc", 
            type = "boolean"), AllowEgressFromLocalClassicLinkToRemoteVpc = structure(logical(0), 
            shape = "Boolean", locationName = "allowEgressFromLocalClassicLinkToRemoteVpc", 
            type = "boolean"), AllowEgressFromLocalVpcToRemoteClassicLink = structure(logical(0), 
            shape = "Boolean", locationName = "allowEgressFromLocalVpcToRemoteClassicLink", 
            type = "boolean")), shape = "VpcPeeringConnectionOptionsDescription", 
            locationName = "peeringOptions", type = "structure"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string"), Region = structure(logical(0), 
            shape = "String", locationName = "region", type = "string")), 
        shape = "VpcPeeringConnectionVpcInfo", locationName = "requesterVpcInfo", 
        type = "structure"), Status = structure(list(Code = structure(logical(0), 
        shape = "VpcPeeringConnectionStateReasonCode", locationName = "code", 
        type = "string"), Message = structure(logical(0), shape = "String", 
        locationName = "message", type = "string")), shape = "VpcPeeringConnectionStateReason", 
        locationName = "status", type = "structure"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", locationName = "key", type = "string"), 
        Value = structure(logical(0), shape = "String", locationName = "value", 
            type = "string")), shape = "Tag", locationName = "item", 
        type = "structure")), shape = "TagList", locationName = "tagSet", 
        type = "list"), VpcPeeringConnectionId = structure(logical(0), 
        shape = "String", locationName = "vpcPeeringConnectionId", 
        type = "string")), shape = "VpcPeeringConnection", locationName = "vpcPeeringConnection", 
        type = "structure")), shape = "CreateVpcPeeringConnectionResult", 
        type = "structure")
    return(populate(args, shape))
}

create_vpn_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CustomerGatewayId = structure(logical(0), 
        shape = "String", type = "string"), Type = structure(logical(0), 
        shape = "String", type = "string"), VpnGatewayId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean"), 
        Options = structure(list(StaticRoutesOnly = structure(logical(0), 
            shape = "Boolean", locationName = "staticRoutesOnly", 
            type = "boolean"), TunnelOptions = structure(list(structure(list(TunnelInsideCidr = structure(logical(0), 
            shape = "String", type = "string"), PreSharedKey = structure(logical(0), 
            shape = "String", type = "string")), shape = "VpnTunnelOptionsSpecification", 
            locationName = "item", type = "structure")), shape = "TunnelOptionsList", 
            type = "list")), shape = "VpnConnectionOptionsSpecification", 
            locationName = "options", type = "structure")), shape = "CreateVpnConnectionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_vpn_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpnConnection = structure(list(CustomerGatewayConfiguration = structure(logical(0), 
        shape = "String", locationName = "customerGatewayConfiguration", 
        type = "string"), CustomerGatewayId = structure(logical(0), 
        shape = "String", locationName = "customerGatewayId", 
        type = "string"), Category = structure(logical(0), shape = "String", 
        locationName = "category", type = "string"), State = structure(logical(0), 
        shape = "VpnState", locationName = "state", type = "string"), 
        Type = structure(logical(0), shape = "GatewayType", locationName = "type", 
            type = "string"), VpnConnectionId = structure(logical(0), 
            shape = "String", locationName = "vpnConnectionId", 
            type = "string"), VpnGatewayId = structure(logical(0), 
            shape = "String", locationName = "vpnGatewayId", 
            type = "string"), Options = structure(list(StaticRoutesOnly = structure(logical(0), 
            shape = "Boolean", locationName = "staticRoutesOnly", 
            type = "boolean")), shape = "VpnConnectionOptions", 
            locationName = "options", type = "structure"), Routes = structure(list(structure(list(DestinationCidrBlock = structure(logical(0), 
            shape = "String", locationName = "destinationCidrBlock", 
            type = "string"), Source = structure(logical(0), 
            shape = "VpnStaticRouteSource", locationName = "source", 
            type = "string"), State = structure(logical(0), shape = "VpnState", 
            locationName = "state", type = "string")), shape = "VpnStaticRoute", 
            locationName = "item", type = "structure")), shape = "VpnStaticRouteList", 
            locationName = "routes", type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), VgwTelemetry = structure(list(structure(list(AcceptedRouteCount = structure(logical(0), 
            shape = "Integer", locationName = "acceptedRouteCount", 
            type = "integer"), LastStatusChange = structure(logical(0), 
            shape = "DateTime", locationName = "lastStatusChange", 
            type = "timestamp"), OutsideIpAddress = structure(logical(0), 
            shape = "String", locationName = "outsideIpAddress", 
            type = "string"), Status = structure(logical(0), 
            shape = "TelemetryStatus", locationName = "status", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "VgwTelemetry", locationName = "item", 
            type = "structure")), shape = "VgwTelemetryList", 
            locationName = "vgwTelemetry", type = "list")), shape = "VpnConnection", 
        locationName = "vpnConnection", type = "structure")), 
        shape = "CreateVpnConnectionResult", type = "structure")
    return(populate(args, shape))
}

create_vpn_connection_route_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DestinationCidrBlock = structure(logical(0), 
        shape = "String", type = "string"), VpnConnectionId = structure(logical(0), 
        shape = "String", type = "string")), shape = "CreateVpnConnectionRouteRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_vpn_connection_route_output <- function () 
{
    return(list())
}

create_vpn_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), Type = structure(logical(0), 
        shape = "GatewayType", type = "string"), AmazonSideAsn = structure(logical(0), 
        shape = "Long", type = "long"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "CreateVpnGatewayRequest", type = "structure")
    return(populate(args, shape))
}

create_vpn_gateway_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpnGateway = structure(list(AvailabilityZone = structure(logical(0), 
        shape = "String", locationName = "availabilityZone", 
        type = "string"), State = structure(logical(0), shape = "VpnState", 
        locationName = "state", type = "string"), Type = structure(logical(0), 
        shape = "GatewayType", locationName = "type", type = "string"), 
        VpcAttachments = structure(list(structure(list(State = structure(logical(0), 
            shape = "AttachmentStatus", locationName = "state", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string")), shape = "VpcAttachment", 
            locationName = "item", type = "structure")), shape = "VpcAttachmentList", 
            locationName = "attachments", type = "list"), VpnGatewayId = structure(logical(0), 
            shape = "String", locationName = "vpnGatewayId", 
            type = "string"), AmazonSideAsn = structure(logical(0), 
            shape = "Long", locationName = "amazonSideAsn", type = "long"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "VpnGateway", locationName = "vpnGateway", 
        type = "structure")), shape = "CreateVpnGatewayResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_customer_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CustomerGatewayId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DeleteCustomerGatewayRequest", type = "structure")
    return(populate(args, shape))
}

delete_customer_gateway_output <- function () 
{
    return(list())
}

delete_dhcp_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DhcpOptionsId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DeleteDhcpOptionsRequest", type = "structure")
    return(populate(args, shape))
}

delete_dhcp_options_output <- function () 
{
    return(list())
}

delete_egress_only_internet_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), EgressOnlyInternetGatewayId = structure(logical(0), 
        shape = "EgressOnlyInternetGatewayId", type = "string")), 
        shape = "DeleteEgressOnlyInternetGatewayRequest", type = "structure")
    return(populate(args, shape))
}

delete_egress_only_internet_gateway_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReturnCode = structure(logical(0), 
        shape = "Boolean", locationName = "returnCode", type = "boolean")), 
        shape = "DeleteEgressOnlyInternetGatewayResult", type = "structure")
    return(populate(args, shape))
}

delete_fleets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), FleetIds = structure(list(structure(logical(0), 
        shape = "FleetIdentifier", type = "string")), shape = "FleetIdSet", 
        locationName = "FleetId", type = "list"), TerminateInstances = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "DeleteFleetsRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_fleets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SuccessfulFleetDeletions = structure(list(structure(list(CurrentFleetState = structure(logical(0), 
        shape = "FleetStateCode", locationName = "currentFleetState", 
        type = "string"), PreviousFleetState = structure(logical(0), 
        shape = "FleetStateCode", locationName = "previousFleetState", 
        type = "string"), FleetId = structure(logical(0), shape = "FleetIdentifier", 
        locationName = "fleetId", type = "string")), shape = "DeleteFleetSuccessItem", 
        locationName = "item", type = "structure")), shape = "DeleteFleetSuccessSet", 
        locationName = "successfulFleetDeletionSet", type = "list"), 
        UnsuccessfulFleetDeletions = structure(list(structure(list(Error = structure(list(Code = structure(logical(0), 
            shape = "DeleteFleetErrorCode", locationName = "code", 
            type = "string"), Message = structure(logical(0), 
            shape = "String", locationName = "message", type = "string")), 
            shape = "DeleteFleetError", locationName = "error", 
            type = "structure"), FleetId = structure(logical(0), 
            shape = "FleetIdentifier", locationName = "fleetId", 
            type = "string")), shape = "DeleteFleetErrorItem", 
            locationName = "item", type = "structure")), shape = "DeleteFleetErrorSet", 
            locationName = "unsuccessfulFleetDeletionSet", type = "list")), 
        shape = "DeleteFleetsResult", type = "structure")
    return(populate(args, shape))
}

delete_flow_logs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), FlowLogIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "FlowLogId", 
        type = "list")), shape = "DeleteFlowLogsRequest", type = "structure")
    return(populate(args, shape))
}

delete_flow_logs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Unsuccessful = structure(list(structure(list(Error = structure(list(Code = structure(logical(0), 
        shape = "String", locationName = "code", type = "string"), 
        Message = structure(logical(0), shape = "String", locationName = "message", 
            type = "string")), shape = "UnsuccessfulItemError", 
        locationName = "error", type = "structure"), ResourceId = structure(logical(0), 
        shape = "String", locationName = "resourceId", type = "string")), 
        shape = "UnsuccessfulItem", locationName = "item", type = "structure")), 
        shape = "UnsuccessfulItemSet", locationName = "unsuccessful", 
        type = "list")), shape = "DeleteFlowLogsResult", type = "structure")
    return(populate(args, shape))
}

delete_fpga_image_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), FpgaImageId = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteFpgaImageRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_fpga_image_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "DeleteFpgaImageResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_internet_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), InternetGatewayId = structure(logical(0), 
        shape = "String", locationName = "internetGatewayId", 
        type = "string")), shape = "DeleteInternetGatewayRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_internet_gateway_output <- function () 
{
    return(list())
}

delete_key_pair_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyName = structure(logical(0), shape = "String", 
        type = "string"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "DeleteKeyPairRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_key_pair_output <- function () 
{
    return(list())
}

delete_launch_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), LaunchTemplateId = structure(logical(0), 
        shape = "String", type = "string"), LaunchTemplateName = structure(logical(0), 
        shape = "LaunchTemplateName", type = "string", max = 128L, 
        min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+")), shape = "DeleteLaunchTemplateRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_launch_template_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LaunchTemplate = structure(list(LaunchTemplateId = structure(logical(0), 
        shape = "String", locationName = "launchTemplateId", 
        type = "string"), LaunchTemplateName = structure(logical(0), 
        shape = "LaunchTemplateName", locationName = "launchTemplateName", 
        type = "string", max = 128L, min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), 
        CreateTime = structure(logical(0), shape = "DateTime", 
            locationName = "createTime", type = "timestamp"), 
        CreatedBy = structure(logical(0), shape = "String", locationName = "createdBy", 
            type = "string"), DefaultVersionNumber = structure(logical(0), 
            shape = "Long", locationName = "defaultVersionNumber", 
            type = "long"), LatestVersionNumber = structure(logical(0), 
            shape = "Long", locationName = "latestVersionNumber", 
            type = "long"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "LaunchTemplate", locationName = "launchTemplate", 
        type = "structure")), shape = "DeleteLaunchTemplateResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_launch_template_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), LaunchTemplateId = structure(logical(0), 
        shape = "String", type = "string"), LaunchTemplateName = structure(logical(0), 
        shape = "LaunchTemplateName", type = "string", max = 128L, 
        min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), Versions = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "VersionStringList", locationName = "LaunchTemplateVersion", 
        type = "list")), shape = "DeleteLaunchTemplateVersionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_launch_template_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SuccessfullyDeletedLaunchTemplateVersions = structure(list(structure(list(LaunchTemplateId = structure(logical(0), 
        shape = "String", locationName = "launchTemplateId", 
        type = "string"), LaunchTemplateName = structure(logical(0), 
        shape = "String", locationName = "launchTemplateName", 
        type = "string"), VersionNumber = structure(logical(0), 
        shape = "Long", locationName = "versionNumber", type = "long")), 
        shape = "DeleteLaunchTemplateVersionsResponseSuccessItem", 
        locationName = "item", type = "structure")), shape = "DeleteLaunchTemplateVersionsResponseSuccessSet", 
        locationName = "successfullyDeletedLaunchTemplateVersionSet", 
        type = "list"), UnsuccessfullyDeletedLaunchTemplateVersions = structure(list(structure(list(LaunchTemplateId = structure(logical(0), 
        shape = "String", locationName = "launchTemplateId", 
        type = "string"), LaunchTemplateName = structure(logical(0), 
        shape = "String", locationName = "launchTemplateName", 
        type = "string"), VersionNumber = structure(logical(0), 
        shape = "Long", locationName = "versionNumber", type = "long"), 
        ResponseError = structure(list(Code = structure(logical(0), 
            shape = "LaunchTemplateErrorCode", locationName = "code", 
            type = "string"), Message = structure(logical(0), 
            shape = "String", locationName = "message", type = "string")), 
            shape = "ResponseError", locationName = "responseError", 
            type = "structure")), shape = "DeleteLaunchTemplateVersionsResponseErrorItem", 
        locationName = "item", type = "structure")), shape = "DeleteLaunchTemplateVersionsResponseErrorSet", 
        locationName = "unsuccessfullyDeletedLaunchTemplateVersionSet", 
        type = "list")), shape = "DeleteLaunchTemplateVersionsResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_nat_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NatGatewayId = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteNatGatewayRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_nat_gateway_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NatGatewayId = structure(logical(0), 
        shape = "String", locationName = "natGatewayId", type = "string")), 
        shape = "DeleteNatGatewayResult", type = "structure")
    return(populate(args, shape))
}

delete_network_acl_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), NetworkAclId = structure(logical(0), 
        shape = "String", locationName = "networkAclId", type = "string")), 
        shape = "DeleteNetworkAclRequest", type = "structure")
    return(populate(args, shape))
}

delete_network_acl_output <- function () 
{
    return(list())
}

delete_network_acl_entry_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), Egress = structure(logical(0), 
        shape = "Boolean", locationName = "egress", type = "boolean"), 
        NetworkAclId = structure(logical(0), shape = "String", 
            locationName = "networkAclId", type = "string"), 
        RuleNumber = structure(logical(0), shape = "Integer", 
            locationName = "ruleNumber", type = "integer")), 
        shape = "DeleteNetworkAclEntryRequest", type = "structure")
    return(populate(args, shape))
}

delete_network_acl_entry_output <- function () 
{
    return(list())
}

delete_network_interface_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), NetworkInterfaceId = structure(logical(0), 
        shape = "String", locationName = "networkInterfaceId", 
        type = "string")), shape = "DeleteNetworkInterfaceRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_network_interface_output <- function () 
{
    return(list())
}

delete_network_interface_permission_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NetworkInterfacePermissionId = structure(logical(0), 
        shape = "String", type = "string"), Force = structure(logical(0), 
        shape = "Boolean", type = "boolean"), DryRun = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "DeleteNetworkInterfacePermissionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_network_interface_permission_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "DeleteNetworkInterfacePermissionResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_placement_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), GroupName = structure(logical(0), 
        shape = "String", locationName = "groupName", type = "string")), 
        shape = "DeletePlacementGroupRequest", type = "structure")
    return(populate(args, shape))
}

delete_placement_group_output <- function () 
{
    return(list())
}

delete_route_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DestinationCidrBlock = structure(logical(0), 
        shape = "String", locationName = "destinationCidrBlock", 
        type = "string"), DestinationIpv6CidrBlock = structure(logical(0), 
        shape = "String", locationName = "destinationIpv6CidrBlock", 
        type = "string"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), RouteTableId = structure(logical(0), 
        shape = "String", locationName = "routeTableId", type = "string")), 
        shape = "DeleteRouteRequest", type = "structure")
    return(populate(args, shape))
}

delete_route_output <- function () 
{
    return(list())
}

delete_route_table_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), RouteTableId = structure(logical(0), 
        shape = "String", locationName = "routeTableId", type = "string")), 
        shape = "DeleteRouteTableRequest", type = "structure")
    return(populate(args, shape))
}

delete_route_table_output <- function () 
{
    return(list())
}

delete_security_group_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GroupId = structure(logical(0), shape = "String", 
        type = "string"), GroupName = structure(logical(0), shape = "String", 
        type = "string"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "DeleteSecurityGroupRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_security_group_output <- function () 
{
    return(list())
}

delete_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SnapshotId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DeleteSnapshotRequest", type = "structure")
    return(populate(args, shape))
}

delete_snapshot_output <- function () 
{
    return(list())
}

delete_spot_datafeed_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "DeleteSpotDatafeedSubscriptionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_spot_datafeed_subscription_output <- function () 
{
    return(list())
}

delete_subnet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SubnetId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DeleteSubnetRequest", type = "structure")
    return(populate(args, shape))
}

delete_subnet_output <- function () 
{
    return(list())
}

delete_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), Resources = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "ResourceIdList", 
        locationName = "resourceId", type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", locationName = "key", type = "string"), 
        Value = structure(logical(0), shape = "String", locationName = "value", 
            type = "string")), shape = "Tag", locationName = "item", 
        type = "structure")), shape = "TagList", locationName = "tag", 
        type = "list")), shape = "DeleteTagsRequest", type = "structure")
    return(populate(args, shape))
}

delete_tags_output <- function () 
{
    return(list())
}

delete_volume_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DeleteVolumeRequest", type = "structure")
    return(populate(args, shape))
}

delete_volume_output <- function () 
{
    return(list())
}

delete_vpc_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcId = structure(logical(0), shape = "String", 
        type = "string"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "DeleteVpcRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_vpc_output <- function () 
{
    return(list())
}

delete_vpc_endpoint_connection_notifications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ConnectionNotificationIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "ConnectionNotificationId", 
        type = "list")), shape = "DeleteVpcEndpointConnectionNotificationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_vpc_endpoint_connection_notifications_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Unsuccessful = structure(list(structure(list(Error = structure(list(Code = structure(logical(0), 
        shape = "String", locationName = "code", type = "string"), 
        Message = structure(logical(0), shape = "String", locationName = "message", 
            type = "string")), shape = "UnsuccessfulItemError", 
        locationName = "error", type = "structure"), ResourceId = structure(logical(0), 
        shape = "String", locationName = "resourceId", type = "string")), 
        shape = "UnsuccessfulItem", locationName = "item", type = "structure")), 
        shape = "UnsuccessfulItemSet", locationName = "unsuccessful", 
        type = "list")), shape = "DeleteVpcEndpointConnectionNotificationsResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_vpc_endpoint_service_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ServiceIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "ServiceId", 
        type = "list")), shape = "DeleteVpcEndpointServiceConfigurationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_vpc_endpoint_service_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Unsuccessful = structure(list(structure(list(Error = structure(list(Code = structure(logical(0), 
        shape = "String", locationName = "code", type = "string"), 
        Message = structure(logical(0), shape = "String", locationName = "message", 
            type = "string")), shape = "UnsuccessfulItemError", 
        locationName = "error", type = "structure"), ResourceId = structure(logical(0), 
        shape = "String", locationName = "resourceId", type = "string")), 
        shape = "UnsuccessfulItem", locationName = "item", type = "structure")), 
        shape = "UnsuccessfulItemSet", locationName = "unsuccessful", 
        type = "list")), shape = "DeleteVpcEndpointServiceConfigurationsResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_vpc_endpoints_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), VpcEndpointIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "VpcEndpointId", 
        type = "list")), shape = "DeleteVpcEndpointsRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_vpc_endpoints_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Unsuccessful = structure(list(structure(list(Error = structure(list(Code = structure(logical(0), 
        shape = "String", locationName = "code", type = "string"), 
        Message = structure(logical(0), shape = "String", locationName = "message", 
            type = "string")), shape = "UnsuccessfulItemError", 
        locationName = "error", type = "structure"), ResourceId = structure(logical(0), 
        shape = "String", locationName = "resourceId", type = "string")), 
        shape = "UnsuccessfulItem", locationName = "item", type = "structure")), 
        shape = "UnsuccessfulItemSet", locationName = "unsuccessful", 
        type = "list")), shape = "DeleteVpcEndpointsResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_vpc_peering_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), VpcPeeringConnectionId = structure(logical(0), 
        shape = "String", locationName = "vpcPeeringConnectionId", 
        type = "string")), shape = "DeleteVpcPeeringConnectionRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_vpc_peering_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "DeleteVpcPeeringConnectionResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_vpn_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpnConnectionId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DeleteVpnConnectionRequest", type = "structure")
    return(populate(args, shape))
}

delete_vpn_connection_output <- function () 
{
    return(list())
}

delete_vpn_connection_route_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DestinationCidrBlock = structure(logical(0), 
        shape = "String", type = "string"), VpnConnectionId = structure(logical(0), 
        shape = "String", type = "string")), shape = "DeleteVpnConnectionRouteRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_vpn_connection_route_output <- function () 
{
    return(list())
}

delete_vpn_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpnGatewayId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DeleteVpnGatewayRequest", type = "structure")
    return(populate(args, shape))
}

delete_vpn_gateway_output <- function () 
{
    return(list())
}

deregister_image_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImageId = structure(logical(0), shape = "String", 
        type = "string"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "DeregisterImageRequest", 
        type = "structure")
    return(populate(args, shape))
}

deregister_image_output <- function () 
{
    return(list())
}

describe_account_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttributeNames = structure(list(structure(logical(0), 
        shape = "AccountAttributeName", locationName = "attributeName", 
        type = "string")), shape = "AccountAttributeNameStringList", 
        locationName = "attributeName", type = "list"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DescribeAccountAttributesRequest", type = "structure")
    return(populate(args, shape))
}

describe_account_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccountAttributes = structure(list(structure(list(AttributeName = structure(logical(0), 
        shape = "String", locationName = "attributeName", type = "string"), 
        AttributeValues = structure(list(structure(list(AttributeValue = structure(logical(0), 
            shape = "String", locationName = "attributeValue", 
            type = "string")), shape = "AccountAttributeValue", 
            locationName = "item", type = "structure")), shape = "AccountAttributeValueList", 
            locationName = "attributeValueSet", type = "list")), 
        shape = "AccountAttribute", locationName = "item", type = "structure")), 
        shape = "AccountAttributeList", locationName = "accountAttributeSet", 
        type = "list")), shape = "DescribeAccountAttributesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_addresses_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        PublicIps = structure(list(structure(logical(0), shape = "String", 
            locationName = "PublicIp", type = "string")), shape = "PublicIpStringList", 
            locationName = "PublicIp", type = "list"), AllocationIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "AllocationId", 
            type = "string")), shape = "AllocationIdList", locationName = "AllocationId", 
            type = "list"), DryRun = structure(logical(0), shape = "Boolean", 
            locationName = "dryRun", type = "boolean")), shape = "DescribeAddressesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_addresses_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Addresses = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        PublicIp = structure(logical(0), shape = "String", locationName = "publicIp", 
            type = "string"), AllocationId = structure(logical(0), 
            shape = "String", locationName = "allocationId", 
            type = "string"), AssociationId = structure(logical(0), 
            shape = "String", locationName = "associationId", 
            type = "string"), Domain = structure(logical(0), 
            shape = "DomainType", locationName = "domain", type = "string"), 
        NetworkInterfaceId = structure(logical(0), shape = "String", 
            locationName = "networkInterfaceId", type = "string"), 
        NetworkInterfaceOwnerId = structure(logical(0), shape = "String", 
            locationName = "networkInterfaceOwnerId", type = "string"), 
        PrivateIpAddress = structure(logical(0), shape = "String", 
            locationName = "privateIpAddress", type = "string"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "Address", locationName = "item", 
        type = "structure")), shape = "AddressList", locationName = "addressesSet", 
        type = "list")), shape = "DescribeAddressesResult", type = "structure")
    return(populate(args, shape))
}

describe_aggregate_id_format_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean")), shape = "DescribeAggregateIdFormatRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_aggregate_id_format_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(UseLongIdsAggregated = structure(logical(0), 
        shape = "Boolean", locationName = "useLongIdsAggregated", 
        type = "boolean"), Statuses = structure(list(structure(list(Deadline = structure(logical(0), 
        shape = "DateTime", locationName = "deadline", type = "timestamp"), 
        Resource = structure(logical(0), shape = "String", locationName = "resource", 
            type = "string"), UseLongIds = structure(logical(0), 
            shape = "Boolean", locationName = "useLongIds", type = "boolean")), 
        shape = "IdFormat", locationName = "item", type = "structure")), 
        shape = "IdFormatList", locationName = "statusSet", type = "list")), 
        shape = "DescribeAggregateIdFormatResult", type = "structure")
    return(populate(args, shape))
}

describe_availability_zones_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        ZoneNames = structure(list(structure(logical(0), shape = "String", 
            locationName = "ZoneName", type = "string")), shape = "ZoneNameStringList", 
            locationName = "ZoneName", type = "list"), DryRun = structure(logical(0), 
            shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DescribeAvailabilityZonesRequest", type = "structure")
    return(populate(args, shape))
}

describe_availability_zones_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailabilityZones = structure(list(structure(list(State = structure(logical(0), 
        shape = "AvailabilityZoneState", locationName = "zoneState", 
        type = "string"), Messages = structure(list(structure(list(Message = structure(logical(0), 
        shape = "String", locationName = "message", type = "string")), 
        shape = "AvailabilityZoneMessage", locationName = "item", 
        type = "structure")), shape = "AvailabilityZoneMessageList", 
        locationName = "messageSet", type = "list"), RegionName = structure(logical(0), 
        shape = "String", locationName = "regionName", type = "string"), 
        ZoneName = structure(logical(0), shape = "String", locationName = "zoneName", 
            type = "string")), shape = "AvailabilityZone", locationName = "item", 
        type = "structure")), shape = "AvailabilityZoneList", 
        locationName = "availabilityZoneInfo", type = "list")), 
        shape = "DescribeAvailabilityZonesResult", type = "structure")
    return(populate(args, shape))
}

describe_bundle_tasks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BundleIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "BundleId", type = "string")), 
        shape = "BundleIdStringList", locationName = "BundleId", 
        type = "list"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean")), shape = "DescribeBundleTasksRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_bundle_tasks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BundleTasks = structure(list(structure(list(BundleId = structure(logical(0), 
        shape = "String", locationName = "bundleId", type = "string"), 
        BundleTaskError = structure(list(Code = structure(logical(0), 
            shape = "String", locationName = "code", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                locationName = "message", type = "string")), 
            shape = "BundleTaskError", locationName = "error", 
            type = "structure"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
        Progress = structure(logical(0), shape = "String", locationName = "progress", 
            type = "string"), StartTime = structure(logical(0), 
            shape = "DateTime", locationName = "startTime", type = "timestamp"), 
        State = structure(logical(0), shape = "BundleTaskState", 
            locationName = "state", type = "string"), Storage = structure(list(S3 = structure(list(AWSAccessKeyId = structure(logical(0), 
            shape = "String", type = "string"), Bucket = structure(logical(0), 
            shape = "String", locationName = "bucket", type = "string"), 
            Prefix = structure(logical(0), shape = "String", 
                locationName = "prefix", type = "string"), UploadPolicy = structure(logical(0), 
                shape = "Blob", locationName = "uploadPolicy", 
                type = "blob"), UploadPolicySignature = structure(logical(0), 
                shape = "String", locationName = "uploadPolicySignature", 
                type = "string")), shape = "S3Storage", type = "structure")), 
            shape = "Storage", locationName = "storage", type = "structure"), 
        UpdateTime = structure(logical(0), shape = "DateTime", 
            locationName = "updateTime", type = "timestamp")), 
        shape = "BundleTask", locationName = "item", type = "structure")), 
        shape = "BundleTaskList", locationName = "bundleInstanceTasksSet", 
        type = "list")), shape = "DescribeBundleTasksResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_classic_link_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), InstanceIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "InstanceId", type = "string")), 
            shape = "InstanceIdStringList", locationName = "InstanceId", 
            type = "list"), MaxResults = structure(logical(0), 
            shape = "Integer", locationName = "maxResults", type = "integer"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string")), shape = "DescribeClassicLinkInstancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_classic_link_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Instances = structure(list(structure(list(Groups = structure(list(structure(list(GroupName = structure(logical(0), 
        shape = "String", locationName = "groupName", type = "string"), 
        GroupId = structure(logical(0), shape = "String", locationName = "groupId", 
            type = "string")), shape = "GroupIdentifier", locationName = "item", 
        type = "structure")), shape = "GroupIdentifierList", 
        locationName = "groupSet", type = "list"), InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string")), shape = "ClassicLinkInstance", 
        locationName = "item", type = "structure")), shape = "ClassicLinkInstanceList", 
        locationName = "instancesSet", type = "list"), NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string")), 
        shape = "DescribeClassicLinkInstancesResult", type = "structure")
    return(populate(args, shape))
}

describe_conversion_tasks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConversionTaskIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ConversionIdStringList", locationName = "conversionTaskId", 
        type = "list"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "DescribeConversionTasksRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_conversion_tasks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConversionTasks = structure(list(structure(list(ConversionTaskId = structure(logical(0), 
        shape = "String", locationName = "conversionTaskId", 
        type = "string"), ExpirationTime = structure(logical(0), 
        shape = "String", locationName = "expirationTime", type = "string"), 
        ImportInstance = structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            InstanceId = structure(logical(0), shape = "String", 
                locationName = "instanceId", type = "string"), 
            Platform = structure(logical(0), shape = "PlatformValues", 
                locationName = "platform", type = "string"), 
            Volumes = structure(list(structure(list(AvailabilityZone = structure(logical(0), 
                shape = "String", locationName = "availabilityZone", 
                type = "string"), BytesConverted = structure(logical(0), 
                shape = "Long", locationName = "bytesConverted", 
                type = "long"), Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string"), Image = structure(list(Checksum = structure(logical(0), 
                shape = "String", locationName = "checksum", 
                type = "string"), Format = structure(logical(0), 
                shape = "DiskImageFormat", locationName = "format", 
                type = "string"), ImportManifestUrl = structure(logical(0), 
                shape = "String", locationName = "importManifestUrl", 
                type = "string"), Size = structure(logical(0), 
                shape = "Long", locationName = "size", type = "long")), 
                shape = "DiskImageDescription", locationName = "image", 
                type = "structure"), Status = structure(logical(0), 
                shape = "String", locationName = "status", type = "string"), 
                StatusMessage = structure(logical(0), shape = "String", 
                  locationName = "statusMessage", type = "string"), 
                Volume = structure(list(Id = structure(logical(0), 
                  shape = "String", locationName = "id", type = "string"), 
                  Size = structure(logical(0), shape = "Long", 
                    locationName = "size", type = "long")), shape = "DiskImageVolumeDescription", 
                  locationName = "volume", type = "structure")), 
                shape = "ImportInstanceVolumeDetailItem", locationName = "item", 
                type = "structure")), shape = "ImportInstanceVolumeDetailSet", 
                locationName = "volumes", type = "list")), shape = "ImportInstanceTaskDetails", 
            locationName = "importInstance", type = "structure"), 
        ImportVolume = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "String", locationName = "availabilityZone", 
            type = "string"), BytesConverted = structure(logical(0), 
            shape = "Long", locationName = "bytesConverted", 
            type = "long"), Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            Image = structure(list(Checksum = structure(logical(0), 
                shape = "String", locationName = "checksum", 
                type = "string"), Format = structure(logical(0), 
                shape = "DiskImageFormat", locationName = "format", 
                type = "string"), ImportManifestUrl = structure(logical(0), 
                shape = "String", locationName = "importManifestUrl", 
                type = "string"), Size = structure(logical(0), 
                shape = "Long", locationName = "size", type = "long")), 
                shape = "DiskImageDescription", locationName = "image", 
                type = "structure"), Volume = structure(list(Id = structure(logical(0), 
                shape = "String", locationName = "id", type = "string"), 
                Size = structure(logical(0), shape = "Long", 
                  locationName = "size", type = "long")), shape = "DiskImageVolumeDescription", 
                locationName = "volume", type = "structure")), 
            shape = "ImportVolumeTaskDetails", locationName = "importVolume", 
            type = "structure"), State = structure(logical(0), 
            shape = "ConversionTaskState", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "ConversionTask", locationName = "item", 
        type = "structure")), shape = "DescribeConversionTaskList", 
        locationName = "conversionTasks", type = "list")), shape = "DescribeConversionTasksResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_customer_gateways_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CustomerGatewayIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "CustomerGatewayId", 
        type = "string")), shape = "CustomerGatewayIdStringList", 
        locationName = "CustomerGatewayId", type = "list"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean")), shape = "DescribeCustomerGatewaysRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_customer_gateways_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CustomerGateways = structure(list(structure(list(BgpAsn = structure(logical(0), 
        shape = "String", locationName = "bgpAsn", type = "string"), 
        CustomerGatewayId = structure(logical(0), shape = "String", 
            locationName = "customerGatewayId", type = "string"), 
        IpAddress = structure(logical(0), shape = "String", locationName = "ipAddress", 
            type = "string"), State = structure(logical(0), shape = "String", 
            locationName = "state", type = "string"), Type = structure(logical(0), 
            shape = "String", locationName = "type", type = "string"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "CustomerGateway", locationName = "item", 
        type = "structure")), shape = "CustomerGatewayList", 
        locationName = "customerGatewaySet", type = "list")), 
        shape = "DescribeCustomerGatewaysResult", type = "structure")
    return(populate(args, shape))
}

describe_dhcp_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DhcpOptionsIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "DhcpOptionsId", type = "string")), 
        shape = "DhcpOptionsIdStringList", locationName = "DhcpOptionsId", 
        type = "list"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean")), shape = "DescribeDhcpOptionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_dhcp_options_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DhcpOptions = structure(list(structure(list(DhcpConfigurations = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", locationName = "key", type = "string"), 
        Values = structure(list(structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "item", 
            type = "structure")), shape = "DhcpConfigurationValueList", 
            locationName = "valueSet", type = "list")), shape = "DhcpConfiguration", 
        locationName = "item", type = "structure")), shape = "DhcpConfigurationList", 
        locationName = "dhcpConfigurationSet", type = "list"), 
        DhcpOptionsId = structure(logical(0), shape = "String", 
            locationName = "dhcpOptionsId", type = "string"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "DhcpOptions", locationName = "item", 
        type = "structure")), shape = "DhcpOptionsList", locationName = "dhcpOptionsSet", 
        type = "list")), shape = "DescribeDhcpOptionsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_egress_only_internet_gateways_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), EgressOnlyInternetGatewayIds = structure(list(structure(logical(0), 
        shape = "EgressOnlyInternetGatewayId", locationName = "item", 
        type = "string")), shape = "EgressOnlyInternetGatewayIdList", 
        locationName = "EgressOnlyInternetGatewayId", type = "list"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer"), NextToken = structure(logical(0), 
            shape = "String", type = "string")), shape = "DescribeEgressOnlyInternetGatewaysRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_egress_only_internet_gateways_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EgressOnlyInternetGateways = structure(list(structure(list(Attachments = structure(list(structure(list(State = structure(logical(0), 
        shape = "AttachmentStatus", locationName = "state", type = "string"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string")), shape = "InternetGatewayAttachment", 
        locationName = "item", type = "structure")), shape = "InternetGatewayAttachmentList", 
        locationName = "attachmentSet", type = "list"), EgressOnlyInternetGatewayId = structure(logical(0), 
        shape = "EgressOnlyInternetGatewayId", locationName = "egressOnlyInternetGatewayId", 
        type = "string")), shape = "EgressOnlyInternetGateway", 
        locationName = "item", type = "structure")), shape = "EgressOnlyInternetGatewayList", 
        locationName = "egressOnlyInternetGatewaySet", type = "list"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string")), shape = "DescribeEgressOnlyInternetGatewaysResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_elastic_gpus_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ElasticGpuIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ElasticGpuIdSet", locationName = "ElasticGpuId", 
        type = "list"), DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer"), NextToken = structure(logical(0), 
            shape = "String", type = "string")), shape = "DescribeElasticGpusRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_elastic_gpus_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ElasticGpuSet = structure(list(structure(list(ElasticGpuId = structure(logical(0), 
        shape = "String", locationName = "elasticGpuId", type = "string"), 
        AvailabilityZone = structure(logical(0), shape = "String", 
            locationName = "availabilityZone", type = "string"), 
        ElasticGpuType = structure(logical(0), shape = "String", 
            locationName = "elasticGpuType", type = "string"), 
        ElasticGpuHealth = structure(list(Status = structure(logical(0), 
            shape = "ElasticGpuStatus", locationName = "status", 
            type = "string")), shape = "ElasticGpuHealth", locationName = "elasticGpuHealth", 
            type = "structure"), ElasticGpuState = structure(logical(0), 
            shape = "ElasticGpuState", locationName = "elasticGpuState", 
            type = "string"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string")), 
        shape = "ElasticGpus", locationName = "item", type = "structure")), 
        shape = "ElasticGpuSet", locationName = "elasticGpuSet", 
        type = "list"), MaxResults = structure(logical(0), shape = "Integer", 
        locationName = "maxResults", type = "integer"), NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string")), 
        shape = "DescribeElasticGpusResult", type = "structure")
    return(populate(args, shape))
}

describe_export_tasks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportTaskIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "ExportTaskId", type = "string")), 
        shape = "ExportTaskIdStringList", locationName = "exportTaskId", 
        type = "list")), shape = "DescribeExportTasksRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_export_tasks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExportTasks = structure(list(structure(list(Description = structure(logical(0), 
        shape = "String", locationName = "description", type = "string"), 
        ExportTaskId = structure(logical(0), shape = "String", 
            locationName = "exportTaskId", type = "string"), 
        ExportToS3Task = structure(list(ContainerFormat = structure(logical(0), 
            shape = "ContainerFormat", locationName = "containerFormat", 
            type = "string"), DiskImageFormat = structure(logical(0), 
            shape = "DiskImageFormat", locationName = "diskImageFormat", 
            type = "string"), S3Bucket = structure(logical(0), 
            shape = "String", locationName = "s3Bucket", type = "string"), 
            S3Key = structure(logical(0), shape = "String", locationName = "s3Key", 
                type = "string")), shape = "ExportToS3Task", 
            locationName = "exportToS3", type = "structure"), 
        InstanceExportDetails = structure(list(InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
            TargetEnvironment = structure(logical(0), shape = "ExportEnvironment", 
                locationName = "targetEnvironment", type = "string")), 
            shape = "InstanceExportDetails", locationName = "instanceExport", 
            type = "structure"), State = structure(logical(0), 
            shape = "ExportTaskState", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "ExportTask", locationName = "item", 
        type = "structure")), shape = "ExportTaskList", locationName = "exportTaskSet", 
        type = "list")), shape = "DescribeExportTasksResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_fleet_history_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), EventType = structure(logical(0), 
        shape = "FleetEventType", type = "string"), MaxResults = structure(logical(0), 
        shape = "Integer", type = "integer"), NextToken = structure(logical(0), 
        shape = "String", type = "string"), FleetId = structure(logical(0), 
        shape = "FleetIdentifier", type = "string"), StartTime = structure(logical(0), 
        shape = "DateTime", type = "timestamp")), shape = "DescribeFleetHistoryRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_fleet_history_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HistoryRecords = structure(list(structure(list(EventInformation = structure(list(EventDescription = structure(logical(0), 
        shape = "String", locationName = "eventDescription", 
        type = "string"), EventSubType = structure(logical(0), 
        shape = "String", locationName = "eventSubType", type = "string"), 
        InstanceId = structure(logical(0), shape = "String", 
            locationName = "instanceId", type = "string")), shape = "EventInformation", 
        locationName = "eventInformation", type = "structure"), 
        EventType = structure(logical(0), shape = "FleetEventType", 
            locationName = "eventType", type = "string"), Timestamp = structure(logical(0), 
            shape = "DateTime", locationName = "timestamp", type = "timestamp")), 
        shape = "HistoryRecordEntry", locationName = "item", 
        type = "structure")), shape = "HistoryRecordSet", locationName = "historyRecordSet", 
        type = "list"), LastEvaluatedTime = structure(logical(0), 
        shape = "DateTime", locationName = "lastEvaluatedTime", 
        type = "timestamp"), NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string"), 
        FleetId = structure(logical(0), shape = "FleetIdentifier", 
            locationName = "fleetId", type = "string"), StartTime = structure(logical(0), 
            shape = "DateTime", locationName = "startTime", type = "timestamp")), 
        shape = "DescribeFleetHistoryResult", type = "structure")
    return(populate(args, shape))
}

describe_fleet_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), MaxResults = structure(logical(0), 
        shape = "Integer", type = "integer"), NextToken = structure(logical(0), 
        shape = "String", type = "string"), FleetId = structure(logical(0), 
        shape = "FleetIdentifier", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list")), 
        shape = "DescribeFleetInstancesRequest", type = "structure")
    return(populate(args, shape))
}

describe_fleet_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActiveInstances = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        InstanceType = structure(logical(0), shape = "String", 
            locationName = "instanceType", type = "string"), 
        SpotInstanceRequestId = structure(logical(0), shape = "String", 
            locationName = "spotInstanceRequestId", type = "string"), 
        InstanceHealth = structure(logical(0), shape = "InstanceHealthStatus", 
            locationName = "instanceHealth", type = "string")), 
        shape = "ActiveInstance", locationName = "item", type = "structure")), 
        shape = "ActiveInstanceSet", locationName = "activeInstanceSet", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        locationName = "nextToken", type = "string"), FleetId = structure(logical(0), 
        shape = "FleetIdentifier", locationName = "fleetId", 
        type = "string")), shape = "DescribeFleetInstancesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_fleets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), MaxResults = structure(logical(0), 
        shape = "Integer", type = "integer"), NextToken = structure(logical(0), 
        shape = "String", type = "string"), FleetIds = structure(list(structure(logical(0), 
        shape = "FleetIdentifier", type = "string")), shape = "FleetIdSet", 
        locationName = "FleetId", type = "list"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list")), 
        shape = "DescribeFleetsRequest", type = "structure")
    return(populate(args, shape))
}

describe_fleets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string"), 
        Fleets = structure(list(structure(list(ActivityStatus = structure(logical(0), 
            shape = "FleetActivityStatus", locationName = "activityStatus", 
            type = "string"), CreateTime = structure(logical(0), 
            shape = "DateTime", locationName = "createTime", 
            type = "timestamp"), FleetId = structure(logical(0), 
            shape = "FleetIdentifier", locationName = "fleetId", 
            type = "string"), FleetState = structure(logical(0), 
            shape = "FleetStateCode", locationName = "fleetState", 
            type = "string"), ClientToken = structure(logical(0), 
            shape = "String", locationName = "clientToken", type = "string"), 
            ExcessCapacityTerminationPolicy = structure(logical(0), 
                shape = "FleetExcessCapacityTerminationPolicy", 
                locationName = "excessCapacityTerminationPolicy", 
                type = "string"), FulfilledCapacity = structure(logical(0), 
                shape = "Double", locationName = "fulfilledCapacity", 
                type = "double"), FulfilledOnDemandCapacity = structure(logical(0), 
                shape = "Double", locationName = "fulfilledOnDemandCapacity", 
                type = "double"), LaunchTemplateConfigs = structure(list(structure(list(LaunchTemplateSpecification = structure(list(LaunchTemplateId = structure(logical(0), 
                shape = "String", locationName = "launchTemplateId", 
                type = "string"), LaunchTemplateName = structure(logical(0), 
                shape = "LaunchTemplateName", locationName = "launchTemplateName", 
                type = "string", max = 128L, min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), 
                Version = structure(logical(0), shape = "String", 
                  locationName = "version", type = "string")), 
                shape = "FleetLaunchTemplateSpecification", locationName = "launchTemplateSpecification", 
                type = "structure"), Overrides = structure(list(structure(list(InstanceType = structure(logical(0), 
                shape = "InstanceType", locationName = "instanceType", 
                type = "string"), MaxPrice = structure(logical(0), 
                shape = "String", locationName = "maxPrice", 
                type = "string"), SubnetId = structure(logical(0), 
                shape = "String", locationName = "subnetId", 
                type = "string"), AvailabilityZone = structure(logical(0), 
                shape = "String", locationName = "availabilityZone", 
                type = "string"), WeightedCapacity = structure(logical(0), 
                shape = "Double", locationName = "weightedCapacity", 
                type = "double"), Priority = structure(logical(0), 
                shape = "Double", locationName = "priority", 
                type = "double")), shape = "FleetLaunchTemplateOverrides", 
                locationName = "item", type = "structure")), 
                shape = "FleetLaunchTemplateOverridesList", locationName = "overrides", 
                type = "list")), shape = "FleetLaunchTemplateConfig", 
                locationName = "item", type = "structure")), 
                shape = "FleetLaunchTemplateConfigList", locationName = "launchTemplateConfigs", 
                type = "list"), TargetCapacitySpecification = structure(list(TotalTargetCapacity = structure(logical(0), 
                shape = "Integer", locationName = "totalTargetCapacity", 
                type = "integer"), OnDemandTargetCapacity = structure(logical(0), 
                shape = "Integer", locationName = "onDemandTargetCapacity", 
                type = "integer"), SpotTargetCapacity = structure(logical(0), 
                shape = "Integer", locationName = "spotTargetCapacity", 
                type = "integer"), DefaultTargetCapacityType = structure(logical(0), 
                shape = "DefaultTargetCapacityType", locationName = "defaultTargetCapacityType", 
                type = "string")), shape = "TargetCapacitySpecification", 
                locationName = "targetCapacitySpecification", 
                type = "structure"), TerminateInstancesWithExpiration = structure(logical(0), 
                shape = "Boolean", locationName = "terminateInstancesWithExpiration", 
                type = "boolean"), Type = structure(logical(0), 
                shape = "FleetType", locationName = "type", type = "string"), 
            ValidFrom = structure(logical(0), shape = "DateTime", 
                locationName = "validFrom", type = "timestamp"), 
            ValidUntil = structure(logical(0), shape = "DateTime", 
                locationName = "validUntil", type = "timestamp"), 
            ReplaceUnhealthyInstances = structure(logical(0), 
                shape = "Boolean", locationName = "replaceUnhealthyInstances", 
                type = "boolean"), SpotOptions = structure(list(AllocationStrategy = structure(logical(0), 
                shape = "SpotAllocationStrategy", locationName = "allocationStrategy", 
                type = "string"), InstanceInterruptionBehavior = structure(logical(0), 
                shape = "SpotInstanceInterruptionBehavior", locationName = "instanceInterruptionBehavior", 
                type = "string"), InstancePoolsToUseCount = structure(logical(0), 
                shape = "Integer", locationName = "instancePoolsToUseCount", 
                type = "integer")), shape = "SpotOptions", locationName = "spotOptions", 
                type = "structure"), OnDemandOptions = structure(list(AllocationStrategy = structure(logical(0), 
                shape = "FleetOnDemandAllocationStrategy", locationName = "allocationStrategy", 
                type = "string")), shape = "OnDemandOptions", 
                locationName = "onDemandOptions", type = "structure"), 
            Tags = structure(list(structure(list(Key = structure(logical(0), 
                shape = "String", locationName = "key", type = "string"), 
                Value = structure(logical(0), shape = "String", 
                  locationName = "value", type = "string")), 
                shape = "Tag", locationName = "item", type = "structure")), 
                shape = "TagList", locationName = "tagSet", type = "list")), 
            shape = "FleetData", locationName = "item", type = "structure")), 
            shape = "FleetSet", locationName = "fleetSet", type = "list")), 
        shape = "DescribeFleetsResult", type = "structure")
    return(populate(args, shape))
}

describe_flow_logs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), Filter = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", type = "list"), FlowLogIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "FlowLogId", 
        type = "list"), MaxResults = structure(logical(0), shape = "Integer", 
        type = "integer"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeFlowLogsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_flow_logs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FlowLogs = structure(list(structure(list(CreationTime = structure(logical(0), 
        shape = "DateTime", locationName = "creationTime", type = "timestamp"), 
        DeliverLogsErrorMessage = structure(logical(0), shape = "String", 
            locationName = "deliverLogsErrorMessage", type = "string"), 
        DeliverLogsPermissionArn = structure(logical(0), shape = "String", 
            locationName = "deliverLogsPermissionArn", type = "string"), 
        DeliverLogsStatus = structure(logical(0), shape = "String", 
            locationName = "deliverLogsStatus", type = "string"), 
        FlowLogId = structure(logical(0), shape = "String", locationName = "flowLogId", 
            type = "string"), FlowLogStatus = structure(logical(0), 
            shape = "String", locationName = "flowLogStatus", 
            type = "string"), LogGroupName = structure(logical(0), 
            shape = "String", locationName = "logGroupName", 
            type = "string"), ResourceId = structure(logical(0), 
            shape = "String", locationName = "resourceId", type = "string"), 
        TrafficType = structure(logical(0), shape = "TrafficType", 
            locationName = "trafficType", type = "string"), LogDestinationType = structure(logical(0), 
            shape = "LogDestinationType", locationName = "logDestinationType", 
            type = "string"), LogDestination = structure(logical(0), 
            shape = "String", locationName = "logDestination", 
            type = "string")), shape = "FlowLog", locationName = "item", 
        type = "structure")), shape = "FlowLogSet", locationName = "flowLogSet", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        locationName = "nextToken", type = "string")), shape = "DescribeFlowLogsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_fpga_image_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), FpgaImageId = structure(logical(0), 
        shape = "String", type = "string"), Attribute = structure(logical(0), 
        shape = "FpgaImageAttributeName", type = "string")), 
        shape = "DescribeFpgaImageAttributeRequest", type = "structure")
    return(populate(args, shape))
}

describe_fpga_image_attribute_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FpgaImageAttribute = structure(list(FpgaImageId = structure(logical(0), 
        shape = "String", locationName = "fpgaImageId", type = "string"), 
        Name = structure(logical(0), shape = "String", locationName = "name", 
            type = "string"), Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
        LoadPermissions = structure(list(structure(list(UserId = structure(logical(0), 
            shape = "String", locationName = "userId", type = "string"), 
            Group = structure(logical(0), shape = "PermissionGroup", 
                locationName = "group", type = "string")), shape = "LoadPermission", 
            locationName = "item", type = "structure")), shape = "LoadPermissionList", 
            locationName = "loadPermissions", type = "list"), 
        ProductCodes = structure(list(structure(list(ProductCodeId = structure(logical(0), 
            shape = "String", locationName = "productCode", type = "string"), 
            ProductCodeType = structure(logical(0), shape = "ProductCodeValues", 
                locationName = "type", type = "string")), shape = "ProductCode", 
            locationName = "item", type = "structure")), shape = "ProductCodeList", 
            locationName = "productCodes", type = "list")), shape = "FpgaImageAttribute", 
        locationName = "fpgaImageAttribute", type = "structure")), 
        shape = "DescribeFpgaImageAttributeResult", type = "structure")
    return(populate(args, shape))
}

describe_fpga_images_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), FpgaImageIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "FpgaImageIdList", locationName = "FpgaImageId", 
        type = "list"), Owners = structure(list(structure(logical(0), 
        shape = "String", locationName = "Owner", type = "string")), 
        shape = "OwnerStringList", locationName = "Owner", type = "list"), 
        Filters = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "Value", 
            type = "list")), shape = "Filter", locationName = "Filter", 
            type = "structure")), shape = "FilterList", locationName = "Filter", 
            type = "list"), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", max = 1024L, 
            min = 1L), MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 255L, min = 5L)), shape = "DescribeFpgaImagesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_fpga_images_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FpgaImages = structure(list(structure(list(FpgaImageId = structure(logical(0), 
        shape = "String", locationName = "fpgaImageId", type = "string"), 
        FpgaImageGlobalId = structure(logical(0), shape = "String", 
            locationName = "fpgaImageGlobalId", type = "string"), 
        Name = structure(logical(0), shape = "String", locationName = "name", 
            type = "string"), Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
        ShellVersion = structure(logical(0), shape = "String", 
            locationName = "shellVersion", type = "string"), 
        PciId = structure(list(DeviceId = structure(logical(0), 
            shape = "String", type = "string"), VendorId = structure(logical(0), 
            shape = "String", type = "string"), SubsystemId = structure(logical(0), 
            shape = "String", type = "string"), SubsystemVendorId = structure(logical(0), 
            shape = "String", type = "string")), shape = "PciId", 
            locationName = "pciId", type = "structure"), State = structure(list(Code = structure(logical(0), 
            shape = "FpgaImageStateCode", locationName = "code", 
            type = "string"), Message = structure(logical(0), 
            shape = "String", locationName = "message", type = "string")), 
            shape = "FpgaImageState", locationName = "state", 
            type = "structure"), CreateTime = structure(logical(0), 
            shape = "DateTime", locationName = "createTime", 
            type = "timestamp"), UpdateTime = structure(logical(0), 
            shape = "DateTime", locationName = "updateTime", 
            type = "timestamp"), OwnerId = structure(logical(0), 
            shape = "String", locationName = "ownerId", type = "string"), 
        OwnerAlias = structure(logical(0), shape = "String", 
            locationName = "ownerAlias", type = "string"), ProductCodes = structure(list(structure(list(ProductCodeId = structure(logical(0), 
            shape = "String", locationName = "productCode", type = "string"), 
            ProductCodeType = structure(logical(0), shape = "ProductCodeValues", 
                locationName = "type", type = "string")), shape = "ProductCode", 
            locationName = "item", type = "structure")), shape = "ProductCodeList", 
            locationName = "productCodes", type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tags", 
            type = "list"), Public = structure(logical(0), shape = "Boolean", 
            locationName = "public", type = "boolean")), shape = "FpgaImage", 
        locationName = "item", type = "structure")), shape = "FpgaImageList", 
        locationName = "fpgaImageSet", type = "list"), NextToken = structure(logical(0), 
        shape = "NextToken", locationName = "nextToken", type = "string", 
        max = 1024L, min = 1L)), shape = "DescribeFpgaImagesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_host_reservation_offerings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", type = "list"), MaxDuration = structure(logical(0), 
        shape = "Integer", type = "integer"), MaxResults = structure(logical(0), 
        shape = "Integer", type = "integer"), MinDuration = structure(logical(0), 
        shape = "Integer", type = "integer"), NextToken = structure(logical(0), 
        shape = "String", type = "string"), OfferingId = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeHostReservationOfferingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_host_reservation_offerings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string"), 
        OfferingSet = structure(list(structure(list(CurrencyCode = structure(logical(0), 
            shape = "CurrencyCodeValues", locationName = "currencyCode", 
            type = "string"), Duration = structure(logical(0), 
            shape = "Integer", locationName = "duration", type = "integer"), 
            HourlyPrice = structure(logical(0), shape = "String", 
                locationName = "hourlyPrice", type = "string"), 
            InstanceFamily = structure(logical(0), shape = "String", 
                locationName = "instanceFamily", type = "string"), 
            OfferingId = structure(logical(0), shape = "String", 
                locationName = "offeringId", type = "string"), 
            PaymentOption = structure(logical(0), shape = "PaymentOption", 
                locationName = "paymentOption", type = "string"), 
            UpfrontPrice = structure(logical(0), shape = "String", 
                locationName = "upfrontPrice", type = "string")), 
            shape = "HostOffering", locationName = "item", type = "structure")), 
            shape = "HostOfferingSet", locationName = "offeringSet", 
            type = "list")), shape = "DescribeHostReservationOfferingsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_host_reservations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", type = "list"), HostReservationIdSet = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "HostReservationIdSet", type = "list"), MaxResults = structure(logical(0), 
        shape = "Integer", type = "integer"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeHostReservationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_host_reservations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HostReservationSet = structure(list(structure(list(Count = structure(logical(0), 
        shape = "Integer", locationName = "count", type = "integer"), 
        CurrencyCode = structure(logical(0), shape = "CurrencyCodeValues", 
            locationName = "currencyCode", type = "string"), 
        Duration = structure(logical(0), shape = "Integer", locationName = "duration", 
            type = "integer"), End = structure(logical(0), shape = "DateTime", 
            locationName = "end", type = "timestamp"), HostIdSet = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ResponseHostIdSet", locationName = "hostIdSet", 
            type = "list"), HostReservationId = structure(logical(0), 
            shape = "String", locationName = "hostReservationId", 
            type = "string"), HourlyPrice = structure(logical(0), 
            shape = "String", locationName = "hourlyPrice", type = "string"), 
        InstanceFamily = structure(logical(0), shape = "String", 
            locationName = "instanceFamily", type = "string"), 
        OfferingId = structure(logical(0), shape = "String", 
            locationName = "offeringId", type = "string"), PaymentOption = structure(logical(0), 
            shape = "PaymentOption", locationName = "paymentOption", 
            type = "string"), Start = structure(logical(0), shape = "DateTime", 
            locationName = "start", type = "timestamp"), State = structure(logical(0), 
            shape = "ReservationState", locationName = "state", 
            type = "string"), UpfrontPrice = structure(logical(0), 
            shape = "String", locationName = "upfrontPrice", 
            type = "string")), shape = "HostReservation", locationName = "item", 
        type = "structure")), shape = "HostReservationSet", locationName = "hostReservationSet", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        locationName = "nextToken", type = "string")), shape = "DescribeHostReservationsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_hosts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "filter", type = "list"), 
        HostIds = structure(list(structure(logical(0), shape = "String", 
            locationName = "item", type = "string")), shape = "RequestHostIdList", 
            locationName = "hostId", type = "list"), MaxResults = structure(logical(0), 
            shape = "Integer", locationName = "maxResults", type = "integer"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string")), shape = "DescribeHostsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_hosts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Hosts = structure(list(structure(list(AutoPlacement = structure(logical(0), 
        shape = "AutoPlacement", locationName = "autoPlacement", 
        type = "string"), AvailabilityZone = structure(logical(0), 
        shape = "String", locationName = "availabilityZone", 
        type = "string"), AvailableCapacity = structure(list(AvailableInstanceCapacity = structure(list(structure(list(AvailableCapacity = structure(logical(0), 
        shape = "Integer", locationName = "availableCapacity", 
        type = "integer"), InstanceType = structure(logical(0), 
        shape = "String", locationName = "instanceType", type = "string"), 
        TotalCapacity = structure(logical(0), shape = "Integer", 
            locationName = "totalCapacity", type = "integer")), 
        shape = "InstanceCapacity", locationName = "item", type = "structure")), 
        shape = "AvailableInstanceCapacityList", locationName = "availableInstanceCapacity", 
        type = "list"), AvailableVCpus = structure(logical(0), 
        shape = "Integer", locationName = "availableVCpus", type = "integer")), 
        shape = "AvailableCapacity", locationName = "availableCapacity", 
        type = "structure"), ClientToken = structure(logical(0), 
        shape = "String", locationName = "clientToken", type = "string"), 
        HostId = structure(logical(0), shape = "String", locationName = "hostId", 
            type = "string"), HostProperties = structure(list(Cores = structure(logical(0), 
            shape = "Integer", locationName = "cores", type = "integer"), 
            InstanceType = structure(logical(0), shape = "String", 
                locationName = "instanceType", type = "string"), 
            Sockets = structure(logical(0), shape = "Integer", 
                locationName = "sockets", type = "integer"), 
            TotalVCpus = structure(logical(0), shape = "Integer", 
                locationName = "totalVCpus", type = "integer")), 
            shape = "HostProperties", locationName = "hostProperties", 
            type = "structure"), HostReservationId = structure(logical(0), 
            shape = "String", locationName = "hostReservationId", 
            type = "string"), Instances = structure(list(structure(list(InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
            InstanceType = structure(logical(0), shape = "String", 
                locationName = "instanceType", type = "string")), 
            shape = "HostInstance", locationName = "item", type = "structure")), 
            shape = "HostInstanceList", locationName = "instances", 
            type = "list"), State = structure(logical(0), shape = "AllocationState", 
            locationName = "state", type = "string"), AllocationTime = structure(logical(0), 
            shape = "DateTime", locationName = "allocationTime", 
            type = "timestamp"), ReleaseTime = structure(logical(0), 
            shape = "DateTime", locationName = "releaseTime", 
            type = "timestamp"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "Host", locationName = "item", 
        type = "structure")), shape = "HostList", locationName = "hostSet", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        locationName = "nextToken", type = "string")), shape = "DescribeHostsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_iam_instance_profile_associations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "AssociationId", type = "string")), 
        shape = "AssociationIdList", locationName = "AssociationId", 
        type = "list"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        MaxResults = structure(logical(0), shape = "MaxResults", 
            type = "integer", max = 255L, min = 5L), NextToken = structure(logical(0), 
            shape = "NextToken", type = "string", max = 1024L, 
            min = 1L)), shape = "DescribeIamInstanceProfileAssociationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_iam_instance_profile_associations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IamInstanceProfileAssociations = structure(list(structure(list(AssociationId = structure(logical(0), 
        shape = "String", locationName = "associationId", type = "string"), 
        InstanceId = structure(logical(0), shape = "String", 
            locationName = "instanceId", type = "string"), IamInstanceProfile = structure(list(Arn = structure(logical(0), 
            shape = "String", locationName = "arn", type = "string"), 
            Id = structure(logical(0), shape = "String", locationName = "id", 
                type = "string")), shape = "IamInstanceProfile", 
            locationName = "iamInstanceProfile", type = "structure"), 
        State = structure(logical(0), shape = "IamInstanceProfileAssociationState", 
            locationName = "state", type = "string"), Timestamp = structure(logical(0), 
            shape = "DateTime", locationName = "timestamp", type = "timestamp")), 
        shape = "IamInstanceProfileAssociation", locationName = "item", 
        type = "structure")), shape = "IamInstanceProfileAssociationSet", 
        locationName = "iamInstanceProfileAssociationSet", type = "list"), 
        NextToken = structure(logical(0), shape = "NextToken", 
            locationName = "nextToken", type = "string", max = 1024L, 
            min = 1L)), shape = "DescribeIamInstanceProfileAssociationsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_id_format_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Resource = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeIdFormatRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_id_format_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Statuses = structure(list(structure(list(Deadline = structure(logical(0), 
        shape = "DateTime", locationName = "deadline", type = "timestamp"), 
        Resource = structure(logical(0), shape = "String", locationName = "resource", 
            type = "string"), UseLongIds = structure(logical(0), 
            shape = "Boolean", locationName = "useLongIds", type = "boolean")), 
        shape = "IdFormat", locationName = "item", type = "structure")), 
        shape = "IdFormatList", locationName = "statusSet", type = "list")), 
        shape = "DescribeIdFormatResult", type = "structure")
    return(populate(args, shape))
}

describe_identity_id_format_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PrincipalArn = structure(logical(0), 
        shape = "String", locationName = "principalArn", type = "string"), 
        Resource = structure(logical(0), shape = "String", locationName = "resource", 
            type = "string")), shape = "DescribeIdentityIdFormatRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_identity_id_format_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Statuses = structure(list(structure(list(Deadline = structure(logical(0), 
        shape = "DateTime", locationName = "deadline", type = "timestamp"), 
        Resource = structure(logical(0), shape = "String", locationName = "resource", 
            type = "string"), UseLongIds = structure(logical(0), 
            shape = "Boolean", locationName = "useLongIds", type = "boolean")), 
        shape = "IdFormat", locationName = "item", type = "structure")), 
        shape = "IdFormatList", locationName = "statusSet", type = "list")), 
        shape = "DescribeIdentityIdFormatResult", type = "structure")
    return(populate(args, shape))
}

describe_image_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attribute = structure(logical(0), 
        shape = "ImageAttributeName", type = "string"), ImageId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DescribeImageAttributeRequest", type = "structure")
    return(populate(args, shape))
}

describe_image_attribute_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
        shape = "String", locationName = "deviceName", type = "string"), 
        VirtualName = structure(logical(0), shape = "String", 
            locationName = "virtualName", type = "string"), Ebs = structure(list(DeleteOnTermination = structure(logical(0), 
            shape = "Boolean", locationName = "deleteOnTermination", 
            type = "boolean"), Iops = structure(logical(0), shape = "Integer", 
            locationName = "iops", type = "integer"), SnapshotId = structure(logical(0), 
            shape = "String", locationName = "snapshotId", type = "string"), 
            VolumeSize = structure(logical(0), shape = "Integer", 
                locationName = "volumeSize", type = "integer"), 
            VolumeType = structure(logical(0), shape = "VolumeType", 
                locationName = "volumeType", type = "string"), 
            Encrypted = structure(logical(0), shape = "Boolean", 
                locationName = "encrypted", type = "boolean"), 
            KmsKeyId = structure(logical(0), shape = "String", 
                type = "string")), shape = "EbsBlockDevice", 
            locationName = "ebs", type = "structure"), NoDevice = structure(logical(0), 
            shape = "String", locationName = "noDevice", type = "string")), 
        shape = "BlockDeviceMapping", locationName = "item", 
        type = "structure")), shape = "BlockDeviceMappingList", 
        locationName = "blockDeviceMapping", type = "list"), 
        ImageId = structure(logical(0), shape = "String", locationName = "imageId", 
            type = "string"), LaunchPermissions = structure(list(structure(list(Group = structure(logical(0), 
            shape = "PermissionGroup", locationName = "group", 
            type = "string"), UserId = structure(logical(0), 
            shape = "String", locationName = "userId", type = "string")), 
            shape = "LaunchPermission", locationName = "item", 
            type = "structure")), shape = "LaunchPermissionList", 
            locationName = "launchPermission", type = "list"), 
        ProductCodes = structure(list(structure(list(ProductCodeId = structure(logical(0), 
            shape = "String", locationName = "productCode", type = "string"), 
            ProductCodeType = structure(logical(0), shape = "ProductCodeValues", 
                locationName = "type", type = "string")), shape = "ProductCode", 
            locationName = "item", type = "structure")), shape = "ProductCodeList", 
            locationName = "productCodes", type = "list"), Description = structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "description", 
            type = "structure"), KernelId = structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "kernel", 
            type = "structure"), RamdiskId = structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "ramdisk", 
            type = "structure"), SriovNetSupport = structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "sriovNetSupport", 
            type = "structure")), shape = "ImageAttribute", type = "structure")
    return(populate(args, shape))
}

describe_images_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExecutableUsers = structure(list(structure(logical(0), 
        shape = "String", locationName = "ExecutableBy", type = "string")), 
        shape = "ExecutableByStringList", locationName = "ExecutableBy", 
        type = "list"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        ImageIds = structure(list(structure(logical(0), shape = "String", 
            locationName = "ImageId", type = "string")), shape = "ImageIdStringList", 
            locationName = "ImageId", type = "list"), Owners = structure(list(structure(logical(0), 
            shape = "String", locationName = "Owner", type = "string")), 
            shape = "OwnerStringList", locationName = "Owner", 
            type = "list"), DryRun = structure(logical(0), shape = "Boolean", 
            locationName = "dryRun", type = "boolean")), shape = "DescribeImagesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_images_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Images = structure(list(structure(list(Architecture = structure(logical(0), 
        shape = "ArchitectureValues", locationName = "architecture", 
        type = "string"), CreationDate = structure(logical(0), 
        shape = "String", locationName = "creationDate", type = "string"), 
        ImageId = structure(logical(0), shape = "String", locationName = "imageId", 
            type = "string"), ImageLocation = structure(logical(0), 
            shape = "String", locationName = "imageLocation", 
            type = "string"), ImageType = structure(logical(0), 
            shape = "ImageTypeValues", locationName = "imageType", 
            type = "string"), Public = structure(logical(0), 
            shape = "Boolean", locationName = "isPublic", type = "boolean"), 
        KernelId = structure(logical(0), shape = "String", locationName = "kernelId", 
            type = "string"), OwnerId = structure(logical(0), 
            shape = "String", locationName = "imageOwnerId", 
            type = "string"), Platform = structure(logical(0), 
            shape = "PlatformValues", locationName = "platform", 
            type = "string"), ProductCodes = structure(list(structure(list(ProductCodeId = structure(logical(0), 
            shape = "String", locationName = "productCode", type = "string"), 
            ProductCodeType = structure(logical(0), shape = "ProductCodeValues", 
                locationName = "type", type = "string")), shape = "ProductCode", 
            locationName = "item", type = "structure")), shape = "ProductCodeList", 
            locationName = "productCodes", type = "list"), RamdiskId = structure(logical(0), 
            shape = "String", locationName = "ramdiskId", type = "string"), 
        State = structure(logical(0), shape = "ImageState", locationName = "imageState", 
            type = "string"), BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
            shape = "String", locationName = "deviceName", type = "string"), 
            VirtualName = structure(logical(0), shape = "String", 
                locationName = "virtualName", type = "string"), 
            Ebs = structure(list(DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Iops = structure(logical(0), 
                shape = "Integer", locationName = "iops", type = "integer"), 
                SnapshotId = structure(logical(0), shape = "String", 
                  locationName = "snapshotId", type = "string"), 
                VolumeSize = structure(logical(0), shape = "Integer", 
                  locationName = "volumeSize", type = "integer"), 
                VolumeType = structure(logical(0), shape = "VolumeType", 
                  locationName = "volumeType", type = "string"), 
                Encrypted = structure(logical(0), shape = "Boolean", 
                  locationName = "encrypted", type = "boolean"), 
                KmsKeyId = structure(logical(0), shape = "String", 
                  type = "string")), shape = "EbsBlockDevice", 
                locationName = "ebs", type = "structure"), NoDevice = structure(logical(0), 
                shape = "String", locationName = "noDevice", 
                type = "string")), shape = "BlockDeviceMapping", 
            locationName = "item", type = "structure")), shape = "BlockDeviceMappingList", 
            locationName = "blockDeviceMapping", type = "list"), 
        Description = structure(logical(0), shape = "String", 
            locationName = "description", type = "string"), EnaSupport = structure(logical(0), 
            shape = "Boolean", locationName = "enaSupport", type = "boolean"), 
        Hypervisor = structure(logical(0), shape = "HypervisorType", 
            locationName = "hypervisor", type = "string"), ImageOwnerAlias = structure(logical(0), 
            shape = "String", locationName = "imageOwnerAlias", 
            type = "string"), Name = structure(logical(0), shape = "String", 
            locationName = "name", type = "string"), RootDeviceName = structure(logical(0), 
            shape = "String", locationName = "rootDeviceName", 
            type = "string"), RootDeviceType = structure(logical(0), 
            shape = "DeviceType", locationName = "rootDeviceType", 
            type = "string"), SriovNetSupport = structure(logical(0), 
            shape = "String", locationName = "sriovNetSupport", 
            type = "string"), StateReason = structure(list(Code = structure(logical(0), 
            shape = "String", locationName = "code", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                locationName = "message", type = "string")), 
            shape = "StateReason", locationName = "stateReason", 
            type = "structure"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), VirtualizationType = structure(logical(0), 
            shape = "VirtualizationType", locationName = "virtualizationType", 
            type = "string")), shape = "Image", locationName = "item", 
        type = "structure")), shape = "ImageList", locationName = "imagesSet", 
        type = "list")), shape = "DescribeImagesResult", type = "structure")
    return(populate(args, shape))
}

describe_import_image_tasks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", type = "list"), ImportTaskIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "ImportTaskId", type = "string")), 
        shape = "ImportTaskIdList", locationName = "ImportTaskId", 
        type = "list"), MaxResults = structure(logical(0), shape = "Integer", 
        type = "integer"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeImportImageTasksRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_import_image_tasks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImportImageTasks = structure(list(structure(list(Architecture = structure(logical(0), 
        shape = "String", locationName = "architecture", type = "string"), 
        Description = structure(logical(0), shape = "String", 
            locationName = "description", type = "string"), Hypervisor = structure(logical(0), 
            shape = "String", locationName = "hypervisor", type = "string"), 
        ImageId = structure(logical(0), shape = "String", locationName = "imageId", 
            type = "string"), ImportTaskId = structure(logical(0), 
            shape = "String", locationName = "importTaskId", 
            type = "string"), LicenseType = structure(logical(0), 
            shape = "String", locationName = "licenseType", type = "string"), 
        Platform = structure(logical(0), shape = "String", locationName = "platform", 
            type = "string"), Progress = structure(logical(0), 
            shape = "String", locationName = "progress", type = "string"), 
        SnapshotDetails = structure(list(structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            DeviceName = structure(logical(0), shape = "String", 
                locationName = "deviceName", type = "string"), 
            DiskImageSize = structure(logical(0), shape = "Double", 
                locationName = "diskImageSize", type = "double"), 
            Format = structure(logical(0), shape = "String", 
                locationName = "format", type = "string"), Progress = structure(logical(0), 
                shape = "String", locationName = "progress", 
                type = "string"), SnapshotId = structure(logical(0), 
                shape = "String", locationName = "snapshotId", 
                type = "string"), Status = structure(logical(0), 
                shape = "String", locationName = "status", type = "string"), 
            StatusMessage = structure(logical(0), shape = "String", 
                locationName = "statusMessage", type = "string"), 
            Url = structure(logical(0), shape = "String", locationName = "url", 
                type = "string"), UserBucket = structure(list(S3Bucket = structure(logical(0), 
                shape = "String", locationName = "s3Bucket", 
                type = "string"), S3Key = structure(logical(0), 
                shape = "String", locationName = "s3Key", type = "string")), 
                shape = "UserBucketDetails", locationName = "userBucket", 
                type = "structure")), shape = "SnapshotDetail", 
            locationName = "item", type = "structure")), shape = "SnapshotDetailList", 
            locationName = "snapshotDetailSet", type = "list"), 
        Status = structure(logical(0), shape = "String", locationName = "status", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "ImportImageTask", locationName = "item", 
        type = "structure")), shape = "ImportImageTaskList", 
        locationName = "importImageTaskSet", type = "list"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string")), shape = "DescribeImportImageTasksResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_import_snapshot_tasks_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", type = "list"), ImportTaskIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "ImportTaskId", type = "string")), 
        shape = "ImportTaskIdList", locationName = "ImportTaskId", 
        type = "list"), MaxResults = structure(logical(0), shape = "Integer", 
        type = "integer"), NextToken = structure(logical(0), 
        shape = "String", type = "string")), shape = "DescribeImportSnapshotTasksRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_import_snapshot_tasks_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImportSnapshotTasks = structure(list(structure(list(Description = structure(logical(0), 
        shape = "String", locationName = "description", type = "string"), 
        ImportTaskId = structure(logical(0), shape = "String", 
            locationName = "importTaskId", type = "string"), 
        SnapshotTaskDetail = structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            DiskImageSize = structure(logical(0), shape = "Double", 
                locationName = "diskImageSize", type = "double"), 
            Format = structure(logical(0), shape = "String", 
                locationName = "format", type = "string"), Progress = structure(logical(0), 
                shape = "String", locationName = "progress", 
                type = "string"), SnapshotId = structure(logical(0), 
                shape = "String", locationName = "snapshotId", 
                type = "string"), Status = structure(logical(0), 
                shape = "String", locationName = "status", type = "string"), 
            StatusMessage = structure(logical(0), shape = "String", 
                locationName = "statusMessage", type = "string"), 
            Url = structure(logical(0), shape = "String", locationName = "url", 
                type = "string"), UserBucket = structure(list(S3Bucket = structure(logical(0), 
                shape = "String", locationName = "s3Bucket", 
                type = "string"), S3Key = structure(logical(0), 
                shape = "String", locationName = "s3Key", type = "string")), 
                shape = "UserBucketDetails", locationName = "userBucket", 
                type = "structure")), shape = "SnapshotTaskDetail", 
            locationName = "snapshotTaskDetail", type = "structure")), 
        shape = "ImportSnapshotTask", locationName = "item", 
        type = "structure")), shape = "ImportSnapshotTaskList", 
        locationName = "importSnapshotTaskSet", type = "list"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string")), shape = "DescribeImportSnapshotTasksResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_instance_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attribute = structure(logical(0), 
        shape = "InstanceAttributeName", locationName = "attribute", 
        type = "string"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string")), 
        shape = "DescribeInstanceAttributeRequest", type = "structure")
    return(populate(args, shape))
}

describe_instance_attribute_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Groups = structure(list(structure(list(GroupName = structure(logical(0), 
        shape = "String", locationName = "groupName", type = "string"), 
        GroupId = structure(logical(0), shape = "String", locationName = "groupId", 
            type = "string")), shape = "GroupIdentifier", locationName = "item", 
        type = "structure")), shape = "GroupIdentifierList", 
        locationName = "groupSet", type = "list"), BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
        shape = "String", locationName = "deviceName", type = "string"), 
        Ebs = structure(list(AttachTime = structure(logical(0), 
            shape = "DateTime", locationName = "attachTime", 
            type = "timestamp"), DeleteOnTermination = structure(logical(0), 
            shape = "Boolean", locationName = "deleteOnTermination", 
            type = "boolean"), Status = structure(logical(0), 
            shape = "AttachmentStatus", locationName = "status", 
            type = "string"), VolumeId = structure(logical(0), 
            shape = "String", locationName = "volumeId", type = "string")), 
            shape = "EbsInstanceBlockDevice", locationName = "ebs", 
            type = "structure")), shape = "InstanceBlockDeviceMapping", 
        locationName = "item", type = "structure")), shape = "InstanceBlockDeviceMappingList", 
        locationName = "blockDeviceMapping", type = "list"), 
        DisableApiTermination = structure(list(Value = structure(logical(0), 
            shape = "Boolean", locationName = "value", type = "boolean")), 
            shape = "AttributeBooleanValue", locationName = "disableApiTermination", 
            type = "structure"), EnaSupport = structure(list(Value = structure(logical(0), 
            shape = "Boolean", locationName = "value", type = "boolean")), 
            shape = "AttributeBooleanValue", locationName = "enaSupport", 
            type = "structure"), EbsOptimized = structure(list(Value = structure(logical(0), 
            shape = "Boolean", locationName = "value", type = "boolean")), 
            shape = "AttributeBooleanValue", locationName = "ebsOptimized", 
            type = "structure"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
        InstanceInitiatedShutdownBehavior = structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "instanceInitiatedShutdownBehavior", 
            type = "structure"), InstanceType = structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "instanceType", 
            type = "structure"), KernelId = structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "kernel", 
            type = "structure"), ProductCodes = structure(list(structure(list(ProductCodeId = structure(logical(0), 
            shape = "String", locationName = "productCode", type = "string"), 
            ProductCodeType = structure(logical(0), shape = "ProductCodeValues", 
                locationName = "type", type = "string")), shape = "ProductCode", 
            locationName = "item", type = "structure")), shape = "ProductCodeList", 
            locationName = "productCodes", type = "list"), RamdiskId = structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "ramdisk", 
            type = "structure"), RootDeviceName = structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "rootDeviceName", 
            type = "structure"), SourceDestCheck = structure(list(Value = structure(logical(0), 
            shape = "Boolean", locationName = "value", type = "boolean")), 
            shape = "AttributeBooleanValue", locationName = "sourceDestCheck", 
            type = "structure"), SriovNetSupport = structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "sriovNetSupport", 
            type = "structure"), UserData = structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "userData", 
            type = "structure")), shape = "InstanceAttribute", 
        type = "structure")
    return(populate(args, shape))
}

describe_instance_credit_specifications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        InstanceIds = structure(list(structure(logical(0), shape = "String", 
            locationName = "InstanceId", type = "string")), shape = "InstanceIdStringList", 
            locationName = "InstanceId", type = "list"), MaxResults = structure(logical(0), 
            shape = "Integer", type = "integer"), NextToken = structure(logical(0), 
            shape = "String", type = "string")), shape = "DescribeInstanceCreditSpecificationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_instance_credit_specifications_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceCreditSpecifications = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        CpuCredits = structure(logical(0), shape = "String", 
            locationName = "cpuCredits", type = "string")), shape = "InstanceCreditSpecification", 
        locationName = "item", type = "structure")), shape = "InstanceCreditSpecificationList", 
        locationName = "instanceCreditSpecificationSet", type = "list"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string")), shape = "DescribeInstanceCreditSpecificationsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_instance_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        InstanceIds = structure(list(structure(logical(0), shape = "String", 
            locationName = "InstanceId", type = "string")), shape = "InstanceIdStringList", 
            locationName = "InstanceId", type = "list"), MaxResults = structure(logical(0), 
            shape = "Integer", type = "integer"), NextToken = structure(logical(0), 
            shape = "String", type = "string"), DryRun = structure(logical(0), 
            shape = "Boolean", locationName = "dryRun", type = "boolean"), 
        IncludeAllInstances = structure(logical(0), shape = "Boolean", 
            locationName = "includeAllInstances", type = "boolean")), 
        shape = "DescribeInstanceStatusRequest", type = "structure")
    return(populate(args, shape))
}

describe_instance_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceStatuses = structure(list(structure(list(AvailabilityZone = structure(logical(0), 
        shape = "String", locationName = "availabilityZone", 
        type = "string"), Events = structure(list(structure(list(Code = structure(logical(0), 
        shape = "EventCode", locationName = "code", type = "string"), 
        Description = structure(logical(0), shape = "String", 
            locationName = "description", type = "string"), NotAfter = structure(logical(0), 
            shape = "DateTime", locationName = "notAfter", type = "timestamp"), 
        NotBefore = structure(logical(0), shape = "DateTime", 
            locationName = "notBefore", type = "timestamp")), 
        shape = "InstanceStatusEvent", locationName = "item", 
        type = "structure")), shape = "InstanceStatusEventList", 
        locationName = "eventsSet", type = "list"), InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        InstanceState = structure(list(Code = structure(logical(0), 
            shape = "Integer", locationName = "code", type = "integer"), 
            Name = structure(logical(0), shape = "InstanceStateName", 
                locationName = "name", type = "string")), shape = "InstanceState", 
            locationName = "instanceState", type = "structure"), 
        InstanceStatus = structure(list(Details = structure(list(structure(list(ImpairedSince = structure(logical(0), 
            shape = "DateTime", locationName = "impairedSince", 
            type = "timestamp"), Name = structure(logical(0), 
            shape = "StatusName", locationName = "name", type = "string"), 
            Status = structure(logical(0), shape = "StatusType", 
                locationName = "status", type = "string")), shape = "InstanceStatusDetails", 
            locationName = "item", type = "structure")), shape = "InstanceStatusDetailsList", 
            locationName = "details", type = "list"), Status = structure(logical(0), 
            shape = "SummaryStatus", locationName = "status", 
            type = "string")), shape = "InstanceStatusSummary", 
            locationName = "instanceStatus", type = "structure"), 
        SystemStatus = structure(list(Details = structure(list(structure(list(ImpairedSince = structure(logical(0), 
            shape = "DateTime", locationName = "impairedSince", 
            type = "timestamp"), Name = structure(logical(0), 
            shape = "StatusName", locationName = "name", type = "string"), 
            Status = structure(logical(0), shape = "StatusType", 
                locationName = "status", type = "string")), shape = "InstanceStatusDetails", 
            locationName = "item", type = "structure")), shape = "InstanceStatusDetailsList", 
            locationName = "details", type = "list"), Status = structure(logical(0), 
            shape = "SummaryStatus", locationName = "status", 
            type = "string")), shape = "InstanceStatusSummary", 
            locationName = "systemStatus", type = "structure")), 
        shape = "InstanceStatus", locationName = "item", type = "structure")), 
        shape = "InstanceStatusList", locationName = "instanceStatusSet", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        locationName = "nextToken", type = "string")), shape = "DescribeInstanceStatusResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        InstanceIds = structure(list(structure(logical(0), shape = "String", 
            locationName = "InstanceId", type = "string")), shape = "InstanceIdStringList", 
            locationName = "InstanceId", type = "list"), DryRun = structure(logical(0), 
            shape = "Boolean", locationName = "dryRun", type = "boolean"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            locationName = "maxResults", type = "integer"), NextToken = structure(logical(0), 
            shape = "String", locationName = "nextToken", type = "string")), 
        shape = "DescribeInstancesRequest", type = "structure")
    return(populate(args, shape))
}

describe_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Reservations = structure(list(structure(list(Groups = structure(list(structure(list(GroupName = structure(logical(0), 
        shape = "String", locationName = "groupName", type = "string"), 
        GroupId = structure(logical(0), shape = "String", locationName = "groupId", 
            type = "string")), shape = "GroupIdentifier", locationName = "item", 
        type = "structure")), shape = "GroupIdentifierList", 
        locationName = "groupSet", type = "list"), Instances = structure(list(structure(list(AmiLaunchIndex = structure(logical(0), 
        shape = "Integer", locationName = "amiLaunchIndex", type = "integer"), 
        ImageId = structure(logical(0), shape = "String", locationName = "imageId", 
            type = "string"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
        InstanceType = structure(logical(0), shape = "InstanceType", 
            locationName = "instanceType", type = "string"), 
        KernelId = structure(logical(0), shape = "String", locationName = "kernelId", 
            type = "string"), KeyName = structure(logical(0), 
            shape = "String", locationName = "keyName", type = "string"), 
        LaunchTime = structure(logical(0), shape = "DateTime", 
            locationName = "launchTime", type = "timestamp"), 
        Monitoring = structure(list(State = structure(logical(0), 
            shape = "MonitoringState", locationName = "state", 
            type = "string")), shape = "Monitoring", locationName = "monitoring", 
            type = "structure"), Placement = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "String", locationName = "availabilityZone", 
            type = "string"), Affinity = structure(logical(0), 
            shape = "String", locationName = "affinity", type = "string"), 
            GroupName = structure(logical(0), shape = "String", 
                locationName = "groupName", type = "string"), 
            HostId = structure(logical(0), shape = "String", 
                locationName = "hostId", type = "string"), Tenancy = structure(logical(0), 
                shape = "Tenancy", locationName = "tenancy", 
                type = "string"), SpreadDomain = structure(logical(0), 
                shape = "String", locationName = "spreadDomain", 
                type = "string")), shape = "Placement", locationName = "placement", 
            type = "structure"), Platform = structure(logical(0), 
            shape = "PlatformValues", locationName = "platform", 
            type = "string"), PrivateDnsName = structure(logical(0), 
            shape = "String", locationName = "privateDnsName", 
            type = "string"), PrivateIpAddress = structure(logical(0), 
            shape = "String", locationName = "privateIpAddress", 
            type = "string"), ProductCodes = structure(list(structure(list(ProductCodeId = structure(logical(0), 
            shape = "String", locationName = "productCode", type = "string"), 
            ProductCodeType = structure(logical(0), shape = "ProductCodeValues", 
                locationName = "type", type = "string")), shape = "ProductCode", 
            locationName = "item", type = "structure")), shape = "ProductCodeList", 
            locationName = "productCodes", type = "list"), PublicDnsName = structure(logical(0), 
            shape = "String", locationName = "dnsName", type = "string"), 
        PublicIpAddress = structure(logical(0), shape = "String", 
            locationName = "ipAddress", type = "string"), RamdiskId = structure(logical(0), 
            shape = "String", locationName = "ramdiskId", type = "string"), 
        State = structure(list(Code = structure(logical(0), shape = "Integer", 
            locationName = "code", type = "integer"), Name = structure(logical(0), 
            shape = "InstanceStateName", locationName = "name", 
            type = "string")), shape = "InstanceState", locationName = "instanceState", 
            type = "structure"), StateTransitionReason = structure(logical(0), 
            shape = "String", locationName = "reason", type = "string"), 
        SubnetId = structure(logical(0), shape = "String", locationName = "subnetId", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string"), Architecture = structure(logical(0), 
            shape = "ArchitectureValues", locationName = "architecture", 
            type = "string"), BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
            shape = "String", locationName = "deviceName", type = "string"), 
            Ebs = structure(list(AttachTime = structure(logical(0), 
                shape = "DateTime", locationName = "attachTime", 
                type = "timestamp"), DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Status = structure(logical(0), 
                shape = "AttachmentStatus", locationName = "status", 
                type = "string"), VolumeId = structure(logical(0), 
                shape = "String", locationName = "volumeId", 
                type = "string")), shape = "EbsInstanceBlockDevice", 
                locationName = "ebs", type = "structure")), shape = "InstanceBlockDeviceMapping", 
            locationName = "item", type = "structure")), shape = "InstanceBlockDeviceMappingList", 
            locationName = "blockDeviceMapping", type = "list"), 
        ClientToken = structure(logical(0), shape = "String", 
            locationName = "clientToken", type = "string"), EbsOptimized = structure(logical(0), 
            shape = "Boolean", locationName = "ebsOptimized", 
            type = "boolean"), EnaSupport = structure(logical(0), 
            shape = "Boolean", locationName = "enaSupport", type = "boolean"), 
        Hypervisor = structure(logical(0), shape = "HypervisorType", 
            locationName = "hypervisor", type = "string"), IamInstanceProfile = structure(list(Arn = structure(logical(0), 
            shape = "String", locationName = "arn", type = "string"), 
            Id = structure(logical(0), shape = "String", locationName = "id", 
                type = "string")), shape = "IamInstanceProfile", 
            locationName = "iamInstanceProfile", type = "structure"), 
        InstanceLifecycle = structure(logical(0), shape = "InstanceLifecycleType", 
            locationName = "instanceLifecycle", type = "string"), 
        ElasticGpuAssociations = structure(list(structure(list(ElasticGpuId = structure(logical(0), 
            shape = "String", locationName = "elasticGpuId", 
            type = "string"), ElasticGpuAssociationId = structure(logical(0), 
            shape = "String", locationName = "elasticGpuAssociationId", 
            type = "string"), ElasticGpuAssociationState = structure(logical(0), 
            shape = "String", locationName = "elasticGpuAssociationState", 
            type = "string"), ElasticGpuAssociationTime = structure(logical(0), 
            shape = "String", locationName = "elasticGpuAssociationTime", 
            type = "string")), shape = "ElasticGpuAssociation", 
            locationName = "item", type = "structure")), shape = "ElasticGpuAssociationList", 
            locationName = "elasticGpuAssociationSet", type = "list"), 
        NetworkInterfaces = structure(list(structure(list(Association = structure(list(IpOwnerId = structure(logical(0), 
            shape = "String", locationName = "ipOwnerId", type = "string"), 
            PublicDnsName = structure(logical(0), shape = "String", 
                locationName = "publicDnsName", type = "string"), 
            PublicIp = structure(logical(0), shape = "String", 
                locationName = "publicIp", type = "string")), 
            shape = "InstanceNetworkInterfaceAssociation", locationName = "association", 
            type = "structure"), Attachment = structure(list(AttachTime = structure(logical(0), 
            shape = "DateTime", locationName = "attachTime", 
            type = "timestamp"), AttachmentId = structure(logical(0), 
            shape = "String", locationName = "attachmentId", 
            type = "string"), DeleteOnTermination = structure(logical(0), 
            shape = "Boolean", locationName = "deleteOnTermination", 
            type = "boolean"), DeviceIndex = structure(logical(0), 
            shape = "Integer", locationName = "deviceIndex", 
            type = "integer"), Status = structure(logical(0), 
            shape = "AttachmentStatus", locationName = "status", 
            type = "string")), shape = "InstanceNetworkInterfaceAttachment", 
            locationName = "attachment", type = "structure"), 
            Description = structure(logical(0), shape = "String", 
                locationName = "description", type = "string"), 
            Groups = structure(list(structure(list(GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), GroupId = structure(logical(0), 
                shape = "String", locationName = "groupId", type = "string")), 
                shape = "GroupIdentifier", locationName = "item", 
                type = "structure")), shape = "GroupIdentifierList", 
                locationName = "groupSet", type = "list"), Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
                shape = "String", locationName = "ipv6Address", 
                type = "string")), shape = "InstanceIpv6Address", 
                locationName = "item", type = "structure")), 
                shape = "InstanceIpv6AddressList", locationName = "ipv6AddressesSet", 
                type = "list"), MacAddress = structure(logical(0), 
                shape = "String", locationName = "macAddress", 
                type = "string"), NetworkInterfaceId = structure(logical(0), 
                shape = "String", locationName = "networkInterfaceId", 
                type = "string"), OwnerId = structure(logical(0), 
                shape = "String", locationName = "ownerId", type = "string"), 
            PrivateDnsName = structure(logical(0), shape = "String", 
                locationName = "privateDnsName", type = "string"), 
            PrivateIpAddress = structure(logical(0), shape = "String", 
                locationName = "privateIpAddress", type = "string"), 
            PrivateIpAddresses = structure(list(structure(list(Association = structure(list(IpOwnerId = structure(logical(0), 
                shape = "String", locationName = "ipOwnerId", 
                type = "string"), PublicDnsName = structure(logical(0), 
                shape = "String", locationName = "publicDnsName", 
                type = "string"), PublicIp = structure(logical(0), 
                shape = "String", locationName = "publicIp", 
                type = "string")), shape = "InstanceNetworkInterfaceAssociation", 
                locationName = "association", type = "structure"), 
                Primary = structure(logical(0), shape = "Boolean", 
                  locationName = "primary", type = "boolean"), 
                PrivateDnsName = structure(logical(0), shape = "String", 
                  locationName = "privateDnsName", type = "string"), 
                PrivateIpAddress = structure(logical(0), shape = "String", 
                  locationName = "privateIpAddress", type = "string")), 
                shape = "InstancePrivateIpAddress", locationName = "item", 
                type = "structure")), shape = "InstancePrivateIpAddressList", 
                locationName = "privateIpAddressesSet", type = "list"), 
            SourceDestCheck = structure(logical(0), shape = "Boolean", 
                locationName = "sourceDestCheck", type = "boolean"), 
            Status = structure(logical(0), shape = "NetworkInterfaceStatus", 
                locationName = "status", type = "string"), SubnetId = structure(logical(0), 
                shape = "String", locationName = "subnetId", 
                type = "string"), VpcId = structure(logical(0), 
                shape = "String", locationName = "vpcId", type = "string")), 
            shape = "InstanceNetworkInterface", locationName = "item", 
            type = "structure")), shape = "InstanceNetworkInterfaceList", 
            locationName = "networkInterfaceSet", type = "list"), 
        RootDeviceName = structure(logical(0), shape = "String", 
            locationName = "rootDeviceName", type = "string"), 
        RootDeviceType = structure(logical(0), shape = "DeviceType", 
            locationName = "rootDeviceType", type = "string"), 
        SecurityGroups = structure(list(structure(list(GroupName = structure(logical(0), 
            shape = "String", locationName = "groupName", type = "string"), 
            GroupId = structure(logical(0), shape = "String", 
                locationName = "groupId", type = "string")), 
            shape = "GroupIdentifier", locationName = "item", 
            type = "structure")), shape = "GroupIdentifierList", 
            locationName = "groupSet", type = "list"), SourceDestCheck = structure(logical(0), 
            shape = "Boolean", locationName = "sourceDestCheck", 
            type = "boolean"), SpotInstanceRequestId = structure(logical(0), 
            shape = "String", locationName = "spotInstanceRequestId", 
            type = "string"), SriovNetSupport = structure(logical(0), 
            shape = "String", locationName = "sriovNetSupport", 
            type = "string"), StateReason = structure(list(Code = structure(logical(0), 
            shape = "String", locationName = "code", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                locationName = "message", type = "string")), 
            shape = "StateReason", locationName = "stateReason", 
            type = "structure"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), VirtualizationType = structure(logical(0), 
            shape = "VirtualizationType", locationName = "virtualizationType", 
            type = "string"), CpuOptions = structure(list(CoreCount = structure(logical(0), 
            shape = "Integer", locationName = "coreCount", type = "integer"), 
            ThreadsPerCore = structure(logical(0), shape = "Integer", 
                locationName = "threadsPerCore", type = "integer")), 
            shape = "CpuOptions", locationName = "cpuOptions", 
            type = "structure")), shape = "Instance", locationName = "item", 
        type = "structure")), shape = "InstanceList", locationName = "instancesSet", 
        type = "list"), OwnerId = structure(logical(0), shape = "String", 
        locationName = "ownerId", type = "string"), RequesterId = structure(logical(0), 
        shape = "String", locationName = "requesterId", type = "string"), 
        ReservationId = structure(logical(0), shape = "String", 
            locationName = "reservationId", type = "string")), 
        shape = "Reservation", locationName = "item", type = "structure")), 
        shape = "ReservationList", locationName = "reservationSet", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        locationName = "nextToken", type = "string")), shape = "DescribeInstancesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_internet_gateways_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), InternetGatewayIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "internetGatewayId", 
            type = "list")), shape = "DescribeInternetGatewaysRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_internet_gateways_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InternetGateways = structure(list(structure(list(Attachments = structure(list(structure(list(State = structure(logical(0), 
        shape = "AttachmentStatus", locationName = "state", type = "string"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string")), shape = "InternetGatewayAttachment", 
        locationName = "item", type = "structure")), shape = "InternetGatewayAttachmentList", 
        locationName = "attachmentSet", type = "list"), InternetGatewayId = structure(logical(0), 
        shape = "String", locationName = "internetGatewayId", 
        type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", locationName = "key", type = "string"), 
        Value = structure(logical(0), shape = "String", locationName = "value", 
            type = "string")), shape = "Tag", locationName = "item", 
        type = "structure")), shape = "TagList", locationName = "tagSet", 
        type = "list")), shape = "InternetGateway", locationName = "item", 
        type = "structure")), shape = "InternetGatewayList", 
        locationName = "internetGatewaySet", type = "list")), 
        shape = "DescribeInternetGatewaysResult", type = "structure")
    return(populate(args, shape))
}

describe_key_pairs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        KeyNames = structure(list(structure(logical(0), shape = "String", 
            locationName = "KeyName", type = "string")), shape = "KeyNameStringList", 
            locationName = "KeyName", type = "list"), DryRun = structure(logical(0), 
            shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DescribeKeyPairsRequest", type = "structure")
    return(populate(args, shape))
}

describe_key_pairs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyPairs = structure(list(structure(list(KeyFingerprint = structure(logical(0), 
        shape = "String", locationName = "keyFingerprint", type = "string"), 
        KeyName = structure(logical(0), shape = "String", locationName = "keyName", 
            type = "string")), shape = "KeyPairInfo", locationName = "item", 
        type = "structure")), shape = "KeyPairList", locationName = "keySet", 
        type = "list")), shape = "DescribeKeyPairsResult", type = "structure")
    return(populate(args, shape))
}

describe_launch_template_versions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), LaunchTemplateId = structure(logical(0), 
        shape = "String", type = "string"), LaunchTemplateName = structure(logical(0), 
        shape = "LaunchTemplateName", type = "string", max = 128L, 
        min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), Versions = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "VersionStringList", locationName = "LaunchTemplateVersion", 
        type = "list"), MinVersion = structure(logical(0), shape = "String", 
        type = "string"), MaxVersion = structure(logical(0), 
        shape = "String", type = "string"), NextToken = structure(logical(0), 
        shape = "String", type = "string"), MaxResults = structure(logical(0), 
        shape = "Integer", type = "integer"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list")), 
        shape = "DescribeLaunchTemplateVersionsRequest", type = "structure")
    return(populate(args, shape))
}

describe_launch_template_versions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LaunchTemplateVersions = structure(list(structure(list(LaunchTemplateId = structure(logical(0), 
        shape = "String", locationName = "launchTemplateId", 
        type = "string"), LaunchTemplateName = structure(logical(0), 
        shape = "LaunchTemplateName", locationName = "launchTemplateName", 
        type = "string", max = 128L, min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), 
        VersionNumber = structure(logical(0), shape = "Long", 
            locationName = "versionNumber", type = "long"), VersionDescription = structure(logical(0), 
            shape = "VersionDescription", locationName = "versionDescription", 
            type = "string", max = 255L), CreateTime = structure(logical(0), 
            shape = "DateTime", locationName = "createTime", 
            type = "timestamp"), CreatedBy = structure(logical(0), 
            shape = "String", locationName = "createdBy", type = "string"), 
        DefaultVersion = structure(logical(0), shape = "Boolean", 
            locationName = "defaultVersion", type = "boolean"), 
        LaunchTemplateData = structure(list(KernelId = structure(logical(0), 
            shape = "String", locationName = "kernelId", type = "string"), 
            EbsOptimized = structure(logical(0), shape = "Boolean", 
                locationName = "ebsOptimized", type = "boolean"), 
            IamInstanceProfile = structure(list(Arn = structure(logical(0), 
                shape = "String", locationName = "arn", type = "string"), 
                Name = structure(logical(0), shape = "String", 
                  locationName = "name", type = "string")), shape = "LaunchTemplateIamInstanceProfileSpecification", 
                locationName = "iamInstanceProfile", type = "structure"), 
            BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
                shape = "String", locationName = "deviceName", 
                type = "string"), VirtualName = structure(logical(0), 
                shape = "String", locationName = "virtualName", 
                type = "string"), Ebs = structure(list(Encrypted = structure(logical(0), 
                shape = "Boolean", locationName = "encrypted", 
                type = "boolean"), DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Iops = structure(logical(0), 
                shape = "Integer", locationName = "iops", type = "integer"), 
                KmsKeyId = structure(logical(0), shape = "String", 
                  locationName = "kmsKeyId", type = "string"), 
                SnapshotId = structure(logical(0), shape = "String", 
                  locationName = "snapshotId", type = "string"), 
                VolumeSize = structure(logical(0), shape = "Integer", 
                  locationName = "volumeSize", type = "integer"), 
                VolumeType = structure(logical(0), shape = "VolumeType", 
                  locationName = "volumeType", type = "string")), 
                shape = "LaunchTemplateEbsBlockDevice", locationName = "ebs", 
                type = "structure"), NoDevice = structure(logical(0), 
                shape = "String", locationName = "noDevice", 
                type = "string")), shape = "LaunchTemplateBlockDeviceMapping", 
                locationName = "item", type = "structure")), 
                shape = "LaunchTemplateBlockDeviceMappingList", 
                locationName = "blockDeviceMappingSet", type = "list"), 
            NetworkInterfaces = structure(list(structure(list(AssociatePublicIpAddress = structure(logical(0), 
                shape = "Boolean", locationName = "associatePublicIpAddress", 
                type = "boolean"), DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string"), DeviceIndex = structure(logical(0), 
                shape = "Integer", locationName = "deviceIndex", 
                type = "integer"), Groups = structure(list(structure(logical(0), 
                shape = "String", locationName = "groupId", type = "string")), 
                shape = "GroupIdStringList", locationName = "groupSet", 
                type = "list"), Ipv6AddressCount = structure(logical(0), 
                shape = "Integer", locationName = "ipv6AddressCount", 
                type = "integer"), Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
                shape = "String", locationName = "ipv6Address", 
                type = "string")), shape = "InstanceIpv6Address", 
                locationName = "item", type = "structure")), 
                shape = "InstanceIpv6AddressList", locationName = "ipv6AddressesSet", 
                type = "list"), NetworkInterfaceId = structure(logical(0), 
                shape = "String", locationName = "networkInterfaceId", 
                type = "string"), PrivateIpAddress = structure(logical(0), 
                shape = "String", locationName = "privateIpAddress", 
                type = "string"), PrivateIpAddresses = structure(list(structure(list(Primary = structure(logical(0), 
                shape = "Boolean", locationName = "primary", 
                type = "boolean"), PrivateIpAddress = structure(logical(0), 
                shape = "String", locationName = "privateIpAddress", 
                type = "string")), shape = "PrivateIpAddressSpecification", 
                locationName = "item", type = "structure")), 
                shape = "PrivateIpAddressSpecificationList", 
                locationName = "privateIpAddressesSet", type = "list"), 
                SecondaryPrivateIpAddressCount = structure(logical(0), 
                  shape = "Integer", locationName = "secondaryPrivateIpAddressCount", 
                  type = "integer"), SubnetId = structure(logical(0), 
                  shape = "String", locationName = "subnetId", 
                  type = "string")), shape = "LaunchTemplateInstanceNetworkInterfaceSpecification", 
                locationName = "item", type = "structure")), 
                shape = "LaunchTemplateInstanceNetworkInterfaceSpecificationList", 
                locationName = "networkInterfaceSet", type = "list"), 
            ImageId = structure(logical(0), shape = "String", 
                locationName = "imageId", type = "string"), InstanceType = structure(logical(0), 
                shape = "InstanceType", locationName = "instanceType", 
                type = "string"), KeyName = structure(logical(0), 
                shape = "String", locationName = "keyName", type = "string"), 
            Monitoring = structure(list(Enabled = structure(logical(0), 
                shape = "Boolean", locationName = "enabled", 
                type = "boolean")), shape = "LaunchTemplatesMonitoring", 
                locationName = "monitoring", type = "structure"), 
            Placement = structure(list(AvailabilityZone = structure(logical(0), 
                shape = "String", locationName = "availabilityZone", 
                type = "string"), Affinity = structure(logical(0), 
                shape = "String", locationName = "affinity", 
                type = "string"), GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), HostId = structure(logical(0), 
                shape = "String", locationName = "hostId", type = "string"), 
                Tenancy = structure(logical(0), shape = "Tenancy", 
                  locationName = "tenancy", type = "string"), 
                SpreadDomain = structure(logical(0), shape = "String", 
                  locationName = "spreadDomain", type = "string")), 
                shape = "LaunchTemplatePlacement", locationName = "placement", 
                type = "structure"), RamDiskId = structure(logical(0), 
                shape = "String", locationName = "ramDiskId", 
                type = "string"), DisableApiTermination = structure(logical(0), 
                shape = "Boolean", locationName = "disableApiTermination", 
                type = "boolean"), InstanceInitiatedShutdownBehavior = structure(logical(0), 
                shape = "ShutdownBehavior", locationName = "instanceInitiatedShutdownBehavior", 
                type = "string"), UserData = structure(logical(0), 
                shape = "String", locationName = "userData", 
                type = "string"), TagSpecifications = structure(list(structure(list(ResourceType = structure(logical(0), 
                shape = "ResourceType", locationName = "resourceType", 
                type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
                shape = "String", locationName = "key", type = "string"), 
                Value = structure(logical(0), shape = "String", 
                  locationName = "value", type = "string")), 
                shape = "Tag", locationName = "item", type = "structure")), 
                shape = "TagList", locationName = "tagSet", type = "list")), 
                shape = "LaunchTemplateTagSpecification", locationName = "item", 
                type = "structure")), shape = "LaunchTemplateTagSpecificationList", 
                locationName = "tagSpecificationSet", type = "list"), 
            ElasticGpuSpecifications = structure(list(structure(list(Type = structure(logical(0), 
                shape = "String", locationName = "type", type = "string")), 
                shape = "ElasticGpuSpecificationResponse", locationName = "item", 
                type = "structure")), shape = "ElasticGpuSpecificationResponseList", 
                locationName = "elasticGpuSpecificationSet", 
                type = "list"), SecurityGroupIds = structure(list(structure(logical(0), 
                shape = "String", locationName = "item", type = "string")), 
                shape = "ValueStringList", locationName = "securityGroupIdSet", 
                type = "list"), SecurityGroups = structure(list(structure(logical(0), 
                shape = "String", locationName = "item", type = "string")), 
                shape = "ValueStringList", locationName = "securityGroupSet", 
                type = "list"), InstanceMarketOptions = structure(list(MarketType = structure(logical(0), 
                shape = "MarketType", locationName = "marketType", 
                type = "string"), SpotOptions = structure(list(MaxPrice = structure(logical(0), 
                shape = "String", locationName = "maxPrice", 
                type = "string"), SpotInstanceType = structure(logical(0), 
                shape = "SpotInstanceType", locationName = "spotInstanceType", 
                type = "string"), BlockDurationMinutes = structure(logical(0), 
                shape = "Integer", locationName = "blockDurationMinutes", 
                type = "integer"), ValidUntil = structure(logical(0), 
                shape = "DateTime", locationName = "validUntil", 
                type = "timestamp"), InstanceInterruptionBehavior = structure(logical(0), 
                shape = "InstanceInterruptionBehavior", locationName = "instanceInterruptionBehavior", 
                type = "string")), shape = "LaunchTemplateSpotMarketOptions", 
                locationName = "spotOptions", type = "structure")), 
                shape = "LaunchTemplateInstanceMarketOptions", 
                locationName = "instanceMarketOptions", type = "structure"), 
            CreditSpecification = structure(list(CpuCredits = structure(logical(0), 
                shape = "String", locationName = "cpuCredits", 
                type = "string")), shape = "CreditSpecification", 
                locationName = "creditSpecification", type = "structure"), 
            CpuOptions = structure(list(CoreCount = structure(logical(0), 
                shape = "Integer", locationName = "coreCount", 
                type = "integer"), ThreadsPerCore = structure(logical(0), 
                shape = "Integer", locationName = "threadsPerCore", 
                type = "integer")), shape = "LaunchTemplateCpuOptions", 
                locationName = "cpuOptions", type = "structure")), 
            shape = "ResponseLaunchTemplateData", locationName = "launchTemplateData", 
            type = "structure")), shape = "LaunchTemplateVersion", 
        locationName = "item", type = "structure")), shape = "LaunchTemplateVersionSet", 
        locationName = "launchTemplateVersionSet", type = "list"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string")), shape = "DescribeLaunchTemplateVersionsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_launch_templates_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), LaunchTemplateIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "LaunchTemplateId", 
        type = "list"), LaunchTemplateNames = structure(list(structure(logical(0), 
        shape = "LaunchTemplateName", locationName = "item", 
        type = "string", max = 128L, min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+")), 
        shape = "LaunchTemplateNameStringList", locationName = "LaunchTemplateName", 
        type = "list"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer")), shape = "DescribeLaunchTemplatesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_launch_templates_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LaunchTemplates = structure(list(structure(list(LaunchTemplateId = structure(logical(0), 
        shape = "String", locationName = "launchTemplateId", 
        type = "string"), LaunchTemplateName = structure(logical(0), 
        shape = "LaunchTemplateName", locationName = "launchTemplateName", 
        type = "string", max = 128L, min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), 
        CreateTime = structure(logical(0), shape = "DateTime", 
            locationName = "createTime", type = "timestamp"), 
        CreatedBy = structure(logical(0), shape = "String", locationName = "createdBy", 
            type = "string"), DefaultVersionNumber = structure(logical(0), 
            shape = "Long", locationName = "defaultVersionNumber", 
            type = "long"), LatestVersionNumber = structure(logical(0), 
            shape = "Long", locationName = "latestVersionNumber", 
            type = "long"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "LaunchTemplate", locationName = "item", 
        type = "structure")), shape = "LaunchTemplateSet", locationName = "launchTemplates", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        locationName = "nextToken", type = "string")), shape = "DescribeLaunchTemplatesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_moving_addresses_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "filter", type = "list"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), MaxResults = structure(logical(0), 
            shape = "Integer", locationName = "maxResults", type = "integer"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string"), PublicIps = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "publicIp", 
            type = "list")), shape = "DescribeMovingAddressesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_moving_addresses_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MovingAddressStatuses = structure(list(structure(list(MoveStatus = structure(logical(0), 
        shape = "MoveStatus", locationName = "moveStatus", type = "string"), 
        PublicIp = structure(logical(0), shape = "String", locationName = "publicIp", 
            type = "string")), shape = "MovingAddressStatus", 
        locationName = "item", type = "structure")), shape = "MovingAddressStatusSet", 
        locationName = "movingAddressStatusSet", type = "list"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string")), shape = "DescribeMovingAddressesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_nat_gateways_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filter = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", type = "list"), MaxResults = structure(logical(0), 
        shape = "Integer", type = "integer"), NatGatewayIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "NatGatewayId", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        type = "string")), shape = "DescribeNatGatewaysRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_nat_gateways_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NatGateways = structure(list(structure(list(CreateTime = structure(logical(0), 
        shape = "DateTime", locationName = "createTime", type = "timestamp"), 
        DeleteTime = structure(logical(0), shape = "DateTime", 
            locationName = "deleteTime", type = "timestamp"), 
        FailureCode = structure(logical(0), shape = "String", 
            locationName = "failureCode", type = "string"), FailureMessage = structure(logical(0), 
            shape = "String", locationName = "failureMessage", 
            type = "string"), NatGatewayAddresses = structure(list(structure(list(AllocationId = structure(logical(0), 
            shape = "String", locationName = "allocationId", 
            type = "string"), NetworkInterfaceId = structure(logical(0), 
            shape = "String", locationName = "networkInterfaceId", 
            type = "string"), PrivateIp = structure(logical(0), 
            shape = "String", locationName = "privateIp", type = "string"), 
            PublicIp = structure(logical(0), shape = "String", 
                locationName = "publicIp", type = "string")), 
            shape = "NatGatewayAddress", locationName = "item", 
            type = "structure")), shape = "NatGatewayAddressList", 
            locationName = "natGatewayAddressSet", type = "list"), 
        NatGatewayId = structure(logical(0), shape = "String", 
            locationName = "natGatewayId", type = "string"), 
        ProvisionedBandwidth = structure(list(ProvisionTime = structure(logical(0), 
            shape = "DateTime", locationName = "provisionTime", 
            type = "timestamp"), Provisioned = structure(logical(0), 
            shape = "String", locationName = "provisioned", type = "string"), 
            RequestTime = structure(logical(0), shape = "DateTime", 
                locationName = "requestTime", type = "timestamp"), 
            Requested = structure(logical(0), shape = "String", 
                locationName = "requested", type = "string"), 
            Status = structure(logical(0), shape = "String", 
                locationName = "status", type = "string")), shape = "ProvisionedBandwidth", 
            locationName = "provisionedBandwidth", type = "structure"), 
        State = structure(logical(0), shape = "NatGatewayState", 
            locationName = "state", type = "string"), SubnetId = structure(logical(0), 
            shape = "String", locationName = "subnetId", type = "string"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "NatGateway", locationName = "item", 
        type = "structure")), shape = "NatGatewayList", locationName = "natGatewaySet", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        locationName = "nextToken", type = "string")), shape = "DescribeNatGatewaysResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_network_acls_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), NetworkAclIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "NetworkAclId", 
            type = "list")), shape = "DescribeNetworkAclsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_network_acls_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NetworkAcls = structure(list(structure(list(Associations = structure(list(structure(list(NetworkAclAssociationId = structure(logical(0), 
        shape = "String", locationName = "networkAclAssociationId", 
        type = "string"), NetworkAclId = structure(logical(0), 
        shape = "String", locationName = "networkAclId", type = "string"), 
        SubnetId = structure(logical(0), shape = "String", locationName = "subnetId", 
            type = "string")), shape = "NetworkAclAssociation", 
        locationName = "item", type = "structure")), shape = "NetworkAclAssociationList", 
        locationName = "associationSet", type = "list"), Entries = structure(list(structure(list(CidrBlock = structure(logical(0), 
        shape = "String", locationName = "cidrBlock", type = "string"), 
        Egress = structure(logical(0), shape = "Boolean", locationName = "egress", 
            type = "boolean"), IcmpTypeCode = structure(list(Code = structure(logical(0), 
            shape = "Integer", locationName = "code", type = "integer"), 
            Type = structure(logical(0), shape = "Integer", locationName = "type", 
                type = "integer")), shape = "IcmpTypeCode", locationName = "icmpTypeCode", 
            type = "structure"), Ipv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "ipv6CidrBlock", 
            type = "string"), PortRange = structure(list(From = structure(logical(0), 
            shape = "Integer", locationName = "from", type = "integer"), 
            To = structure(logical(0), shape = "Integer", locationName = "to", 
                type = "integer")), shape = "PortRange", locationName = "portRange", 
            type = "structure"), Protocol = structure(logical(0), 
            shape = "String", locationName = "protocol", type = "string"), 
        RuleAction = structure(logical(0), shape = "RuleAction", 
            locationName = "ruleAction", type = "string"), RuleNumber = structure(logical(0), 
            shape = "Integer", locationName = "ruleNumber", type = "integer")), 
        shape = "NetworkAclEntry", locationName = "item", type = "structure")), 
        shape = "NetworkAclEntryList", locationName = "entrySet", 
        type = "list"), IsDefault = structure(logical(0), shape = "Boolean", 
        locationName = "default", type = "boolean"), NetworkAclId = structure(logical(0), 
        shape = "String", locationName = "networkAclId", type = "string"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string")), shape = "NetworkAcl", 
        locationName = "item", type = "structure")), shape = "NetworkAclList", 
        locationName = "networkAclSet", type = "list")), shape = "DescribeNetworkAclsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_network_interface_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attribute = structure(logical(0), 
        shape = "NetworkInterfaceAttribute", locationName = "attribute", 
        type = "string"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), NetworkInterfaceId = structure(logical(0), 
        shape = "String", locationName = "networkInterfaceId", 
        type = "string")), shape = "DescribeNetworkInterfaceAttributeRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_network_interface_attribute_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attachment = structure(list(AttachTime = structure(logical(0), 
        shape = "DateTime", locationName = "attachTime", type = "timestamp"), 
        AttachmentId = structure(logical(0), shape = "String", 
            locationName = "attachmentId", type = "string"), 
        DeleteOnTermination = structure(logical(0), shape = "Boolean", 
            locationName = "deleteOnTermination", type = "boolean"), 
        DeviceIndex = structure(logical(0), shape = "Integer", 
            locationName = "deviceIndex", type = "integer"), 
        InstanceId = structure(logical(0), shape = "String", 
            locationName = "instanceId", type = "string"), InstanceOwnerId = structure(logical(0), 
            shape = "String", locationName = "instanceOwnerId", 
            type = "string"), Status = structure(logical(0), 
            shape = "AttachmentStatus", locationName = "status", 
            type = "string")), shape = "NetworkInterfaceAttachment", 
        locationName = "attachment", type = "structure"), Description = structure(list(Value = structure(logical(0), 
        shape = "String", locationName = "value", type = "string")), 
        shape = "AttributeValue", locationName = "description", 
        type = "structure"), Groups = structure(list(structure(list(GroupName = structure(logical(0), 
        shape = "String", locationName = "groupName", type = "string"), 
        GroupId = structure(logical(0), shape = "String", locationName = "groupId", 
            type = "string")), shape = "GroupIdentifier", locationName = "item", 
        type = "structure")), shape = "GroupIdentifierList", 
        locationName = "groupSet", type = "list"), NetworkInterfaceId = structure(logical(0), 
        shape = "String", locationName = "networkInterfaceId", 
        type = "string"), SourceDestCheck = structure(list(Value = structure(logical(0), 
        shape = "Boolean", locationName = "value", type = "boolean")), 
        shape = "AttributeBooleanValue", locationName = "sourceDestCheck", 
        type = "structure")), shape = "DescribeNetworkInterfaceAttributeResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_network_interface_permissions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NetworkInterfacePermissionIds = structure(list(structure(logical(0), 
        shape = "String", type = "string")), shape = "NetworkInterfacePermissionIdList", 
        locationName = "NetworkInterfacePermissionId", type = "list"), 
        Filters = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "Value", 
            type = "list")), shape = "Filter", locationName = "Filter", 
            type = "structure")), shape = "FilterList", locationName = "Filter", 
            type = "list"), NextToken = structure(logical(0), 
            shape = "String", type = "string"), MaxResults = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "DescribeNetworkInterfacePermissionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_network_interface_permissions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NetworkInterfacePermissions = structure(list(structure(list(NetworkInterfacePermissionId = structure(logical(0), 
        shape = "String", locationName = "networkInterfacePermissionId", 
        type = "string"), NetworkInterfaceId = structure(logical(0), 
        shape = "String", locationName = "networkInterfaceId", 
        type = "string"), AwsAccountId = structure(logical(0), 
        shape = "String", locationName = "awsAccountId", type = "string"), 
        AwsService = structure(logical(0), shape = "String", 
            locationName = "awsService", type = "string"), Permission = structure(logical(0), 
            shape = "InterfacePermissionType", locationName = "permission", 
            type = "string"), PermissionState = structure(list(State = structure(logical(0), 
            shape = "NetworkInterfacePermissionStateCode", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "NetworkInterfacePermissionState", 
            locationName = "permissionState", type = "structure")), 
        shape = "NetworkInterfacePermission", locationName = "item", 
        type = "structure")), shape = "NetworkInterfacePermissionList", 
        locationName = "networkInterfacePermissions", type = "list"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string")), shape = "DescribeNetworkInterfacePermissionsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_network_interfaces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "filter", type = "list"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), NetworkInterfaceIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "NetworkInterfaceIdList", locationName = "NetworkInterfaceId", 
            type = "list"), NextToken = structure(logical(0), 
            shape = "String", type = "string"), MaxResults = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "DescribeNetworkInterfacesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_network_interfaces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NetworkInterfaces = structure(list(structure(list(Association = structure(list(AllocationId = structure(logical(0), 
        shape = "String", locationName = "allocationId", type = "string"), 
        AssociationId = structure(logical(0), shape = "String", 
            locationName = "associationId", type = "string"), 
        IpOwnerId = structure(logical(0), shape = "String", locationName = "ipOwnerId", 
            type = "string"), PublicDnsName = structure(logical(0), 
            shape = "String", locationName = "publicDnsName", 
            type = "string"), PublicIp = structure(logical(0), 
            shape = "String", locationName = "publicIp", type = "string")), 
        shape = "NetworkInterfaceAssociation", locationName = "association", 
        type = "structure"), Attachment = structure(list(AttachTime = structure(logical(0), 
        shape = "DateTime", locationName = "attachTime", type = "timestamp"), 
        AttachmentId = structure(logical(0), shape = "String", 
            locationName = "attachmentId", type = "string"), 
        DeleteOnTermination = structure(logical(0), shape = "Boolean", 
            locationName = "deleteOnTermination", type = "boolean"), 
        DeviceIndex = structure(logical(0), shape = "Integer", 
            locationName = "deviceIndex", type = "integer"), 
        InstanceId = structure(logical(0), shape = "String", 
            locationName = "instanceId", type = "string"), InstanceOwnerId = structure(logical(0), 
            shape = "String", locationName = "instanceOwnerId", 
            type = "string"), Status = structure(logical(0), 
            shape = "AttachmentStatus", locationName = "status", 
            type = "string")), shape = "NetworkInterfaceAttachment", 
        locationName = "attachment", type = "structure"), AvailabilityZone = structure(logical(0), 
        shape = "String", locationName = "availabilityZone", 
        type = "string"), Description = structure(logical(0), 
        shape = "String", locationName = "description", type = "string"), 
        Groups = structure(list(structure(list(GroupName = structure(logical(0), 
            shape = "String", locationName = "groupName", type = "string"), 
            GroupId = structure(logical(0), shape = "String", 
                locationName = "groupId", type = "string")), 
            shape = "GroupIdentifier", locationName = "item", 
            type = "structure")), shape = "GroupIdentifierList", 
            locationName = "groupSet", type = "list"), InterfaceType = structure(logical(0), 
            shape = "NetworkInterfaceType", locationName = "interfaceType", 
            type = "string"), Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
            shape = "String", locationName = "ipv6Address", type = "string")), 
            shape = "NetworkInterfaceIpv6Address", locationName = "item", 
            type = "structure")), shape = "NetworkInterfaceIpv6AddressesList", 
            locationName = "ipv6AddressesSet", type = "list"), 
        MacAddress = structure(logical(0), shape = "String", 
            locationName = "macAddress", type = "string"), NetworkInterfaceId = structure(logical(0), 
            shape = "String", locationName = "networkInterfaceId", 
            type = "string"), OwnerId = structure(logical(0), 
            shape = "String", locationName = "ownerId", type = "string"), 
        PrivateDnsName = structure(logical(0), shape = "String", 
            locationName = "privateDnsName", type = "string"), 
        PrivateIpAddress = structure(logical(0), shape = "String", 
            locationName = "privateIpAddress", type = "string"), 
        PrivateIpAddresses = structure(list(structure(list(Association = structure(list(AllocationId = structure(logical(0), 
            shape = "String", locationName = "allocationId", 
            type = "string"), AssociationId = structure(logical(0), 
            shape = "String", locationName = "associationId", 
            type = "string"), IpOwnerId = structure(logical(0), 
            shape = "String", locationName = "ipOwnerId", type = "string"), 
            PublicDnsName = structure(logical(0), shape = "String", 
                locationName = "publicDnsName", type = "string"), 
            PublicIp = structure(logical(0), shape = "String", 
                locationName = "publicIp", type = "string")), 
            shape = "NetworkInterfaceAssociation", locationName = "association", 
            type = "structure"), Primary = structure(logical(0), 
            shape = "Boolean", locationName = "primary", type = "boolean"), 
            PrivateDnsName = structure(logical(0), shape = "String", 
                locationName = "privateDnsName", type = "string"), 
            PrivateIpAddress = structure(logical(0), shape = "String", 
                locationName = "privateIpAddress", type = "string")), 
            shape = "NetworkInterfacePrivateIpAddress", locationName = "item", 
            type = "structure")), shape = "NetworkInterfacePrivateIpAddressList", 
            locationName = "privateIpAddressesSet", type = "list"), 
        RequesterId = structure(logical(0), shape = "String", 
            locationName = "requesterId", type = "string"), RequesterManaged = structure(logical(0), 
            shape = "Boolean", locationName = "requesterManaged", 
            type = "boolean"), SourceDestCheck = structure(logical(0), 
            shape = "Boolean", locationName = "sourceDestCheck", 
            type = "boolean"), Status = structure(logical(0), 
            shape = "NetworkInterfaceStatus", locationName = "status", 
            type = "string"), SubnetId = structure(logical(0), 
            shape = "String", locationName = "subnetId", type = "string"), 
        TagSet = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string")), shape = "NetworkInterface", 
        locationName = "item", type = "structure")), shape = "NetworkInterfaceList", 
        locationName = "networkInterfaceSet", type = "list"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string")), shape = "DescribeNetworkInterfacesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_placement_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), GroupNames = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "PlacementGroupStringList", 
            locationName = "groupName", type = "list")), shape = "DescribePlacementGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_placement_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PlacementGroups = structure(list(structure(list(GroupName = structure(logical(0), 
        shape = "String", locationName = "groupName", type = "string"), 
        State = structure(logical(0), shape = "PlacementGroupState", 
            locationName = "state", type = "string"), Strategy = structure(logical(0), 
            shape = "PlacementStrategy", locationName = "strategy", 
            type = "string")), shape = "PlacementGroup", locationName = "item", 
        type = "structure")), shape = "PlacementGroupList", locationName = "placementGroupSet", 
        type = "list")), shape = "DescribePlacementGroupsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_prefix_lists_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer"), NextToken = structure(logical(0), 
            shape = "String", type = "string"), PrefixListIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "PrefixListId", 
            type = "list")), shape = "DescribePrefixListsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_prefix_lists_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string"), 
        PrefixLists = structure(list(structure(list(Cidrs = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "cidrSet", 
            type = "list"), PrefixListId = structure(logical(0), 
            shape = "String", locationName = "prefixListId", 
            type = "string"), PrefixListName = structure(logical(0), 
            shape = "String", locationName = "prefixListName", 
            type = "string")), shape = "PrefixList", locationName = "item", 
            type = "structure")), shape = "PrefixListSet", locationName = "prefixListSet", 
            type = "list")), shape = "DescribePrefixListsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_principal_id_format_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), Resources = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ResourceList", locationName = "Resource", type = "list"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer"), NextToken = structure(logical(0), 
            shape = "String", type = "string")), shape = "DescribePrincipalIdFormatRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_principal_id_format_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Principals = structure(list(structure(list(Arn = structure(logical(0), 
        shape = "String", locationName = "arn", type = "string"), 
        Statuses = structure(list(structure(list(Deadline = structure(logical(0), 
            shape = "DateTime", locationName = "deadline", type = "timestamp"), 
            Resource = structure(logical(0), shape = "String", 
                locationName = "resource", type = "string"), 
            UseLongIds = structure(logical(0), shape = "Boolean", 
                locationName = "useLongIds", type = "boolean")), 
            shape = "IdFormat", locationName = "item", type = "structure")), 
            shape = "IdFormatList", locationName = "statusSet", 
            type = "list")), shape = "PrincipalIdFormat", locationName = "item", 
        type = "structure")), shape = "PrincipalIdFormatList", 
        locationName = "principalSet", type = "list"), NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string")), 
        shape = "DescribePrincipalIdFormatResult", type = "structure")
    return(populate(args, shape))
}

describe_regions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        RegionNames = structure(list(structure(logical(0), shape = "String", 
            locationName = "RegionName", type = "string")), shape = "RegionNameStringList", 
            locationName = "RegionName", type = "list"), DryRun = structure(logical(0), 
            shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DescribeRegionsRequest", type = "structure")
    return(populate(args, shape))
}

describe_regions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Regions = structure(list(structure(list(Endpoint = structure(logical(0), 
        shape = "String", locationName = "regionEndpoint", type = "string"), 
        RegionName = structure(logical(0), shape = "String", 
            locationName = "regionName", type = "string")), shape = "Region", 
        locationName = "item", type = "structure")), shape = "RegionList", 
        locationName = "regionInfo", type = "list")), shape = "DescribeRegionsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        OfferingClass = structure(logical(0), shape = "OfferingClassType", 
            type = "string"), ReservedInstancesIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReservedInstancesId", 
            type = "string")), shape = "ReservedInstancesIdStringList", 
            locationName = "ReservedInstancesId", type = "list"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), OfferingType = structure(logical(0), 
            shape = "OfferingTypeValues", locationName = "offeringType", 
            type = "string")), shape = "DescribeReservedInstancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedInstances = structure(list(structure(list(AvailabilityZone = structure(logical(0), 
        shape = "String", locationName = "availabilityZone", 
        type = "string"), Duration = structure(logical(0), shape = "Long", 
        locationName = "duration", type = "long"), End = structure(logical(0), 
        shape = "DateTime", locationName = "end", type = "timestamp"), 
        FixedPrice = structure(logical(0), shape = "Float", locationName = "fixedPrice", 
            type = "float"), InstanceCount = structure(logical(0), 
            shape = "Integer", locationName = "instanceCount", 
            type = "integer"), InstanceType = structure(logical(0), 
            shape = "InstanceType", locationName = "instanceType", 
            type = "string"), ProductDescription = structure(logical(0), 
            shape = "RIProductDescription", locationName = "productDescription", 
            type = "string"), ReservedInstancesId = structure(logical(0), 
            shape = "String", locationName = "reservedInstancesId", 
            type = "string"), Start = structure(logical(0), shape = "DateTime", 
            locationName = "start", type = "timestamp"), State = structure(logical(0), 
            shape = "ReservedInstanceState", locationName = "state", 
            type = "string"), UsagePrice = structure(logical(0), 
            shape = "Float", locationName = "usagePrice", type = "float"), 
        CurrencyCode = structure(logical(0), shape = "CurrencyCodeValues", 
            locationName = "currencyCode", type = "string"), 
        InstanceTenancy = structure(logical(0), shape = "Tenancy", 
            locationName = "instanceTenancy", type = "string"), 
        OfferingClass = structure(logical(0), shape = "OfferingClassType", 
            locationName = "offeringClass", type = "string"), 
        OfferingType = structure(logical(0), shape = "OfferingTypeValues", 
            locationName = "offeringType", type = "string"), 
        RecurringCharges = structure(list(structure(list(Amount = structure(logical(0), 
            shape = "Double", locationName = "amount", type = "double"), 
            Frequency = structure(logical(0), shape = "RecurringChargeFrequency", 
                locationName = "frequency", type = "string")), 
            shape = "RecurringCharge", locationName = "item", 
            type = "structure")), shape = "RecurringChargesList", 
            locationName = "recurringCharges", type = "list"), 
        Scope = structure(logical(0), shape = "scope", locationName = "scope", 
            type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "ReservedInstances", locationName = "item", 
        type = "structure")), shape = "ReservedInstancesList", 
        locationName = "reservedInstancesSet", type = "list")), 
        shape = "DescribeReservedInstancesResult", type = "structure")
    return(populate(args, shape))
}

describe_reserved_instances_listings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        ReservedInstancesId = structure(logical(0), shape = "String", 
            locationName = "reservedInstancesId", type = "string"), 
        ReservedInstancesListingId = structure(logical(0), shape = "String", 
            locationName = "reservedInstancesListingId", type = "string")), 
        shape = "DescribeReservedInstancesListingsRequest", type = "structure")
    return(populate(args, shape))
}

describe_reserved_instances_listings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedInstancesListings = structure(list(structure(list(ClientToken = structure(logical(0), 
        shape = "String", locationName = "clientToken", type = "string"), 
        CreateDate = structure(logical(0), shape = "DateTime", 
            locationName = "createDate", type = "timestamp"), 
        InstanceCounts = structure(list(structure(list(InstanceCount = structure(logical(0), 
            shape = "Integer", locationName = "instanceCount", 
            type = "integer"), State = structure(logical(0), 
            shape = "ListingState", locationName = "state", type = "string")), 
            shape = "InstanceCount", locationName = "item", type = "structure")), 
            shape = "InstanceCountList", locationName = "instanceCounts", 
            type = "list"), PriceSchedules = structure(list(structure(list(Active = structure(logical(0), 
            shape = "Boolean", locationName = "active", type = "boolean"), 
            CurrencyCode = structure(logical(0), shape = "CurrencyCodeValues", 
                locationName = "currencyCode", type = "string"), 
            Price = structure(logical(0), shape = "Double", locationName = "price", 
                type = "double"), Term = structure(logical(0), 
                shape = "Long", locationName = "term", type = "long")), 
            shape = "PriceSchedule", locationName = "item", type = "structure")), 
            shape = "PriceScheduleList", locationName = "priceSchedules", 
            type = "list"), ReservedInstancesId = structure(logical(0), 
            shape = "String", locationName = "reservedInstancesId", 
            type = "string"), ReservedInstancesListingId = structure(logical(0), 
            shape = "String", locationName = "reservedInstancesListingId", 
            type = "string"), Status = structure(logical(0), 
            shape = "ListingStatus", locationName = "status", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), UpdateDate = structure(logical(0), 
            shape = "DateTime", locationName = "updateDate", 
            type = "timestamp")), shape = "ReservedInstancesListing", 
        locationName = "item", type = "structure")), shape = "ReservedInstancesListingList", 
        locationName = "reservedInstancesListingsSet", type = "list")), 
        shape = "DescribeReservedInstancesListingsResult", type = "structure")
    return(populate(args, shape))
}

describe_reserved_instances_modifications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        ReservedInstancesModificationIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "ReservedInstancesModificationId", 
            type = "string")), shape = "ReservedInstancesModificationIdStringList", 
            locationName = "ReservedInstancesModificationId", 
            type = "list"), NextToken = structure(logical(0), 
            shape = "String", locationName = "nextToken", type = "string")), 
        shape = "DescribeReservedInstancesModificationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_instances_modifications_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string"), 
        ReservedInstancesModifications = structure(list(structure(list(ClientToken = structure(logical(0), 
            shape = "String", locationName = "clientToken", type = "string"), 
            CreateDate = structure(logical(0), shape = "DateTime", 
                locationName = "createDate", type = "timestamp"), 
            EffectiveDate = structure(logical(0), shape = "DateTime", 
                locationName = "effectiveDate", type = "timestamp"), 
            ModificationResults = structure(list(structure(list(ReservedInstancesId = structure(logical(0), 
                shape = "String", locationName = "reservedInstancesId", 
                type = "string"), TargetConfiguration = structure(list(AvailabilityZone = structure(logical(0), 
                shape = "String", locationName = "availabilityZone", 
                type = "string"), InstanceCount = structure(logical(0), 
                shape = "Integer", locationName = "instanceCount", 
                type = "integer"), InstanceType = structure(logical(0), 
                shape = "InstanceType", locationName = "instanceType", 
                type = "string"), Platform = structure(logical(0), 
                shape = "String", locationName = "platform", 
                type = "string"), Scope = structure(logical(0), 
                shape = "scope", locationName = "scope", type = "string")), 
                shape = "ReservedInstancesConfiguration", locationName = "targetConfiguration", 
                type = "structure")), shape = "ReservedInstancesModificationResult", 
                locationName = "item", type = "structure")), 
                shape = "ReservedInstancesModificationResultList", 
                locationName = "modificationResultSet", type = "list"), 
            ReservedInstancesIds = structure(list(structure(list(ReservedInstancesId = structure(logical(0), 
                shape = "String", locationName = "reservedInstancesId", 
                type = "string")), shape = "ReservedInstancesId", 
                locationName = "item", type = "structure")), 
                shape = "ReservedIntancesIds", locationName = "reservedInstancesSet", 
                type = "list"), ReservedInstancesModificationId = structure(logical(0), 
                shape = "String", locationName = "reservedInstancesModificationId", 
                type = "string"), Status = structure(logical(0), 
                shape = "String", locationName = "status", type = "string"), 
            StatusMessage = structure(logical(0), shape = "String", 
                locationName = "statusMessage", type = "string"), 
            UpdateDate = structure(logical(0), shape = "DateTime", 
                locationName = "updateDate", type = "timestamp")), 
            shape = "ReservedInstancesModification", locationName = "item", 
            type = "structure")), shape = "ReservedInstancesModificationList", 
            locationName = "reservedInstancesModificationsSet", 
            type = "list")), shape = "DescribeReservedInstancesModificationsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_instances_offerings_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailabilityZone = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        IncludeMarketplace = structure(logical(0), shape = "Boolean", 
            type = "boolean"), InstanceType = structure(logical(0), 
            shape = "InstanceType", type = "string"), MaxDuration = structure(logical(0), 
            shape = "Long", type = "long"), MaxInstanceCount = structure(logical(0), 
            shape = "Integer", type = "integer"), MinDuration = structure(logical(0), 
            shape = "Long", type = "long"), OfferingClass = structure(logical(0), 
            shape = "OfferingClassType", type = "string"), ProductDescription = structure(logical(0), 
            shape = "RIProductDescription", type = "string"), 
        ReservedInstancesOfferingIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ReservedInstancesOfferingIdStringList", 
            locationName = "ReservedInstancesOfferingId", type = "list"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), InstanceTenancy = structure(logical(0), 
            shape = "Tenancy", locationName = "instanceTenancy", 
            type = "string"), MaxResults = structure(logical(0), 
            shape = "Integer", locationName = "maxResults", type = "integer"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string"), OfferingType = structure(logical(0), 
            shape = "OfferingTypeValues", locationName = "offeringType", 
            type = "string")), shape = "DescribeReservedInstancesOfferingsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_reserved_instances_offerings_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedInstancesOfferings = structure(list(structure(list(AvailabilityZone = structure(logical(0), 
        shape = "String", locationName = "availabilityZone", 
        type = "string"), Duration = structure(logical(0), shape = "Long", 
        locationName = "duration", type = "long"), FixedPrice = structure(logical(0), 
        shape = "Float", locationName = "fixedPrice", type = "float"), 
        InstanceType = structure(logical(0), shape = "InstanceType", 
            locationName = "instanceType", type = "string"), 
        ProductDescription = structure(logical(0), shape = "RIProductDescription", 
            locationName = "productDescription", type = "string"), 
        ReservedInstancesOfferingId = structure(logical(0), shape = "String", 
            locationName = "reservedInstancesOfferingId", type = "string"), 
        UsagePrice = structure(logical(0), shape = "Float", locationName = "usagePrice", 
            type = "float"), CurrencyCode = structure(logical(0), 
            shape = "CurrencyCodeValues", locationName = "currencyCode", 
            type = "string"), InstanceTenancy = structure(logical(0), 
            shape = "Tenancy", locationName = "instanceTenancy", 
            type = "string"), Marketplace = structure(logical(0), 
            shape = "Boolean", locationName = "marketplace", 
            type = "boolean"), OfferingClass = structure(logical(0), 
            shape = "OfferingClassType", locationName = "offeringClass", 
            type = "string"), OfferingType = structure(logical(0), 
            shape = "OfferingTypeValues", locationName = "offeringType", 
            type = "string"), PricingDetails = structure(list(structure(list(Count = structure(logical(0), 
            shape = "Integer", locationName = "count", type = "integer"), 
            Price = structure(logical(0), shape = "Double", locationName = "price", 
                type = "double")), shape = "PricingDetail", locationName = "item", 
            type = "structure")), shape = "PricingDetailsList", 
            locationName = "pricingDetailsSet", type = "list"), 
        RecurringCharges = structure(list(structure(list(Amount = structure(logical(0), 
            shape = "Double", locationName = "amount", type = "double"), 
            Frequency = structure(logical(0), shape = "RecurringChargeFrequency", 
                locationName = "frequency", type = "string")), 
            shape = "RecurringCharge", locationName = "item", 
            type = "structure")), shape = "RecurringChargesList", 
            locationName = "recurringCharges", type = "list"), 
        Scope = structure(logical(0), shape = "scope", locationName = "scope", 
            type = "string")), shape = "ReservedInstancesOffering", 
        locationName = "item", type = "structure")), shape = "ReservedInstancesOfferingList", 
        locationName = "reservedInstancesOfferingsSet", type = "list"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string")), shape = "DescribeReservedInstancesOfferingsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_route_tables_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), RouteTableIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "RouteTableId", 
            type = "list"), NextToken = structure(logical(0), 
            shape = "String", type = "string"), MaxResults = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "DescribeRouteTablesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_route_tables_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(RouteTables = structure(list(structure(list(Associations = structure(list(structure(list(Main = structure(logical(0), 
        shape = "Boolean", locationName = "main", type = "boolean"), 
        RouteTableAssociationId = structure(logical(0), shape = "String", 
            locationName = "routeTableAssociationId", type = "string"), 
        RouteTableId = structure(logical(0), shape = "String", 
            locationName = "routeTableId", type = "string"), 
        SubnetId = structure(logical(0), shape = "String", locationName = "subnetId", 
            type = "string")), shape = "RouteTableAssociation", 
        locationName = "item", type = "structure")), shape = "RouteTableAssociationList", 
        locationName = "associationSet", type = "list"), PropagatingVgws = structure(list(structure(list(GatewayId = structure(logical(0), 
        shape = "String", locationName = "gatewayId", type = "string")), 
        shape = "PropagatingVgw", locationName = "item", type = "structure")), 
        shape = "PropagatingVgwList", locationName = "propagatingVgwSet", 
        type = "list"), RouteTableId = structure(logical(0), 
        shape = "String", locationName = "routeTableId", type = "string"), 
        Routes = structure(list(structure(list(DestinationCidrBlock = structure(logical(0), 
            shape = "String", locationName = "destinationCidrBlock", 
            type = "string"), DestinationIpv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "destinationIpv6CidrBlock", 
            type = "string"), DestinationPrefixListId = structure(logical(0), 
            shape = "String", locationName = "destinationPrefixListId", 
            type = "string"), EgressOnlyInternetGatewayId = structure(logical(0), 
            shape = "String", locationName = "egressOnlyInternetGatewayId", 
            type = "string"), GatewayId = structure(logical(0), 
            shape = "String", locationName = "gatewayId", type = "string"), 
            InstanceId = structure(logical(0), shape = "String", 
                locationName = "instanceId", type = "string"), 
            InstanceOwnerId = structure(logical(0), shape = "String", 
                locationName = "instanceOwnerId", type = "string"), 
            NatGatewayId = structure(logical(0), shape = "String", 
                locationName = "natGatewayId", type = "string"), 
            NetworkInterfaceId = structure(logical(0), shape = "String", 
                locationName = "networkInterfaceId", type = "string"), 
            Origin = structure(logical(0), shape = "RouteOrigin", 
                locationName = "origin", type = "string"), State = structure(logical(0), 
                shape = "RouteState", locationName = "state", 
                type = "string"), VpcPeeringConnectionId = structure(logical(0), 
                shape = "String", locationName = "vpcPeeringConnectionId", 
                type = "string")), shape = "Route", locationName = "item", 
            type = "structure")), shape = "RouteList", locationName = "routeSet", 
            type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string")), shape = "RouteTable", 
        locationName = "item", type = "structure")), shape = "RouteTableList", 
        locationName = "routeTableSet", type = "list"), NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string")), 
        shape = "DescribeRouteTablesResult", type = "structure")
    return(populate(args, shape))
}

describe_scheduled_instance_availability_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        FirstSlotStartTimeRange = structure(list(EarliestTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), LatestTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp")), shape = "SlotDateTimeRangeRequest", 
            type = "structure"), MaxResults = structure(logical(0), 
            shape = "Integer", type = "integer"), MaxSlotDurationInHours = structure(logical(0), 
            shape = "Integer", type = "integer"), MinSlotDurationInHours = structure(logical(0), 
            shape = "Integer", type = "integer"), NextToken = structure(logical(0), 
            shape = "String", type = "string"), Recurrence = structure(list(Frequency = structure(logical(0), 
            shape = "String", type = "string"), Interval = structure(logical(0), 
            shape = "Integer", type = "integer"), OccurrenceDays = structure(list(structure(logical(0), 
            shape = "Integer", locationName = "OccurenceDay", 
            type = "integer")), shape = "OccurrenceDayRequestSet", 
            locationName = "OccurrenceDay", type = "list"), OccurrenceRelativeToEnd = structure(logical(0), 
            shape = "Boolean", type = "boolean"), OccurrenceUnit = structure(logical(0), 
            shape = "String", type = "string")), shape = "ScheduledInstanceRecurrenceRequest", 
            type = "structure")), shape = "DescribeScheduledInstanceAvailabilityRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_scheduled_instance_availability_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string"), 
        ScheduledInstanceAvailabilitySet = structure(list(structure(list(AvailabilityZone = structure(logical(0), 
            shape = "String", locationName = "availabilityZone", 
            type = "string"), AvailableInstanceCount = structure(logical(0), 
            shape = "Integer", locationName = "availableInstanceCount", 
            type = "integer"), FirstSlotStartTime = structure(logical(0), 
            shape = "DateTime", locationName = "firstSlotStartTime", 
            type = "timestamp"), HourlyPrice = structure(logical(0), 
            shape = "String", locationName = "hourlyPrice", type = "string"), 
            InstanceType = structure(logical(0), shape = "String", 
                locationName = "instanceType", type = "string"), 
            MaxTermDurationInDays = structure(logical(0), shape = "Integer", 
                locationName = "maxTermDurationInDays", type = "integer"), 
            MinTermDurationInDays = structure(logical(0), shape = "Integer", 
                locationName = "minTermDurationInDays", type = "integer"), 
            NetworkPlatform = structure(logical(0), shape = "String", 
                locationName = "networkPlatform", type = "string"), 
            Platform = structure(logical(0), shape = "String", 
                locationName = "platform", type = "string"), 
            PurchaseToken = structure(logical(0), shape = "String", 
                locationName = "purchaseToken", type = "string"), 
            Recurrence = structure(list(Frequency = structure(logical(0), 
                shape = "String", locationName = "frequency", 
                type = "string"), Interval = structure(logical(0), 
                shape = "Integer", locationName = "interval", 
                type = "integer"), OccurrenceDaySet = structure(list(structure(logical(0), 
                shape = "Integer", locationName = "item", type = "integer")), 
                shape = "OccurrenceDaySet", locationName = "occurrenceDaySet", 
                type = "list"), OccurrenceRelativeToEnd = structure(logical(0), 
                shape = "Boolean", locationName = "occurrenceRelativeToEnd", 
                type = "boolean"), OccurrenceUnit = structure(logical(0), 
                shape = "String", locationName = "occurrenceUnit", 
                type = "string")), shape = "ScheduledInstanceRecurrence", 
                locationName = "recurrence", type = "structure"), 
            SlotDurationInHours = structure(logical(0), shape = "Integer", 
                locationName = "slotDurationInHours", type = "integer"), 
            TotalScheduledInstanceHours = structure(logical(0), 
                shape = "Integer", locationName = "totalScheduledInstanceHours", 
                type = "integer")), shape = "ScheduledInstanceAvailability", 
            locationName = "item", type = "structure")), shape = "ScheduledInstanceAvailabilitySet", 
            locationName = "scheduledInstanceAvailabilitySet", 
            type = "list")), shape = "DescribeScheduledInstanceAvailabilityResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_scheduled_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer"), NextToken = structure(logical(0), 
            shape = "String", type = "string"), ScheduledInstanceIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "ScheduledInstanceId", 
            type = "string")), shape = "ScheduledInstanceIdRequestSet", 
            locationName = "ScheduledInstanceId", type = "list"), 
        SlotStartTimeRange = structure(list(EarliestTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), LatestTime = structure(logical(0), 
            shape = "DateTime", type = "timestamp")), shape = "SlotStartTimeRangeRequest", 
            type = "structure")), shape = "DescribeScheduledInstancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_scheduled_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string"), 
        ScheduledInstanceSet = structure(list(structure(list(AvailabilityZone = structure(logical(0), 
            shape = "String", locationName = "availabilityZone", 
            type = "string"), CreateDate = structure(logical(0), 
            shape = "DateTime", locationName = "createDate", 
            type = "timestamp"), HourlyPrice = structure(logical(0), 
            shape = "String", locationName = "hourlyPrice", type = "string"), 
            InstanceCount = structure(logical(0), shape = "Integer", 
                locationName = "instanceCount", type = "integer"), 
            InstanceType = structure(logical(0), shape = "String", 
                locationName = "instanceType", type = "string"), 
            NetworkPlatform = structure(logical(0), shape = "String", 
                locationName = "networkPlatform", type = "string"), 
            NextSlotStartTime = structure(logical(0), shape = "DateTime", 
                locationName = "nextSlotStartTime", type = "timestamp"), 
            Platform = structure(logical(0), shape = "String", 
                locationName = "platform", type = "string"), 
            PreviousSlotEndTime = structure(logical(0), shape = "DateTime", 
                locationName = "previousSlotEndTime", type = "timestamp"), 
            Recurrence = structure(list(Frequency = structure(logical(0), 
                shape = "String", locationName = "frequency", 
                type = "string"), Interval = structure(logical(0), 
                shape = "Integer", locationName = "interval", 
                type = "integer"), OccurrenceDaySet = structure(list(structure(logical(0), 
                shape = "Integer", locationName = "item", type = "integer")), 
                shape = "OccurrenceDaySet", locationName = "occurrenceDaySet", 
                type = "list"), OccurrenceRelativeToEnd = structure(logical(0), 
                shape = "Boolean", locationName = "occurrenceRelativeToEnd", 
                type = "boolean"), OccurrenceUnit = structure(logical(0), 
                shape = "String", locationName = "occurrenceUnit", 
                type = "string")), shape = "ScheduledInstanceRecurrence", 
                locationName = "recurrence", type = "structure"), 
            ScheduledInstanceId = structure(logical(0), shape = "String", 
                locationName = "scheduledInstanceId", type = "string"), 
            SlotDurationInHours = structure(logical(0), shape = "Integer", 
                locationName = "slotDurationInHours", type = "integer"), 
            TermEndDate = structure(logical(0), shape = "DateTime", 
                locationName = "termEndDate", type = "timestamp"), 
            TermStartDate = structure(logical(0), shape = "DateTime", 
                locationName = "termStartDate", type = "timestamp"), 
            TotalScheduledInstanceHours = structure(logical(0), 
                shape = "Integer", locationName = "totalScheduledInstanceHours", 
                type = "integer")), shape = "ScheduledInstance", 
            locationName = "item", type = "structure")), shape = "ScheduledInstanceSet", 
            locationName = "scheduledInstanceSet", type = "list")), 
        shape = "DescribeScheduledInstancesResult", type = "structure")
    return(populate(args, shape))
}

describe_security_group_references_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), GroupId = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "GroupIds", type = "list")), shape = "DescribeSecurityGroupReferencesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_security_group_references_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityGroupReferenceSet = structure(list(structure(list(GroupId = structure(logical(0), 
        shape = "String", locationName = "groupId", type = "string"), 
        ReferencingVpcId = structure(logical(0), shape = "String", 
            locationName = "referencingVpcId", type = "string"), 
        VpcPeeringConnectionId = structure(logical(0), shape = "String", 
            locationName = "vpcPeeringConnectionId", type = "string")), 
        shape = "SecurityGroupReference", locationName = "item", 
        type = "structure")), shape = "SecurityGroupReferences", 
        locationName = "securityGroupReferenceSet", type = "list")), 
        shape = "DescribeSecurityGroupReferencesResult", type = "structure")
    return(populate(args, shape))
}

describe_security_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        GroupIds = structure(list(structure(logical(0), shape = "String", 
            locationName = "groupId", type = "string")), shape = "GroupIdStringList", 
            locationName = "GroupId", type = "list"), GroupNames = structure(list(structure(logical(0), 
            shape = "String", locationName = "GroupName", type = "string")), 
            shape = "GroupNameStringList", locationName = "GroupName", 
            type = "list"), DryRun = structure(logical(0), shape = "Boolean", 
            locationName = "dryRun", type = "boolean"), NextToken = structure(logical(0), 
            shape = "String", type = "string"), MaxResults = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "DescribeSecurityGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_security_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SecurityGroups = structure(list(structure(list(Description = structure(logical(0), 
        shape = "String", locationName = "groupDescription", 
        type = "string"), GroupName = structure(logical(0), shape = "String", 
        locationName = "groupName", type = "string"), IpPermissions = structure(list(structure(list(FromPort = structure(logical(0), 
        shape = "Integer", locationName = "fromPort", type = "integer"), 
        IpProtocol = structure(logical(0), shape = "String", 
            locationName = "ipProtocol", type = "string"), IpRanges = structure(list(structure(list(CidrIp = structure(logical(0), 
            shape = "String", locationName = "cidrIp", type = "string"), 
            Description = structure(logical(0), shape = "String", 
                locationName = "description", type = "string")), 
            shape = "IpRange", locationName = "item", type = "structure")), 
            shape = "IpRangeList", locationName = "ipRanges", 
            type = "list"), Ipv6Ranges = structure(list(structure(list(CidrIpv6 = structure(logical(0), 
            shape = "String", locationName = "cidrIpv6", type = "string"), 
            Description = structure(logical(0), shape = "String", 
                locationName = "description", type = "string")), 
            shape = "Ipv6Range", locationName = "item", type = "structure")), 
            shape = "Ipv6RangeList", locationName = "ipv6Ranges", 
            type = "list"), PrefixListIds = structure(list(structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            PrefixListId = structure(logical(0), shape = "String", 
                locationName = "prefixListId", type = "string")), 
            shape = "PrefixListId", locationName = "item", type = "structure")), 
            shape = "PrefixListIdList", locationName = "prefixListIds", 
            type = "list"), ToPort = structure(logical(0), shape = "Integer", 
            locationName = "toPort", type = "integer"), UserIdGroupPairs = structure(list(structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            GroupId = structure(logical(0), shape = "String", 
                locationName = "groupId", type = "string"), GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), PeeringStatus = structure(logical(0), 
                shape = "String", locationName = "peeringStatus", 
                type = "string"), UserId = structure(logical(0), 
                shape = "String", locationName = "userId", type = "string"), 
            VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
                type = "string"), VpcPeeringConnectionId = structure(logical(0), 
                shape = "String", locationName = "vpcPeeringConnectionId", 
                type = "string")), shape = "UserIdGroupPair", 
            locationName = "item", type = "structure")), shape = "UserIdGroupPairList", 
            locationName = "groups", type = "list")), shape = "IpPermission", 
        locationName = "item", type = "structure")), shape = "IpPermissionList", 
        locationName = "ipPermissions", type = "list"), OwnerId = structure(logical(0), 
        shape = "String", locationName = "ownerId", type = "string"), 
        GroupId = structure(logical(0), shape = "String", locationName = "groupId", 
            type = "string"), IpPermissionsEgress = structure(list(structure(list(FromPort = structure(logical(0), 
            shape = "Integer", locationName = "fromPort", type = "integer"), 
            IpProtocol = structure(logical(0), shape = "String", 
                locationName = "ipProtocol", type = "string"), 
            IpRanges = structure(list(structure(list(CidrIp = structure(logical(0), 
                shape = "String", locationName = "cidrIp", type = "string"), 
                Description = structure(logical(0), shape = "String", 
                  locationName = "description", type = "string")), 
                shape = "IpRange", locationName = "item", type = "structure")), 
                shape = "IpRangeList", locationName = "ipRanges", 
                type = "list"), Ipv6Ranges = structure(list(structure(list(CidrIpv6 = structure(logical(0), 
                shape = "String", locationName = "cidrIpv6", 
                type = "string"), Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string")), shape = "Ipv6Range", locationName = "item", 
                type = "structure")), shape = "Ipv6RangeList", 
                locationName = "ipv6Ranges", type = "list"), 
            PrefixListIds = structure(list(structure(list(Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string"), PrefixListId = structure(logical(0), 
                shape = "String", locationName = "prefixListId", 
                type = "string")), shape = "PrefixListId", locationName = "item", 
                type = "structure")), shape = "PrefixListIdList", 
                locationName = "prefixListIds", type = "list"), 
            ToPort = structure(logical(0), shape = "Integer", 
                locationName = "toPort", type = "integer"), UserIdGroupPairs = structure(list(structure(list(Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string"), GroupId = structure(logical(0), 
                shape = "String", locationName = "groupId", type = "string"), 
                GroupName = structure(logical(0), shape = "String", 
                  locationName = "groupName", type = "string"), 
                PeeringStatus = structure(logical(0), shape = "String", 
                  locationName = "peeringStatus", type = "string"), 
                UserId = structure(logical(0), shape = "String", 
                  locationName = "userId", type = "string"), 
                VpcId = structure(logical(0), shape = "String", 
                  locationName = "vpcId", type = "string"), VpcPeeringConnectionId = structure(logical(0), 
                  shape = "String", locationName = "vpcPeeringConnectionId", 
                  type = "string")), shape = "UserIdGroupPair", 
                locationName = "item", type = "structure")), 
                shape = "UserIdGroupPairList", locationName = "groups", 
                type = "list")), shape = "IpPermission", locationName = "item", 
            type = "structure")), shape = "IpPermissionList", 
            locationName = "ipPermissionsEgress", type = "list"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string")), shape = "SecurityGroup", 
        locationName = "item", type = "structure")), shape = "SecurityGroupList", 
        locationName = "securityGroupInfo", type = "list"), NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string")), 
        shape = "DescribeSecurityGroupsResult", type = "structure")
    return(populate(args, shape))
}

describe_snapshot_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attribute = structure(logical(0), 
        shape = "SnapshotAttributeName", type = "string"), SnapshotId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DescribeSnapshotAttributeRequest", type = "structure")
    return(populate(args, shape))
}

describe_snapshot_attribute_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CreateVolumePermissions = structure(list(structure(list(Group = structure(logical(0), 
        shape = "PermissionGroup", locationName = "group", type = "string"), 
        UserId = structure(logical(0), shape = "String", locationName = "userId", 
            type = "string")), shape = "CreateVolumePermission", 
        locationName = "item", type = "structure")), shape = "CreateVolumePermissionList", 
        locationName = "createVolumePermission", type = "list"), 
        ProductCodes = structure(list(structure(list(ProductCodeId = structure(logical(0), 
            shape = "String", locationName = "productCode", type = "string"), 
            ProductCodeType = structure(logical(0), shape = "ProductCodeValues", 
                locationName = "type", type = "string")), shape = "ProductCode", 
            locationName = "item", type = "structure")), shape = "ProductCodeList", 
            locationName = "productCodes", type = "list"), SnapshotId = structure(logical(0), 
            shape = "String", locationName = "snapshotId", type = "string")), 
        shape = "DescribeSnapshotAttributeResult", type = "structure")
    return(populate(args, shape))
}

describe_snapshots_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer"), NextToken = structure(logical(0), 
            shape = "String", type = "string"), OwnerIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "Owner", type = "string")), 
            shape = "OwnerStringList", locationName = "Owner", 
            type = "list"), RestorableByUserIds = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "RestorableByStringList", 
            locationName = "RestorableBy", type = "list"), SnapshotIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "SnapshotId", type = "string")), 
            shape = "SnapshotIdStringList", locationName = "SnapshotId", 
            type = "list"), DryRun = structure(logical(0), shape = "Boolean", 
            locationName = "dryRun", type = "boolean")), shape = "DescribeSnapshotsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_snapshots_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Snapshots = structure(list(structure(list(DataEncryptionKeyId = structure(logical(0), 
        shape = "String", locationName = "dataEncryptionKeyId", 
        type = "string"), Description = structure(logical(0), 
        shape = "String", locationName = "description", type = "string"), 
        Encrypted = structure(logical(0), shape = "Boolean", 
            locationName = "encrypted", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", locationName = "kmsKeyId", type = "string"), 
        OwnerId = structure(logical(0), shape = "String", locationName = "ownerId", 
            type = "string"), Progress = structure(logical(0), 
            shape = "String", locationName = "progress", type = "string"), 
        SnapshotId = structure(logical(0), shape = "String", 
            locationName = "snapshotId", type = "string"), StartTime = structure(logical(0), 
            shape = "DateTime", locationName = "startTime", type = "timestamp"), 
        State = structure(logical(0), shape = "SnapshotState", 
            locationName = "status", type = "string"), StateMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string"), VolumeId = structure(logical(0), 
            shape = "String", locationName = "volumeId", type = "string"), 
        VolumeSize = structure(logical(0), shape = "Integer", 
            locationName = "volumeSize", type = "integer"), OwnerAlias = structure(logical(0), 
            shape = "String", locationName = "ownerAlias", type = "string"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "Snapshot", locationName = "item", 
        type = "structure")), shape = "SnapshotList", locationName = "snapshotSet", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        locationName = "nextToken", type = "string")), shape = "DescribeSnapshotsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_spot_datafeed_subscription_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "DescribeSpotDatafeedSubscriptionRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_spot_datafeed_subscription_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SpotDatafeedSubscription = structure(list(Bucket = structure(logical(0), 
        shape = "String", locationName = "bucket", type = "string"), 
        Fault = structure(list(Code = structure(logical(0), shape = "String", 
            locationName = "code", type = "string"), Message = structure(logical(0), 
            shape = "String", locationName = "message", type = "string")), 
            shape = "SpotInstanceStateFault", locationName = "fault", 
            type = "structure"), OwnerId = structure(logical(0), 
            shape = "String", locationName = "ownerId", type = "string"), 
        Prefix = structure(logical(0), shape = "String", locationName = "prefix", 
            type = "string"), State = structure(logical(0), shape = "DatafeedSubscriptionState", 
            locationName = "state", type = "string")), shape = "SpotDatafeedSubscription", 
        locationName = "spotDatafeedSubscription", type = "structure")), 
        shape = "DescribeSpotDatafeedSubscriptionResult", type = "structure")
    return(populate(args, shape))
}

describe_spot_fleet_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), MaxResults = structure(logical(0), 
        shape = "Integer", locationName = "maxResults", type = "integer"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string"), SpotFleetRequestId = structure(logical(0), 
            shape = "String", locationName = "spotFleetRequestId", 
            type = "string")), shape = "DescribeSpotFleetInstancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_spot_fleet_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ActiveInstances = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        InstanceType = structure(logical(0), shape = "String", 
            locationName = "instanceType", type = "string"), 
        SpotInstanceRequestId = structure(logical(0), shape = "String", 
            locationName = "spotInstanceRequestId", type = "string"), 
        InstanceHealth = structure(logical(0), shape = "InstanceHealthStatus", 
            locationName = "instanceHealth", type = "string")), 
        shape = "ActiveInstance", locationName = "item", type = "structure")), 
        shape = "ActiveInstanceSet", locationName = "activeInstanceSet", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        locationName = "nextToken", type = "string"), SpotFleetRequestId = structure(logical(0), 
        shape = "String", locationName = "spotFleetRequestId", 
        type = "string")), shape = "DescribeSpotFleetInstancesResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_spot_fleet_request_history_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), EventType = structure(logical(0), 
        shape = "EventType", locationName = "eventType", type = "string"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            locationName = "maxResults", type = "integer"), NextToken = structure(logical(0), 
            shape = "String", locationName = "nextToken", type = "string"), 
        SpotFleetRequestId = structure(logical(0), shape = "String", 
            locationName = "spotFleetRequestId", type = "string"), 
        StartTime = structure(logical(0), shape = "DateTime", 
            locationName = "startTime", type = "timestamp")), 
        shape = "DescribeSpotFleetRequestHistoryRequest", type = "structure")
    return(populate(args, shape))
}

describe_spot_fleet_request_history_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HistoryRecords = structure(list(structure(list(EventInformation = structure(list(EventDescription = structure(logical(0), 
        shape = "String", locationName = "eventDescription", 
        type = "string"), EventSubType = structure(logical(0), 
        shape = "String", locationName = "eventSubType", type = "string"), 
        InstanceId = structure(logical(0), shape = "String", 
            locationName = "instanceId", type = "string")), shape = "EventInformation", 
        locationName = "eventInformation", type = "structure"), 
        EventType = structure(logical(0), shape = "EventType", 
            locationName = "eventType", type = "string"), Timestamp = structure(logical(0), 
            shape = "DateTime", locationName = "timestamp", type = "timestamp")), 
        shape = "HistoryRecord", locationName = "item", type = "structure")), 
        shape = "HistoryRecords", locationName = "historyRecordSet", 
        type = "list"), LastEvaluatedTime = structure(logical(0), 
        shape = "DateTime", locationName = "lastEvaluatedTime", 
        type = "timestamp"), NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string"), 
        SpotFleetRequestId = structure(logical(0), shape = "String", 
            locationName = "spotFleetRequestId", type = "string"), 
        StartTime = structure(logical(0), shape = "DateTime", 
            locationName = "startTime", type = "timestamp")), 
        shape = "DescribeSpotFleetRequestHistoryResponse", type = "structure")
    return(populate(args, shape))
}

describe_spot_fleet_requests_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), MaxResults = structure(logical(0), 
        shape = "Integer", locationName = "maxResults", type = "integer"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string"), SpotFleetRequestIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "spotFleetRequestId", 
            type = "list")), shape = "DescribeSpotFleetRequestsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_spot_fleet_requests_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string"), 
        SpotFleetRequestConfigs = structure(list(structure(list(ActivityStatus = structure(logical(0), 
            shape = "ActivityStatus", locationName = "activityStatus", 
            type = "string"), CreateTime = structure(logical(0), 
            shape = "DateTime", locationName = "createTime", 
            type = "timestamp"), SpotFleetRequestConfig = structure(list(AllocationStrategy = structure(logical(0), 
            shape = "AllocationStrategy", locationName = "allocationStrategy", 
            type = "string"), OnDemandAllocationStrategy = structure(logical(0), 
            shape = "OnDemandAllocationStrategy", locationName = "onDemandAllocationStrategy", 
            type = "string"), ClientToken = structure(logical(0), 
            shape = "String", locationName = "clientToken", type = "string"), 
            ExcessCapacityTerminationPolicy = structure(logical(0), 
                shape = "ExcessCapacityTerminationPolicy", locationName = "excessCapacityTerminationPolicy", 
                type = "string"), FulfilledCapacity = structure(logical(0), 
                shape = "Double", locationName = "fulfilledCapacity", 
                type = "double"), OnDemandFulfilledCapacity = structure(logical(0), 
                shape = "Double", locationName = "onDemandFulfilledCapacity", 
                type = "double"), IamFleetRole = structure(logical(0), 
                shape = "String", locationName = "iamFleetRole", 
                type = "string"), LaunchSpecifications = structure(list(structure(list(SecurityGroups = structure(list(structure(list(GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), GroupId = structure(logical(0), 
                shape = "String", locationName = "groupId", type = "string")), 
                shape = "GroupIdentifier", locationName = "item", 
                type = "structure")), shape = "GroupIdentifierList", 
                locationName = "groupSet", type = "list"), AddressingType = structure(logical(0), 
                shape = "String", locationName = "addressingType", 
                type = "string"), BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
                shape = "String", locationName = "deviceName", 
                type = "string"), VirtualName = structure(logical(0), 
                shape = "String", locationName = "virtualName", 
                type = "string"), Ebs = structure(list(DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Iops = structure(logical(0), 
                shape = "Integer", locationName = "iops", type = "integer"), 
                SnapshotId = structure(logical(0), shape = "String", 
                  locationName = "snapshotId", type = "string"), 
                VolumeSize = structure(logical(0), shape = "Integer", 
                  locationName = "volumeSize", type = "integer"), 
                VolumeType = structure(logical(0), shape = "VolumeType", 
                  locationName = "volumeType", type = "string"), 
                Encrypted = structure(logical(0), shape = "Boolean", 
                  locationName = "encrypted", type = "boolean"), 
                KmsKeyId = structure(logical(0), shape = "String", 
                  type = "string")), shape = "EbsBlockDevice", 
                locationName = "ebs", type = "structure"), NoDevice = structure(logical(0), 
                shape = "String", locationName = "noDevice", 
                type = "string")), shape = "BlockDeviceMapping", 
                locationName = "item", type = "structure")), 
                shape = "BlockDeviceMappingList", locationName = "blockDeviceMapping", 
                type = "list"), EbsOptimized = structure(logical(0), 
                shape = "Boolean", locationName = "ebsOptimized", 
                type = "boolean"), IamInstanceProfile = structure(list(Arn = structure(logical(0), 
                shape = "String", locationName = "arn", type = "string"), 
                Name = structure(logical(0), shape = "String", 
                  locationName = "name", type = "string")), shape = "IamInstanceProfileSpecification", 
                locationName = "iamInstanceProfile", type = "structure"), 
                ImageId = structure(logical(0), shape = "String", 
                  locationName = "imageId", type = "string"), 
                InstanceType = structure(logical(0), shape = "InstanceType", 
                  locationName = "instanceType", type = "string"), 
                KernelId = structure(logical(0), shape = "String", 
                  locationName = "kernelId", type = "string"), 
                KeyName = structure(logical(0), shape = "String", 
                  locationName = "keyName", type = "string"), 
                Monitoring = structure(list(Enabled = structure(logical(0), 
                  shape = "Boolean", locationName = "enabled", 
                  type = "boolean")), shape = "SpotFleetMonitoring", 
                  locationName = "monitoring", type = "structure"), 
                NetworkInterfaces = structure(list(structure(list(AssociatePublicIpAddress = structure(logical(0), 
                  shape = "Boolean", locationName = "associatePublicIpAddress", 
                  type = "boolean"), DeleteOnTermination = structure(logical(0), 
                  shape = "Boolean", locationName = "deleteOnTermination", 
                  type = "boolean"), Description = structure(logical(0), 
                  shape = "String", locationName = "description", 
                  type = "string"), DeviceIndex = structure(logical(0), 
                  shape = "Integer", locationName = "deviceIndex", 
                  type = "integer"), Groups = structure(list(structure(logical(0), 
                  shape = "String", locationName = "SecurityGroupId", 
                  type = "string")), shape = "SecurityGroupIdStringList", 
                  locationName = "SecurityGroupId", type = "list"), 
                  Ipv6AddressCount = structure(logical(0), shape = "Integer", 
                    locationName = "ipv6AddressCount", type = "integer"), 
                  Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
                    shape = "String", locationName = "ipv6Address", 
                    type = "string")), shape = "InstanceIpv6Address", 
                    locationName = "item", type = "structure")), 
                    shape = "InstanceIpv6AddressList", locationName = "ipv6AddressesSet", 
                    queryName = "Ipv6Addresses", type = "list"), 
                  NetworkInterfaceId = structure(logical(0), 
                    shape = "String", locationName = "networkInterfaceId", 
                    type = "string"), PrivateIpAddress = structure(logical(0), 
                    shape = "String", locationName = "privateIpAddress", 
                    type = "string"), PrivateIpAddresses = structure(list(structure(list(Primary = structure(logical(0), 
                    shape = "Boolean", locationName = "primary", 
                    type = "boolean"), PrivateIpAddress = structure(logical(0), 
                    shape = "String", locationName = "privateIpAddress", 
                    type = "string")), shape = "PrivateIpAddressSpecification", 
                    locationName = "item", type = "structure")), 
                    shape = "PrivateIpAddressSpecificationList", 
                    locationName = "privateIpAddressesSet", queryName = "PrivateIpAddresses", 
                    type = "list"), SecondaryPrivateIpAddressCount = structure(logical(0), 
                    shape = "Integer", locationName = "secondaryPrivateIpAddressCount", 
                    type = "integer"), SubnetId = structure(logical(0), 
                    shape = "String", locationName = "subnetId", 
                    type = "string")), shape = "InstanceNetworkInterfaceSpecification", 
                  locationName = "item", type = "structure")), 
                  shape = "InstanceNetworkInterfaceSpecificationList", 
                  locationName = "networkInterfaceSet", type = "list"), 
                Placement = structure(list(AvailabilityZone = structure(logical(0), 
                  shape = "String", locationName = "availabilityZone", 
                  type = "string"), GroupName = structure(logical(0), 
                  shape = "String", locationName = "groupName", 
                  type = "string"), Tenancy = structure(logical(0), 
                  shape = "Tenancy", locationName = "tenancy", 
                  type = "string")), shape = "SpotPlacement", 
                  locationName = "placement", type = "structure"), 
                RamdiskId = structure(logical(0), shape = "String", 
                  locationName = "ramdiskId", type = "string"), 
                SpotPrice = structure(logical(0), shape = "String", 
                  locationName = "spotPrice", type = "string"), 
                SubnetId = structure(logical(0), shape = "String", 
                  locationName = "subnetId", type = "string"), 
                UserData = structure(logical(0), shape = "String", 
                  locationName = "userData", type = "string"), 
                WeightedCapacity = structure(logical(0), shape = "Double", 
                  locationName = "weightedCapacity", type = "double"), 
                TagSpecifications = structure(list(structure(list(ResourceType = structure(logical(0), 
                  shape = "ResourceType", locationName = "resourceType", 
                  type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
                  shape = "String", locationName = "key", type = "string"), 
                  Value = structure(logical(0), shape = "String", 
                    locationName = "value", type = "string")), 
                  shape = "Tag", locationName = "item", type = "structure")), 
                  shape = "TagList", locationName = "tag", type = "list")), 
                  shape = "SpotFleetTagSpecification", locationName = "item", 
                  type = "structure")), shape = "SpotFleetTagSpecificationList", 
                  locationName = "tagSpecificationSet", type = "list")), 
                shape = "SpotFleetLaunchSpecification", locationName = "item", 
                type = "structure")), shape = "LaunchSpecsList", 
                locationName = "launchSpecifications", type = "list"), 
            LaunchTemplateConfigs = structure(list(structure(list(LaunchTemplateSpecification = structure(list(LaunchTemplateId = structure(logical(0), 
                shape = "String", locationName = "launchTemplateId", 
                type = "string"), LaunchTemplateName = structure(logical(0), 
                shape = "LaunchTemplateName", locationName = "launchTemplateName", 
                type = "string", max = 128L, min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), 
                Version = structure(logical(0), shape = "String", 
                  locationName = "version", type = "string")), 
                shape = "FleetLaunchTemplateSpecification", locationName = "launchTemplateSpecification", 
                type = "structure"), Overrides = structure(list(structure(list(InstanceType = structure(logical(0), 
                shape = "InstanceType", locationName = "instanceType", 
                type = "string"), SpotPrice = structure(logical(0), 
                shape = "String", locationName = "spotPrice", 
                type = "string"), SubnetId = structure(logical(0), 
                shape = "String", locationName = "subnetId", 
                type = "string"), AvailabilityZone = structure(logical(0), 
                shape = "String", locationName = "availabilityZone", 
                type = "string"), WeightedCapacity = structure(logical(0), 
                shape = "Double", locationName = "weightedCapacity", 
                type = "double"), Priority = structure(logical(0), 
                shape = "Double", locationName = "priority", 
                type = "double")), shape = "LaunchTemplateOverrides", 
                locationName = "item", type = "structure")), 
                shape = "LaunchTemplateOverridesList", locationName = "overrides", 
                type = "list")), shape = "LaunchTemplateConfig", 
                locationName = "item", type = "structure")), 
                shape = "LaunchTemplateConfigList", locationName = "launchTemplateConfigs", 
                type = "list"), SpotPrice = structure(logical(0), 
                shape = "String", locationName = "spotPrice", 
                type = "string"), TargetCapacity = structure(logical(0), 
                shape = "Integer", locationName = "targetCapacity", 
                type = "integer"), OnDemandTargetCapacity = structure(logical(0), 
                shape = "Integer", locationName = "onDemandTargetCapacity", 
                type = "integer"), TerminateInstancesWithExpiration = structure(logical(0), 
                shape = "Boolean", locationName = "terminateInstancesWithExpiration", 
                type = "boolean"), Type = structure(logical(0), 
                shape = "FleetType", locationName = "type", type = "string"), 
            ValidFrom = structure(logical(0), shape = "DateTime", 
                locationName = "validFrom", type = "timestamp"), 
            ValidUntil = structure(logical(0), shape = "DateTime", 
                locationName = "validUntil", type = "timestamp"), 
            ReplaceUnhealthyInstances = structure(logical(0), 
                shape = "Boolean", locationName = "replaceUnhealthyInstances", 
                type = "boolean"), InstanceInterruptionBehavior = structure(logical(0), 
                shape = "InstanceInterruptionBehavior", locationName = "instanceInterruptionBehavior", 
                type = "string"), LoadBalancersConfig = structure(list(ClassicLoadBalancersConfig = structure(list(ClassicLoadBalancers = structure(list(structure(list(Name = structure(logical(0), 
                shape = "String", locationName = "name", type = "string")), 
                shape = "ClassicLoadBalancer", locationName = "item", 
                type = "structure")), shape = "ClassicLoadBalancers", 
                locationName = "classicLoadBalancers", type = "list", 
                max = 5L, min = 1L)), shape = "ClassicLoadBalancersConfig", 
                locationName = "classicLoadBalancersConfig", 
                type = "structure"), TargetGroupsConfig = structure(list(TargetGroups = structure(list(structure(list(Arn = structure(logical(0), 
                shape = "String", locationName = "arn", type = "string")), 
                shape = "TargetGroup", locationName = "item", 
                type = "structure")), shape = "TargetGroups", 
                locationName = "targetGroups", type = "list", 
                max = 5L, min = 1L)), shape = "TargetGroupsConfig", 
                locationName = "targetGroupsConfig", type = "structure")), 
                shape = "LoadBalancersConfig", locationName = "loadBalancersConfig", 
                type = "structure"), InstancePoolsToUseCount = structure(logical(0), 
                shape = "Integer", locationName = "instancePoolsToUseCount", 
                type = "integer")), shape = "SpotFleetRequestConfigData", 
            locationName = "spotFleetRequestConfig", type = "structure"), 
            SpotFleetRequestId = structure(logical(0), shape = "String", 
                locationName = "spotFleetRequestId", type = "string"), 
            SpotFleetRequestState = structure(logical(0), shape = "BatchState", 
                locationName = "spotFleetRequestState", type = "string")), 
            shape = "SpotFleetRequestConfig", locationName = "item", 
            type = "structure")), shape = "SpotFleetRequestConfigSet", 
            locationName = "spotFleetRequestConfigSet", type = "list")), 
        shape = "DescribeSpotFleetRequestsResponse", type = "structure")
    return(populate(args, shape))
}

describe_spot_instance_requests_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), SpotInstanceRequestIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "SpotInstanceRequestId", 
            type = "string")), shape = "SpotInstanceRequestIdList", 
            locationName = "SpotInstanceRequestId", type = "list")), 
        shape = "DescribeSpotInstanceRequestsRequest", type = "structure")
    return(populate(args, shape))
}

describe_spot_instance_requests_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SpotInstanceRequests = structure(list(structure(list(ActualBlockHourlyPrice = structure(logical(0), 
        shape = "String", locationName = "actualBlockHourlyPrice", 
        type = "string"), AvailabilityZoneGroup = structure(logical(0), 
        shape = "String", locationName = "availabilityZoneGroup", 
        type = "string"), BlockDurationMinutes = structure(logical(0), 
        shape = "Integer", locationName = "blockDurationMinutes", 
        type = "integer"), CreateTime = structure(logical(0), 
        shape = "DateTime", locationName = "createTime", type = "timestamp"), 
        Fault = structure(list(Code = structure(logical(0), shape = "String", 
            locationName = "code", type = "string"), Message = structure(logical(0), 
            shape = "String", locationName = "message", type = "string")), 
            shape = "SpotInstanceStateFault", locationName = "fault", 
            type = "structure"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
        LaunchGroup = structure(logical(0), shape = "String", 
            locationName = "launchGroup", type = "string"), LaunchSpecification = structure(list(UserData = structure(logical(0), 
            shape = "String", locationName = "userData", type = "string"), 
            SecurityGroups = structure(list(structure(list(GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), GroupId = structure(logical(0), 
                shape = "String", locationName = "groupId", type = "string")), 
                shape = "GroupIdentifier", locationName = "item", 
                type = "structure")), shape = "GroupIdentifierList", 
                locationName = "groupSet", type = "list"), AddressingType = structure(logical(0), 
                shape = "String", locationName = "addressingType", 
                type = "string"), BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
                shape = "String", locationName = "deviceName", 
                type = "string"), VirtualName = structure(logical(0), 
                shape = "String", locationName = "virtualName", 
                type = "string"), Ebs = structure(list(DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Iops = structure(logical(0), 
                shape = "Integer", locationName = "iops", type = "integer"), 
                SnapshotId = structure(logical(0), shape = "String", 
                  locationName = "snapshotId", type = "string"), 
                VolumeSize = structure(logical(0), shape = "Integer", 
                  locationName = "volumeSize", type = "integer"), 
                VolumeType = structure(logical(0), shape = "VolumeType", 
                  locationName = "volumeType", type = "string"), 
                Encrypted = structure(logical(0), shape = "Boolean", 
                  locationName = "encrypted", type = "boolean"), 
                KmsKeyId = structure(logical(0), shape = "String", 
                  type = "string")), shape = "EbsBlockDevice", 
                locationName = "ebs", type = "structure"), NoDevice = structure(logical(0), 
                shape = "String", locationName = "noDevice", 
                type = "string")), shape = "BlockDeviceMapping", 
                locationName = "item", type = "structure")), 
                shape = "BlockDeviceMappingList", locationName = "blockDeviceMapping", 
                type = "list"), EbsOptimized = structure(logical(0), 
                shape = "Boolean", locationName = "ebsOptimized", 
                type = "boolean"), IamInstanceProfile = structure(list(Arn = structure(logical(0), 
                shape = "String", locationName = "arn", type = "string"), 
                Name = structure(logical(0), shape = "String", 
                  locationName = "name", type = "string")), shape = "IamInstanceProfileSpecification", 
                locationName = "iamInstanceProfile", type = "structure"), 
            ImageId = structure(logical(0), shape = "String", 
                locationName = "imageId", type = "string"), InstanceType = structure(logical(0), 
                shape = "InstanceType", locationName = "instanceType", 
                type = "string"), KernelId = structure(logical(0), 
                shape = "String", locationName = "kernelId", 
                type = "string"), KeyName = structure(logical(0), 
                shape = "String", locationName = "keyName", type = "string"), 
            NetworkInterfaces = structure(list(structure(list(AssociatePublicIpAddress = structure(logical(0), 
                shape = "Boolean", locationName = "associatePublicIpAddress", 
                type = "boolean"), DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string"), DeviceIndex = structure(logical(0), 
                shape = "Integer", locationName = "deviceIndex", 
                type = "integer"), Groups = structure(list(structure(logical(0), 
                shape = "String", locationName = "SecurityGroupId", 
                type = "string")), shape = "SecurityGroupIdStringList", 
                locationName = "SecurityGroupId", type = "list"), 
                Ipv6AddressCount = structure(logical(0), shape = "Integer", 
                  locationName = "ipv6AddressCount", type = "integer"), 
                Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
                  shape = "String", locationName = "ipv6Address", 
                  type = "string")), shape = "InstanceIpv6Address", 
                  locationName = "item", type = "structure")), 
                  shape = "InstanceIpv6AddressList", locationName = "ipv6AddressesSet", 
                  queryName = "Ipv6Addresses", type = "list"), 
                NetworkInterfaceId = structure(logical(0), shape = "String", 
                  locationName = "networkInterfaceId", type = "string"), 
                PrivateIpAddress = structure(logical(0), shape = "String", 
                  locationName = "privateIpAddress", type = "string"), 
                PrivateIpAddresses = structure(list(structure(list(Primary = structure(logical(0), 
                  shape = "Boolean", locationName = "primary", 
                  type = "boolean"), PrivateIpAddress = structure(logical(0), 
                  shape = "String", locationName = "privateIpAddress", 
                  type = "string")), shape = "PrivateIpAddressSpecification", 
                  locationName = "item", type = "structure")), 
                  shape = "PrivateIpAddressSpecificationList", 
                  locationName = "privateIpAddressesSet", queryName = "PrivateIpAddresses", 
                  type = "list"), SecondaryPrivateIpAddressCount = structure(logical(0), 
                  shape = "Integer", locationName = "secondaryPrivateIpAddressCount", 
                  type = "integer"), SubnetId = structure(logical(0), 
                  shape = "String", locationName = "subnetId", 
                  type = "string")), shape = "InstanceNetworkInterfaceSpecification", 
                locationName = "item", type = "structure")), 
                shape = "InstanceNetworkInterfaceSpecificationList", 
                locationName = "networkInterfaceSet", type = "list"), 
            Placement = structure(list(AvailabilityZone = structure(logical(0), 
                shape = "String", locationName = "availabilityZone", 
                type = "string"), GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), Tenancy = structure(logical(0), 
                shape = "Tenancy", locationName = "tenancy", 
                type = "string")), shape = "SpotPlacement", locationName = "placement", 
                type = "structure"), RamdiskId = structure(logical(0), 
                shape = "String", locationName = "ramdiskId", 
                type = "string"), SubnetId = structure(logical(0), 
                shape = "String", locationName = "subnetId", 
                type = "string"), Monitoring = structure(list(Enabled = structure(logical(0), 
                shape = "Boolean", locationName = "enabled", 
                type = "boolean")), shape = "RunInstancesMonitoringEnabled", 
                locationName = "monitoring", type = "structure")), 
            shape = "LaunchSpecification", locationName = "launchSpecification", 
            type = "structure"), LaunchedAvailabilityZone = structure(logical(0), 
            shape = "String", locationName = "launchedAvailabilityZone", 
            type = "string"), ProductDescription = structure(logical(0), 
            shape = "RIProductDescription", locationName = "productDescription", 
            type = "string"), SpotInstanceRequestId = structure(logical(0), 
            shape = "String", locationName = "spotInstanceRequestId", 
            type = "string"), SpotPrice = structure(logical(0), 
            shape = "String", locationName = "spotPrice", type = "string"), 
        State = structure(logical(0), shape = "SpotInstanceState", 
            locationName = "state", type = "string"), Status = structure(list(Code = structure(logical(0), 
            shape = "String", locationName = "code", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                locationName = "message", type = "string"), UpdateTime = structure(logical(0), 
                shape = "DateTime", locationName = "updateTime", 
                type = "timestamp")), shape = "SpotInstanceStatus", 
            locationName = "status", type = "structure"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), Type = structure(logical(0), shape = "SpotInstanceType", 
            locationName = "type", type = "string"), ValidFrom = structure(logical(0), 
            shape = "DateTime", locationName = "validFrom", type = "timestamp"), 
        ValidUntil = structure(logical(0), shape = "DateTime", 
            locationName = "validUntil", type = "timestamp"), 
        InstanceInterruptionBehavior = structure(logical(0), 
            shape = "InstanceInterruptionBehavior", locationName = "instanceInterruptionBehavior", 
            type = "string")), shape = "SpotInstanceRequest", 
        locationName = "item", type = "structure")), shape = "SpotInstanceRequestList", 
        locationName = "spotInstanceRequestSet", type = "list")), 
        shape = "DescribeSpotInstanceRequestsResult", type = "structure")
    return(populate(args, shape))
}

describe_spot_price_history_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        AvailabilityZone = structure(logical(0), shape = "String", 
            locationName = "availabilityZone", type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), EndTime = structure(logical(0), 
            shape = "DateTime", locationName = "endTime", type = "timestamp"), 
        InstanceTypes = structure(list(structure(logical(0), 
            shape = "InstanceType", type = "string")), shape = "InstanceTypeList", 
            locationName = "InstanceType", type = "list"), MaxResults = structure(logical(0), 
            shape = "Integer", locationName = "maxResults", type = "integer"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string"), ProductDescriptions = structure(list(structure(logical(0), 
            shape = "String", type = "string")), shape = "ProductDescriptionList", 
            locationName = "ProductDescription", type = "list"), 
        StartTime = structure(logical(0), shape = "DateTime", 
            locationName = "startTime", type = "timestamp")), 
        shape = "DescribeSpotPriceHistoryRequest", type = "structure")
    return(populate(args, shape))
}

describe_spot_price_history_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string"), 
        SpotPriceHistory = structure(list(structure(list(AvailabilityZone = structure(logical(0), 
            shape = "String", locationName = "availabilityZone", 
            type = "string"), InstanceType = structure(logical(0), 
            shape = "InstanceType", locationName = "instanceType", 
            type = "string"), ProductDescription = structure(logical(0), 
            shape = "RIProductDescription", locationName = "productDescription", 
            type = "string"), SpotPrice = structure(logical(0), 
            shape = "String", locationName = "spotPrice", type = "string"), 
            Timestamp = structure(logical(0), shape = "DateTime", 
                locationName = "timestamp", type = "timestamp")), 
            shape = "SpotPrice", locationName = "item", type = "structure")), 
            shape = "SpotPriceHistoryList", locationName = "spotPriceHistorySet", 
            type = "list")), shape = "DescribeSpotPriceHistoryResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_stale_security_groups_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), MaxResults = structure(logical(0), 
        shape = "MaxResults", type = "integer", max = 255L, min = 5L), 
        NextToken = structure(logical(0), shape = "NextToken", 
            type = "string", max = 1024L, min = 1L), VpcId = structure(logical(0), 
            shape = "String", type = "string")), shape = "DescribeStaleSecurityGroupsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_stale_security_groups_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string"), 
        StaleSecurityGroupSet = structure(list(structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            GroupId = structure(logical(0), shape = "String", 
                locationName = "groupId", type = "string"), GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), StaleIpPermissions = structure(list(structure(list(FromPort = structure(logical(0), 
                shape = "Integer", locationName = "fromPort", 
                type = "integer"), IpProtocol = structure(logical(0), 
                shape = "String", locationName = "ipProtocol", 
                type = "string"), IpRanges = structure(list(structure(logical(0), 
                shape = "String", locationName = "item", type = "string")), 
                shape = "IpRanges", locationName = "ipRanges", 
                type = "list"), PrefixListIds = structure(list(structure(logical(0), 
                shape = "String", locationName = "item", type = "string")), 
                shape = "PrefixListIdSet", locationName = "prefixListIds", 
                type = "list"), ToPort = structure(logical(0), 
                shape = "Integer", locationName = "toPort", type = "integer"), 
                UserIdGroupPairs = structure(list(structure(list(Description = structure(logical(0), 
                  shape = "String", locationName = "description", 
                  type = "string"), GroupId = structure(logical(0), 
                  shape = "String", locationName = "groupId", 
                  type = "string"), GroupName = structure(logical(0), 
                  shape = "String", locationName = "groupName", 
                  type = "string"), PeeringStatus = structure(logical(0), 
                  shape = "String", locationName = "peeringStatus", 
                  type = "string"), UserId = structure(logical(0), 
                  shape = "String", locationName = "userId", 
                  type = "string"), VpcId = structure(logical(0), 
                  shape = "String", locationName = "vpcId", type = "string"), 
                  VpcPeeringConnectionId = structure(logical(0), 
                    shape = "String", locationName = "vpcPeeringConnectionId", 
                    type = "string")), shape = "UserIdGroupPair", 
                  locationName = "item", type = "structure")), 
                  shape = "UserIdGroupPairSet", locationName = "groups", 
                  type = "list")), shape = "StaleIpPermission", 
                locationName = "item", type = "structure")), 
                shape = "StaleIpPermissionSet", locationName = "staleIpPermissions", 
                type = "list"), StaleIpPermissionsEgress = structure(list(structure(list(FromPort = structure(logical(0), 
                shape = "Integer", locationName = "fromPort", 
                type = "integer"), IpProtocol = structure(logical(0), 
                shape = "String", locationName = "ipProtocol", 
                type = "string"), IpRanges = structure(list(structure(logical(0), 
                shape = "String", locationName = "item", type = "string")), 
                shape = "IpRanges", locationName = "ipRanges", 
                type = "list"), PrefixListIds = structure(list(structure(logical(0), 
                shape = "String", locationName = "item", type = "string")), 
                shape = "PrefixListIdSet", locationName = "prefixListIds", 
                type = "list"), ToPort = structure(logical(0), 
                shape = "Integer", locationName = "toPort", type = "integer"), 
                UserIdGroupPairs = structure(list(structure(list(Description = structure(logical(0), 
                  shape = "String", locationName = "description", 
                  type = "string"), GroupId = structure(logical(0), 
                  shape = "String", locationName = "groupId", 
                  type = "string"), GroupName = structure(logical(0), 
                  shape = "String", locationName = "groupName", 
                  type = "string"), PeeringStatus = structure(logical(0), 
                  shape = "String", locationName = "peeringStatus", 
                  type = "string"), UserId = structure(logical(0), 
                  shape = "String", locationName = "userId", 
                  type = "string"), VpcId = structure(logical(0), 
                  shape = "String", locationName = "vpcId", type = "string"), 
                  VpcPeeringConnectionId = structure(logical(0), 
                    shape = "String", locationName = "vpcPeeringConnectionId", 
                    type = "string")), shape = "UserIdGroupPair", 
                  locationName = "item", type = "structure")), 
                  shape = "UserIdGroupPairSet", locationName = "groups", 
                  type = "list")), shape = "StaleIpPermission", 
                locationName = "item", type = "structure")), 
                shape = "StaleIpPermissionSet", locationName = "staleIpPermissionsEgress", 
                type = "list"), VpcId = structure(logical(0), 
                shape = "String", locationName = "vpcId", type = "string")), 
            shape = "StaleSecurityGroup", locationName = "item", 
            type = "structure")), shape = "StaleSecurityGroupSet", 
            locationName = "staleSecurityGroupSet", type = "list")), 
        shape = "DescribeStaleSecurityGroupsResult", type = "structure")
    return(populate(args, shape))
}

describe_subnets_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        SubnetIds = structure(list(structure(logical(0), shape = "String", 
            locationName = "SubnetId", type = "string")), shape = "SubnetIdStringList", 
            locationName = "SubnetId", type = "list"), DryRun = structure(logical(0), 
            shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DescribeSubnetsRequest", type = "structure")
    return(populate(args, shape))
}

describe_subnets_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Subnets = structure(list(structure(list(AvailabilityZone = structure(logical(0), 
        shape = "String", locationName = "availabilityZone", 
        type = "string"), AvailableIpAddressCount = structure(logical(0), 
        shape = "Integer", locationName = "availableIpAddressCount", 
        type = "integer"), CidrBlock = structure(logical(0), 
        shape = "String", locationName = "cidrBlock", type = "string"), 
        DefaultForAz = structure(logical(0), shape = "Boolean", 
            locationName = "defaultForAz", type = "boolean"), 
        MapPublicIpOnLaunch = structure(logical(0), shape = "Boolean", 
            locationName = "mapPublicIpOnLaunch", type = "boolean"), 
        State = structure(logical(0), shape = "SubnetState", 
            locationName = "state", type = "string"), SubnetId = structure(logical(0), 
            shape = "String", locationName = "subnetId", type = "string"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string"), AssignIpv6AddressOnCreation = structure(logical(0), 
            shape = "Boolean", locationName = "assignIpv6AddressOnCreation", 
            type = "boolean"), Ipv6CidrBlockAssociationSet = structure(list(structure(list(AssociationId = structure(logical(0), 
            shape = "String", locationName = "associationId", 
            type = "string"), Ipv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "ipv6CidrBlock", 
            type = "string"), Ipv6CidrBlockState = structure(list(State = structure(logical(0), 
            shape = "SubnetCidrBlockStateCode", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "SubnetCidrBlockState", 
            locationName = "ipv6CidrBlockState", type = "structure")), 
            shape = "SubnetIpv6CidrBlockAssociation", locationName = "item", 
            type = "structure")), shape = "SubnetIpv6CidrBlockAssociationSet", 
            locationName = "ipv6CidrBlockAssociationSet", type = "list"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "Subnet", locationName = "item", 
        type = "structure")), shape = "SubnetList", locationName = "subnetSet", 
        type = "list")), shape = "DescribeSubnetsResult", type = "structure")
    return(populate(args, shape))
}

describe_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            locationName = "maxResults", type = "integer"), NextToken = structure(logical(0), 
            shape = "String", locationName = "nextToken", type = "string")), 
        shape = "DescribeTagsRequest", type = "structure")
    return(populate(args, shape))
}

describe_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            ResourceId = structure(logical(0), shape = "String", 
                locationName = "resourceId", type = "string"), 
            ResourceType = structure(logical(0), shape = "ResourceType", 
                locationName = "resourceType", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "TagDescription", 
            locationName = "item", type = "structure")), shape = "TagDescriptionList", 
            locationName = "tagSet", type = "list")), shape = "DescribeTagsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_volume_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attribute = structure(logical(0), 
        shape = "VolumeAttributeName", type = "string"), VolumeId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DescribeVolumeAttributeRequest", type = "structure")
    return(populate(args, shape))
}

describe_volume_attribute_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoEnableIO = structure(list(Value = structure(logical(0), 
        shape = "Boolean", locationName = "value", type = "boolean")), 
        shape = "AttributeBooleanValue", locationName = "autoEnableIO", 
        type = "structure"), ProductCodes = structure(list(structure(list(ProductCodeId = structure(logical(0), 
        shape = "String", locationName = "productCode", type = "string"), 
        ProductCodeType = structure(logical(0), shape = "ProductCodeValues", 
            locationName = "type", type = "string")), shape = "ProductCode", 
        locationName = "item", type = "structure")), shape = "ProductCodeList", 
        locationName = "productCodes", type = "list"), VolumeId = structure(logical(0), 
        shape = "String", locationName = "volumeId", type = "string")), 
        shape = "DescribeVolumeAttributeResult", type = "structure")
    return(populate(args, shape))
}

describe_volume_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer"), NextToken = structure(logical(0), 
            shape = "String", type = "string"), VolumeIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "VolumeId", type = "string")), 
            shape = "VolumeIdStringList", locationName = "VolumeId", 
            type = "list"), DryRun = structure(logical(0), shape = "Boolean", 
            locationName = "dryRun", type = "boolean")), shape = "DescribeVolumeStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_volume_status_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string"), 
        VolumeStatuses = structure(list(structure(list(Actions = structure(list(structure(list(Code = structure(logical(0), 
            shape = "String", locationName = "code", type = "string"), 
            Description = structure(logical(0), shape = "String", 
                locationName = "description", type = "string"), 
            EventId = structure(logical(0), shape = "String", 
                locationName = "eventId", type = "string"), EventType = structure(logical(0), 
                shape = "String", locationName = "eventType", 
                type = "string")), shape = "VolumeStatusAction", 
            locationName = "item", type = "structure")), shape = "VolumeStatusActionsList", 
            locationName = "actionsSet", type = "list"), AvailabilityZone = structure(logical(0), 
            shape = "String", locationName = "availabilityZone", 
            type = "string"), Events = structure(list(structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            EventId = structure(logical(0), shape = "String", 
                locationName = "eventId", type = "string"), EventType = structure(logical(0), 
                shape = "String", locationName = "eventType", 
                type = "string"), NotAfter = structure(logical(0), 
                shape = "DateTime", locationName = "notAfter", 
                type = "timestamp"), NotBefore = structure(logical(0), 
                shape = "DateTime", locationName = "notBefore", 
                type = "timestamp")), shape = "VolumeStatusEvent", 
            locationName = "item", type = "structure")), shape = "VolumeStatusEventsList", 
            locationName = "eventsSet", type = "list"), VolumeId = structure(logical(0), 
            shape = "String", locationName = "volumeId", type = "string"), 
            VolumeStatus = structure(list(Details = structure(list(structure(list(Name = structure(logical(0), 
                shape = "VolumeStatusName", locationName = "name", 
                type = "string"), Status = structure(logical(0), 
                shape = "String", locationName = "status", type = "string")), 
                shape = "VolumeStatusDetails", locationName = "item", 
                type = "structure")), shape = "VolumeStatusDetailsList", 
                locationName = "details", type = "list"), Status = structure(logical(0), 
                shape = "VolumeStatusInfoStatus", locationName = "status", 
                type = "string")), shape = "VolumeStatusInfo", 
                locationName = "volumeStatus", type = "structure")), 
            shape = "VolumeStatusItem", locationName = "item", 
            type = "structure")), shape = "VolumeStatusList", 
            locationName = "volumeStatusSet", type = "list")), 
        shape = "DescribeVolumeStatusResult", type = "structure")
    return(populate(args, shape))
}

describe_volumes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        VolumeIds = structure(list(structure(logical(0), shape = "String", 
            locationName = "VolumeId", type = "string")), shape = "VolumeIdStringList", 
            locationName = "VolumeId", type = "list"), DryRun = structure(logical(0), 
            shape = "Boolean", locationName = "dryRun", type = "boolean"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            locationName = "maxResults", type = "integer"), NextToken = structure(logical(0), 
            shape = "String", locationName = "nextToken", type = "string")), 
        shape = "DescribeVolumesRequest", type = "structure")
    return(populate(args, shape))
}

describe_volumes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Volumes = structure(list(structure(list(Attachments = structure(list(structure(list(AttachTime = structure(logical(0), 
        shape = "DateTime", locationName = "attachTime", type = "timestamp"), 
        Device = structure(logical(0), shape = "String", locationName = "device", 
            type = "string"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
        State = structure(logical(0), shape = "VolumeAttachmentState", 
            locationName = "status", type = "string"), VolumeId = structure(logical(0), 
            shape = "String", locationName = "volumeId", type = "string"), 
        DeleteOnTermination = structure(logical(0), shape = "Boolean", 
            locationName = "deleteOnTermination", type = "boolean")), 
        shape = "VolumeAttachment", locationName = "item", type = "structure")), 
        shape = "VolumeAttachmentList", locationName = "attachmentSet", 
        type = "list"), AvailabilityZone = structure(logical(0), 
        shape = "String", locationName = "availabilityZone", 
        type = "string"), CreateTime = structure(logical(0), 
        shape = "DateTime", locationName = "createTime", type = "timestamp"), 
        Encrypted = structure(logical(0), shape = "Boolean", 
            locationName = "encrypted", type = "boolean"), KmsKeyId = structure(logical(0), 
            shape = "String", locationName = "kmsKeyId", type = "string"), 
        Size = structure(logical(0), shape = "Integer", locationName = "size", 
            type = "integer"), SnapshotId = structure(logical(0), 
            shape = "String", locationName = "snapshotId", type = "string"), 
        State = structure(logical(0), shape = "VolumeState", 
            locationName = "status", type = "string"), VolumeId = structure(logical(0), 
            shape = "String", locationName = "volumeId", type = "string"), 
        Iops = structure(logical(0), shape = "Integer", locationName = "iops", 
            type = "integer"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), VolumeType = structure(logical(0), 
            shape = "VolumeType", locationName = "volumeType", 
            type = "string")), shape = "Volume", locationName = "item", 
        type = "structure")), shape = "VolumeList", locationName = "volumeSet", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        locationName = "nextToken", type = "string")), shape = "DescribeVolumesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_volumes_modifications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), VolumeIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "VolumeId", type = "string")), 
        shape = "VolumeIdStringList", locationName = "VolumeId", 
        type = "list"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        NextToken = structure(logical(0), shape = "String", type = "string"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer")), shape = "DescribeVolumesModificationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_volumes_modifications_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumesModifications = structure(list(structure(list(VolumeId = structure(logical(0), 
        shape = "String", locationName = "volumeId", type = "string"), 
        ModificationState = structure(logical(0), shape = "VolumeModificationState", 
            locationName = "modificationState", type = "string"), 
        StatusMessage = structure(logical(0), shape = "String", 
            locationName = "statusMessage", type = "string"), 
        TargetSize = structure(logical(0), shape = "Integer", 
            locationName = "targetSize", type = "integer"), TargetIops = structure(logical(0), 
            shape = "Integer", locationName = "targetIops", type = "integer"), 
        TargetVolumeType = structure(logical(0), shape = "VolumeType", 
            locationName = "targetVolumeType", type = "string"), 
        OriginalSize = structure(logical(0), shape = "Integer", 
            locationName = "originalSize", type = "integer"), 
        OriginalIops = structure(logical(0), shape = "Integer", 
            locationName = "originalIops", type = "integer"), 
        OriginalVolumeType = structure(logical(0), shape = "VolumeType", 
            locationName = "originalVolumeType", type = "string"), 
        Progress = structure(logical(0), shape = "Long", locationName = "progress", 
            type = "long"), StartTime = structure(logical(0), 
            shape = "DateTime", locationName = "startTime", type = "timestamp"), 
        EndTime = structure(logical(0), shape = "DateTime", locationName = "endTime", 
            type = "timestamp")), shape = "VolumeModification", 
        locationName = "item", type = "structure")), shape = "VolumeModificationList", 
        locationName = "volumeModificationSet", type = "list"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string")), shape = "DescribeVolumesModificationsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attribute = structure(logical(0), 
        shape = "VpcAttributeName", type = "string"), VpcId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DescribeVpcAttributeRequest", type = "structure")
    return(populate(args, shape))
}

describe_vpc_attribute_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcId = structure(logical(0), shape = "String", 
        locationName = "vpcId", type = "string"), EnableDnsHostnames = structure(list(Value = structure(logical(0), 
        shape = "Boolean", locationName = "value", type = "boolean")), 
        shape = "AttributeBooleanValue", locationName = "enableDnsHostnames", 
        type = "structure"), EnableDnsSupport = structure(list(Value = structure(logical(0), 
        shape = "Boolean", locationName = "value", type = "boolean")), 
        shape = "AttributeBooleanValue", locationName = "enableDnsSupport", 
        type = "structure")), shape = "DescribeVpcAttributeResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_classic_link_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), VpcIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "VpcId", type = "string")), 
            shape = "VpcClassicLinkIdList", locationName = "VpcId", 
            type = "list")), shape = "DescribeVpcClassicLinkRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_classic_link_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Vpcs = structure(list(structure(list(ClassicLinkEnabled = structure(logical(0), 
        shape = "Boolean", locationName = "classicLinkEnabled", 
        type = "boolean"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", locationName = "key", type = "string"), 
        Value = structure(logical(0), shape = "String", locationName = "value", 
            type = "string")), shape = "Tag", locationName = "item", 
        type = "structure")), shape = "TagList", locationName = "tagSet", 
        type = "list"), VpcId = structure(logical(0), shape = "String", 
        locationName = "vpcId", type = "string")), shape = "VpcClassicLink", 
        locationName = "item", type = "structure")), shape = "VpcClassicLinkList", 
        locationName = "vpcSet", type = "list")), shape = "DescribeVpcClassicLinkResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_classic_link_dns_support_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(MaxResults = structure(logical(0), 
        shape = "MaxResults", locationName = "maxResults", type = "integer", 
        max = 255L, min = 5L), NextToken = structure(logical(0), 
        shape = "NextToken", locationName = "nextToken", type = "string", 
        max = 1024L, min = 1L), VpcIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "VpcId", type = "string")), 
        shape = "VpcClassicLinkIdList", type = "list")), shape = "DescribeVpcClassicLinkDnsSupportRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_classic_link_dns_support_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NextToken = structure(logical(0), 
        shape = "NextToken", locationName = "nextToken", type = "string", 
        max = 1024L, min = 1L), Vpcs = structure(list(structure(list(ClassicLinkDnsSupported = structure(logical(0), 
        shape = "Boolean", locationName = "classicLinkDnsSupported", 
        type = "boolean"), VpcId = structure(logical(0), shape = "String", 
        locationName = "vpcId", type = "string")), shape = "ClassicLinkDnsSupport", 
        locationName = "item", type = "structure")), shape = "ClassicLinkDnsSupportList", 
        locationName = "vpcs", type = "list")), shape = "DescribeVpcClassicLinkDnsSupportResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_endpoint_connection_notifications_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ConnectionNotificationId = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer"), NextToken = structure(logical(0), 
            shape = "String", type = "string")), shape = "DescribeVpcEndpointConnectionNotificationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_endpoint_connection_notifications_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionNotificationSet = structure(list(structure(list(ConnectionNotificationId = structure(logical(0), 
        shape = "String", locationName = "connectionNotificationId", 
        type = "string"), ServiceId = structure(logical(0), shape = "String", 
        locationName = "serviceId", type = "string"), VpcEndpointId = structure(logical(0), 
        shape = "String", locationName = "vpcEndpointId", type = "string"), 
        ConnectionNotificationType = structure(logical(0), shape = "ConnectionNotificationType", 
            locationName = "connectionNotificationType", type = "string"), 
        ConnectionNotificationArn = structure(logical(0), shape = "String", 
            locationName = "connectionNotificationArn", type = "string"), 
        ConnectionEvents = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "connectionEvents", 
            type = "list"), ConnectionNotificationState = structure(logical(0), 
            shape = "ConnectionNotificationState", locationName = "connectionNotificationState", 
            type = "string")), shape = "ConnectionNotification", 
        locationName = "item", type = "structure")), shape = "ConnectionNotificationSet", 
        locationName = "connectionNotificationSet", type = "list"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string")), shape = "DescribeVpcEndpointConnectionNotificationsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_endpoint_connections_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer"), NextToken = structure(logical(0), 
            shape = "String", type = "string")), shape = "DescribeVpcEndpointConnectionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_endpoint_connections_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcEndpointConnections = structure(list(structure(list(ServiceId = structure(logical(0), 
        shape = "String", locationName = "serviceId", type = "string"), 
        VpcEndpointId = structure(logical(0), shape = "String", 
            locationName = "vpcEndpointId", type = "string"), 
        VpcEndpointOwner = structure(logical(0), shape = "String", 
            locationName = "vpcEndpointOwner", type = "string"), 
        VpcEndpointState = structure(logical(0), shape = "State", 
            locationName = "vpcEndpointState", type = "string"), 
        CreationTimestamp = structure(logical(0), shape = "DateTime", 
            locationName = "creationTimestamp", type = "timestamp")), 
        shape = "VpcEndpointConnection", locationName = "item", 
        type = "structure")), shape = "VpcEndpointConnectionSet", 
        locationName = "vpcEndpointConnectionSet", type = "list"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string")), shape = "DescribeVpcEndpointConnectionsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_endpoint_service_configurations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ServiceIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "ServiceId", 
        type = "list"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer"), NextToken = structure(logical(0), 
            shape = "String", type = "string")), shape = "DescribeVpcEndpointServiceConfigurationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_endpoint_service_configurations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceConfigurations = structure(list(structure(list(ServiceType = structure(list(structure(list(ServiceType = structure(logical(0), 
        shape = "ServiceType", locationName = "serviceType", 
        type = "string")), shape = "ServiceTypeDetail", locationName = "item", 
        type = "structure")), shape = "ServiceTypeDetailSet", 
        locationName = "serviceType", type = "list"), ServiceId = structure(logical(0), 
        shape = "String", locationName = "serviceId", type = "string"), 
        ServiceName = structure(logical(0), shape = "String", 
            locationName = "serviceName", type = "string"), ServiceState = structure(logical(0), 
            shape = "ServiceState", locationName = "serviceState", 
            type = "string"), AvailabilityZones = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "availabilityZoneSet", 
            type = "list"), AcceptanceRequired = structure(logical(0), 
            shape = "Boolean", locationName = "acceptanceRequired", 
            type = "boolean"), NetworkLoadBalancerArns = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "networkLoadBalancerArnSet", 
            type = "list"), BaseEndpointDnsNames = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "baseEndpointDnsNameSet", 
            type = "list"), PrivateDnsName = structure(logical(0), 
            shape = "String", locationName = "privateDnsName", 
            type = "string")), shape = "ServiceConfiguration", 
        locationName = "item", type = "structure")), shape = "ServiceConfigurationSet", 
        locationName = "serviceConfigurationSet", type = "list"), 
        NextToken = structure(logical(0), shape = "String", locationName = "nextToken", 
            type = "string")), shape = "DescribeVpcEndpointServiceConfigurationsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_endpoint_service_permissions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ServiceId = structure(logical(0), 
        shape = "String", type = "string"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer"), NextToken = structure(logical(0), 
            shape = "String", type = "string")), shape = "DescribeVpcEndpointServicePermissionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_endpoint_service_permissions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AllowedPrincipals = structure(list(structure(list(PrincipalType = structure(logical(0), 
        shape = "PrincipalType", locationName = "principalType", 
        type = "string"), Principal = structure(logical(0), shape = "String", 
        locationName = "principal", type = "string")), shape = "AllowedPrincipal", 
        locationName = "item", type = "structure")), shape = "AllowedPrincipalSet", 
        locationName = "allowedPrincipals", type = "list"), NextToken = structure(logical(0), 
        shape = "String", locationName = "nextToken", type = "string")), 
        shape = "DescribeVpcEndpointServicePermissionsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_endpoint_services_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ServiceNames = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "ServiceName", 
        type = "list"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer"), NextToken = structure(logical(0), 
            shape = "String", type = "string")), shape = "DescribeVpcEndpointServicesRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_endpoint_services_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ServiceNames = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "serviceNameSet", 
        type = "list"), ServiceDetails = structure(list(structure(list(ServiceName = structure(logical(0), 
        shape = "String", locationName = "serviceName", type = "string"), 
        ServiceType = structure(list(structure(list(ServiceType = structure(logical(0), 
            shape = "ServiceType", locationName = "serviceType", 
            type = "string")), shape = "ServiceTypeDetail", locationName = "item", 
            type = "structure")), shape = "ServiceTypeDetailSet", 
            locationName = "serviceType", type = "list"), AvailabilityZones = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "availabilityZoneSet", 
            type = "list"), Owner = structure(logical(0), shape = "String", 
            locationName = "owner", type = "string"), BaseEndpointDnsNames = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "baseEndpointDnsNameSet", 
            type = "list"), PrivateDnsName = structure(logical(0), 
            shape = "String", locationName = "privateDnsName", 
            type = "string"), VpcEndpointPolicySupported = structure(logical(0), 
            shape = "Boolean", locationName = "vpcEndpointPolicySupported", 
            type = "boolean"), AcceptanceRequired = structure(logical(0), 
            shape = "Boolean", locationName = "acceptanceRequired", 
            type = "boolean")), shape = "ServiceDetail", locationName = "item", 
        type = "structure")), shape = "ServiceDetailSet", locationName = "serviceDetailSet", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        locationName = "nextToken", type = "string")), shape = "DescribeVpcEndpointServicesResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_endpoints_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), VpcEndpointIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "VpcEndpointId", 
        type = "list"), Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        MaxResults = structure(logical(0), shape = "Integer", 
            type = "integer"), NextToken = structure(logical(0), 
            shape = "String", type = "string")), shape = "DescribeVpcEndpointsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_endpoints_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcEndpoints = structure(list(structure(list(VpcEndpointId = structure(logical(0), 
        shape = "String", locationName = "vpcEndpointId", type = "string"), 
        VpcEndpointType = structure(logical(0), shape = "VpcEndpointType", 
            locationName = "vpcEndpointType", type = "string"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string"), ServiceName = structure(logical(0), 
            shape = "String", locationName = "serviceName", type = "string"), 
        State = structure(logical(0), shape = "State", locationName = "state", 
            type = "string"), PolicyDocument = structure(logical(0), 
            shape = "String", locationName = "policyDocument", 
            type = "string"), RouteTableIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "routeTableIdSet", 
            type = "list"), SubnetIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "subnetIdSet", 
            type = "list"), Groups = structure(list(structure(list(GroupId = structure(logical(0), 
            shape = "String", locationName = "groupId", type = "string"), 
            GroupName = structure(logical(0), shape = "String", 
                locationName = "groupName", type = "string")), 
            shape = "SecurityGroupIdentifier", locationName = "item", 
            type = "structure")), shape = "GroupIdentifierSet", 
            locationName = "groupSet", type = "list"), PrivateDnsEnabled = structure(logical(0), 
            shape = "Boolean", locationName = "privateDnsEnabled", 
            type = "boolean"), NetworkInterfaceIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "networkInterfaceIdSet", 
            type = "list"), DnsEntries = structure(list(structure(list(DnsName = structure(logical(0), 
            shape = "String", locationName = "dnsName", type = "string"), 
            HostedZoneId = structure(logical(0), shape = "String", 
                locationName = "hostedZoneId", type = "string")), 
            shape = "DnsEntry", locationName = "item", type = "structure")), 
            shape = "DnsEntrySet", locationName = "dnsEntrySet", 
            type = "list"), CreationTimestamp = structure(logical(0), 
            shape = "DateTime", locationName = "creationTimestamp", 
            type = "timestamp")), shape = "VpcEndpoint", locationName = "item", 
        type = "structure")), shape = "VpcEndpointSet", locationName = "vpcEndpointSet", 
        type = "list"), NextToken = structure(logical(0), shape = "String", 
        locationName = "nextToken", type = "string")), shape = "DescribeVpcEndpointsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_peering_connections_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), VpcPeeringConnectionIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "VpcPeeringConnectionId", 
            type = "list")), shape = "DescribeVpcPeeringConnectionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpc_peering_connections_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcPeeringConnections = structure(list(structure(list(AccepterVpcInfo = structure(list(CidrBlock = structure(logical(0), 
        shape = "String", locationName = "cidrBlock", type = "string"), 
        Ipv6CidrBlockSet = structure(list(structure(list(Ipv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "ipv6CidrBlock", 
            type = "string")), shape = "Ipv6CidrBlock", locationName = "item", 
            type = "structure")), shape = "Ipv6CidrBlockSet", 
            locationName = "ipv6CidrBlockSet", type = "list"), 
        CidrBlockSet = structure(list(structure(list(CidrBlock = structure(logical(0), 
            shape = "String", locationName = "cidrBlock", type = "string")), 
            shape = "CidrBlock", locationName = "item", type = "structure")), 
            shape = "CidrBlockSet", locationName = "cidrBlockSet", 
            type = "list"), OwnerId = structure(logical(0), shape = "String", 
            locationName = "ownerId", type = "string"), PeeringOptions = structure(list(AllowDnsResolutionFromRemoteVpc = structure(logical(0), 
            shape = "Boolean", locationName = "allowDnsResolutionFromRemoteVpc", 
            type = "boolean"), AllowEgressFromLocalClassicLinkToRemoteVpc = structure(logical(0), 
            shape = "Boolean", locationName = "allowEgressFromLocalClassicLinkToRemoteVpc", 
            type = "boolean"), AllowEgressFromLocalVpcToRemoteClassicLink = structure(logical(0), 
            shape = "Boolean", locationName = "allowEgressFromLocalVpcToRemoteClassicLink", 
            type = "boolean")), shape = "VpcPeeringConnectionOptionsDescription", 
            locationName = "peeringOptions", type = "structure"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string"), Region = structure(logical(0), 
            shape = "String", locationName = "region", type = "string")), 
        shape = "VpcPeeringConnectionVpcInfo", locationName = "accepterVpcInfo", 
        type = "structure"), ExpirationTime = structure(logical(0), 
        shape = "DateTime", locationName = "expirationTime", 
        type = "timestamp"), RequesterVpcInfo = structure(list(CidrBlock = structure(logical(0), 
        shape = "String", locationName = "cidrBlock", type = "string"), 
        Ipv6CidrBlockSet = structure(list(structure(list(Ipv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "ipv6CidrBlock", 
            type = "string")), shape = "Ipv6CidrBlock", locationName = "item", 
            type = "structure")), shape = "Ipv6CidrBlockSet", 
            locationName = "ipv6CidrBlockSet", type = "list"), 
        CidrBlockSet = structure(list(structure(list(CidrBlock = structure(logical(0), 
            shape = "String", locationName = "cidrBlock", type = "string")), 
            shape = "CidrBlock", locationName = "item", type = "structure")), 
            shape = "CidrBlockSet", locationName = "cidrBlockSet", 
            type = "list"), OwnerId = structure(logical(0), shape = "String", 
            locationName = "ownerId", type = "string"), PeeringOptions = structure(list(AllowDnsResolutionFromRemoteVpc = structure(logical(0), 
            shape = "Boolean", locationName = "allowDnsResolutionFromRemoteVpc", 
            type = "boolean"), AllowEgressFromLocalClassicLinkToRemoteVpc = structure(logical(0), 
            shape = "Boolean", locationName = "allowEgressFromLocalClassicLinkToRemoteVpc", 
            type = "boolean"), AllowEgressFromLocalVpcToRemoteClassicLink = structure(logical(0), 
            shape = "Boolean", locationName = "allowEgressFromLocalVpcToRemoteClassicLink", 
            type = "boolean")), shape = "VpcPeeringConnectionOptionsDescription", 
            locationName = "peeringOptions", type = "structure"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string"), Region = structure(logical(0), 
            shape = "String", locationName = "region", type = "string")), 
        shape = "VpcPeeringConnectionVpcInfo", locationName = "requesterVpcInfo", 
        type = "structure"), Status = structure(list(Code = structure(logical(0), 
        shape = "VpcPeeringConnectionStateReasonCode", locationName = "code", 
        type = "string"), Message = structure(logical(0), shape = "String", 
        locationName = "message", type = "string")), shape = "VpcPeeringConnectionStateReason", 
        locationName = "status", type = "structure"), Tags = structure(list(structure(list(Key = structure(logical(0), 
        shape = "String", locationName = "key", type = "string"), 
        Value = structure(logical(0), shape = "String", locationName = "value", 
            type = "string")), shape = "Tag", locationName = "item", 
        type = "structure")), shape = "TagList", locationName = "tagSet", 
        type = "list"), VpcPeeringConnectionId = structure(logical(0), 
        shape = "String", locationName = "vpcPeeringConnectionId", 
        type = "string")), shape = "VpcPeeringConnection", locationName = "item", 
        type = "structure")), shape = "VpcPeeringConnectionList", 
        locationName = "vpcPeeringConnectionSet", type = "list")), 
        shape = "DescribeVpcPeeringConnectionsResult", type = "structure")
    return(populate(args, shape))
}

describe_vpcs_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        VpcIds = structure(list(structure(logical(0), shape = "String", 
            locationName = "VpcId", type = "string")), shape = "VpcIdStringList", 
            locationName = "VpcId", type = "list"), DryRun = structure(logical(0), 
            shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DescribeVpcsRequest", type = "structure")
    return(populate(args, shape))
}

describe_vpcs_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Vpcs = structure(list(structure(list(CidrBlock = structure(logical(0), 
        shape = "String", locationName = "cidrBlock", type = "string"), 
        DhcpOptionsId = structure(logical(0), shape = "String", 
            locationName = "dhcpOptionsId", type = "string"), 
        State = structure(logical(0), shape = "VpcState", locationName = "state", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string"), InstanceTenancy = structure(logical(0), 
            shape = "Tenancy", locationName = "instanceTenancy", 
            type = "string"), Ipv6CidrBlockAssociationSet = structure(list(structure(list(AssociationId = structure(logical(0), 
            shape = "String", locationName = "associationId", 
            type = "string"), Ipv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "ipv6CidrBlock", 
            type = "string"), Ipv6CidrBlockState = structure(list(State = structure(logical(0), 
            shape = "VpcCidrBlockStateCode", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "VpcCidrBlockState", locationName = "ipv6CidrBlockState", 
            type = "structure")), shape = "VpcIpv6CidrBlockAssociation", 
            locationName = "item", type = "structure")), shape = "VpcIpv6CidrBlockAssociationSet", 
            locationName = "ipv6CidrBlockAssociationSet", type = "list"), 
        CidrBlockAssociationSet = structure(list(structure(list(AssociationId = structure(logical(0), 
            shape = "String", locationName = "associationId", 
            type = "string"), CidrBlock = structure(logical(0), 
            shape = "String", locationName = "cidrBlock", type = "string"), 
            CidrBlockState = structure(list(State = structure(logical(0), 
                shape = "VpcCidrBlockStateCode", locationName = "state", 
                type = "string"), StatusMessage = structure(logical(0), 
                shape = "String", locationName = "statusMessage", 
                type = "string")), shape = "VpcCidrBlockState", 
                locationName = "cidrBlockState", type = "structure")), 
            shape = "VpcCidrBlockAssociation", locationName = "item", 
            type = "structure")), shape = "VpcCidrBlockAssociationSet", 
            locationName = "cidrBlockAssociationSet", type = "list"), 
        IsDefault = structure(logical(0), shape = "Boolean", 
            locationName = "isDefault", type = "boolean"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "Vpc", locationName = "item", 
        type = "structure")), shape = "VpcList", locationName = "vpcSet", 
        type = "list")), shape = "DescribeVpcsResult", type = "structure")
    return(populate(args, shape))
}

describe_vpn_connections_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        VpnConnectionIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "VpnConnectionId", 
            type = "string")), shape = "VpnConnectionIdStringList", 
            locationName = "VpnConnectionId", type = "list"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean")), shape = "DescribeVpnConnectionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpn_connections_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpnConnections = structure(list(structure(list(CustomerGatewayConfiguration = structure(logical(0), 
        shape = "String", locationName = "customerGatewayConfiguration", 
        type = "string"), CustomerGatewayId = structure(logical(0), 
        shape = "String", locationName = "customerGatewayId", 
        type = "string"), Category = structure(logical(0), shape = "String", 
        locationName = "category", type = "string"), State = structure(logical(0), 
        shape = "VpnState", locationName = "state", type = "string"), 
        Type = structure(logical(0), shape = "GatewayType", locationName = "type", 
            type = "string"), VpnConnectionId = structure(logical(0), 
            shape = "String", locationName = "vpnConnectionId", 
            type = "string"), VpnGatewayId = structure(logical(0), 
            shape = "String", locationName = "vpnGatewayId", 
            type = "string"), Options = structure(list(StaticRoutesOnly = structure(logical(0), 
            shape = "Boolean", locationName = "staticRoutesOnly", 
            type = "boolean")), shape = "VpnConnectionOptions", 
            locationName = "options", type = "structure"), Routes = structure(list(structure(list(DestinationCidrBlock = structure(logical(0), 
            shape = "String", locationName = "destinationCidrBlock", 
            type = "string"), Source = structure(logical(0), 
            shape = "VpnStaticRouteSource", locationName = "source", 
            type = "string"), State = structure(logical(0), shape = "VpnState", 
            locationName = "state", type = "string")), shape = "VpnStaticRoute", 
            locationName = "item", type = "structure")), shape = "VpnStaticRouteList", 
            locationName = "routes", type = "list"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), VgwTelemetry = structure(list(structure(list(AcceptedRouteCount = structure(logical(0), 
            shape = "Integer", locationName = "acceptedRouteCount", 
            type = "integer"), LastStatusChange = structure(logical(0), 
            shape = "DateTime", locationName = "lastStatusChange", 
            type = "timestamp"), OutsideIpAddress = structure(logical(0), 
            shape = "String", locationName = "outsideIpAddress", 
            type = "string"), Status = structure(logical(0), 
            shape = "TelemetryStatus", locationName = "status", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "VgwTelemetry", locationName = "item", 
            type = "structure")), shape = "VgwTelemetryList", 
            locationName = "vgwTelemetry", type = "list")), shape = "VpnConnection", 
        locationName = "item", type = "structure")), shape = "VpnConnectionList", 
        locationName = "vpnConnectionSet", type = "list")), shape = "DescribeVpnConnectionsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_vpn_gateways_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Filters = structure(list(structure(list(Name = structure(logical(0), 
        shape = "String", type = "string"), Values = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "Value", type = "list")), 
        shape = "Filter", locationName = "Filter", type = "structure")), 
        shape = "FilterList", locationName = "Filter", type = "list"), 
        VpnGatewayIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "VpnGatewayId", 
            type = "string")), shape = "VpnGatewayIdStringList", 
            locationName = "VpnGatewayId", type = "list"), DryRun = structure(logical(0), 
            shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DescribeVpnGatewaysRequest", type = "structure")
    return(populate(args, shape))
}

describe_vpn_gateways_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpnGateways = structure(list(structure(list(AvailabilityZone = structure(logical(0), 
        shape = "String", locationName = "availabilityZone", 
        type = "string"), State = structure(logical(0), shape = "VpnState", 
        locationName = "state", type = "string"), Type = structure(logical(0), 
        shape = "GatewayType", locationName = "type", type = "string"), 
        VpcAttachments = structure(list(structure(list(State = structure(logical(0), 
            shape = "AttachmentStatus", locationName = "state", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string")), shape = "VpcAttachment", 
            locationName = "item", type = "structure")), shape = "VpcAttachmentList", 
            locationName = "attachments", type = "list"), VpnGatewayId = structure(logical(0), 
            shape = "String", locationName = "vpnGatewayId", 
            type = "string"), AmazonSideAsn = structure(logical(0), 
            shape = "Long", locationName = "amazonSideAsn", type = "long"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "VpnGateway", locationName = "item", 
        type = "structure")), shape = "VpnGatewayList", locationName = "vpnGatewaySet", 
        type = "list")), shape = "DescribeVpnGatewaysResult", 
        type = "structure")
    return(populate(args, shape))
}

detach_classic_link_vpc_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string")), shape = "DetachClassicLinkVpcRequest", 
        type = "structure")
    return(populate(args, shape))
}

detach_classic_link_vpc_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "DetachClassicLinkVpcResult", 
        type = "structure")
    return(populate(args, shape))
}

detach_internet_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), InternetGatewayId = structure(logical(0), 
        shape = "String", locationName = "internetGatewayId", 
        type = "string"), VpcId = structure(logical(0), shape = "String", 
        locationName = "vpcId", type = "string")), shape = "DetachInternetGatewayRequest", 
        type = "structure")
    return(populate(args, shape))
}

detach_internet_gateway_output <- function () 
{
    return(list())
}

detach_network_interface_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttachmentId = structure(logical(0), 
        shape = "String", locationName = "attachmentId", type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), Force = structure(logical(0), 
            shape = "Boolean", locationName = "force", type = "boolean")), 
        shape = "DetachNetworkInterfaceRequest", type = "structure")
    return(populate(args, shape))
}

detach_network_interface_output <- function () 
{
    return(list())
}

detach_volume_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Device = structure(logical(0), shape = "String", 
        type = "string"), Force = structure(logical(0), shape = "Boolean", 
        type = "boolean"), InstanceId = structure(logical(0), 
        shape = "String", type = "string"), VolumeId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DetachVolumeRequest", type = "structure")
    return(populate(args, shape))
}

detach_volume_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AttachTime = structure(logical(0), 
        shape = "DateTime", locationName = "attachTime", type = "timestamp"), 
        Device = structure(logical(0), shape = "String", locationName = "device", 
            type = "string"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
        State = structure(logical(0), shape = "VolumeAttachmentState", 
            locationName = "status", type = "string"), VolumeId = structure(logical(0), 
            shape = "String", locationName = "volumeId", type = "string"), 
        DeleteOnTermination = structure(logical(0), shape = "Boolean", 
            locationName = "deleteOnTermination", type = "boolean")), 
        shape = "VolumeAttachment", type = "structure")
    return(populate(args, shape))
}

detach_vpn_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcId = structure(logical(0), shape = "String", 
        type = "string"), VpnGatewayId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DetachVpnGatewayRequest", type = "structure")
    return(populate(args, shape))
}

detach_vpn_gateway_output <- function () 
{
    return(list())
}

disable_vgw_route_propagation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayId = structure(logical(0), 
        shape = "String", type = "string"), RouteTableId = structure(logical(0), 
        shape = "String", type = "string")), shape = "DisableVgwRoutePropagationRequest", 
        type = "structure")
    return(populate(args, shape))
}

disable_vgw_route_propagation_output <- function () 
{
    return(list())
}

disable_vpc_classic_link_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), VpcId = structure(logical(0), 
        shape = "String", locationName = "vpcId", type = "string")), 
        shape = "DisableVpcClassicLinkRequest", type = "structure")
    return(populate(args, shape))
}

disable_vpc_classic_link_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "DisableVpcClassicLinkResult", 
        type = "structure")
    return(populate(args, shape))
}

disable_vpc_classic_link_dns_support_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcId = structure(logical(0), shape = "String", 
        type = "string")), shape = "DisableVpcClassicLinkDnsSupportRequest", 
        type = "structure")
    return(populate(args, shape))
}

disable_vpc_classic_link_dns_support_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "DisableVpcClassicLinkDnsSupportResult", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_address_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationId = structure(logical(0), 
        shape = "String", type = "string"), PublicIp = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "DisassociateAddressRequest", type = "structure")
    return(populate(args, shape))
}

disassociate_address_output <- function () 
{
    return(list())
}

disassociate_iam_instance_profile_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationId = structure(logical(0), 
        shape = "String", type = "string")), shape = "DisassociateIamInstanceProfileRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_iam_instance_profile_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IamInstanceProfileAssociation = structure(list(AssociationId = structure(logical(0), 
        shape = "String", locationName = "associationId", type = "string"), 
        InstanceId = structure(logical(0), shape = "String", 
            locationName = "instanceId", type = "string"), IamInstanceProfile = structure(list(Arn = structure(logical(0), 
            shape = "String", locationName = "arn", type = "string"), 
            Id = structure(logical(0), shape = "String", locationName = "id", 
                type = "string")), shape = "IamInstanceProfile", 
            locationName = "iamInstanceProfile", type = "structure"), 
        State = structure(logical(0), shape = "IamInstanceProfileAssociationState", 
            locationName = "state", type = "string"), Timestamp = structure(logical(0), 
            shape = "DateTime", locationName = "timestamp", type = "timestamp")), 
        shape = "IamInstanceProfileAssociation", locationName = "iamInstanceProfileAssociation", 
        type = "structure")), shape = "DisassociateIamInstanceProfileResult", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_route_table_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationId = structure(logical(0), 
        shape = "String", locationName = "associationId", type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean")), shape = "DisassociateRouteTableRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_route_table_output <- function () 
{
    return(list())
}

disassociate_subnet_cidr_block_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationId = structure(logical(0), 
        shape = "String", locationName = "associationId", type = "string")), 
        shape = "DisassociateSubnetCidrBlockRequest", type = "structure")
    return(populate(args, shape))
}

disassociate_subnet_cidr_block_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Ipv6CidrBlockAssociation = structure(list(AssociationId = structure(logical(0), 
        shape = "String", locationName = "associationId", type = "string"), 
        Ipv6CidrBlock = structure(logical(0), shape = "String", 
            locationName = "ipv6CidrBlock", type = "string"), 
        Ipv6CidrBlockState = structure(list(State = structure(logical(0), 
            shape = "SubnetCidrBlockStateCode", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "SubnetCidrBlockState", 
            locationName = "ipv6CidrBlockState", type = "structure")), 
        shape = "SubnetIpv6CidrBlockAssociation", locationName = "ipv6CidrBlockAssociation", 
        type = "structure"), SubnetId = structure(logical(0), 
        shape = "String", locationName = "subnetId", type = "string")), 
        shape = "DisassociateSubnetCidrBlockResult", type = "structure")
    return(populate(args, shape))
}

disassociate_vpc_cidr_block_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationId = structure(logical(0), 
        shape = "String", locationName = "associationId", type = "string")), 
        shape = "DisassociateVpcCidrBlockRequest", type = "structure")
    return(populate(args, shape))
}

disassociate_vpc_cidr_block_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Ipv6CidrBlockAssociation = structure(list(AssociationId = structure(logical(0), 
        shape = "String", locationName = "associationId", type = "string"), 
        Ipv6CidrBlock = structure(logical(0), shape = "String", 
            locationName = "ipv6CidrBlock", type = "string"), 
        Ipv6CidrBlockState = structure(list(State = structure(logical(0), 
            shape = "VpcCidrBlockStateCode", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "VpcCidrBlockState", locationName = "ipv6CidrBlockState", 
            type = "structure")), shape = "VpcIpv6CidrBlockAssociation", 
        locationName = "ipv6CidrBlockAssociation", type = "structure"), 
        CidrBlockAssociation = structure(list(AssociationId = structure(logical(0), 
            shape = "String", locationName = "associationId", 
            type = "string"), CidrBlock = structure(logical(0), 
            shape = "String", locationName = "cidrBlock", type = "string"), 
            CidrBlockState = structure(list(State = structure(logical(0), 
                shape = "VpcCidrBlockStateCode", locationName = "state", 
                type = "string"), StatusMessage = structure(logical(0), 
                shape = "String", locationName = "statusMessage", 
                type = "string")), shape = "VpcCidrBlockState", 
                locationName = "cidrBlockState", type = "structure")), 
            shape = "VpcCidrBlockAssociation", locationName = "cidrBlockAssociation", 
            type = "structure"), VpcId = structure(logical(0), 
            shape = "String", locationName = "vpcId", type = "string")), 
        shape = "DisassociateVpcCidrBlockResult", type = "structure")
    return(populate(args, shape))
}

enable_vgw_route_propagation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(GatewayId = structure(logical(0), 
        shape = "String", type = "string"), RouteTableId = structure(logical(0), 
        shape = "String", type = "string")), shape = "EnableVgwRoutePropagationRequest", 
        type = "structure")
    return(populate(args, shape))
}

enable_vgw_route_propagation_output <- function () 
{
    return(list())
}

enable_volume_io_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), VolumeId = structure(logical(0), 
        shape = "String", locationName = "volumeId", type = "string")), 
        shape = "EnableVolumeIORequest", type = "structure")
    return(populate(args, shape))
}

enable_volume_io_output <- function () 
{
    return(list())
}

enable_vpc_classic_link_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), VpcId = structure(logical(0), 
        shape = "String", locationName = "vpcId", type = "string")), 
        shape = "EnableVpcClassicLinkRequest", type = "structure")
    return(populate(args, shape))
}

enable_vpc_classic_link_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "EnableVpcClassicLinkResult", 
        type = "structure")
    return(populate(args, shape))
}

enable_vpc_classic_link_dns_support_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcId = structure(logical(0), shape = "String", 
        type = "string")), shape = "EnableVpcClassicLinkDnsSupportRequest", 
        type = "structure")
    return(populate(args, shape))
}

enable_vpc_classic_link_dns_support_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "EnableVpcClassicLinkDnsSupportResult", 
        type = "structure")
    return(populate(args, shape))
}

get_console_output_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean"), 
        Latest = structure(logical(0), shape = "Boolean", type = "boolean")), 
        shape = "GetConsoleOutputRequest", type = "structure")
    return(populate(args, shape))
}

get_console_output_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        Output = structure(logical(0), shape = "String", locationName = "output", 
            type = "string"), Timestamp = structure(logical(0), 
            shape = "DateTime", locationName = "timestamp", type = "timestamp")), 
        shape = "GetConsoleOutputResult", type = "structure")
    return(populate(args, shape))
}

get_console_screenshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), InstanceId = structure(logical(0), 
        shape = "String", type = "string"), WakeUp = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "GetConsoleScreenshotRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_console_screenshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImageData = structure(logical(0), 
        shape = "String", locationName = "imageData", type = "string"), 
        InstanceId = structure(logical(0), shape = "String", 
            locationName = "instanceId", type = "string")), shape = "GetConsoleScreenshotResult", 
        type = "structure")
    return(populate(args, shape))
}

get_host_reservation_purchase_preview_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HostIdSet = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "RequestHostIdSet", type = "list"), OfferingId = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetHostReservationPurchasePreviewRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_host_reservation_purchase_preview_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CurrencyCode = structure(logical(0), 
        shape = "CurrencyCodeValues", locationName = "currencyCode", 
        type = "string"), Purchase = structure(list(structure(list(CurrencyCode = structure(logical(0), 
        shape = "CurrencyCodeValues", locationName = "currencyCode", 
        type = "string"), Duration = structure(logical(0), shape = "Integer", 
        locationName = "duration", type = "integer"), HostIdSet = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ResponseHostIdSet", locationName = "hostIdSet", 
        type = "list"), HostReservationId = structure(logical(0), 
        shape = "String", locationName = "hostReservationId", 
        type = "string"), HourlyPrice = structure(logical(0), 
        shape = "String", locationName = "hourlyPrice", type = "string"), 
        InstanceFamily = structure(logical(0), shape = "String", 
            locationName = "instanceFamily", type = "string"), 
        PaymentOption = structure(logical(0), shape = "PaymentOption", 
            locationName = "paymentOption", type = "string"), 
        UpfrontPrice = structure(logical(0), shape = "String", 
            locationName = "upfrontPrice", type = "string")), 
        shape = "Purchase", locationName = "item", type = "structure")), 
        shape = "PurchaseSet", locationName = "purchase", type = "list"), 
        TotalHourlyPrice = structure(logical(0), shape = "String", 
            locationName = "totalHourlyPrice", type = "string"), 
        TotalUpfrontPrice = structure(logical(0), shape = "String", 
            locationName = "totalUpfrontPrice", type = "string")), 
        shape = "GetHostReservationPurchasePreviewResult", type = "structure")
    return(populate(args, shape))
}

get_launch_template_data_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), InstanceId = structure(logical(0), 
        shape = "String", type = "string")), shape = "GetLaunchTemplateDataRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_launch_template_data_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LaunchTemplateData = structure(list(KernelId = structure(logical(0), 
        shape = "String", locationName = "kernelId", type = "string"), 
        EbsOptimized = structure(logical(0), shape = "Boolean", 
            locationName = "ebsOptimized", type = "boolean"), 
        IamInstanceProfile = structure(list(Arn = structure(logical(0), 
            shape = "String", locationName = "arn", type = "string"), 
            Name = structure(logical(0), shape = "String", locationName = "name", 
                type = "string")), shape = "LaunchTemplateIamInstanceProfileSpecification", 
            locationName = "iamInstanceProfile", type = "structure"), 
        BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
            shape = "String", locationName = "deviceName", type = "string"), 
            VirtualName = structure(logical(0), shape = "String", 
                locationName = "virtualName", type = "string"), 
            Ebs = structure(list(Encrypted = structure(logical(0), 
                shape = "Boolean", locationName = "encrypted", 
                type = "boolean"), DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Iops = structure(logical(0), 
                shape = "Integer", locationName = "iops", type = "integer"), 
                KmsKeyId = structure(logical(0), shape = "String", 
                  locationName = "kmsKeyId", type = "string"), 
                SnapshotId = structure(logical(0), shape = "String", 
                  locationName = "snapshotId", type = "string"), 
                VolumeSize = structure(logical(0), shape = "Integer", 
                  locationName = "volumeSize", type = "integer"), 
                VolumeType = structure(logical(0), shape = "VolumeType", 
                  locationName = "volumeType", type = "string")), 
                shape = "LaunchTemplateEbsBlockDevice", locationName = "ebs", 
                type = "structure"), NoDevice = structure(logical(0), 
                shape = "String", locationName = "noDevice", 
                type = "string")), shape = "LaunchTemplateBlockDeviceMapping", 
            locationName = "item", type = "structure")), shape = "LaunchTemplateBlockDeviceMappingList", 
            locationName = "blockDeviceMappingSet", type = "list"), 
        NetworkInterfaces = structure(list(structure(list(AssociatePublicIpAddress = structure(logical(0), 
            shape = "Boolean", locationName = "associatePublicIpAddress", 
            type = "boolean"), DeleteOnTermination = structure(logical(0), 
            shape = "Boolean", locationName = "deleteOnTermination", 
            type = "boolean"), Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            DeviceIndex = structure(logical(0), shape = "Integer", 
                locationName = "deviceIndex", type = "integer"), 
            Groups = structure(list(structure(logical(0), shape = "String", 
                locationName = "groupId", type = "string")), 
                shape = "GroupIdStringList", locationName = "groupSet", 
                type = "list"), Ipv6AddressCount = structure(logical(0), 
                shape = "Integer", locationName = "ipv6AddressCount", 
                type = "integer"), Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
                shape = "String", locationName = "ipv6Address", 
                type = "string")), shape = "InstanceIpv6Address", 
                locationName = "item", type = "structure")), 
                shape = "InstanceIpv6AddressList", locationName = "ipv6AddressesSet", 
                type = "list"), NetworkInterfaceId = structure(logical(0), 
                shape = "String", locationName = "networkInterfaceId", 
                type = "string"), PrivateIpAddress = structure(logical(0), 
                shape = "String", locationName = "privateIpAddress", 
                type = "string"), PrivateIpAddresses = structure(list(structure(list(Primary = structure(logical(0), 
                shape = "Boolean", locationName = "primary", 
                type = "boolean"), PrivateIpAddress = structure(logical(0), 
                shape = "String", locationName = "privateIpAddress", 
                type = "string")), shape = "PrivateIpAddressSpecification", 
                locationName = "item", type = "structure")), 
                shape = "PrivateIpAddressSpecificationList", 
                locationName = "privateIpAddressesSet", type = "list"), 
            SecondaryPrivateIpAddressCount = structure(logical(0), 
                shape = "Integer", locationName = "secondaryPrivateIpAddressCount", 
                type = "integer"), SubnetId = structure(logical(0), 
                shape = "String", locationName = "subnetId", 
                type = "string")), shape = "LaunchTemplateInstanceNetworkInterfaceSpecification", 
            locationName = "item", type = "structure")), shape = "LaunchTemplateInstanceNetworkInterfaceSpecificationList", 
            locationName = "networkInterfaceSet", type = "list"), 
        ImageId = structure(logical(0), shape = "String", locationName = "imageId", 
            type = "string"), InstanceType = structure(logical(0), 
            shape = "InstanceType", locationName = "instanceType", 
            type = "string"), KeyName = structure(logical(0), 
            shape = "String", locationName = "keyName", type = "string"), 
        Monitoring = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", locationName = "enabled", type = "boolean")), 
            shape = "LaunchTemplatesMonitoring", locationName = "monitoring", 
            type = "structure"), Placement = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "String", locationName = "availabilityZone", 
            type = "string"), Affinity = structure(logical(0), 
            shape = "String", locationName = "affinity", type = "string"), 
            GroupName = structure(logical(0), shape = "String", 
                locationName = "groupName", type = "string"), 
            HostId = structure(logical(0), shape = "String", 
                locationName = "hostId", type = "string"), Tenancy = structure(logical(0), 
                shape = "Tenancy", locationName = "tenancy", 
                type = "string"), SpreadDomain = structure(logical(0), 
                shape = "String", locationName = "spreadDomain", 
                type = "string")), shape = "LaunchTemplatePlacement", 
            locationName = "placement", type = "structure"), 
        RamDiskId = structure(logical(0), shape = "String", locationName = "ramDiskId", 
            type = "string"), DisableApiTermination = structure(logical(0), 
            shape = "Boolean", locationName = "disableApiTermination", 
            type = "boolean"), InstanceInitiatedShutdownBehavior = structure(logical(0), 
            shape = "ShutdownBehavior", locationName = "instanceInitiatedShutdownBehavior", 
            type = "string"), UserData = structure(logical(0), 
            shape = "String", locationName = "userData", type = "string"), 
        TagSpecifications = structure(list(structure(list(ResourceType = structure(logical(0), 
            shape = "ResourceType", locationName = "resourceType", 
            type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "LaunchTemplateTagSpecification", 
            locationName = "item", type = "structure")), shape = "LaunchTemplateTagSpecificationList", 
            locationName = "tagSpecificationSet", type = "list"), 
        ElasticGpuSpecifications = structure(list(structure(list(Type = structure(logical(0), 
            shape = "String", locationName = "type", type = "string")), 
            shape = "ElasticGpuSpecificationResponse", locationName = "item", 
            type = "structure")), shape = "ElasticGpuSpecificationResponseList", 
            locationName = "elasticGpuSpecificationSet", type = "list"), 
        SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "securityGroupIdSet", 
            type = "list"), SecurityGroups = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "securityGroupSet", 
            type = "list"), InstanceMarketOptions = structure(list(MarketType = structure(logical(0), 
            shape = "MarketType", locationName = "marketType", 
            type = "string"), SpotOptions = structure(list(MaxPrice = structure(logical(0), 
            shape = "String", locationName = "maxPrice", type = "string"), 
            SpotInstanceType = structure(logical(0), shape = "SpotInstanceType", 
                locationName = "spotInstanceType", type = "string"), 
            BlockDurationMinutes = structure(logical(0), shape = "Integer", 
                locationName = "blockDurationMinutes", type = "integer"), 
            ValidUntil = structure(logical(0), shape = "DateTime", 
                locationName = "validUntil", type = "timestamp"), 
            InstanceInterruptionBehavior = structure(logical(0), 
                shape = "InstanceInterruptionBehavior", locationName = "instanceInterruptionBehavior", 
                type = "string")), shape = "LaunchTemplateSpotMarketOptions", 
            locationName = "spotOptions", type = "structure")), 
            shape = "LaunchTemplateInstanceMarketOptions", locationName = "instanceMarketOptions", 
            type = "structure"), CreditSpecification = structure(list(CpuCredits = structure(logical(0), 
            shape = "String", locationName = "cpuCredits", type = "string")), 
            shape = "CreditSpecification", locationName = "creditSpecification", 
            type = "structure"), CpuOptions = structure(list(CoreCount = structure(logical(0), 
            shape = "Integer", locationName = "coreCount", type = "integer"), 
            ThreadsPerCore = structure(logical(0), shape = "Integer", 
                locationName = "threadsPerCore", type = "integer")), 
            shape = "LaunchTemplateCpuOptions", locationName = "cpuOptions", 
            type = "structure")), shape = "ResponseLaunchTemplateData", 
        locationName = "launchTemplateData", type = "structure")), 
        shape = "GetLaunchTemplateDataResult", type = "structure")
    return(populate(args, shape))
}

get_password_data_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "GetPasswordDataRequest", type = "structure")
    return(populate(args, shape))
}

get_password_data_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        PasswordData = structure(logical(0), shape = "String", 
            locationName = "passwordData", type = "string"), 
        Timestamp = structure(logical(0), shape = "DateTime", 
            locationName = "timestamp", type = "timestamp")), 
        shape = "GetPasswordDataResult", type = "structure")
    return(populate(args, shape))
}

get_reserved_instances_exchange_quote_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ReservedInstanceIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "ReservedInstanceId", 
        type = "string")), shape = "ReservedInstanceIdSet", locationName = "ReservedInstanceId", 
        type = "list"), TargetConfigurations = structure(list(structure(list(InstanceCount = structure(logical(0), 
        shape = "Integer", type = "integer"), OfferingId = structure(logical(0), 
        shape = "String", type = "string")), shape = "TargetConfigurationRequest", 
        locationName = "TargetConfigurationRequest", type = "structure")), 
        shape = "TargetConfigurationRequestSet", locationName = "TargetConfiguration", 
        type = "list")), shape = "GetReservedInstancesExchangeQuoteRequest", 
        type = "structure")
    return(populate(args, shape))
}

get_reserved_instances_exchange_quote_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CurrencyCode = structure(logical(0), 
        shape = "String", locationName = "currencyCode", type = "string"), 
        IsValidExchange = structure(logical(0), shape = "Boolean", 
            locationName = "isValidExchange", type = "boolean"), 
        OutputReservedInstancesWillExpireAt = structure(logical(0), 
            shape = "DateTime", locationName = "outputReservedInstancesWillExpireAt", 
            type = "timestamp"), PaymentDue = structure(logical(0), 
            shape = "String", locationName = "paymentDue", type = "string"), 
        ReservedInstanceValueRollup = structure(list(HourlyPrice = structure(logical(0), 
            shape = "String", locationName = "hourlyPrice", type = "string"), 
            RemainingTotalValue = structure(logical(0), shape = "String", 
                locationName = "remainingTotalValue", type = "string"), 
            RemainingUpfrontValue = structure(logical(0), shape = "String", 
                locationName = "remainingUpfrontValue", type = "string")), 
            shape = "ReservationValue", locationName = "reservedInstanceValueRollup", 
            type = "structure"), ReservedInstanceValueSet = structure(list(structure(list(ReservationValue = structure(list(HourlyPrice = structure(logical(0), 
            shape = "String", locationName = "hourlyPrice", type = "string"), 
            RemainingTotalValue = structure(logical(0), shape = "String", 
                locationName = "remainingTotalValue", type = "string"), 
            RemainingUpfrontValue = structure(logical(0), shape = "String", 
                locationName = "remainingUpfrontValue", type = "string")), 
            shape = "ReservationValue", locationName = "reservationValue", 
            type = "structure"), ReservedInstanceId = structure(logical(0), 
            shape = "String", locationName = "reservedInstanceId", 
            type = "string")), shape = "ReservedInstanceReservationValue", 
            locationName = "item", type = "structure")), shape = "ReservedInstanceReservationValueSet", 
            locationName = "reservedInstanceValueSet", type = "list"), 
        TargetConfigurationValueRollup = structure(list(HourlyPrice = structure(logical(0), 
            shape = "String", locationName = "hourlyPrice", type = "string"), 
            RemainingTotalValue = structure(logical(0), shape = "String", 
                locationName = "remainingTotalValue", type = "string"), 
            RemainingUpfrontValue = structure(logical(0), shape = "String", 
                locationName = "remainingUpfrontValue", type = "string")), 
            shape = "ReservationValue", locationName = "targetConfigurationValueRollup", 
            type = "structure"), TargetConfigurationValueSet = structure(list(structure(list(ReservationValue = structure(list(HourlyPrice = structure(logical(0), 
            shape = "String", locationName = "hourlyPrice", type = "string"), 
            RemainingTotalValue = structure(logical(0), shape = "String", 
                locationName = "remainingTotalValue", type = "string"), 
            RemainingUpfrontValue = structure(logical(0), shape = "String", 
                locationName = "remainingUpfrontValue", type = "string")), 
            shape = "ReservationValue", locationName = "reservationValue", 
            type = "structure"), TargetConfiguration = structure(list(InstanceCount = structure(logical(0), 
            shape = "Integer", locationName = "instanceCount", 
            type = "integer"), OfferingId = structure(logical(0), 
            shape = "String", locationName = "offeringId", type = "string")), 
            shape = "TargetConfiguration", locationName = "targetConfiguration", 
            type = "structure")), shape = "TargetReservationValue", 
            locationName = "item", type = "structure")), shape = "TargetReservationValueSet", 
            locationName = "targetConfigurationValueSet", type = "list"), 
        ValidationFailureReason = structure(logical(0), shape = "String", 
            locationName = "validationFailureReason", type = "string")), 
        shape = "GetReservedInstancesExchangeQuoteResult", type = "structure")
    return(populate(args, shape))
}

import_image_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Architecture = structure(logical(0), 
        shape = "String", type = "string"), ClientData = structure(list(Comment = structure(logical(0), 
        shape = "String", type = "string"), UploadEnd = structure(logical(0), 
        shape = "DateTime", type = "timestamp"), UploadSize = structure(logical(0), 
        shape = "Double", type = "double"), UploadStart = structure(logical(0), 
        shape = "DateTime", type = "timestamp")), shape = "ClientData", 
        type = "structure"), ClientToken = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), DiskContainers = structure(list(structure(list(Description = structure(logical(0), 
        shape = "String", type = "string"), DeviceName = structure(logical(0), 
        shape = "String", type = "string"), Format = structure(logical(0), 
        shape = "String", type = "string"), SnapshotId = structure(logical(0), 
        shape = "String", type = "string"), Url = structure(logical(0), 
        shape = "String", type = "string"), UserBucket = structure(list(S3Bucket = structure(logical(0), 
        shape = "String", type = "string"), S3Key = structure(logical(0), 
        shape = "String", type = "string")), shape = "UserBucket", 
        type = "structure")), shape = "ImageDiskContainer", locationName = "item", 
        type = "structure")), shape = "ImageDiskContainerList", 
        locationName = "DiskContainer", type = "list"), DryRun = structure(logical(0), 
        shape = "Boolean", type = "boolean"), Hypervisor = structure(logical(0), 
        shape = "String", type = "string"), LicenseType = structure(logical(0), 
        shape = "String", type = "string"), Platform = structure(logical(0), 
        shape = "String", type = "string"), RoleName = structure(logical(0), 
        shape = "String", type = "string")), shape = "ImportImageRequest", 
        type = "structure")
    return(populate(args, shape))
}

import_image_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Architecture = structure(logical(0), 
        shape = "String", locationName = "architecture", type = "string"), 
        Description = structure(logical(0), shape = "String", 
            locationName = "description", type = "string"), Hypervisor = structure(logical(0), 
            shape = "String", locationName = "hypervisor", type = "string"), 
        ImageId = structure(logical(0), shape = "String", locationName = "imageId", 
            type = "string"), ImportTaskId = structure(logical(0), 
            shape = "String", locationName = "importTaskId", 
            type = "string"), LicenseType = structure(logical(0), 
            shape = "String", locationName = "licenseType", type = "string"), 
        Platform = structure(logical(0), shape = "String", locationName = "platform", 
            type = "string"), Progress = structure(logical(0), 
            shape = "String", locationName = "progress", type = "string"), 
        SnapshotDetails = structure(list(structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            DeviceName = structure(logical(0), shape = "String", 
                locationName = "deviceName", type = "string"), 
            DiskImageSize = structure(logical(0), shape = "Double", 
                locationName = "diskImageSize", type = "double"), 
            Format = structure(logical(0), shape = "String", 
                locationName = "format", type = "string"), Progress = structure(logical(0), 
                shape = "String", locationName = "progress", 
                type = "string"), SnapshotId = structure(logical(0), 
                shape = "String", locationName = "snapshotId", 
                type = "string"), Status = structure(logical(0), 
                shape = "String", locationName = "status", type = "string"), 
            StatusMessage = structure(logical(0), shape = "String", 
                locationName = "statusMessage", type = "string"), 
            Url = structure(logical(0), shape = "String", locationName = "url", 
                type = "string"), UserBucket = structure(list(S3Bucket = structure(logical(0), 
                shape = "String", locationName = "s3Bucket", 
                type = "string"), S3Key = structure(logical(0), 
                shape = "String", locationName = "s3Key", type = "string")), 
                shape = "UserBucketDetails", locationName = "userBucket", 
                type = "structure")), shape = "SnapshotDetail", 
            locationName = "item", type = "structure")), shape = "SnapshotDetailList", 
            locationName = "snapshotDetailSet", type = "list"), 
        Status = structure(logical(0), shape = "String", locationName = "status", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string")), shape = "ImportImageResult", type = "structure")
    return(populate(args, shape))
}

import_instance_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Description = structure(logical(0), 
        shape = "String", locationName = "description", type = "string"), 
        DiskImages = structure(list(structure(list(Description = structure(logical(0), 
            shape = "String", type = "string"), Image = structure(list(Bytes = structure(logical(0), 
            shape = "Long", locationName = "bytes", type = "long"), 
            Format = structure(logical(0), shape = "DiskImageFormat", 
                locationName = "format", type = "string"), ImportManifestUrl = structure(logical(0), 
                shape = "String", locationName = "importManifestUrl", 
                type = "string")), shape = "DiskImageDetail", 
            type = "structure"), Volume = structure(list(Size = structure(logical(0), 
            shape = "Long", locationName = "size", type = "long")), 
            shape = "VolumeDetail", type = "structure")), shape = "DiskImage", 
            type = "structure")), shape = "DiskImageList", locationName = "diskImage", 
            type = "list"), DryRun = structure(logical(0), shape = "Boolean", 
            locationName = "dryRun", type = "boolean"), LaunchSpecification = structure(list(AdditionalInfo = structure(logical(0), 
            shape = "String", locationName = "additionalInfo", 
            type = "string"), Architecture = structure(logical(0), 
            shape = "ArchitectureValues", locationName = "architecture", 
            type = "string"), GroupIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "SecurityGroupId", 
            type = "string")), shape = "SecurityGroupIdStringList", 
            locationName = "GroupId", type = "list"), GroupNames = structure(list(structure(logical(0), 
            shape = "String", locationName = "SecurityGroup", 
            type = "string")), shape = "SecurityGroupStringList", 
            locationName = "GroupName", type = "list"), InstanceInitiatedShutdownBehavior = structure(logical(0), 
            shape = "ShutdownBehavior", locationName = "instanceInitiatedShutdownBehavior", 
            type = "string"), InstanceType = structure(logical(0), 
            shape = "InstanceType", locationName = "instanceType", 
            type = "string"), Monitoring = structure(logical(0), 
            shape = "Boolean", locationName = "monitoring", type = "boolean"), 
            Placement = structure(list(AvailabilityZone = structure(logical(0), 
                shape = "String", locationName = "availabilityZone", 
                type = "string"), Affinity = structure(logical(0), 
                shape = "String", locationName = "affinity", 
                type = "string"), GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), HostId = structure(logical(0), 
                shape = "String", locationName = "hostId", type = "string"), 
                Tenancy = structure(logical(0), shape = "Tenancy", 
                  locationName = "tenancy", type = "string"), 
                SpreadDomain = structure(logical(0), shape = "String", 
                  locationName = "spreadDomain", type = "string")), 
                shape = "Placement", locationName = "placement", 
                type = "structure"), PrivateIpAddress = structure(logical(0), 
                shape = "String", locationName = "privateIpAddress", 
                type = "string"), SubnetId = structure(logical(0), 
                shape = "String", locationName = "subnetId", 
                type = "string"), UserData = structure(list(Data = structure(logical(0), 
                shape = "String", locationName = "data", type = "string")), 
                shape = "UserData", locationName = "userData", 
                type = "structure")), shape = "ImportInstanceLaunchSpecification", 
            locationName = "launchSpecification", type = "structure"), 
        Platform = structure(logical(0), shape = "PlatformValues", 
            locationName = "platform", type = "string")), shape = "ImportInstanceRequest", 
        type = "structure")
    return(populate(args, shape))
}

import_instance_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConversionTask = structure(list(ConversionTaskId = structure(logical(0), 
        shape = "String", locationName = "conversionTaskId", 
        type = "string"), ExpirationTime = structure(logical(0), 
        shape = "String", locationName = "expirationTime", type = "string"), 
        ImportInstance = structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            InstanceId = structure(logical(0), shape = "String", 
                locationName = "instanceId", type = "string"), 
            Platform = structure(logical(0), shape = "PlatformValues", 
                locationName = "platform", type = "string"), 
            Volumes = structure(list(structure(list(AvailabilityZone = structure(logical(0), 
                shape = "String", locationName = "availabilityZone", 
                type = "string"), BytesConverted = structure(logical(0), 
                shape = "Long", locationName = "bytesConverted", 
                type = "long"), Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string"), Image = structure(list(Checksum = structure(logical(0), 
                shape = "String", locationName = "checksum", 
                type = "string"), Format = structure(logical(0), 
                shape = "DiskImageFormat", locationName = "format", 
                type = "string"), ImportManifestUrl = structure(logical(0), 
                shape = "String", locationName = "importManifestUrl", 
                type = "string"), Size = structure(logical(0), 
                shape = "Long", locationName = "size", type = "long")), 
                shape = "DiskImageDescription", locationName = "image", 
                type = "structure"), Status = structure(logical(0), 
                shape = "String", locationName = "status", type = "string"), 
                StatusMessage = structure(logical(0), shape = "String", 
                  locationName = "statusMessage", type = "string"), 
                Volume = structure(list(Id = structure(logical(0), 
                  shape = "String", locationName = "id", type = "string"), 
                  Size = structure(logical(0), shape = "Long", 
                    locationName = "size", type = "long")), shape = "DiskImageVolumeDescription", 
                  locationName = "volume", type = "structure")), 
                shape = "ImportInstanceVolumeDetailItem", locationName = "item", 
                type = "structure")), shape = "ImportInstanceVolumeDetailSet", 
                locationName = "volumes", type = "list")), shape = "ImportInstanceTaskDetails", 
            locationName = "importInstance", type = "structure"), 
        ImportVolume = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "String", locationName = "availabilityZone", 
            type = "string"), BytesConverted = structure(logical(0), 
            shape = "Long", locationName = "bytesConverted", 
            type = "long"), Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            Image = structure(list(Checksum = structure(logical(0), 
                shape = "String", locationName = "checksum", 
                type = "string"), Format = structure(logical(0), 
                shape = "DiskImageFormat", locationName = "format", 
                type = "string"), ImportManifestUrl = structure(logical(0), 
                shape = "String", locationName = "importManifestUrl", 
                type = "string"), Size = structure(logical(0), 
                shape = "Long", locationName = "size", type = "long")), 
                shape = "DiskImageDescription", locationName = "image", 
                type = "structure"), Volume = structure(list(Id = structure(logical(0), 
                shape = "String", locationName = "id", type = "string"), 
                Size = structure(logical(0), shape = "Long", 
                  locationName = "size", type = "long")), shape = "DiskImageVolumeDescription", 
                locationName = "volume", type = "structure")), 
            shape = "ImportVolumeTaskDetails", locationName = "importVolume", 
            type = "structure"), State = structure(logical(0), 
            shape = "ConversionTaskState", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "ConversionTask", locationName = "conversionTask", 
        type = "structure")), shape = "ImportInstanceResult", 
        type = "structure")
    return(populate(args, shape))
}

import_key_pair_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), KeyName = structure(logical(0), 
        shape = "String", locationName = "keyName", type = "string"), 
        PublicKeyMaterial = structure(logical(0), shape = "Blob", 
            locationName = "publicKeyMaterial", type = "blob")), 
        shape = "ImportKeyPairRequest", type = "structure")
    return(populate(args, shape))
}

import_key_pair_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(KeyFingerprint = structure(logical(0), 
        shape = "String", locationName = "keyFingerprint", type = "string"), 
        KeyName = structure(logical(0), shape = "String", locationName = "keyName", 
            type = "string")), shape = "ImportKeyPairResult", 
        type = "structure")
    return(populate(args, shape))
}

import_snapshot_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientData = structure(list(Comment = structure(logical(0), 
        shape = "String", type = "string"), UploadEnd = structure(logical(0), 
        shape = "DateTime", type = "timestamp"), UploadSize = structure(logical(0), 
        shape = "Double", type = "double"), UploadStart = structure(logical(0), 
        shape = "DateTime", type = "timestamp")), shape = "ClientData", 
        type = "structure"), ClientToken = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(logical(0), 
        shape = "String", type = "string"), DiskContainer = structure(list(Description = structure(logical(0), 
        shape = "String", type = "string"), Format = structure(logical(0), 
        shape = "String", type = "string"), Url = structure(logical(0), 
        shape = "String", type = "string"), UserBucket = structure(list(S3Bucket = structure(logical(0), 
        shape = "String", type = "string"), S3Key = structure(logical(0), 
        shape = "String", type = "string")), shape = "UserBucket", 
        type = "structure")), shape = "SnapshotDiskContainer", 
        type = "structure"), DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), RoleName = structure(logical(0), shape = "String", 
        type = "string")), shape = "ImportSnapshotRequest", type = "structure")
    return(populate(args, shape))
}

import_snapshot_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Description = structure(logical(0), 
        shape = "String", locationName = "description", type = "string"), 
        ImportTaskId = structure(logical(0), shape = "String", 
            locationName = "importTaskId", type = "string"), 
        SnapshotTaskDetail = structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            DiskImageSize = structure(logical(0), shape = "Double", 
                locationName = "diskImageSize", type = "double"), 
            Format = structure(logical(0), shape = "String", 
                locationName = "format", type = "string"), Progress = structure(logical(0), 
                shape = "String", locationName = "progress", 
                type = "string"), SnapshotId = structure(logical(0), 
                shape = "String", locationName = "snapshotId", 
                type = "string"), Status = structure(logical(0), 
                shape = "String", locationName = "status", type = "string"), 
            StatusMessage = structure(logical(0), shape = "String", 
                locationName = "statusMessage", type = "string"), 
            Url = structure(logical(0), shape = "String", locationName = "url", 
                type = "string"), UserBucket = structure(list(S3Bucket = structure(logical(0), 
                shape = "String", locationName = "s3Bucket", 
                type = "string"), S3Key = structure(logical(0), 
                shape = "String", locationName = "s3Key", type = "string")), 
                shape = "UserBucketDetails", locationName = "userBucket", 
                type = "structure")), shape = "SnapshotTaskDetail", 
            locationName = "snapshotTaskDetail", type = "structure")), 
        shape = "ImportSnapshotResult", type = "structure")
    return(populate(args, shape))
}

import_volume_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailabilityZone = structure(logical(0), 
        shape = "String", locationName = "availabilityZone", 
        type = "string"), Description = structure(logical(0), 
        shape = "String", locationName = "description", type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), Image = structure(list(Bytes = structure(logical(0), 
            shape = "Long", locationName = "bytes", type = "long"), 
            Format = structure(logical(0), shape = "DiskImageFormat", 
                locationName = "format", type = "string"), ImportManifestUrl = structure(logical(0), 
                shape = "String", locationName = "importManifestUrl", 
                type = "string")), shape = "DiskImageDetail", 
            locationName = "image", type = "structure"), Volume = structure(list(Size = structure(logical(0), 
            shape = "Long", locationName = "size", type = "long")), 
            shape = "VolumeDetail", locationName = "volume", 
            type = "structure")), shape = "ImportVolumeRequest", 
        type = "structure")
    return(populate(args, shape))
}

import_volume_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConversionTask = structure(list(ConversionTaskId = structure(logical(0), 
        shape = "String", locationName = "conversionTaskId", 
        type = "string"), ExpirationTime = structure(logical(0), 
        shape = "String", locationName = "expirationTime", type = "string"), 
        ImportInstance = structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            InstanceId = structure(logical(0), shape = "String", 
                locationName = "instanceId", type = "string"), 
            Platform = structure(logical(0), shape = "PlatformValues", 
                locationName = "platform", type = "string"), 
            Volumes = structure(list(structure(list(AvailabilityZone = structure(logical(0), 
                shape = "String", locationName = "availabilityZone", 
                type = "string"), BytesConverted = structure(logical(0), 
                shape = "Long", locationName = "bytesConverted", 
                type = "long"), Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string"), Image = structure(list(Checksum = structure(logical(0), 
                shape = "String", locationName = "checksum", 
                type = "string"), Format = structure(logical(0), 
                shape = "DiskImageFormat", locationName = "format", 
                type = "string"), ImportManifestUrl = structure(logical(0), 
                shape = "String", locationName = "importManifestUrl", 
                type = "string"), Size = structure(logical(0), 
                shape = "Long", locationName = "size", type = "long")), 
                shape = "DiskImageDescription", locationName = "image", 
                type = "structure"), Status = structure(logical(0), 
                shape = "String", locationName = "status", type = "string"), 
                StatusMessage = structure(logical(0), shape = "String", 
                  locationName = "statusMessage", type = "string"), 
                Volume = structure(list(Id = structure(logical(0), 
                  shape = "String", locationName = "id", type = "string"), 
                  Size = structure(logical(0), shape = "Long", 
                    locationName = "size", type = "long")), shape = "DiskImageVolumeDescription", 
                  locationName = "volume", type = "structure")), 
                shape = "ImportInstanceVolumeDetailItem", locationName = "item", 
                type = "structure")), shape = "ImportInstanceVolumeDetailSet", 
                locationName = "volumes", type = "list")), shape = "ImportInstanceTaskDetails", 
            locationName = "importInstance", type = "structure"), 
        ImportVolume = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "String", locationName = "availabilityZone", 
            type = "string"), BytesConverted = structure(logical(0), 
            shape = "Long", locationName = "bytesConverted", 
            type = "long"), Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            Image = structure(list(Checksum = structure(logical(0), 
                shape = "String", locationName = "checksum", 
                type = "string"), Format = structure(logical(0), 
                shape = "DiskImageFormat", locationName = "format", 
                type = "string"), ImportManifestUrl = structure(logical(0), 
                shape = "String", locationName = "importManifestUrl", 
                type = "string"), Size = structure(logical(0), 
                shape = "Long", locationName = "size", type = "long")), 
                shape = "DiskImageDescription", locationName = "image", 
                type = "structure"), Volume = structure(list(Id = structure(logical(0), 
                shape = "String", locationName = "id", type = "string"), 
                Size = structure(logical(0), shape = "Long", 
                  locationName = "size", type = "long")), shape = "DiskImageVolumeDescription", 
                locationName = "volume", type = "structure")), 
            shape = "ImportVolumeTaskDetails", locationName = "importVolume", 
            type = "structure"), State = structure(logical(0), 
            shape = "ConversionTaskState", locationName = "state", 
            type = "string"), StatusMessage = structure(logical(0), 
            shape = "String", locationName = "statusMessage", 
            type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "ConversionTask", locationName = "conversionTask", 
        type = "structure")), shape = "ImportVolumeResult", type = "structure")
    return(populate(args, shape))
}

modify_fleet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ExcessCapacityTerminationPolicy = structure(logical(0), 
        shape = "FleetExcessCapacityTerminationPolicy", type = "string"), 
        FleetId = structure(logical(0), shape = "FleetIdentifier", 
            type = "string"), TargetCapacitySpecification = structure(list(TotalTargetCapacity = structure(logical(0), 
            shape = "Integer", type = "integer"), OnDemandTargetCapacity = structure(logical(0), 
            shape = "Integer", type = "integer"), SpotTargetCapacity = structure(logical(0), 
            shape = "Integer", type = "integer"), DefaultTargetCapacityType = structure(logical(0), 
            shape = "DefaultTargetCapacityType", type = "string")), 
            shape = "TargetCapacitySpecificationRequest", type = "structure")), 
        shape = "ModifyFleetRequest", type = "structure")
    return(populate(args, shape))
}

modify_fleet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "ModifyFleetResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_fpga_image_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), FpgaImageId = structure(logical(0), 
        shape = "String", type = "string"), Attribute = structure(logical(0), 
        shape = "FpgaImageAttributeName", type = "string"), OperationType = structure(logical(0), 
        shape = "OperationType", type = "string"), UserIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "UserId", type = "string")), 
        shape = "UserIdStringList", locationName = "UserId", 
        type = "list"), UserGroups = structure(list(structure(logical(0), 
        shape = "String", locationName = "UserGroup", type = "string")), 
        shape = "UserGroupStringList", locationName = "UserGroup", 
        type = "list"), ProductCodes = structure(list(structure(logical(0), 
        shape = "String", locationName = "ProductCode", type = "string")), 
        shape = "ProductCodeStringList", locationName = "ProductCode", 
        type = "list"), LoadPermission = structure(list(Add = structure(list(structure(list(Group = structure(logical(0), 
        shape = "PermissionGroup", type = "string"), UserId = structure(logical(0), 
        shape = "String", type = "string")), shape = "LoadPermissionRequest", 
        locationName = "item", type = "structure")), shape = "LoadPermissionListRequest", 
        type = "list"), Remove = structure(list(structure(list(Group = structure(logical(0), 
        shape = "PermissionGroup", type = "string"), UserId = structure(logical(0), 
        shape = "String", type = "string")), shape = "LoadPermissionRequest", 
        locationName = "item", type = "structure")), shape = "LoadPermissionListRequest", 
        type = "list")), shape = "LoadPermissionModifications", 
        type = "structure"), Description = structure(logical(0), 
        shape = "String", type = "string"), Name = structure(logical(0), 
        shape = "String", type = "string")), shape = "ModifyFpgaImageAttributeRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_fpga_image_attribute_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(FpgaImageAttribute = structure(list(FpgaImageId = structure(logical(0), 
        shape = "String", locationName = "fpgaImageId", type = "string"), 
        Name = structure(logical(0), shape = "String", locationName = "name", 
            type = "string"), Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
        LoadPermissions = structure(list(structure(list(UserId = structure(logical(0), 
            shape = "String", locationName = "userId", type = "string"), 
            Group = structure(logical(0), shape = "PermissionGroup", 
                locationName = "group", type = "string")), shape = "LoadPermission", 
            locationName = "item", type = "structure")), shape = "LoadPermissionList", 
            locationName = "loadPermissions", type = "list"), 
        ProductCodes = structure(list(structure(list(ProductCodeId = structure(logical(0), 
            shape = "String", locationName = "productCode", type = "string"), 
            ProductCodeType = structure(logical(0), shape = "ProductCodeValues", 
                locationName = "type", type = "string")), shape = "ProductCode", 
            locationName = "item", type = "structure")), shape = "ProductCodeList", 
            locationName = "productCodes", type = "list")), shape = "FpgaImageAttribute", 
        locationName = "fpgaImageAttribute", type = "structure")), 
        shape = "ModifyFpgaImageAttributeResult", type = "structure")
    return(populate(args, shape))
}

modify_hosts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoPlacement = structure(logical(0), 
        shape = "AutoPlacement", locationName = "autoPlacement", 
        type = "string"), HostIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "RequestHostIdList", locationName = "hostId", 
        type = "list")), shape = "ModifyHostsRequest", type = "structure")
    return(populate(args, shape))
}

modify_hosts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Successful = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ResponseHostIdList", locationName = "successful", 
        type = "list"), Unsuccessful = structure(list(structure(list(Error = structure(list(Code = structure(logical(0), 
        shape = "String", locationName = "code", type = "string"), 
        Message = structure(logical(0), shape = "String", locationName = "message", 
            type = "string")), shape = "UnsuccessfulItemError", 
        locationName = "error", type = "structure"), ResourceId = structure(logical(0), 
        shape = "String", locationName = "resourceId", type = "string")), 
        shape = "UnsuccessfulItem", locationName = "item", type = "structure")), 
        shape = "UnsuccessfulItemList", locationName = "unsuccessful", 
        type = "list")), shape = "ModifyHostsResult", type = "structure")
    return(populate(args, shape))
}

modify_id_format_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Resource = structure(logical(0), 
        shape = "String", type = "string"), UseLongIds = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ModifyIdFormatRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_id_format_output <- function () 
{
    return(list())
}

modify_identity_id_format_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PrincipalArn = structure(logical(0), 
        shape = "String", locationName = "principalArn", type = "string"), 
        Resource = structure(logical(0), shape = "String", locationName = "resource", 
            type = "string"), UseLongIds = structure(logical(0), 
            shape = "Boolean", locationName = "useLongIds", type = "boolean")), 
        shape = "ModifyIdentityIdFormatRequest", type = "structure")
    return(populate(args, shape))
}

modify_identity_id_format_output <- function () 
{
    return(list())
}

modify_image_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attribute = structure(logical(0), 
        shape = "String", type = "string"), Description = structure(list(Value = structure(logical(0), 
        shape = "String", locationName = "value", type = "string")), 
        shape = "AttributeValue", type = "structure"), ImageId = structure(logical(0), 
        shape = "String", type = "string"), LaunchPermission = structure(list(Add = structure(list(structure(list(Group = structure(logical(0), 
        shape = "PermissionGroup", locationName = "group", type = "string"), 
        UserId = structure(logical(0), shape = "String", locationName = "userId", 
            type = "string")), shape = "LaunchPermission", locationName = "item", 
        type = "structure")), shape = "LaunchPermissionList", 
        type = "list"), Remove = structure(list(structure(list(Group = structure(logical(0), 
        shape = "PermissionGroup", locationName = "group", type = "string"), 
        UserId = structure(logical(0), shape = "String", locationName = "userId", 
            type = "string")), shape = "LaunchPermission", locationName = "item", 
        type = "structure")), shape = "LaunchPermissionList", 
        type = "list")), shape = "LaunchPermissionModifications", 
        type = "structure"), OperationType = structure(logical(0), 
        shape = "OperationType", type = "string"), ProductCodes = structure(list(structure(logical(0), 
        shape = "String", locationName = "ProductCode", type = "string")), 
        shape = "ProductCodeStringList", locationName = "ProductCode", 
        type = "list"), UserGroups = structure(list(structure(logical(0), 
        shape = "String", locationName = "UserGroup", type = "string")), 
        shape = "UserGroupStringList", locationName = "UserGroup", 
        type = "list"), UserIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "UserId", type = "string")), 
        shape = "UserIdStringList", locationName = "UserId", 
        type = "list"), Value = structure(logical(0), shape = "String", 
        type = "string"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "ModifyImageAttributeRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_image_attribute_output <- function () 
{
    return(list())
}

modify_instance_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SourceDestCheck = structure(list(Value = structure(logical(0), 
        shape = "Boolean", locationName = "value", type = "boolean")), 
        shape = "AttributeBooleanValue", type = "structure"), 
        Attribute = structure(logical(0), shape = "InstanceAttributeName", 
            locationName = "attribute", type = "string"), BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
            shape = "String", locationName = "deviceName", type = "string"), 
            Ebs = structure(list(DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), VolumeId = structure(logical(0), 
                shape = "String", locationName = "volumeId", 
                type = "string")), shape = "EbsInstanceBlockDeviceSpecification", 
                locationName = "ebs", type = "structure"), NoDevice = structure(logical(0), 
                shape = "String", locationName = "noDevice", 
                type = "string"), VirtualName = structure(logical(0), 
                shape = "String", locationName = "virtualName", 
                type = "string")), shape = "InstanceBlockDeviceMappingSpecification", 
            locationName = "item", type = "structure")), shape = "InstanceBlockDeviceMappingSpecificationList", 
            locationName = "blockDeviceMapping", type = "list"), 
        DisableApiTermination = structure(list(Value = structure(logical(0), 
            shape = "Boolean", locationName = "value", type = "boolean")), 
            shape = "AttributeBooleanValue", locationName = "disableApiTermination", 
            type = "structure"), DryRun = structure(logical(0), 
            shape = "Boolean", locationName = "dryRun", type = "boolean"), 
        EbsOptimized = structure(list(Value = structure(logical(0), 
            shape = "Boolean", locationName = "value", type = "boolean")), 
            shape = "AttributeBooleanValue", locationName = "ebsOptimized", 
            type = "structure"), EnaSupport = structure(list(Value = structure(logical(0), 
            shape = "Boolean", locationName = "value", type = "boolean")), 
            shape = "AttributeBooleanValue", locationName = "enaSupport", 
            type = "structure"), Groups = structure(list(structure(logical(0), 
            shape = "String", locationName = "groupId", type = "string")), 
            shape = "GroupIdStringList", locationName = "GroupId", 
            type = "list"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
        InstanceInitiatedShutdownBehavior = structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "instanceInitiatedShutdownBehavior", 
            type = "structure"), InstanceType = structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "instanceType", 
            type = "structure"), Kernel = structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "kernel", 
            type = "structure"), Ramdisk = structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "ramdisk", 
            type = "structure"), SriovNetSupport = structure(list(Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
            shape = "AttributeValue", locationName = "sriovNetSupport", 
            type = "structure"), UserData = structure(list(Value = structure(logical(0), 
            shape = "Blob", locationName = "value", type = "blob")), 
            shape = "BlobAttributeValue", locationName = "userData", 
            type = "structure"), Value = structure(logical(0), 
            shape = "String", locationName = "value", type = "string")), 
        shape = "ModifyInstanceAttributeRequest", type = "structure")
    return(populate(args, shape))
}

modify_instance_attribute_output <- function () 
{
    return(list())
}

modify_instance_credit_specification_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ClientToken = structure(logical(0), 
        shape = "String", type = "string"), InstanceCreditSpecifications = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "String", type = "string"), CpuCredits = structure(logical(0), 
        shape = "String", type = "string")), shape = "InstanceCreditSpecificationRequest", 
        locationName = "item", type = "structure")), shape = "InstanceCreditSpecificationListRequest", 
        locationName = "InstanceCreditSpecification", type = "list")), 
        shape = "ModifyInstanceCreditSpecificationRequest", type = "structure")
    return(populate(args, shape))
}

modify_instance_credit_specification_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SuccessfulInstanceCreditSpecifications = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string")), 
        shape = "SuccessfulInstanceCreditSpecificationItem", 
        locationName = "item", type = "structure")), shape = "SuccessfulInstanceCreditSpecificationSet", 
        locationName = "successfulInstanceCreditSpecificationSet", 
        type = "list"), UnsuccessfulInstanceCreditSpecifications = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        Error = structure(list(Code = structure(logical(0), shape = "UnsuccessfulInstanceCreditSpecificationErrorCode", 
            locationName = "code", type = "string"), Message = structure(logical(0), 
            shape = "String", locationName = "message", type = "string")), 
            shape = "UnsuccessfulInstanceCreditSpecificationItemError", 
            locationName = "error", type = "structure")), shape = "UnsuccessfulInstanceCreditSpecificationItem", 
        locationName = "item", type = "structure")), shape = "UnsuccessfulInstanceCreditSpecificationSet", 
        locationName = "unsuccessfulInstanceCreditSpecificationSet", 
        type = "list")), shape = "ModifyInstanceCreditSpecificationResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_instance_placement_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Affinity = structure(logical(0), 
        shape = "Affinity", locationName = "affinity", type = "string"), 
        GroupName = structure(logical(0), shape = "String", type = "string"), 
        HostId = structure(logical(0), shape = "String", locationName = "hostId", 
            type = "string"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
        Tenancy = structure(logical(0), shape = "HostTenancy", 
            locationName = "tenancy", type = "string")), shape = "ModifyInstancePlacementRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_instance_placement_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "ModifyInstancePlacementResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_launch_template_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ClientToken = structure(logical(0), 
        shape = "String", type = "string"), LaunchTemplateId = structure(logical(0), 
        shape = "String", type = "string"), LaunchTemplateName = structure(logical(0), 
        shape = "LaunchTemplateName", type = "string", max = 128L, 
        min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), DefaultVersion = structure(logical(0), 
        shape = "String", locationName = "SetDefaultVersion", 
        type = "string")), shape = "ModifyLaunchTemplateRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_launch_template_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LaunchTemplate = structure(list(LaunchTemplateId = structure(logical(0), 
        shape = "String", locationName = "launchTemplateId", 
        type = "string"), LaunchTemplateName = structure(logical(0), 
        shape = "LaunchTemplateName", locationName = "launchTemplateName", 
        type = "string", max = 128L, min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), 
        CreateTime = structure(logical(0), shape = "DateTime", 
            locationName = "createTime", type = "timestamp"), 
        CreatedBy = structure(logical(0), shape = "String", locationName = "createdBy", 
            type = "string"), DefaultVersionNumber = structure(logical(0), 
            shape = "Long", locationName = "defaultVersionNumber", 
            type = "long"), LatestVersionNumber = structure(logical(0), 
            shape = "Long", locationName = "latestVersionNumber", 
            type = "long"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list")), shape = "LaunchTemplate", locationName = "launchTemplate", 
        type = "structure")), shape = "ModifyLaunchTemplateResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_network_interface_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attachment = structure(list(AttachmentId = structure(logical(0), 
        shape = "String", locationName = "attachmentId", type = "string"), 
        DeleteOnTermination = structure(logical(0), shape = "Boolean", 
            locationName = "deleteOnTermination", type = "boolean")), 
        shape = "NetworkInterfaceAttachmentChanges", locationName = "attachment", 
        type = "structure"), Description = structure(list(Value = structure(logical(0), 
        shape = "String", locationName = "value", type = "string")), 
        shape = "AttributeValue", locationName = "description", 
        type = "structure"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), Groups = structure(list(structure(logical(0), 
        shape = "String", locationName = "SecurityGroupId", type = "string")), 
        shape = "SecurityGroupIdStringList", locationName = "SecurityGroupId", 
        type = "list"), NetworkInterfaceId = structure(logical(0), 
        shape = "String", locationName = "networkInterfaceId", 
        type = "string"), SourceDestCheck = structure(list(Value = structure(logical(0), 
        shape = "Boolean", locationName = "value", type = "boolean")), 
        shape = "AttributeBooleanValue", locationName = "sourceDestCheck", 
        type = "structure")), shape = "ModifyNetworkInterfaceAttributeRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_network_interface_attribute_output <- function () 
{
    return(list())
}

modify_reserved_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedInstancesIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "ReservedInstancesId", 
        type = "string")), shape = "ReservedInstancesIdStringList", 
        locationName = "ReservedInstancesId", type = "list"), 
        ClientToken = structure(logical(0), shape = "String", 
            locationName = "clientToken", type = "string"), TargetConfigurations = structure(list(structure(list(AvailabilityZone = structure(logical(0), 
            shape = "String", locationName = "availabilityZone", 
            type = "string"), InstanceCount = structure(logical(0), 
            shape = "Integer", locationName = "instanceCount", 
            type = "integer"), InstanceType = structure(logical(0), 
            shape = "InstanceType", locationName = "instanceType", 
            type = "string"), Platform = structure(logical(0), 
            shape = "String", locationName = "platform", type = "string"), 
            Scope = structure(logical(0), shape = "scope", locationName = "scope", 
                type = "string")), shape = "ReservedInstancesConfiguration", 
            locationName = "item", type = "structure")), shape = "ReservedInstancesConfigurationList", 
            locationName = "ReservedInstancesConfigurationSetItemType", 
            type = "list")), shape = "ModifyReservedInstancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_reserved_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedInstancesModificationId = structure(logical(0), 
        shape = "String", locationName = "reservedInstancesModificationId", 
        type = "string")), shape = "ModifyReservedInstancesResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_snapshot_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attribute = structure(logical(0), 
        shape = "SnapshotAttributeName", type = "string"), CreateVolumePermission = structure(list(Add = structure(list(structure(list(Group = structure(logical(0), 
        shape = "PermissionGroup", locationName = "group", type = "string"), 
        UserId = structure(logical(0), shape = "String", locationName = "userId", 
            type = "string")), shape = "CreateVolumePermission", 
        locationName = "item", type = "structure")), shape = "CreateVolumePermissionList", 
        type = "list"), Remove = structure(list(structure(list(Group = structure(logical(0), 
        shape = "PermissionGroup", locationName = "group", type = "string"), 
        UserId = structure(logical(0), shape = "String", locationName = "userId", 
            type = "string")), shape = "CreateVolumePermission", 
        locationName = "item", type = "structure")), shape = "CreateVolumePermissionList", 
        type = "list")), shape = "CreateVolumePermissionModifications", 
        type = "structure"), GroupNames = structure(list(structure(logical(0), 
        shape = "String", locationName = "GroupName", type = "string")), 
        shape = "GroupNameStringList", locationName = "UserGroup", 
        type = "list"), OperationType = structure(logical(0), 
        shape = "OperationType", type = "string"), SnapshotId = structure(logical(0), 
        shape = "String", type = "string"), UserIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "UserId", type = "string")), 
        shape = "UserIdStringList", locationName = "UserId", 
        type = "list"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "ModifySnapshotAttributeRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_snapshot_attribute_output <- function () 
{
    return(list())
}

modify_spot_fleet_request_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ExcessCapacityTerminationPolicy = structure(logical(0), 
        shape = "ExcessCapacityTerminationPolicy", locationName = "excessCapacityTerminationPolicy", 
        type = "string"), SpotFleetRequestId = structure(logical(0), 
        shape = "String", locationName = "spotFleetRequestId", 
        type = "string"), TargetCapacity = structure(logical(0), 
        shape = "Integer", locationName = "targetCapacity", type = "integer")), 
        shape = "ModifySpotFleetRequestRequest", type = "structure")
    return(populate(args, shape))
}

modify_spot_fleet_request_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "ModifySpotFleetRequestResponse", 
        type = "structure")
    return(populate(args, shape))
}

modify_subnet_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssignIpv6AddressOnCreation = structure(list(Value = structure(logical(0), 
        shape = "Boolean", locationName = "value", type = "boolean")), 
        shape = "AttributeBooleanValue", type = "structure"), 
        MapPublicIpOnLaunch = structure(list(Value = structure(logical(0), 
            shape = "Boolean", locationName = "value", type = "boolean")), 
            shape = "AttributeBooleanValue", type = "structure"), 
        SubnetId = structure(logical(0), shape = "String", locationName = "subnetId", 
            type = "string")), shape = "ModifySubnetAttributeRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_subnet_attribute_output <- function () 
{
    return(list())
}

modify_volume_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), VolumeId = structure(logical(0), shape = "String", 
        type = "string"), Size = structure(logical(0), shape = "Integer", 
        type = "integer"), VolumeType = structure(logical(0), 
        shape = "VolumeType", type = "string"), Iops = structure(logical(0), 
        shape = "Integer", type = "integer")), shape = "ModifyVolumeRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_volume_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VolumeModification = structure(list(VolumeId = structure(logical(0), 
        shape = "String", locationName = "volumeId", type = "string"), 
        ModificationState = structure(logical(0), shape = "VolumeModificationState", 
            locationName = "modificationState", type = "string"), 
        StatusMessage = structure(logical(0), shape = "String", 
            locationName = "statusMessage", type = "string"), 
        TargetSize = structure(logical(0), shape = "Integer", 
            locationName = "targetSize", type = "integer"), TargetIops = structure(logical(0), 
            shape = "Integer", locationName = "targetIops", type = "integer"), 
        TargetVolumeType = structure(logical(0), shape = "VolumeType", 
            locationName = "targetVolumeType", type = "string"), 
        OriginalSize = structure(logical(0), shape = "Integer", 
            locationName = "originalSize", type = "integer"), 
        OriginalIops = structure(logical(0), shape = "Integer", 
            locationName = "originalIops", type = "integer"), 
        OriginalVolumeType = structure(logical(0), shape = "VolumeType", 
            locationName = "originalVolumeType", type = "string"), 
        Progress = structure(logical(0), shape = "Long", locationName = "progress", 
            type = "long"), StartTime = structure(logical(0), 
            shape = "DateTime", locationName = "startTime", type = "timestamp"), 
        EndTime = structure(logical(0), shape = "DateTime", locationName = "endTime", 
            type = "timestamp")), shape = "VolumeModification", 
        locationName = "volumeModification", type = "structure")), 
        shape = "ModifyVolumeResult", type = "structure")
    return(populate(args, shape))
}

modify_volume_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AutoEnableIO = structure(list(Value = structure(logical(0), 
        shape = "Boolean", locationName = "value", type = "boolean")), 
        shape = "AttributeBooleanValue", type = "structure"), 
        VolumeId = structure(logical(0), shape = "String", type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean")), shape = "ModifyVolumeAttributeRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_volume_attribute_output <- function () 
{
    return(list())
}

modify_vpc_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(EnableDnsHostnames = structure(list(Value = structure(logical(0), 
        shape = "Boolean", locationName = "value", type = "boolean")), 
        shape = "AttributeBooleanValue", type = "structure"), 
        EnableDnsSupport = structure(list(Value = structure(logical(0), 
            shape = "Boolean", locationName = "value", type = "boolean")), 
            shape = "AttributeBooleanValue", type = "structure"), 
        VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
            type = "string")), shape = "ModifyVpcAttributeRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_vpc_attribute_output <- function () 
{
    return(list())
}

modify_vpc_endpoint_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), VpcEndpointId = structure(logical(0), 
        shape = "String", type = "string"), ResetPolicy = structure(logical(0), 
        shape = "Boolean", type = "boolean"), PolicyDocument = structure(logical(0), 
        shape = "String", type = "string"), AddRouteTableIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "AddRouteTableId", 
        type = "list"), RemoveRouteTableIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "RemoveRouteTableId", 
        type = "list"), AddSubnetIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "AddSubnetId", 
        type = "list"), RemoveSubnetIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "RemoveSubnetId", 
        type = "list"), AddSecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "AddSecurityGroupId", 
        type = "list"), RemoveSecurityGroupIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "RemoveSecurityGroupId", 
        type = "list"), PrivateDnsEnabled = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ModifyVpcEndpointRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_vpc_endpoint_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "ModifyVpcEndpointResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_vpc_endpoint_connection_notification_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ConnectionNotificationId = structure(logical(0), 
        shape = "String", type = "string"), ConnectionNotificationArn = structure(logical(0), 
        shape = "String", type = "string"), ConnectionEvents = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", type = "list")), shape = "ModifyVpcEndpointConnectionNotificationRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_vpc_endpoint_connection_notification_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReturnValue = structure(logical(0), 
        shape = "Boolean", locationName = "return", type = "boolean")), 
        shape = "ModifyVpcEndpointConnectionNotificationResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_vpc_endpoint_service_configuration_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ServiceId = structure(logical(0), 
        shape = "String", type = "string"), AcceptanceRequired = structure(logical(0), 
        shape = "Boolean", type = "boolean"), AddNetworkLoadBalancerArns = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "AddNetworkLoadBalancerArn", 
        type = "list"), RemoveNetworkLoadBalancerArns = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "RemoveNetworkLoadBalancerArn", 
        type = "list")), shape = "ModifyVpcEndpointServiceConfigurationRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_vpc_endpoint_service_configuration_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "ModifyVpcEndpointServiceConfigurationResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_vpc_endpoint_service_permissions_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ServiceId = structure(logical(0), 
        shape = "String", type = "string"), AddAllowedPrincipals = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", type = "list"), RemoveAllowedPrincipals = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", type = "list")), shape = "ModifyVpcEndpointServicePermissionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_vpc_endpoint_service_permissions_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReturnValue = structure(logical(0), 
        shape = "Boolean", locationName = "return", type = "boolean")), 
        shape = "ModifyVpcEndpointServicePermissionsResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_vpc_peering_connection_options_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccepterPeeringConnectionOptions = structure(list(AllowDnsResolutionFromRemoteVpc = structure(logical(0), 
        shape = "Boolean", type = "boolean"), AllowEgressFromLocalClassicLinkToRemoteVpc = structure(logical(0), 
        shape = "Boolean", type = "boolean"), AllowEgressFromLocalVpcToRemoteClassicLink = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "PeeringConnectionOptionsRequest", 
        type = "structure"), DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), RequesterPeeringConnectionOptions = structure(list(AllowDnsResolutionFromRemoteVpc = structure(logical(0), 
        shape = "Boolean", type = "boolean"), AllowEgressFromLocalClassicLinkToRemoteVpc = structure(logical(0), 
        shape = "Boolean", type = "boolean"), AllowEgressFromLocalVpcToRemoteClassicLink = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "PeeringConnectionOptionsRequest", 
        type = "structure"), VpcPeeringConnectionId = structure(logical(0), 
        shape = "String", type = "string")), shape = "ModifyVpcPeeringConnectionOptionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_vpc_peering_connection_options_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AccepterPeeringConnectionOptions = structure(list(AllowDnsResolutionFromRemoteVpc = structure(logical(0), 
        shape = "Boolean", locationName = "allowDnsResolutionFromRemoteVpc", 
        type = "boolean"), AllowEgressFromLocalClassicLinkToRemoteVpc = structure(logical(0), 
        shape = "Boolean", locationName = "allowEgressFromLocalClassicLinkToRemoteVpc", 
        type = "boolean"), AllowEgressFromLocalVpcToRemoteClassicLink = structure(logical(0), 
        shape = "Boolean", locationName = "allowEgressFromLocalVpcToRemoteClassicLink", 
        type = "boolean")), shape = "PeeringConnectionOptions", 
        locationName = "accepterPeeringConnectionOptions", type = "structure"), 
        RequesterPeeringConnectionOptions = structure(list(AllowDnsResolutionFromRemoteVpc = structure(logical(0), 
            shape = "Boolean", locationName = "allowDnsResolutionFromRemoteVpc", 
            type = "boolean"), AllowEgressFromLocalClassicLinkToRemoteVpc = structure(logical(0), 
            shape = "Boolean", locationName = "allowEgressFromLocalClassicLinkToRemoteVpc", 
            type = "boolean"), AllowEgressFromLocalVpcToRemoteClassicLink = structure(logical(0), 
            shape = "Boolean", locationName = "allowEgressFromLocalVpcToRemoteClassicLink", 
            type = "boolean")), shape = "PeeringConnectionOptions", 
            locationName = "requesterPeeringConnectionOptions", 
            type = "structure")), shape = "ModifyVpcPeeringConnectionOptionsResult", 
        type = "structure")
    return(populate(args, shape))
}

modify_vpc_tenancy_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VpcId = structure(logical(0), shape = "String", 
        type = "string"), InstanceTenancy = structure(logical(0), 
        shape = "VpcTenancy", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", type = "boolean")), shape = "ModifyVpcTenancyRequest", 
        type = "structure")
    return(populate(args, shape))
}

modify_vpc_tenancy_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReturnValue = structure(logical(0), 
        shape = "Boolean", locationName = "return", type = "boolean")), 
        shape = "ModifyVpcTenancyResult", type = "structure")
    return(populate(args, shape))
}

monitor_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "InstanceId", type = "string")), 
        shape = "InstanceIdStringList", locationName = "InstanceId", 
        type = "list"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "MonitorInstancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

monitor_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceMonitorings = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        Monitoring = structure(list(State = structure(logical(0), 
            shape = "MonitoringState", locationName = "state", 
            type = "string")), shape = "Monitoring", locationName = "monitoring", 
            type = "structure")), shape = "InstanceMonitoring", 
        locationName = "item", type = "structure")), shape = "InstanceMonitoringList", 
        locationName = "instancesSet", type = "list")), shape = "MonitorInstancesResult", 
        type = "structure")
    return(populate(args, shape))
}

move_address_to_vpc_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), PublicIp = structure(logical(0), 
        shape = "String", locationName = "publicIp", type = "string")), 
        shape = "MoveAddressToVpcRequest", type = "structure")
    return(populate(args, shape))
}

move_address_to_vpc_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AllocationId = structure(logical(0), 
        shape = "String", locationName = "allocationId", type = "string"), 
        Status = structure(logical(0), shape = "Status", locationName = "status", 
            type = "string")), shape = "MoveAddressToVpcResult", 
        type = "structure")
    return(populate(args, shape))
}

purchase_host_reservation_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientToken = structure(logical(0), 
        shape = "String", type = "string"), CurrencyCode = structure(logical(0), 
        shape = "CurrencyCodeValues", type = "string"), HostIdSet = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "RequestHostIdSet", type = "list"), LimitPrice = structure(logical(0), 
        shape = "String", type = "string"), OfferingId = structure(logical(0), 
        shape = "String", type = "string")), shape = "PurchaseHostReservationRequest", 
        type = "structure")
    return(populate(args, shape))
}

purchase_host_reservation_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientToken = structure(logical(0), 
        shape = "String", locationName = "clientToken", type = "string"), 
        CurrencyCode = structure(logical(0), shape = "CurrencyCodeValues", 
            locationName = "currencyCode", type = "string"), 
        Purchase = structure(list(structure(list(CurrencyCode = structure(logical(0), 
            shape = "CurrencyCodeValues", locationName = "currencyCode", 
            type = "string"), Duration = structure(logical(0), 
            shape = "Integer", locationName = "duration", type = "integer"), 
            HostIdSet = structure(list(structure(logical(0), 
                shape = "String", locationName = "item", type = "string")), 
                shape = "ResponseHostIdSet", locationName = "hostIdSet", 
                type = "list"), HostReservationId = structure(logical(0), 
                shape = "String", locationName = "hostReservationId", 
                type = "string"), HourlyPrice = structure(logical(0), 
                shape = "String", locationName = "hourlyPrice", 
                type = "string"), InstanceFamily = structure(logical(0), 
                shape = "String", locationName = "instanceFamily", 
                type = "string"), PaymentOption = structure(logical(0), 
                shape = "PaymentOption", locationName = "paymentOption", 
                type = "string"), UpfrontPrice = structure(logical(0), 
                shape = "String", locationName = "upfrontPrice", 
                type = "string")), shape = "Purchase", locationName = "item", 
            type = "structure")), shape = "PurchaseSet", locationName = "purchase", 
            type = "list"), TotalHourlyPrice = structure(logical(0), 
            shape = "String", locationName = "totalHourlyPrice", 
            type = "string"), TotalUpfrontPrice = structure(logical(0), 
            shape = "String", locationName = "totalUpfrontPrice", 
            type = "string")), shape = "PurchaseHostReservationResult", 
        type = "structure")
    return(populate(args, shape))
}

purchase_reserved_instances_offering_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceCount = structure(logical(0), 
        shape = "Integer", type = "integer"), ReservedInstancesOfferingId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean"), 
        LimitPrice = structure(list(Amount = structure(logical(0), 
            shape = "Double", locationName = "amount", type = "double"), 
            CurrencyCode = structure(logical(0), shape = "CurrencyCodeValues", 
                locationName = "currencyCode", type = "string")), 
            shape = "ReservedInstanceLimitPrice", locationName = "limitPrice", 
            type = "structure")), shape = "PurchaseReservedInstancesOfferingRequest", 
        type = "structure")
    return(populate(args, shape))
}

purchase_reserved_instances_offering_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ReservedInstancesId = structure(logical(0), 
        shape = "String", locationName = "reservedInstancesId", 
        type = "string")), shape = "PurchaseReservedInstancesOfferingResult", 
        type = "structure")
    return(populate(args, shape))
}

purchase_scheduled_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientToken = structure(logical(0), 
        shape = "String", idempotencyToken = TRUE, type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", type = "boolean"), 
        PurchaseRequests = structure(list(structure(list(InstanceCount = structure(logical(0), 
            shape = "Integer", type = "integer"), PurchaseToken = structure(logical(0), 
            shape = "String", type = "string")), shape = "PurchaseRequest", 
            locationName = "PurchaseRequest", type = "structure")), 
            shape = "PurchaseRequestSet", locationName = "PurchaseRequest", 
            type = "list", min = 1L)), shape = "PurchaseScheduledInstancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

purchase_scheduled_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ScheduledInstanceSet = structure(list(structure(list(AvailabilityZone = structure(logical(0), 
        shape = "String", locationName = "availabilityZone", 
        type = "string"), CreateDate = structure(logical(0), 
        shape = "DateTime", locationName = "createDate", type = "timestamp"), 
        HourlyPrice = structure(logical(0), shape = "String", 
            locationName = "hourlyPrice", type = "string"), InstanceCount = structure(logical(0), 
            shape = "Integer", locationName = "instanceCount", 
            type = "integer"), InstanceType = structure(logical(0), 
            shape = "String", locationName = "instanceType", 
            type = "string"), NetworkPlatform = structure(logical(0), 
            shape = "String", locationName = "networkPlatform", 
            type = "string"), NextSlotStartTime = structure(logical(0), 
            shape = "DateTime", locationName = "nextSlotStartTime", 
            type = "timestamp"), Platform = structure(logical(0), 
            shape = "String", locationName = "platform", type = "string"), 
        PreviousSlotEndTime = structure(logical(0), shape = "DateTime", 
            locationName = "previousSlotEndTime", type = "timestamp"), 
        Recurrence = structure(list(Frequency = structure(logical(0), 
            shape = "String", locationName = "frequency", type = "string"), 
            Interval = structure(logical(0), shape = "Integer", 
                locationName = "interval", type = "integer"), 
            OccurrenceDaySet = structure(list(structure(logical(0), 
                shape = "Integer", locationName = "item", type = "integer")), 
                shape = "OccurrenceDaySet", locationName = "occurrenceDaySet", 
                type = "list"), OccurrenceRelativeToEnd = structure(logical(0), 
                shape = "Boolean", locationName = "occurrenceRelativeToEnd", 
                type = "boolean"), OccurrenceUnit = structure(logical(0), 
                shape = "String", locationName = "occurrenceUnit", 
                type = "string")), shape = "ScheduledInstanceRecurrence", 
            locationName = "recurrence", type = "structure"), 
        ScheduledInstanceId = structure(logical(0), shape = "String", 
            locationName = "scheduledInstanceId", type = "string"), 
        SlotDurationInHours = structure(logical(0), shape = "Integer", 
            locationName = "slotDurationInHours", type = "integer"), 
        TermEndDate = structure(logical(0), shape = "DateTime", 
            locationName = "termEndDate", type = "timestamp"), 
        TermStartDate = structure(logical(0), shape = "DateTime", 
            locationName = "termStartDate", type = "timestamp"), 
        TotalScheduledInstanceHours = structure(logical(0), shape = "Integer", 
            locationName = "totalScheduledInstanceHours", type = "integer")), 
        shape = "ScheduledInstance", locationName = "item", type = "structure")), 
        shape = "PurchasedScheduledInstanceSet", locationName = "scheduledInstanceSet", 
        type = "list")), shape = "PurchaseScheduledInstancesResult", 
        type = "structure")
    return(populate(args, shape))
}

reboot_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "InstanceId", type = "string")), 
        shape = "InstanceIdStringList", locationName = "InstanceId", 
        type = "list"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "RebootInstancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

reboot_instances_output <- function () 
{
    return(list())
}

register_image_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImageLocation = structure(logical(0), 
        shape = "String", type = "string"), Architecture = structure(logical(0), 
        shape = "ArchitectureValues", locationName = "architecture", 
        type = "string"), BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
        shape = "String", locationName = "deviceName", type = "string"), 
        VirtualName = structure(logical(0), shape = "String", 
            locationName = "virtualName", type = "string"), Ebs = structure(list(DeleteOnTermination = structure(logical(0), 
            shape = "Boolean", locationName = "deleteOnTermination", 
            type = "boolean"), Iops = structure(logical(0), shape = "Integer", 
            locationName = "iops", type = "integer"), SnapshotId = structure(logical(0), 
            shape = "String", locationName = "snapshotId", type = "string"), 
            VolumeSize = structure(logical(0), shape = "Integer", 
                locationName = "volumeSize", type = "integer"), 
            VolumeType = structure(logical(0), shape = "VolumeType", 
                locationName = "volumeType", type = "string"), 
            Encrypted = structure(logical(0), shape = "Boolean", 
                locationName = "encrypted", type = "boolean"), 
            KmsKeyId = structure(logical(0), shape = "String", 
                type = "string")), shape = "EbsBlockDevice", 
            locationName = "ebs", type = "structure"), NoDevice = structure(logical(0), 
            shape = "String", locationName = "noDevice", type = "string")), 
        shape = "BlockDeviceMapping", locationName = "BlockDeviceMapping", 
        type = "structure")), shape = "BlockDeviceMappingRequestList", 
        locationName = "BlockDeviceMapping", type = "list"), 
        Description = structure(logical(0), shape = "String", 
            locationName = "description", type = "string"), DryRun = structure(logical(0), 
            shape = "Boolean", locationName = "dryRun", type = "boolean"), 
        EnaSupport = structure(logical(0), shape = "Boolean", 
            locationName = "enaSupport", type = "boolean"), KernelId = structure(logical(0), 
            shape = "String", locationName = "kernelId", type = "string"), 
        Name = structure(logical(0), shape = "String", locationName = "name", 
            type = "string"), BillingProducts = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "BillingProductList", locationName = "BillingProduct", 
            type = "list"), RamdiskId = structure(logical(0), 
            shape = "String", locationName = "ramdiskId", type = "string"), 
        RootDeviceName = structure(logical(0), shape = "String", 
            locationName = "rootDeviceName", type = "string"), 
        SriovNetSupport = structure(logical(0), shape = "String", 
            locationName = "sriovNetSupport", type = "string"), 
        VirtualizationType = structure(logical(0), shape = "String", 
            locationName = "virtualizationType", type = "string")), 
        shape = "RegisterImageRequest", type = "structure")
    return(populate(args, shape))
}

register_image_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ImageId = structure(logical(0), shape = "String", 
        locationName = "imageId", type = "string")), shape = "RegisterImageResult", 
        type = "structure")
    return(populate(args, shape))
}

reject_vpc_endpoint_connections_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), ServiceId = structure(logical(0), 
        shape = "String", type = "string"), VpcEndpointIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ValueStringList", locationName = "VpcEndpointId", 
        type = "list")), shape = "RejectVpcEndpointConnectionsRequest", 
        type = "structure")
    return(populate(args, shape))
}

reject_vpc_endpoint_connections_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Unsuccessful = structure(list(structure(list(Error = structure(list(Code = structure(logical(0), 
        shape = "String", locationName = "code", type = "string"), 
        Message = structure(logical(0), shape = "String", locationName = "message", 
            type = "string")), shape = "UnsuccessfulItemError", 
        locationName = "error", type = "structure"), ResourceId = structure(logical(0), 
        shape = "String", locationName = "resourceId", type = "string")), 
        shape = "UnsuccessfulItem", locationName = "item", type = "structure")), 
        shape = "UnsuccessfulItemSet", locationName = "unsuccessful", 
        type = "list")), shape = "RejectVpcEndpointConnectionsResult", 
        type = "structure")
    return(populate(args, shape))
}

reject_vpc_peering_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), VpcPeeringConnectionId = structure(logical(0), 
        shape = "String", locationName = "vpcPeeringConnectionId", 
        type = "string")), shape = "RejectVpcPeeringConnectionRequest", 
        type = "structure")
    return(populate(args, shape))
}

reject_vpc_peering_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "RejectVpcPeeringConnectionResult", 
        type = "structure")
    return(populate(args, shape))
}

release_address_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AllocationId = structure(logical(0), 
        shape = "String", type = "string"), PublicIp = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "ReleaseAddressRequest", type = "structure")
    return(populate(args, shape))
}

release_address_output <- function () 
{
    return(list())
}

release_hosts_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(HostIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "RequestHostIdList", locationName = "hostId", 
        type = "list")), shape = "ReleaseHostsRequest", type = "structure")
    return(populate(args, shape))
}

release_hosts_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Successful = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "ResponseHostIdList", locationName = "successful", 
        type = "list"), Unsuccessful = structure(list(structure(list(Error = structure(list(Code = structure(logical(0), 
        shape = "String", locationName = "code", type = "string"), 
        Message = structure(logical(0), shape = "String", locationName = "message", 
            type = "string")), shape = "UnsuccessfulItemError", 
        locationName = "error", type = "structure"), ResourceId = structure(logical(0), 
        shape = "String", locationName = "resourceId", type = "string")), 
        shape = "UnsuccessfulItem", locationName = "item", type = "structure")), 
        shape = "UnsuccessfulItemList", locationName = "unsuccessful", 
        type = "list")), shape = "ReleaseHostsResult", type = "structure")
    return(populate(args, shape))
}

replace_iam_instance_profile_association_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IamInstanceProfile = structure(list(Arn = structure(logical(0), 
        shape = "String", locationName = "arn", type = "string"), 
        Name = structure(logical(0), shape = "String", locationName = "name", 
            type = "string")), shape = "IamInstanceProfileSpecification", 
        type = "structure"), AssociationId = structure(logical(0), 
        shape = "String", type = "string")), shape = "ReplaceIamInstanceProfileAssociationRequest", 
        type = "structure")
    return(populate(args, shape))
}

replace_iam_instance_profile_association_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(IamInstanceProfileAssociation = structure(list(AssociationId = structure(logical(0), 
        shape = "String", locationName = "associationId", type = "string"), 
        InstanceId = structure(logical(0), shape = "String", 
            locationName = "instanceId", type = "string"), IamInstanceProfile = structure(list(Arn = structure(logical(0), 
            shape = "String", locationName = "arn", type = "string"), 
            Id = structure(logical(0), shape = "String", locationName = "id", 
                type = "string")), shape = "IamInstanceProfile", 
            locationName = "iamInstanceProfile", type = "structure"), 
        State = structure(logical(0), shape = "IamInstanceProfileAssociationState", 
            locationName = "state", type = "string"), Timestamp = structure(logical(0), 
            shape = "DateTime", locationName = "timestamp", type = "timestamp")), 
        shape = "IamInstanceProfileAssociation", locationName = "iamInstanceProfileAssociation", 
        type = "structure")), shape = "ReplaceIamInstanceProfileAssociationResult", 
        type = "structure")
    return(populate(args, shape))
}

replace_network_acl_association_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationId = structure(logical(0), 
        shape = "String", locationName = "associationId", type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), NetworkAclId = structure(logical(0), 
            shape = "String", locationName = "networkAclId", 
            type = "string")), shape = "ReplaceNetworkAclAssociationRequest", 
        type = "structure")
    return(populate(args, shape))
}

replace_network_acl_association_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NewAssociationId = structure(logical(0), 
        shape = "String", locationName = "newAssociationId", 
        type = "string")), shape = "ReplaceNetworkAclAssociationResult", 
        type = "structure")
    return(populate(args, shape))
}

replace_network_acl_entry_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CidrBlock = structure(logical(0), 
        shape = "String", locationName = "cidrBlock", type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), Egress = structure(logical(0), 
            shape = "Boolean", locationName = "egress", type = "boolean"), 
        IcmpTypeCode = structure(list(Code = structure(logical(0), 
            shape = "Integer", locationName = "code", type = "integer"), 
            Type = structure(logical(0), shape = "Integer", locationName = "type", 
                type = "integer")), shape = "IcmpTypeCode", locationName = "Icmp", 
            type = "structure"), Ipv6CidrBlock = structure(logical(0), 
            shape = "String", locationName = "ipv6CidrBlock", 
            type = "string"), NetworkAclId = structure(logical(0), 
            shape = "String", locationName = "networkAclId", 
            type = "string"), PortRange = structure(list(From = structure(logical(0), 
            shape = "Integer", locationName = "from", type = "integer"), 
            To = structure(logical(0), shape = "Integer", locationName = "to", 
                type = "integer")), shape = "PortRange", locationName = "portRange", 
            type = "structure"), Protocol = structure(logical(0), 
            shape = "String", locationName = "protocol", type = "string"), 
        RuleAction = structure(logical(0), shape = "RuleAction", 
            locationName = "ruleAction", type = "string"), RuleNumber = structure(logical(0), 
            shape = "Integer", locationName = "ruleNumber", type = "integer")), 
        shape = "ReplaceNetworkAclEntryRequest", type = "structure")
    return(populate(args, shape))
}

replace_network_acl_entry_output <- function () 
{
    return(list())
}

replace_route_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DestinationCidrBlock = structure(logical(0), 
        shape = "String", locationName = "destinationCidrBlock", 
        type = "string"), DestinationIpv6CidrBlock = structure(logical(0), 
        shape = "String", locationName = "destinationIpv6CidrBlock", 
        type = "string"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), EgressOnlyInternetGatewayId = structure(logical(0), 
        shape = "String", locationName = "egressOnlyInternetGatewayId", 
        type = "string"), GatewayId = structure(logical(0), shape = "String", 
        locationName = "gatewayId", type = "string"), InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        NatGatewayId = structure(logical(0), shape = "String", 
            locationName = "natGatewayId", type = "string"), 
        NetworkInterfaceId = structure(logical(0), shape = "String", 
            locationName = "networkInterfaceId", type = "string"), 
        RouteTableId = structure(logical(0), shape = "String", 
            locationName = "routeTableId", type = "string"), 
        VpcPeeringConnectionId = structure(logical(0), shape = "String", 
            locationName = "vpcPeeringConnectionId", type = "string")), 
        shape = "ReplaceRouteRequest", type = "structure")
    return(populate(args, shape))
}

replace_route_output <- function () 
{
    return(list())
}

replace_route_table_association_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AssociationId = structure(logical(0), 
        shape = "String", locationName = "associationId", type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), RouteTableId = structure(logical(0), 
            shape = "String", locationName = "routeTableId", 
            type = "string")), shape = "ReplaceRouteTableAssociationRequest", 
        type = "structure")
    return(populate(args, shape))
}

replace_route_table_association_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NewAssociationId = structure(logical(0), 
        shape = "String", locationName = "newAssociationId", 
        type = "string")), shape = "ReplaceRouteTableAssociationResult", 
        type = "structure")
    return(populate(args, shape))
}

report_instance_status_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Description = structure(logical(0), 
        shape = "String", locationName = "description", type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), EndTime = structure(logical(0), 
            shape = "DateTime", locationName = "endTime", type = "timestamp"), 
        Instances = structure(list(structure(logical(0), shape = "String", 
            locationName = "InstanceId", type = "string")), shape = "InstanceIdStringList", 
            locationName = "instanceId", type = "list"), ReasonCodes = structure(list(structure(logical(0), 
            shape = "ReportInstanceReasonCodes", locationName = "item", 
            type = "string")), shape = "ReasonCodesList", locationName = "reasonCode", 
            type = "list"), StartTime = structure(logical(0), 
            shape = "DateTime", locationName = "startTime", type = "timestamp"), 
        Status = structure(logical(0), shape = "ReportStatusType", 
            locationName = "status", type = "string")), shape = "ReportInstanceStatusRequest", 
        type = "structure")
    return(populate(args, shape))
}

report_instance_status_output <- function () 
{
    return(list())
}

request_spot_fleet_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), SpotFleetRequestConfig = structure(list(AllocationStrategy = structure(logical(0), 
        shape = "AllocationStrategy", locationName = "allocationStrategy", 
        type = "string"), OnDemandAllocationStrategy = structure(logical(0), 
        shape = "OnDemandAllocationStrategy", locationName = "onDemandAllocationStrategy", 
        type = "string"), ClientToken = structure(logical(0), 
        shape = "String", locationName = "clientToken", type = "string"), 
        ExcessCapacityTerminationPolicy = structure(logical(0), 
            shape = "ExcessCapacityTerminationPolicy", locationName = "excessCapacityTerminationPolicy", 
            type = "string"), FulfilledCapacity = structure(logical(0), 
            shape = "Double", locationName = "fulfilledCapacity", 
            type = "double"), OnDemandFulfilledCapacity = structure(logical(0), 
            shape = "Double", locationName = "onDemandFulfilledCapacity", 
            type = "double"), IamFleetRole = structure(logical(0), 
            shape = "String", locationName = "iamFleetRole", 
            type = "string"), LaunchSpecifications = structure(list(structure(list(SecurityGroups = structure(list(structure(list(GroupName = structure(logical(0), 
            shape = "String", locationName = "groupName", type = "string"), 
            GroupId = structure(logical(0), shape = "String", 
                locationName = "groupId", type = "string")), 
            shape = "GroupIdentifier", locationName = "item", 
            type = "structure")), shape = "GroupIdentifierList", 
            locationName = "groupSet", type = "list"), AddressingType = structure(logical(0), 
            shape = "String", locationName = "addressingType", 
            type = "string"), BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
            shape = "String", locationName = "deviceName", type = "string"), 
            VirtualName = structure(logical(0), shape = "String", 
                locationName = "virtualName", type = "string"), 
            Ebs = structure(list(DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Iops = structure(logical(0), 
                shape = "Integer", locationName = "iops", type = "integer"), 
                SnapshotId = structure(logical(0), shape = "String", 
                  locationName = "snapshotId", type = "string"), 
                VolumeSize = structure(logical(0), shape = "Integer", 
                  locationName = "volumeSize", type = "integer"), 
                VolumeType = structure(logical(0), shape = "VolumeType", 
                  locationName = "volumeType", type = "string"), 
                Encrypted = structure(logical(0), shape = "Boolean", 
                  locationName = "encrypted", type = "boolean"), 
                KmsKeyId = structure(logical(0), shape = "String", 
                  type = "string")), shape = "EbsBlockDevice", 
                locationName = "ebs", type = "structure"), NoDevice = structure(logical(0), 
                shape = "String", locationName = "noDevice", 
                type = "string")), shape = "BlockDeviceMapping", 
            locationName = "item", type = "structure")), shape = "BlockDeviceMappingList", 
            locationName = "blockDeviceMapping", type = "list"), 
            EbsOptimized = structure(logical(0), shape = "Boolean", 
                locationName = "ebsOptimized", type = "boolean"), 
            IamInstanceProfile = structure(list(Arn = structure(logical(0), 
                shape = "String", locationName = "arn", type = "string"), 
                Name = structure(logical(0), shape = "String", 
                  locationName = "name", type = "string")), shape = "IamInstanceProfileSpecification", 
                locationName = "iamInstanceProfile", type = "structure"), 
            ImageId = structure(logical(0), shape = "String", 
                locationName = "imageId", type = "string"), InstanceType = structure(logical(0), 
                shape = "InstanceType", locationName = "instanceType", 
                type = "string"), KernelId = structure(logical(0), 
                shape = "String", locationName = "kernelId", 
                type = "string"), KeyName = structure(logical(0), 
                shape = "String", locationName = "keyName", type = "string"), 
            Monitoring = structure(list(Enabled = structure(logical(0), 
                shape = "Boolean", locationName = "enabled", 
                type = "boolean")), shape = "SpotFleetMonitoring", 
                locationName = "monitoring", type = "structure"), 
            NetworkInterfaces = structure(list(structure(list(AssociatePublicIpAddress = structure(logical(0), 
                shape = "Boolean", locationName = "associatePublicIpAddress", 
                type = "boolean"), DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string"), DeviceIndex = structure(logical(0), 
                shape = "Integer", locationName = "deviceIndex", 
                type = "integer"), Groups = structure(list(structure(logical(0), 
                shape = "String", locationName = "SecurityGroupId", 
                type = "string")), shape = "SecurityGroupIdStringList", 
                locationName = "SecurityGroupId", type = "list"), 
                Ipv6AddressCount = structure(logical(0), shape = "Integer", 
                  locationName = "ipv6AddressCount", type = "integer"), 
                Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
                  shape = "String", locationName = "ipv6Address", 
                  type = "string")), shape = "InstanceIpv6Address", 
                  locationName = "item", type = "structure")), 
                  shape = "InstanceIpv6AddressList", locationName = "ipv6AddressesSet", 
                  queryName = "Ipv6Addresses", type = "list"), 
                NetworkInterfaceId = structure(logical(0), shape = "String", 
                  locationName = "networkInterfaceId", type = "string"), 
                PrivateIpAddress = structure(logical(0), shape = "String", 
                  locationName = "privateIpAddress", type = "string"), 
                PrivateIpAddresses = structure(list(structure(list(Primary = structure(logical(0), 
                  shape = "Boolean", locationName = "primary", 
                  type = "boolean"), PrivateIpAddress = structure(logical(0), 
                  shape = "String", locationName = "privateIpAddress", 
                  type = "string")), shape = "PrivateIpAddressSpecification", 
                  locationName = "item", type = "structure")), 
                  shape = "PrivateIpAddressSpecificationList", 
                  locationName = "privateIpAddressesSet", queryName = "PrivateIpAddresses", 
                  type = "list"), SecondaryPrivateIpAddressCount = structure(logical(0), 
                  shape = "Integer", locationName = "secondaryPrivateIpAddressCount", 
                  type = "integer"), SubnetId = structure(logical(0), 
                  shape = "String", locationName = "subnetId", 
                  type = "string")), shape = "InstanceNetworkInterfaceSpecification", 
                locationName = "item", type = "structure")), 
                shape = "InstanceNetworkInterfaceSpecificationList", 
                locationName = "networkInterfaceSet", type = "list"), 
            Placement = structure(list(AvailabilityZone = structure(logical(0), 
                shape = "String", locationName = "availabilityZone", 
                type = "string"), GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), Tenancy = structure(logical(0), 
                shape = "Tenancy", locationName = "tenancy", 
                type = "string")), shape = "SpotPlacement", locationName = "placement", 
                type = "structure"), RamdiskId = structure(logical(0), 
                shape = "String", locationName = "ramdiskId", 
                type = "string"), SpotPrice = structure(logical(0), 
                shape = "String", locationName = "spotPrice", 
                type = "string"), SubnetId = structure(logical(0), 
                shape = "String", locationName = "subnetId", 
                type = "string"), UserData = structure(logical(0), 
                shape = "String", locationName = "userData", 
                type = "string"), WeightedCapacity = structure(logical(0), 
                shape = "Double", locationName = "weightedCapacity", 
                type = "double"), TagSpecifications = structure(list(structure(list(ResourceType = structure(logical(0), 
                shape = "ResourceType", locationName = "resourceType", 
                type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
                shape = "String", locationName = "key", type = "string"), 
                Value = structure(logical(0), shape = "String", 
                  locationName = "value", type = "string")), 
                shape = "Tag", locationName = "item", type = "structure")), 
                shape = "TagList", locationName = "tag", type = "list")), 
                shape = "SpotFleetTagSpecification", locationName = "item", 
                type = "structure")), shape = "SpotFleetTagSpecificationList", 
                locationName = "tagSpecificationSet", type = "list")), 
            shape = "SpotFleetLaunchSpecification", locationName = "item", 
            type = "structure")), shape = "LaunchSpecsList", 
            locationName = "launchSpecifications", type = "list"), 
        LaunchTemplateConfigs = structure(list(structure(list(LaunchTemplateSpecification = structure(list(LaunchTemplateId = structure(logical(0), 
            shape = "String", locationName = "launchTemplateId", 
            type = "string"), LaunchTemplateName = structure(logical(0), 
            shape = "LaunchTemplateName", locationName = "launchTemplateName", 
            type = "string", max = 128L, min = 3L, pattern = "[a-zA-Z0-9\\(\\)\\.-/_]+"), 
            Version = structure(logical(0), shape = "String", 
                locationName = "version", type = "string")), 
            shape = "FleetLaunchTemplateSpecification", locationName = "launchTemplateSpecification", 
            type = "structure"), Overrides = structure(list(structure(list(InstanceType = structure(logical(0), 
            shape = "InstanceType", locationName = "instanceType", 
            type = "string"), SpotPrice = structure(logical(0), 
            shape = "String", locationName = "spotPrice", type = "string"), 
            SubnetId = structure(logical(0), shape = "String", 
                locationName = "subnetId", type = "string"), 
            AvailabilityZone = structure(logical(0), shape = "String", 
                locationName = "availabilityZone", type = "string"), 
            WeightedCapacity = structure(logical(0), shape = "Double", 
                locationName = "weightedCapacity", type = "double"), 
            Priority = structure(logical(0), shape = "Double", 
                locationName = "priority", type = "double")), 
            shape = "LaunchTemplateOverrides", locationName = "item", 
            type = "structure")), shape = "LaunchTemplateOverridesList", 
            locationName = "overrides", type = "list")), shape = "LaunchTemplateConfig", 
            locationName = "item", type = "structure")), shape = "LaunchTemplateConfigList", 
            locationName = "launchTemplateConfigs", type = "list"), 
        SpotPrice = structure(logical(0), shape = "String", locationName = "spotPrice", 
            type = "string"), TargetCapacity = structure(logical(0), 
            shape = "Integer", locationName = "targetCapacity", 
            type = "integer"), OnDemandTargetCapacity = structure(logical(0), 
            shape = "Integer", locationName = "onDemandTargetCapacity", 
            type = "integer"), TerminateInstancesWithExpiration = structure(logical(0), 
            shape = "Boolean", locationName = "terminateInstancesWithExpiration", 
            type = "boolean"), Type = structure(logical(0), shape = "FleetType", 
            locationName = "type", type = "string"), ValidFrom = structure(logical(0), 
            shape = "DateTime", locationName = "validFrom", type = "timestamp"), 
        ValidUntil = structure(logical(0), shape = "DateTime", 
            locationName = "validUntil", type = "timestamp"), 
        ReplaceUnhealthyInstances = structure(logical(0), shape = "Boolean", 
            locationName = "replaceUnhealthyInstances", type = "boolean"), 
        InstanceInterruptionBehavior = structure(logical(0), 
            shape = "InstanceInterruptionBehavior", locationName = "instanceInterruptionBehavior", 
            type = "string"), LoadBalancersConfig = structure(list(ClassicLoadBalancersConfig = structure(list(ClassicLoadBalancers = structure(list(structure(list(Name = structure(logical(0), 
            shape = "String", locationName = "name", type = "string")), 
            shape = "ClassicLoadBalancer", locationName = "item", 
            type = "structure")), shape = "ClassicLoadBalancers", 
            locationName = "classicLoadBalancers", type = "list", 
            max = 5L, min = 1L)), shape = "ClassicLoadBalancersConfig", 
            locationName = "classicLoadBalancersConfig", type = "structure"), 
            TargetGroupsConfig = structure(list(TargetGroups = structure(list(structure(list(Arn = structure(logical(0), 
                shape = "String", locationName = "arn", type = "string")), 
                shape = "TargetGroup", locationName = "item", 
                type = "structure")), shape = "TargetGroups", 
                locationName = "targetGroups", type = "list", 
                max = 5L, min = 1L)), shape = "TargetGroupsConfig", 
                locationName = "targetGroupsConfig", type = "structure")), 
            shape = "LoadBalancersConfig", locationName = "loadBalancersConfig", 
            type = "structure"), InstancePoolsToUseCount = structure(logical(0), 
            shape = "Integer", locationName = "instancePoolsToUseCount", 
            type = "integer")), shape = "SpotFleetRequestConfigData", 
        locationName = "spotFleetRequestConfig", type = "structure")), 
        shape = "RequestSpotFleetRequest", type = "structure")
    return(populate(args, shape))
}

request_spot_fleet_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SpotFleetRequestId = structure(logical(0), 
        shape = "String", locationName = "spotFleetRequestId", 
        type = "string")), shape = "RequestSpotFleetResponse", 
        type = "structure")
    return(populate(args, shape))
}

request_spot_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(AvailabilityZoneGroup = structure(logical(0), 
        shape = "String", locationName = "availabilityZoneGroup", 
        type = "string"), BlockDurationMinutes = structure(logical(0), 
        shape = "Integer", locationName = "blockDurationMinutes", 
        type = "integer"), ClientToken = structure(logical(0), 
        shape = "String", locationName = "clientToken", type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), InstanceCount = structure(logical(0), 
            shape = "Integer", locationName = "instanceCount", 
            type = "integer"), LaunchGroup = structure(logical(0), 
            shape = "String", locationName = "launchGroup", type = "string"), 
        LaunchSpecification = structure(list(SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "SecurityGroupId", 
            type = "list"), SecurityGroups = structure(list(structure(logical(0), 
            shape = "String", locationName = "item", type = "string")), 
            shape = "ValueStringList", locationName = "SecurityGroup", 
            type = "list"), AddressingType = structure(logical(0), 
            shape = "String", locationName = "addressingType", 
            type = "string"), BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
            shape = "String", locationName = "deviceName", type = "string"), 
            VirtualName = structure(logical(0), shape = "String", 
                locationName = "virtualName", type = "string"), 
            Ebs = structure(list(DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Iops = structure(logical(0), 
                shape = "Integer", locationName = "iops", type = "integer"), 
                SnapshotId = structure(logical(0), shape = "String", 
                  locationName = "snapshotId", type = "string"), 
                VolumeSize = structure(logical(0), shape = "Integer", 
                  locationName = "volumeSize", type = "integer"), 
                VolumeType = structure(logical(0), shape = "VolumeType", 
                  locationName = "volumeType", type = "string"), 
                Encrypted = structure(logical(0), shape = "Boolean", 
                  locationName = "encrypted", type = "boolean"), 
                KmsKeyId = structure(logical(0), shape = "String", 
                  type = "string")), shape = "EbsBlockDevice", 
                locationName = "ebs", type = "structure"), NoDevice = structure(logical(0), 
                shape = "String", locationName = "noDevice", 
                type = "string")), shape = "BlockDeviceMapping", 
            locationName = "item", type = "structure")), shape = "BlockDeviceMappingList", 
            locationName = "blockDeviceMapping", type = "list"), 
            EbsOptimized = structure(logical(0), shape = "Boolean", 
                locationName = "ebsOptimized", type = "boolean"), 
            IamInstanceProfile = structure(list(Arn = structure(logical(0), 
                shape = "String", locationName = "arn", type = "string"), 
                Name = structure(logical(0), shape = "String", 
                  locationName = "name", type = "string")), shape = "IamInstanceProfileSpecification", 
                locationName = "iamInstanceProfile", type = "structure"), 
            ImageId = structure(logical(0), shape = "String", 
                locationName = "imageId", type = "string"), InstanceType = structure(logical(0), 
                shape = "InstanceType", locationName = "instanceType", 
                type = "string"), KernelId = structure(logical(0), 
                shape = "String", locationName = "kernelId", 
                type = "string"), KeyName = structure(logical(0), 
                shape = "String", locationName = "keyName", type = "string"), 
            Monitoring = structure(list(Enabled = structure(logical(0), 
                shape = "Boolean", locationName = "enabled", 
                type = "boolean")), shape = "RunInstancesMonitoringEnabled", 
                locationName = "monitoring", type = "structure"), 
            NetworkInterfaces = structure(list(structure(list(AssociatePublicIpAddress = structure(logical(0), 
                shape = "Boolean", locationName = "associatePublicIpAddress", 
                type = "boolean"), DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string"), DeviceIndex = structure(logical(0), 
                shape = "Integer", locationName = "deviceIndex", 
                type = "integer"), Groups = structure(list(structure(logical(0), 
                shape = "String", locationName = "SecurityGroupId", 
                type = "string")), shape = "SecurityGroupIdStringList", 
                locationName = "SecurityGroupId", type = "list"), 
                Ipv6AddressCount = structure(logical(0), shape = "Integer", 
                  locationName = "ipv6AddressCount", type = "integer"), 
                Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
                  shape = "String", locationName = "ipv6Address", 
                  type = "string")), shape = "InstanceIpv6Address", 
                  locationName = "item", type = "structure")), 
                  shape = "InstanceIpv6AddressList", locationName = "ipv6AddressesSet", 
                  queryName = "Ipv6Addresses", type = "list"), 
                NetworkInterfaceId = structure(logical(0), shape = "String", 
                  locationName = "networkInterfaceId", type = "string"), 
                PrivateIpAddress = structure(logical(0), shape = "String", 
                  locationName = "privateIpAddress", type = "string"), 
                PrivateIpAddresses = structure(list(structure(list(Primary = structure(logical(0), 
                  shape = "Boolean", locationName = "primary", 
                  type = "boolean"), PrivateIpAddress = structure(logical(0), 
                  shape = "String", locationName = "privateIpAddress", 
                  type = "string")), shape = "PrivateIpAddressSpecification", 
                  locationName = "item", type = "structure")), 
                  shape = "PrivateIpAddressSpecificationList", 
                  locationName = "privateIpAddressesSet", queryName = "PrivateIpAddresses", 
                  type = "list"), SecondaryPrivateIpAddressCount = structure(logical(0), 
                  shape = "Integer", locationName = "secondaryPrivateIpAddressCount", 
                  type = "integer"), SubnetId = structure(logical(0), 
                  shape = "String", locationName = "subnetId", 
                  type = "string")), shape = "InstanceNetworkInterfaceSpecification", 
                locationName = "item", type = "structure")), 
                shape = "InstanceNetworkInterfaceSpecificationList", 
                locationName = "NetworkInterface", type = "list"), 
            Placement = structure(list(AvailabilityZone = structure(logical(0), 
                shape = "String", locationName = "availabilityZone", 
                type = "string"), GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), Tenancy = structure(logical(0), 
                shape = "Tenancy", locationName = "tenancy", 
                type = "string")), shape = "SpotPlacement", locationName = "placement", 
                type = "structure"), RamdiskId = structure(logical(0), 
                shape = "String", locationName = "ramdiskId", 
                type = "string"), SubnetId = structure(logical(0), 
                shape = "String", locationName = "subnetId", 
                type = "string"), UserData = structure(logical(0), 
                shape = "String", locationName = "userData", 
                type = "string")), shape = "RequestSpotLaunchSpecification", 
            type = "structure"), SpotPrice = structure(logical(0), 
            shape = "String", locationName = "spotPrice", type = "string"), 
        Type = structure(logical(0), shape = "SpotInstanceType", 
            locationName = "type", type = "string"), ValidFrom = structure(logical(0), 
            shape = "DateTime", locationName = "validFrom", type = "timestamp"), 
        ValidUntil = structure(logical(0), shape = "DateTime", 
            locationName = "validUntil", type = "timestamp"), 
        InstanceInterruptionBehavior = structure(logical(0), 
            shape = "InstanceInterruptionBehavior", type = "string")), 
        shape = "RequestSpotInstancesRequest", type = "structure")
    return(populate(args, shape))
}

request_spot_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(SpotInstanceRequests = structure(list(structure(list(ActualBlockHourlyPrice = structure(logical(0), 
        shape = "String", locationName = "actualBlockHourlyPrice", 
        type = "string"), AvailabilityZoneGroup = structure(logical(0), 
        shape = "String", locationName = "availabilityZoneGroup", 
        type = "string"), BlockDurationMinutes = structure(logical(0), 
        shape = "Integer", locationName = "blockDurationMinutes", 
        type = "integer"), CreateTime = structure(logical(0), 
        shape = "DateTime", locationName = "createTime", type = "timestamp"), 
        Fault = structure(list(Code = structure(logical(0), shape = "String", 
            locationName = "code", type = "string"), Message = structure(logical(0), 
            shape = "String", locationName = "message", type = "string")), 
            shape = "SpotInstanceStateFault", locationName = "fault", 
            type = "structure"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
        LaunchGroup = structure(logical(0), shape = "String", 
            locationName = "launchGroup", type = "string"), LaunchSpecification = structure(list(UserData = structure(logical(0), 
            shape = "String", locationName = "userData", type = "string"), 
            SecurityGroups = structure(list(structure(list(GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), GroupId = structure(logical(0), 
                shape = "String", locationName = "groupId", type = "string")), 
                shape = "GroupIdentifier", locationName = "item", 
                type = "structure")), shape = "GroupIdentifierList", 
                locationName = "groupSet", type = "list"), AddressingType = structure(logical(0), 
                shape = "String", locationName = "addressingType", 
                type = "string"), BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
                shape = "String", locationName = "deviceName", 
                type = "string"), VirtualName = structure(logical(0), 
                shape = "String", locationName = "virtualName", 
                type = "string"), Ebs = structure(list(DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Iops = structure(logical(0), 
                shape = "Integer", locationName = "iops", type = "integer"), 
                SnapshotId = structure(logical(0), shape = "String", 
                  locationName = "snapshotId", type = "string"), 
                VolumeSize = structure(logical(0), shape = "Integer", 
                  locationName = "volumeSize", type = "integer"), 
                VolumeType = structure(logical(0), shape = "VolumeType", 
                  locationName = "volumeType", type = "string"), 
                Encrypted = structure(logical(0), shape = "Boolean", 
                  locationName = "encrypted", type = "boolean"), 
                KmsKeyId = structure(logical(0), shape = "String", 
                  type = "string")), shape = "EbsBlockDevice", 
                locationName = "ebs", type = "structure"), NoDevice = structure(logical(0), 
                shape = "String", locationName = "noDevice", 
                type = "string")), shape = "BlockDeviceMapping", 
                locationName = "item", type = "structure")), 
                shape = "BlockDeviceMappingList", locationName = "blockDeviceMapping", 
                type = "list"), EbsOptimized = structure(logical(0), 
                shape = "Boolean", locationName = "ebsOptimized", 
                type = "boolean"), IamInstanceProfile = structure(list(Arn = structure(logical(0), 
                shape = "String", locationName = "arn", type = "string"), 
                Name = structure(logical(0), shape = "String", 
                  locationName = "name", type = "string")), shape = "IamInstanceProfileSpecification", 
                locationName = "iamInstanceProfile", type = "structure"), 
            ImageId = structure(logical(0), shape = "String", 
                locationName = "imageId", type = "string"), InstanceType = structure(logical(0), 
                shape = "InstanceType", locationName = "instanceType", 
                type = "string"), KernelId = structure(logical(0), 
                shape = "String", locationName = "kernelId", 
                type = "string"), KeyName = structure(logical(0), 
                shape = "String", locationName = "keyName", type = "string"), 
            NetworkInterfaces = structure(list(structure(list(AssociatePublicIpAddress = structure(logical(0), 
                shape = "Boolean", locationName = "associatePublicIpAddress", 
                type = "boolean"), DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string"), DeviceIndex = structure(logical(0), 
                shape = "Integer", locationName = "deviceIndex", 
                type = "integer"), Groups = structure(list(structure(logical(0), 
                shape = "String", locationName = "SecurityGroupId", 
                type = "string")), shape = "SecurityGroupIdStringList", 
                locationName = "SecurityGroupId", type = "list"), 
                Ipv6AddressCount = structure(logical(0), shape = "Integer", 
                  locationName = "ipv6AddressCount", type = "integer"), 
                Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
                  shape = "String", locationName = "ipv6Address", 
                  type = "string")), shape = "InstanceIpv6Address", 
                  locationName = "item", type = "structure")), 
                  shape = "InstanceIpv6AddressList", locationName = "ipv6AddressesSet", 
                  queryName = "Ipv6Addresses", type = "list"), 
                NetworkInterfaceId = structure(logical(0), shape = "String", 
                  locationName = "networkInterfaceId", type = "string"), 
                PrivateIpAddress = structure(logical(0), shape = "String", 
                  locationName = "privateIpAddress", type = "string"), 
                PrivateIpAddresses = structure(list(structure(list(Primary = structure(logical(0), 
                  shape = "Boolean", locationName = "primary", 
                  type = "boolean"), PrivateIpAddress = structure(logical(0), 
                  shape = "String", locationName = "privateIpAddress", 
                  type = "string")), shape = "PrivateIpAddressSpecification", 
                  locationName = "item", type = "structure")), 
                  shape = "PrivateIpAddressSpecificationList", 
                  locationName = "privateIpAddressesSet", queryName = "PrivateIpAddresses", 
                  type = "list"), SecondaryPrivateIpAddressCount = structure(logical(0), 
                  shape = "Integer", locationName = "secondaryPrivateIpAddressCount", 
                  type = "integer"), SubnetId = structure(logical(0), 
                  shape = "String", locationName = "subnetId", 
                  type = "string")), shape = "InstanceNetworkInterfaceSpecification", 
                locationName = "item", type = "structure")), 
                shape = "InstanceNetworkInterfaceSpecificationList", 
                locationName = "networkInterfaceSet", type = "list"), 
            Placement = structure(list(AvailabilityZone = structure(logical(0), 
                shape = "String", locationName = "availabilityZone", 
                type = "string"), GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), Tenancy = structure(logical(0), 
                shape = "Tenancy", locationName = "tenancy", 
                type = "string")), shape = "SpotPlacement", locationName = "placement", 
                type = "structure"), RamdiskId = structure(logical(0), 
                shape = "String", locationName = "ramdiskId", 
                type = "string"), SubnetId = structure(logical(0), 
                shape = "String", locationName = "subnetId", 
                type = "string"), Monitoring = structure(list(Enabled = structure(logical(0), 
                shape = "Boolean", locationName = "enabled", 
                type = "boolean")), shape = "RunInstancesMonitoringEnabled", 
                locationName = "monitoring", type = "structure")), 
            shape = "LaunchSpecification", locationName = "launchSpecification", 
            type = "structure"), LaunchedAvailabilityZone = structure(logical(0), 
            shape = "String", locationName = "launchedAvailabilityZone", 
            type = "string"), ProductDescription = structure(logical(0), 
            shape = "RIProductDescription", locationName = "productDescription", 
            type = "string"), SpotInstanceRequestId = structure(logical(0), 
            shape = "String", locationName = "spotInstanceRequestId", 
            type = "string"), SpotPrice = structure(logical(0), 
            shape = "String", locationName = "spotPrice", type = "string"), 
        State = structure(logical(0), shape = "SpotInstanceState", 
            locationName = "state", type = "string"), Status = structure(list(Code = structure(logical(0), 
            shape = "String", locationName = "code", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                locationName = "message", type = "string"), UpdateTime = structure(logical(0), 
                shape = "DateTime", locationName = "updateTime", 
                type = "timestamp")), shape = "SpotInstanceStatus", 
            locationName = "status", type = "structure"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), Type = structure(logical(0), shape = "SpotInstanceType", 
            locationName = "type", type = "string"), ValidFrom = structure(logical(0), 
            shape = "DateTime", locationName = "validFrom", type = "timestamp"), 
        ValidUntil = structure(logical(0), shape = "DateTime", 
            locationName = "validUntil", type = "timestamp"), 
        InstanceInterruptionBehavior = structure(logical(0), 
            shape = "InstanceInterruptionBehavior", locationName = "instanceInterruptionBehavior", 
            type = "string")), shape = "SpotInstanceRequest", 
        locationName = "item", type = "structure")), shape = "SpotInstanceRequestList", 
        locationName = "spotInstanceRequestSet", type = "list")), 
        shape = "RequestSpotInstancesResult", type = "structure")
    return(populate(args, shape))
}

reset_fpga_image_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), FpgaImageId = structure(logical(0), 
        shape = "String", type = "string"), Attribute = structure(logical(0), 
        shape = "ResetFpgaImageAttributeName", type = "string")), 
        shape = "ResetFpgaImageAttributeRequest", type = "structure")
    return(populate(args, shape))
}

reset_fpga_image_attribute_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "ResetFpgaImageAttributeResult", 
        type = "structure")
    return(populate(args, shape))
}

reset_image_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attribute = structure(logical(0), 
        shape = "ResetImageAttributeName", type = "string"), 
        ImageId = structure(logical(0), shape = "String", type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean")), shape = "ResetImageAttributeRequest", 
        type = "structure")
    return(populate(args, shape))
}

reset_image_attribute_output <- function () 
{
    return(list())
}

reset_instance_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attribute = structure(logical(0), 
        shape = "InstanceAttributeName", locationName = "attribute", 
        type = "string"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string")), 
        shape = "ResetInstanceAttributeRequest", type = "structure")
    return(populate(args, shape))
}

reset_instance_attribute_output <- function () 
{
    return(list())
}

reset_network_interface_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), NetworkInterfaceId = structure(logical(0), 
        shape = "String", locationName = "networkInterfaceId", 
        type = "string"), SourceDestCheck = structure(logical(0), 
        shape = "String", locationName = "sourceDestCheck", type = "string")), 
        shape = "ResetNetworkInterfaceAttributeRequest", type = "structure")
    return(populate(args, shape))
}

reset_network_interface_attribute_output <- function () 
{
    return(list())
}

reset_snapshot_attribute_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Attribute = structure(logical(0), 
        shape = "SnapshotAttributeName", type = "string"), SnapshotId = structure(logical(0), 
        shape = "String", type = "string"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "ResetSnapshotAttributeRequest", type = "structure")
    return(populate(args, shape))
}

reset_snapshot_attribute_output <- function () 
{
    return(list())
}

restore_address_to_classic_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), PublicIp = structure(logical(0), 
        shape = "String", locationName = "publicIp", type = "string")), 
        shape = "RestoreAddressToClassicRequest", type = "structure")
    return(populate(args, shape))
}

restore_address_to_classic_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(PublicIp = structure(logical(0), 
        shape = "String", locationName = "publicIp", type = "string"), 
        Status = structure(logical(0), shape = "Status", locationName = "status", 
            type = "string")), shape = "RestoreAddressToClassicResult", 
        type = "structure")
    return(populate(args, shape))
}

revoke_security_group_egress_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), GroupId = structure(logical(0), 
        shape = "String", locationName = "groupId", type = "string"), 
        IpPermissions = structure(list(structure(list(FromPort = structure(logical(0), 
            shape = "Integer", locationName = "fromPort", type = "integer"), 
            IpProtocol = structure(logical(0), shape = "String", 
                locationName = "ipProtocol", type = "string"), 
            IpRanges = structure(list(structure(list(CidrIp = structure(logical(0), 
                shape = "String", locationName = "cidrIp", type = "string"), 
                Description = structure(logical(0), shape = "String", 
                  locationName = "description", type = "string")), 
                shape = "IpRange", locationName = "item", type = "structure")), 
                shape = "IpRangeList", locationName = "ipRanges", 
                type = "list"), Ipv6Ranges = structure(list(structure(list(CidrIpv6 = structure(logical(0), 
                shape = "String", locationName = "cidrIpv6", 
                type = "string"), Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string")), shape = "Ipv6Range", locationName = "item", 
                type = "structure")), shape = "Ipv6RangeList", 
                locationName = "ipv6Ranges", type = "list"), 
            PrefixListIds = structure(list(structure(list(Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string"), PrefixListId = structure(logical(0), 
                shape = "String", locationName = "prefixListId", 
                type = "string")), shape = "PrefixListId", locationName = "item", 
                type = "structure")), shape = "PrefixListIdList", 
                locationName = "prefixListIds", type = "list"), 
            ToPort = structure(logical(0), shape = "Integer", 
                locationName = "toPort", type = "integer"), UserIdGroupPairs = structure(list(structure(list(Description = structure(logical(0), 
                shape = "String", locationName = "description", 
                type = "string"), GroupId = structure(logical(0), 
                shape = "String", locationName = "groupId", type = "string"), 
                GroupName = structure(logical(0), shape = "String", 
                  locationName = "groupName", type = "string"), 
                PeeringStatus = structure(logical(0), shape = "String", 
                  locationName = "peeringStatus", type = "string"), 
                UserId = structure(logical(0), shape = "String", 
                  locationName = "userId", type = "string"), 
                VpcId = structure(logical(0), shape = "String", 
                  locationName = "vpcId", type = "string"), VpcPeeringConnectionId = structure(logical(0), 
                  shape = "String", locationName = "vpcPeeringConnectionId", 
                  type = "string")), shape = "UserIdGroupPair", 
                locationName = "item", type = "structure")), 
                shape = "UserIdGroupPairList", locationName = "groups", 
                type = "list")), shape = "IpPermission", locationName = "item", 
            type = "structure")), shape = "IpPermissionList", 
            locationName = "ipPermissions", type = "list"), CidrIp = structure(logical(0), 
            shape = "String", locationName = "cidrIp", type = "string"), 
        FromPort = structure(logical(0), shape = "Integer", locationName = "fromPort", 
            type = "integer"), IpProtocol = structure(logical(0), 
            shape = "String", locationName = "ipProtocol", type = "string"), 
        ToPort = structure(logical(0), shape = "Integer", locationName = "toPort", 
            type = "integer"), SourceSecurityGroupName = structure(logical(0), 
            shape = "String", locationName = "sourceSecurityGroupName", 
            type = "string"), SourceSecurityGroupOwnerId = structure(logical(0), 
            shape = "String", locationName = "sourceSecurityGroupOwnerId", 
            type = "string")), shape = "RevokeSecurityGroupEgressRequest", 
        type = "structure")
    return(populate(args, shape))
}

revoke_security_group_egress_output <- function () 
{
    return(list())
}

revoke_security_group_ingress_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(CidrIp = structure(logical(0), shape = "String", 
        type = "string"), FromPort = structure(logical(0), shape = "Integer", 
        type = "integer"), GroupId = structure(logical(0), shape = "String", 
        type = "string"), GroupName = structure(logical(0), shape = "String", 
        type = "string"), IpPermissions = structure(list(structure(list(FromPort = structure(logical(0), 
        shape = "Integer", locationName = "fromPort", type = "integer"), 
        IpProtocol = structure(logical(0), shape = "String", 
            locationName = "ipProtocol", type = "string"), IpRanges = structure(list(structure(list(CidrIp = structure(logical(0), 
            shape = "String", locationName = "cidrIp", type = "string"), 
            Description = structure(logical(0), shape = "String", 
                locationName = "description", type = "string")), 
            shape = "IpRange", locationName = "item", type = "structure")), 
            shape = "IpRangeList", locationName = "ipRanges", 
            type = "list"), Ipv6Ranges = structure(list(structure(list(CidrIpv6 = structure(logical(0), 
            shape = "String", locationName = "cidrIpv6", type = "string"), 
            Description = structure(logical(0), shape = "String", 
                locationName = "description", type = "string")), 
            shape = "Ipv6Range", locationName = "item", type = "structure")), 
            shape = "Ipv6RangeList", locationName = "ipv6Ranges", 
            type = "list"), PrefixListIds = structure(list(structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            PrefixListId = structure(logical(0), shape = "String", 
                locationName = "prefixListId", type = "string")), 
            shape = "PrefixListId", locationName = "item", type = "structure")), 
            shape = "PrefixListIdList", locationName = "prefixListIds", 
            type = "list"), ToPort = structure(logical(0), shape = "Integer", 
            locationName = "toPort", type = "integer"), UserIdGroupPairs = structure(list(structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            GroupId = structure(logical(0), shape = "String", 
                locationName = "groupId", type = "string"), GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), PeeringStatus = structure(logical(0), 
                shape = "String", locationName = "peeringStatus", 
                type = "string"), UserId = structure(logical(0), 
                shape = "String", locationName = "userId", type = "string"), 
            VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
                type = "string"), VpcPeeringConnectionId = structure(logical(0), 
                shape = "String", locationName = "vpcPeeringConnectionId", 
                type = "string")), shape = "UserIdGroupPair", 
            locationName = "item", type = "structure")), shape = "UserIdGroupPairList", 
            locationName = "groups", type = "list")), shape = "IpPermission", 
        locationName = "item", type = "structure")), shape = "IpPermissionList", 
        type = "list"), IpProtocol = structure(logical(0), shape = "String", 
        type = "string"), SourceSecurityGroupName = structure(logical(0), 
        shape = "String", type = "string"), SourceSecurityGroupOwnerId = structure(logical(0), 
        shape = "String", type = "string"), ToPort = structure(logical(0), 
        shape = "Integer", type = "integer"), DryRun = structure(logical(0), 
        shape = "Boolean", locationName = "dryRun", type = "boolean")), 
        shape = "RevokeSecurityGroupIngressRequest", type = "structure")
    return(populate(args, shape))
}

revoke_security_group_ingress_output <- function () 
{
    return(list())
}

run_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
        shape = "String", locationName = "deviceName", type = "string"), 
        VirtualName = structure(logical(0), shape = "String", 
            locationName = "virtualName", type = "string"), Ebs = structure(list(DeleteOnTermination = structure(logical(0), 
            shape = "Boolean", locationName = "deleteOnTermination", 
            type = "boolean"), Iops = structure(logical(0), shape = "Integer", 
            locationName = "iops", type = "integer"), SnapshotId = structure(logical(0), 
            shape = "String", locationName = "snapshotId", type = "string"), 
            VolumeSize = structure(logical(0), shape = "Integer", 
                locationName = "volumeSize", type = "integer"), 
            VolumeType = structure(logical(0), shape = "VolumeType", 
                locationName = "volumeType", type = "string"), 
            Encrypted = structure(logical(0), shape = "Boolean", 
                locationName = "encrypted", type = "boolean"), 
            KmsKeyId = structure(logical(0), shape = "String", 
                type = "string")), shape = "EbsBlockDevice", 
            locationName = "ebs", type = "structure"), NoDevice = structure(logical(0), 
            shape = "String", locationName = "noDevice", type = "string")), 
        shape = "BlockDeviceMapping", locationName = "BlockDeviceMapping", 
        type = "structure")), shape = "BlockDeviceMappingRequestList", 
        locationName = "BlockDeviceMapping", type = "list"), 
        ImageId = structure(logical(0), shape = "String", type = "string"), 
        InstanceType = structure(logical(0), shape = "InstanceType", 
            type = "string"), Ipv6AddressCount = structure(logical(0), 
            shape = "Integer", type = "integer"), Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
            shape = "String", locationName = "ipv6Address", type = "string")), 
            shape = "InstanceIpv6Address", locationName = "item", 
            type = "structure")), shape = "InstanceIpv6AddressList", 
            locationName = "Ipv6Address", type = "list"), KernelId = structure(logical(0), 
            shape = "String", type = "string"), KeyName = structure(logical(0), 
            shape = "String", type = "string"), MaxCount = structure(logical(0), 
            shape = "Integer", type = "integer"), MinCount = structure(logical(0), 
            shape = "Integer", type = "integer"), Monitoring = structure(list(Enabled = structure(logical(0), 
            shape = "Boolean", locationName = "enabled", type = "boolean")), 
            shape = "RunInstancesMonitoringEnabled", type = "structure"), 
        Placement = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "String", locationName = "availabilityZone", 
            type = "string"), Affinity = structure(logical(0), 
            shape = "String", locationName = "affinity", type = "string"), 
            GroupName = structure(logical(0), shape = "String", 
                locationName = "groupName", type = "string"), 
            HostId = structure(logical(0), shape = "String", 
                locationName = "hostId", type = "string"), Tenancy = structure(logical(0), 
                shape = "Tenancy", locationName = "tenancy", 
                type = "string"), SpreadDomain = structure(logical(0), 
                shape = "String", locationName = "spreadDomain", 
                type = "string")), shape = "Placement", type = "structure"), 
        RamdiskId = structure(logical(0), shape = "String", type = "string"), 
        SecurityGroupIds = structure(list(structure(logical(0), 
            shape = "String", locationName = "SecurityGroupId", 
            type = "string")), shape = "SecurityGroupIdStringList", 
            locationName = "SecurityGroupId", type = "list"), 
        SecurityGroups = structure(list(structure(logical(0), 
            shape = "String", locationName = "SecurityGroup", 
            type = "string")), shape = "SecurityGroupStringList", 
            locationName = "SecurityGroup", type = "list"), SubnetId = structure(logical(0), 
            shape = "String", type = "string"), UserData = structure(logical(0), 
            shape = "String", type = "string"), AdditionalInfo = structure(logical(0), 
            shape = "String", locationName = "additionalInfo", 
            type = "string"), ClientToken = structure(logical(0), 
            shape = "String", locationName = "clientToken", type = "string"), 
        DisableApiTermination = structure(logical(0), shape = "Boolean", 
            locationName = "disableApiTermination", type = "boolean"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean"), EbsOptimized = structure(logical(0), 
            shape = "Boolean", locationName = "ebsOptimized", 
            type = "boolean"), IamInstanceProfile = structure(list(Arn = structure(logical(0), 
            shape = "String", locationName = "arn", type = "string"), 
            Name = structure(logical(0), shape = "String", locationName = "name", 
                type = "string")), shape = "IamInstanceProfileSpecification", 
            locationName = "iamInstanceProfile", type = "structure"), 
        InstanceInitiatedShutdownBehavior = structure(logical(0), 
            shape = "ShutdownBehavior", locationName = "instanceInitiatedShutdownBehavior", 
            type = "string"), NetworkInterfaces = structure(list(structure(list(AssociatePublicIpAddress = structure(logical(0), 
            shape = "Boolean", locationName = "associatePublicIpAddress", 
            type = "boolean"), DeleteOnTermination = structure(logical(0), 
            shape = "Boolean", locationName = "deleteOnTermination", 
            type = "boolean"), Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            DeviceIndex = structure(logical(0), shape = "Integer", 
                locationName = "deviceIndex", type = "integer"), 
            Groups = structure(list(structure(logical(0), shape = "String", 
                locationName = "SecurityGroupId", type = "string")), 
                shape = "SecurityGroupIdStringList", locationName = "SecurityGroupId", 
                type = "list"), Ipv6AddressCount = structure(logical(0), 
                shape = "Integer", locationName = "ipv6AddressCount", 
                type = "integer"), Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
                shape = "String", locationName = "ipv6Address", 
                type = "string")), shape = "InstanceIpv6Address", 
                locationName = "item", type = "structure")), 
                shape = "InstanceIpv6AddressList", locationName = "ipv6AddressesSet", 
                queryName = "Ipv6Addresses", type = "list"), 
            NetworkInterfaceId = structure(logical(0), shape = "String", 
                locationName = "networkInterfaceId", type = "string"), 
            PrivateIpAddress = structure(logical(0), shape = "String", 
                locationName = "privateIpAddress", type = "string"), 
            PrivateIpAddresses = structure(list(structure(list(Primary = structure(logical(0), 
                shape = "Boolean", locationName = "primary", 
                type = "boolean"), PrivateIpAddress = structure(logical(0), 
                shape = "String", locationName = "privateIpAddress", 
                type = "string")), shape = "PrivateIpAddressSpecification", 
                locationName = "item", type = "structure")), 
                shape = "PrivateIpAddressSpecificationList", 
                locationName = "privateIpAddressesSet", queryName = "PrivateIpAddresses", 
                type = "list"), SecondaryPrivateIpAddressCount = structure(logical(0), 
                shape = "Integer", locationName = "secondaryPrivateIpAddressCount", 
                type = "integer"), SubnetId = structure(logical(0), 
                shape = "String", locationName = "subnetId", 
                type = "string")), shape = "InstanceNetworkInterfaceSpecification", 
            locationName = "item", type = "structure")), shape = "InstanceNetworkInterfaceSpecificationList", 
            locationName = "networkInterface", type = "list"), 
        PrivateIpAddress = structure(logical(0), shape = "String", 
            locationName = "privateIpAddress", type = "string"), 
        ElasticGpuSpecification = structure(list(structure(list(Type = structure(logical(0), 
            shape = "String", type = "string")), shape = "ElasticGpuSpecification", 
            locationName = "item", type = "structure")), shape = "ElasticGpuSpecifications", 
            type = "list"), TagSpecifications = structure(list(structure(list(ResourceType = structure(logical(0), 
            shape = "ResourceType", locationName = "resourceType", 
            type = "string"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "Tag", 
            type = "list")), shape = "TagSpecification", locationName = "item", 
            type = "structure")), shape = "TagSpecificationList", 
            locationName = "TagSpecification", type = "list"), 
        LaunchTemplate = structure(list(LaunchTemplateId = structure(logical(0), 
            shape = "String", type = "string"), LaunchTemplateName = structure(logical(0), 
            shape = "String", type = "string"), Version = structure(logical(0), 
            shape = "String", type = "string")), shape = "LaunchTemplateSpecification", 
            type = "structure"), InstanceMarketOptions = structure(list(MarketType = structure(logical(0), 
            shape = "MarketType", type = "string"), SpotOptions = structure(list(MaxPrice = structure(logical(0), 
            shape = "String", type = "string"), SpotInstanceType = structure(logical(0), 
            shape = "SpotInstanceType", type = "string"), BlockDurationMinutes = structure(logical(0), 
            shape = "Integer", type = "integer"), ValidUntil = structure(logical(0), 
            shape = "DateTime", type = "timestamp"), InstanceInterruptionBehavior = structure(logical(0), 
            shape = "InstanceInterruptionBehavior", type = "string")), 
            shape = "SpotMarketOptions", type = "structure")), 
            shape = "InstanceMarketOptionsRequest", type = "structure"), 
        CreditSpecification = structure(list(CpuCredits = structure(logical(0), 
            shape = "String", type = "string")), shape = "CreditSpecificationRequest", 
            type = "structure"), CpuOptions = structure(list(CoreCount = structure(logical(0), 
            shape = "Integer", type = "integer"), ThreadsPerCore = structure(logical(0), 
            shape = "Integer", type = "integer")), shape = "CpuOptionsRequest", 
            type = "structure")), shape = "RunInstancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

run_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Groups = structure(list(structure(list(GroupName = structure(logical(0), 
        shape = "String", locationName = "groupName", type = "string"), 
        GroupId = structure(logical(0), shape = "String", locationName = "groupId", 
            type = "string")), shape = "GroupIdentifier", locationName = "item", 
        type = "structure")), shape = "GroupIdentifierList", 
        locationName = "groupSet", type = "list"), Instances = structure(list(structure(list(AmiLaunchIndex = structure(logical(0), 
        shape = "Integer", locationName = "amiLaunchIndex", type = "integer"), 
        ImageId = structure(logical(0), shape = "String", locationName = "imageId", 
            type = "string"), InstanceId = structure(logical(0), 
            shape = "String", locationName = "instanceId", type = "string"), 
        InstanceType = structure(logical(0), shape = "InstanceType", 
            locationName = "instanceType", type = "string"), 
        KernelId = structure(logical(0), shape = "String", locationName = "kernelId", 
            type = "string"), KeyName = structure(logical(0), 
            shape = "String", locationName = "keyName", type = "string"), 
        LaunchTime = structure(logical(0), shape = "DateTime", 
            locationName = "launchTime", type = "timestamp"), 
        Monitoring = structure(list(State = structure(logical(0), 
            shape = "MonitoringState", locationName = "state", 
            type = "string")), shape = "Monitoring", locationName = "monitoring", 
            type = "structure"), Placement = structure(list(AvailabilityZone = structure(logical(0), 
            shape = "String", locationName = "availabilityZone", 
            type = "string"), Affinity = structure(logical(0), 
            shape = "String", locationName = "affinity", type = "string"), 
            GroupName = structure(logical(0), shape = "String", 
                locationName = "groupName", type = "string"), 
            HostId = structure(logical(0), shape = "String", 
                locationName = "hostId", type = "string"), Tenancy = structure(logical(0), 
                shape = "Tenancy", locationName = "tenancy", 
                type = "string"), SpreadDomain = structure(logical(0), 
                shape = "String", locationName = "spreadDomain", 
                type = "string")), shape = "Placement", locationName = "placement", 
            type = "structure"), Platform = structure(logical(0), 
            shape = "PlatformValues", locationName = "platform", 
            type = "string"), PrivateDnsName = structure(logical(0), 
            shape = "String", locationName = "privateDnsName", 
            type = "string"), PrivateIpAddress = structure(logical(0), 
            shape = "String", locationName = "privateIpAddress", 
            type = "string"), ProductCodes = structure(list(structure(list(ProductCodeId = structure(logical(0), 
            shape = "String", locationName = "productCode", type = "string"), 
            ProductCodeType = structure(logical(0), shape = "ProductCodeValues", 
                locationName = "type", type = "string")), shape = "ProductCode", 
            locationName = "item", type = "structure")), shape = "ProductCodeList", 
            locationName = "productCodes", type = "list"), PublicDnsName = structure(logical(0), 
            shape = "String", locationName = "dnsName", type = "string"), 
        PublicIpAddress = structure(logical(0), shape = "String", 
            locationName = "ipAddress", type = "string"), RamdiskId = structure(logical(0), 
            shape = "String", locationName = "ramdiskId", type = "string"), 
        State = structure(list(Code = structure(logical(0), shape = "Integer", 
            locationName = "code", type = "integer"), Name = structure(logical(0), 
            shape = "InstanceStateName", locationName = "name", 
            type = "string")), shape = "InstanceState", locationName = "instanceState", 
            type = "structure"), StateTransitionReason = structure(logical(0), 
            shape = "String", locationName = "reason", type = "string"), 
        SubnetId = structure(logical(0), shape = "String", locationName = "subnetId", 
            type = "string"), VpcId = structure(logical(0), shape = "String", 
            locationName = "vpcId", type = "string"), Architecture = structure(logical(0), 
            shape = "ArchitectureValues", locationName = "architecture", 
            type = "string"), BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
            shape = "String", locationName = "deviceName", type = "string"), 
            Ebs = structure(list(AttachTime = structure(logical(0), 
                shape = "DateTime", locationName = "attachTime", 
                type = "timestamp"), DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", locationName = "deleteOnTermination", 
                type = "boolean"), Status = structure(logical(0), 
                shape = "AttachmentStatus", locationName = "status", 
                type = "string"), VolumeId = structure(logical(0), 
                shape = "String", locationName = "volumeId", 
                type = "string")), shape = "EbsInstanceBlockDevice", 
                locationName = "ebs", type = "structure")), shape = "InstanceBlockDeviceMapping", 
            locationName = "item", type = "structure")), shape = "InstanceBlockDeviceMappingList", 
            locationName = "blockDeviceMapping", type = "list"), 
        ClientToken = structure(logical(0), shape = "String", 
            locationName = "clientToken", type = "string"), EbsOptimized = structure(logical(0), 
            shape = "Boolean", locationName = "ebsOptimized", 
            type = "boolean"), EnaSupport = structure(logical(0), 
            shape = "Boolean", locationName = "enaSupport", type = "boolean"), 
        Hypervisor = structure(logical(0), shape = "HypervisorType", 
            locationName = "hypervisor", type = "string"), IamInstanceProfile = structure(list(Arn = structure(logical(0), 
            shape = "String", locationName = "arn", type = "string"), 
            Id = structure(logical(0), shape = "String", locationName = "id", 
                type = "string")), shape = "IamInstanceProfile", 
            locationName = "iamInstanceProfile", type = "structure"), 
        InstanceLifecycle = structure(logical(0), shape = "InstanceLifecycleType", 
            locationName = "instanceLifecycle", type = "string"), 
        ElasticGpuAssociations = structure(list(structure(list(ElasticGpuId = structure(logical(0), 
            shape = "String", locationName = "elasticGpuId", 
            type = "string"), ElasticGpuAssociationId = structure(logical(0), 
            shape = "String", locationName = "elasticGpuAssociationId", 
            type = "string"), ElasticGpuAssociationState = structure(logical(0), 
            shape = "String", locationName = "elasticGpuAssociationState", 
            type = "string"), ElasticGpuAssociationTime = structure(logical(0), 
            shape = "String", locationName = "elasticGpuAssociationTime", 
            type = "string")), shape = "ElasticGpuAssociation", 
            locationName = "item", type = "structure")), shape = "ElasticGpuAssociationList", 
            locationName = "elasticGpuAssociationSet", type = "list"), 
        NetworkInterfaces = structure(list(structure(list(Association = structure(list(IpOwnerId = structure(logical(0), 
            shape = "String", locationName = "ipOwnerId", type = "string"), 
            PublicDnsName = structure(logical(0), shape = "String", 
                locationName = "publicDnsName", type = "string"), 
            PublicIp = structure(logical(0), shape = "String", 
                locationName = "publicIp", type = "string")), 
            shape = "InstanceNetworkInterfaceAssociation", locationName = "association", 
            type = "structure"), Attachment = structure(list(AttachTime = structure(logical(0), 
            shape = "DateTime", locationName = "attachTime", 
            type = "timestamp"), AttachmentId = structure(logical(0), 
            shape = "String", locationName = "attachmentId", 
            type = "string"), DeleteOnTermination = structure(logical(0), 
            shape = "Boolean", locationName = "deleteOnTermination", 
            type = "boolean"), DeviceIndex = structure(logical(0), 
            shape = "Integer", locationName = "deviceIndex", 
            type = "integer"), Status = structure(logical(0), 
            shape = "AttachmentStatus", locationName = "status", 
            type = "string")), shape = "InstanceNetworkInterfaceAttachment", 
            locationName = "attachment", type = "structure"), 
            Description = structure(logical(0), shape = "String", 
                locationName = "description", type = "string"), 
            Groups = structure(list(structure(list(GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), GroupId = structure(logical(0), 
                shape = "String", locationName = "groupId", type = "string")), 
                shape = "GroupIdentifier", locationName = "item", 
                type = "structure")), shape = "GroupIdentifierList", 
                locationName = "groupSet", type = "list"), Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
                shape = "String", locationName = "ipv6Address", 
                type = "string")), shape = "InstanceIpv6Address", 
                locationName = "item", type = "structure")), 
                shape = "InstanceIpv6AddressList", locationName = "ipv6AddressesSet", 
                type = "list"), MacAddress = structure(logical(0), 
                shape = "String", locationName = "macAddress", 
                type = "string"), NetworkInterfaceId = structure(logical(0), 
                shape = "String", locationName = "networkInterfaceId", 
                type = "string"), OwnerId = structure(logical(0), 
                shape = "String", locationName = "ownerId", type = "string"), 
            PrivateDnsName = structure(logical(0), shape = "String", 
                locationName = "privateDnsName", type = "string"), 
            PrivateIpAddress = structure(logical(0), shape = "String", 
                locationName = "privateIpAddress", type = "string"), 
            PrivateIpAddresses = structure(list(structure(list(Association = structure(list(IpOwnerId = structure(logical(0), 
                shape = "String", locationName = "ipOwnerId", 
                type = "string"), PublicDnsName = structure(logical(0), 
                shape = "String", locationName = "publicDnsName", 
                type = "string"), PublicIp = structure(logical(0), 
                shape = "String", locationName = "publicIp", 
                type = "string")), shape = "InstanceNetworkInterfaceAssociation", 
                locationName = "association", type = "structure"), 
                Primary = structure(logical(0), shape = "Boolean", 
                  locationName = "primary", type = "boolean"), 
                PrivateDnsName = structure(logical(0), shape = "String", 
                  locationName = "privateDnsName", type = "string"), 
                PrivateIpAddress = structure(logical(0), shape = "String", 
                  locationName = "privateIpAddress", type = "string")), 
                shape = "InstancePrivateIpAddress", locationName = "item", 
                type = "structure")), shape = "InstancePrivateIpAddressList", 
                locationName = "privateIpAddressesSet", type = "list"), 
            SourceDestCheck = structure(logical(0), shape = "Boolean", 
                locationName = "sourceDestCheck", type = "boolean"), 
            Status = structure(logical(0), shape = "NetworkInterfaceStatus", 
                locationName = "status", type = "string"), SubnetId = structure(logical(0), 
                shape = "String", locationName = "subnetId", 
                type = "string"), VpcId = structure(logical(0), 
                shape = "String", locationName = "vpcId", type = "string")), 
            shape = "InstanceNetworkInterface", locationName = "item", 
            type = "structure")), shape = "InstanceNetworkInterfaceList", 
            locationName = "networkInterfaceSet", type = "list"), 
        RootDeviceName = structure(logical(0), shape = "String", 
            locationName = "rootDeviceName", type = "string"), 
        RootDeviceType = structure(logical(0), shape = "DeviceType", 
            locationName = "rootDeviceType", type = "string"), 
        SecurityGroups = structure(list(structure(list(GroupName = structure(logical(0), 
            shape = "String", locationName = "groupName", type = "string"), 
            GroupId = structure(logical(0), shape = "String", 
                locationName = "groupId", type = "string")), 
            shape = "GroupIdentifier", locationName = "item", 
            type = "structure")), shape = "GroupIdentifierList", 
            locationName = "groupSet", type = "list"), SourceDestCheck = structure(logical(0), 
            shape = "Boolean", locationName = "sourceDestCheck", 
            type = "boolean"), SpotInstanceRequestId = structure(logical(0), 
            shape = "String", locationName = "spotInstanceRequestId", 
            type = "string"), SriovNetSupport = structure(logical(0), 
            shape = "String", locationName = "sriovNetSupport", 
            type = "string"), StateReason = structure(list(Code = structure(logical(0), 
            shape = "String", locationName = "code", type = "string"), 
            Message = structure(logical(0), shape = "String", 
                locationName = "message", type = "string")), 
            shape = "StateReason", locationName = "stateReason", 
            type = "structure"), Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "String", locationName = "key", type = "string"), 
            Value = structure(logical(0), shape = "String", locationName = "value", 
                type = "string")), shape = "Tag", locationName = "item", 
            type = "structure")), shape = "TagList", locationName = "tagSet", 
            type = "list"), VirtualizationType = structure(logical(0), 
            shape = "VirtualizationType", locationName = "virtualizationType", 
            type = "string"), CpuOptions = structure(list(CoreCount = structure(logical(0), 
            shape = "Integer", locationName = "coreCount", type = "integer"), 
            ThreadsPerCore = structure(logical(0), shape = "Integer", 
                locationName = "threadsPerCore", type = "integer")), 
            shape = "CpuOptions", locationName = "cpuOptions", 
            type = "structure")), shape = "Instance", locationName = "item", 
        type = "structure")), shape = "InstanceList", locationName = "instancesSet", 
        type = "list"), OwnerId = structure(logical(0), shape = "String", 
        locationName = "ownerId", type = "string"), RequesterId = structure(logical(0), 
        shape = "String", locationName = "requesterId", type = "string"), 
        ReservationId = structure(logical(0), shape = "String", 
            locationName = "reservationId", type = "string")), 
        shape = "Reservation", type = "structure")
    return(populate(args, shape))
}

run_scheduled_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ClientToken = structure(logical(0), 
        shape = "String", idempotencyToken = TRUE, type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", type = "boolean"), 
        InstanceCount = structure(logical(0), shape = "Integer", 
            type = "integer"), LaunchSpecification = structure(list(BlockDeviceMappings = structure(list(structure(list(DeviceName = structure(logical(0), 
            shape = "String", type = "string"), Ebs = structure(list(DeleteOnTermination = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Encrypted = structure(logical(0), 
            shape = "Boolean", type = "boolean"), Iops = structure(logical(0), 
            shape = "Integer", type = "integer"), SnapshotId = structure(logical(0), 
            shape = "String", type = "string"), VolumeSize = structure(logical(0), 
            shape = "Integer", type = "integer"), VolumeType = structure(logical(0), 
            shape = "String", type = "string")), shape = "ScheduledInstancesEbs", 
            type = "structure"), NoDevice = structure(logical(0), 
            shape = "String", type = "string"), VirtualName = structure(logical(0), 
            shape = "String", type = "string")), shape = "ScheduledInstancesBlockDeviceMapping", 
            locationName = "BlockDeviceMapping", type = "structure")), 
            shape = "ScheduledInstancesBlockDeviceMappingSet", 
            locationName = "BlockDeviceMapping", type = "list"), 
            EbsOptimized = structure(logical(0), shape = "Boolean", 
                type = "boolean"), IamInstanceProfile = structure(list(Arn = structure(logical(0), 
                shape = "String", type = "string"), Name = structure(logical(0), 
                shape = "String", type = "string")), shape = "ScheduledInstancesIamInstanceProfile", 
                type = "structure"), ImageId = structure(logical(0), 
                shape = "String", type = "string"), InstanceType = structure(logical(0), 
                shape = "String", type = "string"), KernelId = structure(logical(0), 
                shape = "String", type = "string"), KeyName = structure(logical(0), 
                shape = "String", type = "string"), Monitoring = structure(list(Enabled = structure(logical(0), 
                shape = "Boolean", type = "boolean")), shape = "ScheduledInstancesMonitoring", 
                type = "structure"), NetworkInterfaces = structure(list(structure(list(AssociatePublicIpAddress = structure(logical(0), 
                shape = "Boolean", type = "boolean"), DeleteOnTermination = structure(logical(0), 
                shape = "Boolean", type = "boolean"), Description = structure(logical(0), 
                shape = "String", type = "string"), DeviceIndex = structure(logical(0), 
                shape = "Integer", type = "integer"), Groups = structure(list(structure(logical(0), 
                shape = "String", locationName = "SecurityGroupId", 
                type = "string")), shape = "ScheduledInstancesSecurityGroupIdSet", 
                locationName = "Group", type = "list"), Ipv6AddressCount = structure(logical(0), 
                shape = "Integer", type = "integer"), Ipv6Addresses = structure(list(structure(list(Ipv6Address = structure(logical(0), 
                shape = "Ipv6Address", type = "string")), shape = "ScheduledInstancesIpv6Address", 
                locationName = "Ipv6Address", type = "structure")), 
                shape = "ScheduledInstancesIpv6AddressList", 
                locationName = "Ipv6Address", type = "list"), 
                NetworkInterfaceId = structure(logical(0), shape = "String", 
                  type = "string"), PrivateIpAddress = structure(logical(0), 
                  shape = "String", type = "string"), PrivateIpAddressConfigs = structure(list(structure(list(Primary = structure(logical(0), 
                  shape = "Boolean", type = "boolean"), PrivateIpAddress = structure(logical(0), 
                  shape = "String", type = "string")), shape = "ScheduledInstancesPrivateIpAddressConfig", 
                  locationName = "PrivateIpAddressConfigSet", 
                  type = "structure")), shape = "PrivateIpAddressConfigSet", 
                  locationName = "PrivateIpAddressConfig", type = "list"), 
                SecondaryPrivateIpAddressCount = structure(logical(0), 
                  shape = "Integer", type = "integer"), SubnetId = structure(logical(0), 
                  shape = "String", type = "string")), shape = "ScheduledInstancesNetworkInterface", 
                locationName = "NetworkInterface", type = "structure")), 
                shape = "ScheduledInstancesNetworkInterfaceSet", 
                locationName = "NetworkInterface", type = "list"), 
            Placement = structure(list(AvailabilityZone = structure(logical(0), 
                shape = "String", type = "string"), GroupName = structure(logical(0), 
                shape = "String", type = "string")), shape = "ScheduledInstancesPlacement", 
                type = "structure"), RamdiskId = structure(logical(0), 
                shape = "String", type = "string"), SecurityGroupIds = structure(list(structure(logical(0), 
                shape = "String", locationName = "SecurityGroupId", 
                type = "string")), shape = "ScheduledInstancesSecurityGroupIdSet", 
                locationName = "SecurityGroupId", type = "list"), 
            SubnetId = structure(logical(0), shape = "String", 
                type = "string"), UserData = structure(logical(0), 
                shape = "String", type = "string")), shape = "ScheduledInstancesLaunchSpecification", 
            type = "structure"), ScheduledInstanceId = structure(logical(0), 
            shape = "String", type = "string")), shape = "RunScheduledInstancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

run_scheduled_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceIdSet = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "InstanceIdSet", locationName = "instanceIdSet", 
        type = "list")), shape = "RunScheduledInstancesResult", 
        type = "structure")
    return(populate(args, shape))
}

start_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "InstanceId", type = "string")), 
        shape = "InstanceIdStringList", locationName = "InstanceId", 
        type = "list"), AdditionalInfo = structure(logical(0), 
        shape = "String", locationName = "additionalInfo", type = "string"), 
        DryRun = structure(logical(0), shape = "Boolean", locationName = "dryRun", 
            type = "boolean")), shape = "StartInstancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

start_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StartingInstances = structure(list(structure(list(CurrentState = structure(list(Code = structure(logical(0), 
        shape = "Integer", locationName = "code", type = "integer"), 
        Name = structure(logical(0), shape = "InstanceStateName", 
            locationName = "name", type = "string")), shape = "InstanceState", 
        locationName = "currentState", type = "structure"), InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        PreviousState = structure(list(Code = structure(logical(0), 
            shape = "Integer", locationName = "code", type = "integer"), 
            Name = structure(logical(0), shape = "InstanceStateName", 
                locationName = "name", type = "string")), shape = "InstanceState", 
            locationName = "previousState", type = "structure")), 
        shape = "InstanceStateChange", locationName = "item", 
        type = "structure")), shape = "InstanceStateChangeList", 
        locationName = "instancesSet", type = "list")), shape = "StartInstancesResult", 
        type = "structure")
    return(populate(args, shape))
}

stop_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "InstanceId", type = "string")), 
        shape = "InstanceIdStringList", locationName = "InstanceId", 
        type = "list"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean"), Force = structure(logical(0), 
        shape = "Boolean", locationName = "force", type = "boolean")), 
        shape = "StopInstancesRequest", type = "structure")
    return(populate(args, shape))
}

stop_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(StoppingInstances = structure(list(structure(list(CurrentState = structure(list(Code = structure(logical(0), 
        shape = "Integer", locationName = "code", type = "integer"), 
        Name = structure(logical(0), shape = "InstanceStateName", 
            locationName = "name", type = "string")), shape = "InstanceState", 
        locationName = "currentState", type = "structure"), InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        PreviousState = structure(list(Code = structure(logical(0), 
            shape = "Integer", locationName = "code", type = "integer"), 
            Name = structure(logical(0), shape = "InstanceStateName", 
                locationName = "name", type = "string")), shape = "InstanceState", 
            locationName = "previousState", type = "structure")), 
        shape = "InstanceStateChange", locationName = "item", 
        type = "structure")), shape = "InstanceStateChangeList", 
        locationName = "instancesSet", type = "list")), shape = "StopInstancesResult", 
        type = "structure")
    return(populate(args, shape))
}

terminate_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "InstanceId", type = "string")), 
        shape = "InstanceIdStringList", locationName = "InstanceId", 
        type = "list"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "TerminateInstancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

terminate_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(TerminatingInstances = structure(list(structure(list(CurrentState = structure(list(Code = structure(logical(0), 
        shape = "Integer", locationName = "code", type = "integer"), 
        Name = structure(logical(0), shape = "InstanceStateName", 
            locationName = "name", type = "string")), shape = "InstanceState", 
        locationName = "currentState", type = "structure"), InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        PreviousState = structure(list(Code = structure(logical(0), 
            shape = "Integer", locationName = "code", type = "integer"), 
            Name = structure(logical(0), shape = "InstanceStateName", 
                locationName = "name", type = "string")), shape = "InstanceState", 
            locationName = "previousState", type = "structure")), 
        shape = "InstanceStateChange", locationName = "item", 
        type = "structure")), shape = "InstanceStateChangeList", 
        locationName = "instancesSet", type = "list")), shape = "TerminateInstancesResult", 
        type = "structure")
    return(populate(args, shape))
}

unassign_ipv_6_addresses_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Ipv6Addresses = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "Ipv6AddressList", locationName = "ipv6Addresses", 
        type = "list"), NetworkInterfaceId = structure(logical(0), 
        shape = "String", locationName = "networkInterfaceId", 
        type = "string")), shape = "UnassignIpv6AddressesRequest", 
        type = "structure")
    return(populate(args, shape))
}

unassign_ipv_6_addresses_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NetworkInterfaceId = structure(logical(0), 
        shape = "String", locationName = "networkInterfaceId", 
        type = "string"), UnassignedIpv6Addresses = structure(list(structure(logical(0), 
        shape = "String", locationName = "item", type = "string")), 
        shape = "Ipv6AddressList", locationName = "unassignedIpv6Addresses", 
        type = "list")), shape = "UnassignIpv6AddressesResult", 
        type = "structure")
    return(populate(args, shape))
}

unassign_private_ip_addresses_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NetworkInterfaceId = structure(logical(0), 
        shape = "String", locationName = "networkInterfaceId", 
        type = "string"), PrivateIpAddresses = structure(list(structure(logical(0), 
        shape = "String", locationName = "PrivateIpAddress", 
        type = "string")), shape = "PrivateIpAddressStringList", 
        locationName = "privateIpAddress", type = "list")), shape = "UnassignPrivateIpAddressesRequest", 
        type = "structure")
    return(populate(args, shape))
}

unassign_private_ip_addresses_output <- function () 
{
    return(list())
}

unmonitor_instances_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceIds = structure(list(structure(logical(0), 
        shape = "String", locationName = "InstanceId", type = "string")), 
        shape = "InstanceIdStringList", locationName = "InstanceId", 
        type = "list"), DryRun = structure(logical(0), shape = "Boolean", 
        locationName = "dryRun", type = "boolean")), shape = "UnmonitorInstancesRequest", 
        type = "structure")
    return(populate(args, shape))
}

unmonitor_instances_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InstanceMonitorings = structure(list(structure(list(InstanceId = structure(logical(0), 
        shape = "String", locationName = "instanceId", type = "string"), 
        Monitoring = structure(list(State = structure(logical(0), 
            shape = "MonitoringState", locationName = "state", 
            type = "string")), shape = "Monitoring", locationName = "monitoring", 
            type = "structure")), shape = "InstanceMonitoring", 
        locationName = "item", type = "structure")), shape = "InstanceMonitoringList", 
        locationName = "instancesSet", type = "list")), shape = "UnmonitorInstancesResult", 
        type = "structure")
    return(populate(args, shape))
}

update_security_group_rule_descriptions_egress_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), GroupId = structure(logical(0), shape = "String", 
        type = "string"), GroupName = structure(logical(0), shape = "String", 
        type = "string"), IpPermissions = structure(list(structure(list(FromPort = structure(logical(0), 
        shape = "Integer", locationName = "fromPort", type = "integer"), 
        IpProtocol = structure(logical(0), shape = "String", 
            locationName = "ipProtocol", type = "string"), IpRanges = structure(list(structure(list(CidrIp = structure(logical(0), 
            shape = "String", locationName = "cidrIp", type = "string"), 
            Description = structure(logical(0), shape = "String", 
                locationName = "description", type = "string")), 
            shape = "IpRange", locationName = "item", type = "structure")), 
            shape = "IpRangeList", locationName = "ipRanges", 
            type = "list"), Ipv6Ranges = structure(list(structure(list(CidrIpv6 = structure(logical(0), 
            shape = "String", locationName = "cidrIpv6", type = "string"), 
            Description = structure(logical(0), shape = "String", 
                locationName = "description", type = "string")), 
            shape = "Ipv6Range", locationName = "item", type = "structure")), 
            shape = "Ipv6RangeList", locationName = "ipv6Ranges", 
            type = "list"), PrefixListIds = structure(list(structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            PrefixListId = structure(logical(0), shape = "String", 
                locationName = "prefixListId", type = "string")), 
            shape = "PrefixListId", locationName = "item", type = "structure")), 
            shape = "PrefixListIdList", locationName = "prefixListIds", 
            type = "list"), ToPort = structure(logical(0), shape = "Integer", 
            locationName = "toPort", type = "integer"), UserIdGroupPairs = structure(list(structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            GroupId = structure(logical(0), shape = "String", 
                locationName = "groupId", type = "string"), GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), PeeringStatus = structure(logical(0), 
                shape = "String", locationName = "peeringStatus", 
                type = "string"), UserId = structure(logical(0), 
                shape = "String", locationName = "userId", type = "string"), 
            VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
                type = "string"), VpcPeeringConnectionId = structure(logical(0), 
                shape = "String", locationName = "vpcPeeringConnectionId", 
                type = "string")), shape = "UserIdGroupPair", 
            locationName = "item", type = "structure")), shape = "UserIdGroupPairList", 
            locationName = "groups", type = "list")), shape = "IpPermission", 
        locationName = "item", type = "structure")), shape = "IpPermissionList", 
        type = "list")), shape = "UpdateSecurityGroupRuleDescriptionsEgressRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_security_group_rule_descriptions_egress_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "UpdateSecurityGroupRuleDescriptionsEgressResult", 
        type = "structure")
    return(populate(args, shape))
}

update_security_group_rule_descriptions_ingress_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DryRun = structure(logical(0), shape = "Boolean", 
        type = "boolean"), GroupId = structure(logical(0), shape = "String", 
        type = "string"), GroupName = structure(logical(0), shape = "String", 
        type = "string"), IpPermissions = structure(list(structure(list(FromPort = structure(logical(0), 
        shape = "Integer", locationName = "fromPort", type = "integer"), 
        IpProtocol = structure(logical(0), shape = "String", 
            locationName = "ipProtocol", type = "string"), IpRanges = structure(list(structure(list(CidrIp = structure(logical(0), 
            shape = "String", locationName = "cidrIp", type = "string"), 
            Description = structure(logical(0), shape = "String", 
                locationName = "description", type = "string")), 
            shape = "IpRange", locationName = "item", type = "structure")), 
            shape = "IpRangeList", locationName = "ipRanges", 
            type = "list"), Ipv6Ranges = structure(list(structure(list(CidrIpv6 = structure(logical(0), 
            shape = "String", locationName = "cidrIpv6", type = "string"), 
            Description = structure(logical(0), shape = "String", 
                locationName = "description", type = "string")), 
            shape = "Ipv6Range", locationName = "item", type = "structure")), 
            shape = "Ipv6RangeList", locationName = "ipv6Ranges", 
            type = "list"), PrefixListIds = structure(list(structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            PrefixListId = structure(logical(0), shape = "String", 
                locationName = "prefixListId", type = "string")), 
            shape = "PrefixListId", locationName = "item", type = "structure")), 
            shape = "PrefixListIdList", locationName = "prefixListIds", 
            type = "list"), ToPort = structure(logical(0), shape = "Integer", 
            locationName = "toPort", type = "integer"), UserIdGroupPairs = structure(list(structure(list(Description = structure(logical(0), 
            shape = "String", locationName = "description", type = "string"), 
            GroupId = structure(logical(0), shape = "String", 
                locationName = "groupId", type = "string"), GroupName = structure(logical(0), 
                shape = "String", locationName = "groupName", 
                type = "string"), PeeringStatus = structure(logical(0), 
                shape = "String", locationName = "peeringStatus", 
                type = "string"), UserId = structure(logical(0), 
                shape = "String", locationName = "userId", type = "string"), 
            VpcId = structure(logical(0), shape = "String", locationName = "vpcId", 
                type = "string"), VpcPeeringConnectionId = structure(logical(0), 
                shape = "String", locationName = "vpcPeeringConnectionId", 
                type = "string")), shape = "UserIdGroupPair", 
            locationName = "item", type = "structure")), shape = "UserIdGroupPairList", 
            locationName = "groups", type = "list")), shape = "IpPermission", 
        locationName = "item", type = "structure")), shape = "IpPermissionList", 
        type = "list")), shape = "UpdateSecurityGroupRuleDescriptionsIngressRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_security_group_rule_descriptions_ingress_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Return = structure(logical(0), shape = "Boolean", 
        locationName = "return", type = "boolean")), shape = "UpdateSecurityGroupRuleDescriptionsIngressResult", 
        type = "structure")
    return(populate(args, shape))
}
