allocate_connection_on_interconnect_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Bandwidth = structure(logical(0), 
        shape = "Bandwidth", type = "string", locationName = "bandwidth"), 
        ConnectionName = structure(logical(0), shape = "ConnectionName", 
            type = "string", locationName = "connectionName"), 
        OwnerAccount = structure(logical(0), shape = "OwnerAccount", 
            type = "string", locationName = "ownerAccount"), 
        InterconnectId = structure(logical(0), shape = "InterconnectId", 
            type = "string", locationName = "interconnectId"), 
        Vlan = structure(logical(0), shape = "VLAN", type = "integer", 
            locationName = "vlan")), shape = "AllocateConnectionOnInterconnectRequest", 
        type = "structure")
    return(populate(args, shape))
}

allocate_connection_on_interconnect_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        ConnectionId = structure(logical(0), shape = "ConnectionId", 
            type = "string", locationName = "connectionId"), 
        ConnectionName = structure(logical(0), shape = "ConnectionName", 
            type = "string", locationName = "connectionName"), 
        ConnectionState = structure(logical(0), shape = "ConnectionState", 
            type = "string", locationName = "connectionState"), 
        Region = structure(logical(0), shape = "Region", type = "string", 
            locationName = "region"), Location = structure(logical(0), 
            shape = "LocationCode", type = "string", locationName = "location"), 
        Bandwidth = structure(logical(0), shape = "Bandwidth", 
            type = "string", locationName = "bandwidth"), Vlan = structure(logical(0), 
            shape = "VLAN", type = "integer", locationName = "vlan"), 
        PartnerName = structure(logical(0), shape = "PartnerName", 
            type = "string", locationName = "partnerName"), LoaIssueTime = structure(logical(0), 
            shape = "LoaIssueTime", type = "timestamp", locationName = "loaIssueTime"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId"), AwsDevice = structure(logical(0), 
            shape = "AwsDevice", type = "string", deprecated = TRUE, 
            locationName = "awsDevice"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "Connection", type = "structure")
    return(populate(args, shape))
}

allocate_hosted_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionId = structure(logical(0), 
        shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        OwnerAccount = structure(logical(0), shape = "OwnerAccount", 
            type = "string", locationName = "ownerAccount"), 
        Bandwidth = structure(logical(0), shape = "Bandwidth", 
            type = "string", locationName = "bandwidth"), ConnectionName = structure(logical(0), 
            shape = "ConnectionName", type = "string", locationName = "connectionName"), 
        Vlan = structure(logical(0), shape = "VLAN", type = "integer", 
            locationName = "vlan")), shape = "AllocateHostedConnectionRequest", 
        type = "structure")
    return(populate(args, shape))
}

allocate_hosted_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        ConnectionId = structure(logical(0), shape = "ConnectionId", 
            type = "string", locationName = "connectionId"), 
        ConnectionName = structure(logical(0), shape = "ConnectionName", 
            type = "string", locationName = "connectionName"), 
        ConnectionState = structure(logical(0), shape = "ConnectionState", 
            type = "string", locationName = "connectionState"), 
        Region = structure(logical(0), shape = "Region", type = "string", 
            locationName = "region"), Location = structure(logical(0), 
            shape = "LocationCode", type = "string", locationName = "location"), 
        Bandwidth = structure(logical(0), shape = "Bandwidth", 
            type = "string", locationName = "bandwidth"), Vlan = structure(logical(0), 
            shape = "VLAN", type = "integer", locationName = "vlan"), 
        PartnerName = structure(logical(0), shape = "PartnerName", 
            type = "string", locationName = "partnerName"), LoaIssueTime = structure(logical(0), 
            shape = "LoaIssueTime", type = "timestamp", locationName = "loaIssueTime"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId"), AwsDevice = structure(logical(0), 
            shape = "AwsDevice", type = "string", deprecated = TRUE, 
            locationName = "awsDevice"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "Connection", type = "structure")
    return(populate(args, shape))
}

allocate_private_virtual_interface_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionId = structure(logical(0), 
        shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        OwnerAccount = structure(logical(0), shape = "OwnerAccount", 
            type = "string", locationName = "ownerAccount"), 
        NewPrivateVirtualInterfaceAllocation = structure(list(VirtualInterfaceName = structure(logical(0), 
            shape = "VirtualInterfaceName", type = "string", 
            locationName = "virtualInterfaceName"), Vlan = structure(logical(0), 
            shape = "VLAN", type = "integer", locationName = "vlan"), 
            Asn = structure(logical(0), shape = "ASN", type = "integer", 
                locationName = "asn"), Mtu = structure(logical(0), 
                shape = "MTU", type = "integer", locationName = "mtu"), 
            AuthKey = structure(logical(0), shape = "BGPAuthKey", 
                type = "string", locationName = "authKey"), AmazonAddress = structure(logical(0), 
                shape = "AmazonAddress", type = "string", locationName = "amazonAddress"), 
            AddressFamily = structure(logical(0), shape = "AddressFamily", 
                type = "string", locationName = "addressFamily"), 
            CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
                type = "string", locationName = "customerAddress")), 
            shape = "NewPrivateVirtualInterfaceAllocation", type = "structure", 
            locationName = "newPrivateVirtualInterfaceAllocation")), 
        shape = "AllocatePrivateVirtualInterfaceRequest", type = "structure")
    return(populate(args, shape))
}

allocate_private_virtual_interface_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        VirtualInterfaceId = structure(logical(0), shape = "VirtualInterfaceId", 
            type = "string", locationName = "virtualInterfaceId"), 
        Location = structure(logical(0), shape = "LocationCode", 
            type = "string", locationName = "location"), ConnectionId = structure(logical(0), 
            shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        VirtualInterfaceType = structure(logical(0), shape = "VirtualInterfaceType", 
            type = "string", locationName = "virtualInterfaceType"), 
        VirtualInterfaceName = structure(logical(0), shape = "VirtualInterfaceName", 
            type = "string", locationName = "virtualInterfaceName"), 
        Vlan = structure(logical(0), shape = "VLAN", type = "integer", 
            locationName = "vlan"), Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
        AmazonSideAsn = structure(logical(0), shape = "LongAsn", 
            type = "long", locationName = "amazonSideAsn"), AuthKey = structure(logical(0), 
            shape = "BGPAuthKey", type = "string", locationName = "authKey"), 
        AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
            type = "string", locationName = "amazonAddress"), 
        CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
            type = "string", locationName = "customerAddress"), 
        AddressFamily = structure(logical(0), shape = "AddressFamily", 
            type = "string", locationName = "addressFamily"), 
        VirtualInterfaceState = structure(logical(0), shape = "VirtualInterfaceState", 
            type = "string", locationName = "virtualInterfaceState"), 
        CustomerRouterConfig = structure(logical(0), shape = "RouterConfig", 
            type = "string", locationName = "customerRouterConfig"), 
        Mtu = structure(logical(0), shape = "MTU", type = "integer", 
            locationName = "mtu"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
            type = "string", locationName = "virtualGatewayId"), 
        DirectConnectGatewayId = structure(logical(0), shape = "DirectConnectGatewayId", 
            type = "string", locationName = "directConnectGatewayId"), 
        RouteFilterPrefixes = structure(list(structure(list(Cidr = structure(logical(0), 
            shape = "CIDR", type = "string", locationName = "cidr")), 
            shape = "RouteFilterPrefix", type = "structure")), 
            shape = "RouteFilterPrefixList", type = "list", locationName = "routeFilterPrefixes"), 
        BgpPeers = structure(list(structure(list(Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
            AuthKey = structure(logical(0), shape = "BGPAuthKey", 
                type = "string", locationName = "authKey"), AddressFamily = structure(logical(0), 
                shape = "AddressFamily", type = "string", locationName = "addressFamily"), 
            AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
                type = "string", locationName = "amazonAddress"), 
            CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
                type = "string", locationName = "customerAddress"), 
            BgpPeerState = structure(logical(0), shape = "BGPPeerState", 
                type = "string", locationName = "bgpPeerState"), 
            BgpStatus = structure(logical(0), shape = "BGPStatus", 
                type = "string", locationName = "bgpStatus"), 
            AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
                type = "string", locationName = "awsDeviceV2")), 
            shape = "BGPPeer", type = "structure")), shape = "BGPPeerList", 
            type = "list", locationName = "bgpPeers"), Region = structure(logical(0), 
            shape = "Region", type = "string", locationName = "region"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "VirtualInterface", type = "structure")
    return(populate(args, shape))
}

allocate_public_virtual_interface_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionId = structure(logical(0), 
        shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        OwnerAccount = structure(logical(0), shape = "OwnerAccount", 
            type = "string", locationName = "ownerAccount"), 
        NewPublicVirtualInterfaceAllocation = structure(list(VirtualInterfaceName = structure(logical(0), 
            shape = "VirtualInterfaceName", type = "string", 
            locationName = "virtualInterfaceName"), Vlan = structure(logical(0), 
            shape = "VLAN", type = "integer", locationName = "vlan"), 
            Asn = structure(logical(0), shape = "ASN", type = "integer", 
                locationName = "asn"), AuthKey = structure(logical(0), 
                shape = "BGPAuthKey", type = "string", locationName = "authKey"), 
            AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
                type = "string", locationName = "amazonAddress"), 
            CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
                type = "string", locationName = "customerAddress"), 
            AddressFamily = structure(logical(0), shape = "AddressFamily", 
                type = "string", locationName = "addressFamily"), 
            RouteFilterPrefixes = structure(list(structure(list(Cidr = structure(logical(0), 
                shape = "CIDR", type = "string", locationName = "cidr")), 
                shape = "RouteFilterPrefix", type = "structure")), 
                shape = "RouteFilterPrefixList", type = "list", 
                locationName = "routeFilterPrefixes")), shape = "NewPublicVirtualInterfaceAllocation", 
            type = "structure", locationName = "newPublicVirtualInterfaceAllocation")), 
        shape = "AllocatePublicVirtualInterfaceRequest", type = "structure")
    return(populate(args, shape))
}

allocate_public_virtual_interface_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        VirtualInterfaceId = structure(logical(0), shape = "VirtualInterfaceId", 
            type = "string", locationName = "virtualInterfaceId"), 
        Location = structure(logical(0), shape = "LocationCode", 
            type = "string", locationName = "location"), ConnectionId = structure(logical(0), 
            shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        VirtualInterfaceType = structure(logical(0), shape = "VirtualInterfaceType", 
            type = "string", locationName = "virtualInterfaceType"), 
        VirtualInterfaceName = structure(logical(0), shape = "VirtualInterfaceName", 
            type = "string", locationName = "virtualInterfaceName"), 
        Vlan = structure(logical(0), shape = "VLAN", type = "integer", 
            locationName = "vlan"), Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
        AmazonSideAsn = structure(logical(0), shape = "LongAsn", 
            type = "long", locationName = "amazonSideAsn"), AuthKey = structure(logical(0), 
            shape = "BGPAuthKey", type = "string", locationName = "authKey"), 
        AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
            type = "string", locationName = "amazonAddress"), 
        CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
            type = "string", locationName = "customerAddress"), 
        AddressFamily = structure(logical(0), shape = "AddressFamily", 
            type = "string", locationName = "addressFamily"), 
        VirtualInterfaceState = structure(logical(0), shape = "VirtualInterfaceState", 
            type = "string", locationName = "virtualInterfaceState"), 
        CustomerRouterConfig = structure(logical(0), shape = "RouterConfig", 
            type = "string", locationName = "customerRouterConfig"), 
        Mtu = structure(logical(0), shape = "MTU", type = "integer", 
            locationName = "mtu"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
            type = "string", locationName = "virtualGatewayId"), 
        DirectConnectGatewayId = structure(logical(0), shape = "DirectConnectGatewayId", 
            type = "string", locationName = "directConnectGatewayId"), 
        RouteFilterPrefixes = structure(list(structure(list(Cidr = structure(logical(0), 
            shape = "CIDR", type = "string", locationName = "cidr")), 
            shape = "RouteFilterPrefix", type = "structure")), 
            shape = "RouteFilterPrefixList", type = "list", locationName = "routeFilterPrefixes"), 
        BgpPeers = structure(list(structure(list(Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
            AuthKey = structure(logical(0), shape = "BGPAuthKey", 
                type = "string", locationName = "authKey"), AddressFamily = structure(logical(0), 
                shape = "AddressFamily", type = "string", locationName = "addressFamily"), 
            AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
                type = "string", locationName = "amazonAddress"), 
            CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
                type = "string", locationName = "customerAddress"), 
            BgpPeerState = structure(logical(0), shape = "BGPPeerState", 
                type = "string", locationName = "bgpPeerState"), 
            BgpStatus = structure(logical(0), shape = "BGPStatus", 
                type = "string", locationName = "bgpStatus"), 
            AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
                type = "string", locationName = "awsDeviceV2")), 
            shape = "BGPPeer", type = "structure")), shape = "BGPPeerList", 
            type = "list", locationName = "bgpPeers"), Region = structure(logical(0), 
            shape = "Region", type = "string", locationName = "region"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "VirtualInterface", type = "structure")
    return(populate(args, shape))
}

associate_connection_with_lag_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionId = structure(logical(0), 
        shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId")), shape = "AssociateConnectionWithLagRequest", 
        type = "structure")
    return(populate(args, shape))
}

associate_connection_with_lag_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        ConnectionId = structure(logical(0), shape = "ConnectionId", 
            type = "string", locationName = "connectionId"), 
        ConnectionName = structure(logical(0), shape = "ConnectionName", 
            type = "string", locationName = "connectionName"), 
        ConnectionState = structure(logical(0), shape = "ConnectionState", 
            type = "string", locationName = "connectionState"), 
        Region = structure(logical(0), shape = "Region", type = "string", 
            locationName = "region"), Location = structure(logical(0), 
            shape = "LocationCode", type = "string", locationName = "location"), 
        Bandwidth = structure(logical(0), shape = "Bandwidth", 
            type = "string", locationName = "bandwidth"), Vlan = structure(logical(0), 
            shape = "VLAN", type = "integer", locationName = "vlan"), 
        PartnerName = structure(logical(0), shape = "PartnerName", 
            type = "string", locationName = "partnerName"), LoaIssueTime = structure(logical(0), 
            shape = "LoaIssueTime", type = "timestamp", locationName = "loaIssueTime"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId"), AwsDevice = structure(logical(0), 
            shape = "AwsDevice", type = "string", deprecated = TRUE, 
            locationName = "awsDevice"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "Connection", type = "structure")
    return(populate(args, shape))
}

associate_hosted_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionId = structure(logical(0), 
        shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        ParentConnectionId = structure(logical(0), shape = "ConnectionId", 
            type = "string", locationName = "parentConnectionId")), 
        shape = "AssociateHostedConnectionRequest", type = "structure")
    return(populate(args, shape))
}

associate_hosted_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        ConnectionId = structure(logical(0), shape = "ConnectionId", 
            type = "string", locationName = "connectionId"), 
        ConnectionName = structure(logical(0), shape = "ConnectionName", 
            type = "string", locationName = "connectionName"), 
        ConnectionState = structure(logical(0), shape = "ConnectionState", 
            type = "string", locationName = "connectionState"), 
        Region = structure(logical(0), shape = "Region", type = "string", 
            locationName = "region"), Location = structure(logical(0), 
            shape = "LocationCode", type = "string", locationName = "location"), 
        Bandwidth = structure(logical(0), shape = "Bandwidth", 
            type = "string", locationName = "bandwidth"), Vlan = structure(logical(0), 
            shape = "VLAN", type = "integer", locationName = "vlan"), 
        PartnerName = structure(logical(0), shape = "PartnerName", 
            type = "string", locationName = "partnerName"), LoaIssueTime = structure(logical(0), 
            shape = "LoaIssueTime", type = "timestamp", locationName = "loaIssueTime"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId"), AwsDevice = structure(logical(0), 
            shape = "AwsDevice", type = "string", deprecated = TRUE, 
            locationName = "awsDevice"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "Connection", type = "structure")
    return(populate(args, shape))
}

associate_virtual_interface_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VirtualInterfaceId = structure(logical(0), 
        shape = "VirtualInterfaceId", type = "string", locationName = "virtualInterfaceId"), 
        ConnectionId = structure(logical(0), shape = "ConnectionId", 
            type = "string", locationName = "connectionId")), 
        shape = "AssociateVirtualInterfaceRequest", type = "structure")
    return(populate(args, shape))
}

associate_virtual_interface_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        VirtualInterfaceId = structure(logical(0), shape = "VirtualInterfaceId", 
            type = "string", locationName = "virtualInterfaceId"), 
        Location = structure(logical(0), shape = "LocationCode", 
            type = "string", locationName = "location"), ConnectionId = structure(logical(0), 
            shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        VirtualInterfaceType = structure(logical(0), shape = "VirtualInterfaceType", 
            type = "string", locationName = "virtualInterfaceType"), 
        VirtualInterfaceName = structure(logical(0), shape = "VirtualInterfaceName", 
            type = "string", locationName = "virtualInterfaceName"), 
        Vlan = structure(logical(0), shape = "VLAN", type = "integer", 
            locationName = "vlan"), Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
        AmazonSideAsn = structure(logical(0), shape = "LongAsn", 
            type = "long", locationName = "amazonSideAsn"), AuthKey = structure(logical(0), 
            shape = "BGPAuthKey", type = "string", locationName = "authKey"), 
        AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
            type = "string", locationName = "amazonAddress"), 
        CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
            type = "string", locationName = "customerAddress"), 
        AddressFamily = structure(logical(0), shape = "AddressFamily", 
            type = "string", locationName = "addressFamily"), 
        VirtualInterfaceState = structure(logical(0), shape = "VirtualInterfaceState", 
            type = "string", locationName = "virtualInterfaceState"), 
        CustomerRouterConfig = structure(logical(0), shape = "RouterConfig", 
            type = "string", locationName = "customerRouterConfig"), 
        Mtu = structure(logical(0), shape = "MTU", type = "integer", 
            locationName = "mtu"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
            type = "string", locationName = "virtualGatewayId"), 
        DirectConnectGatewayId = structure(logical(0), shape = "DirectConnectGatewayId", 
            type = "string", locationName = "directConnectGatewayId"), 
        RouteFilterPrefixes = structure(list(structure(list(Cidr = structure(logical(0), 
            shape = "CIDR", type = "string", locationName = "cidr")), 
            shape = "RouteFilterPrefix", type = "structure")), 
            shape = "RouteFilterPrefixList", type = "list", locationName = "routeFilterPrefixes"), 
        BgpPeers = structure(list(structure(list(Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
            AuthKey = structure(logical(0), shape = "BGPAuthKey", 
                type = "string", locationName = "authKey"), AddressFamily = structure(logical(0), 
                shape = "AddressFamily", type = "string", locationName = "addressFamily"), 
            AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
                type = "string", locationName = "amazonAddress"), 
            CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
                type = "string", locationName = "customerAddress"), 
            BgpPeerState = structure(logical(0), shape = "BGPPeerState", 
                type = "string", locationName = "bgpPeerState"), 
            BgpStatus = structure(logical(0), shape = "BGPStatus", 
                type = "string", locationName = "bgpStatus"), 
            AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
                type = "string", locationName = "awsDeviceV2")), 
            shape = "BGPPeer", type = "structure")), shape = "BGPPeerList", 
            type = "list", locationName = "bgpPeers"), Region = structure(logical(0), 
            shape = "Region", type = "string", locationName = "region"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "VirtualInterface", type = "structure")
    return(populate(args, shape))
}

confirm_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionId = structure(logical(0), 
        shape = "ConnectionId", type = "string", locationName = "connectionId")), 
        shape = "ConfirmConnectionRequest", type = "structure")
    return(populate(args, shape))
}

confirm_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionState = structure(logical(0), 
        shape = "ConnectionState", type = "string", locationName = "connectionState")), 
        shape = "ConfirmConnectionResponse", type = "structure")
    return(populate(args, shape))
}

confirm_private_virtual_interface_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VirtualInterfaceId = structure(logical(0), 
        shape = "VirtualInterfaceId", type = "string", locationName = "virtualInterfaceId"), 
        VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
            type = "string", locationName = "virtualGatewayId"), 
        DirectConnectGatewayId = structure(logical(0), shape = "DirectConnectGatewayId", 
            type = "string", locationName = "directConnectGatewayId")), 
        shape = "ConfirmPrivateVirtualInterfaceRequest", type = "structure")
    return(populate(args, shape))
}

confirm_private_virtual_interface_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VirtualInterfaceState = structure(logical(0), 
        shape = "VirtualInterfaceState", type = "string", locationName = "virtualInterfaceState")), 
        shape = "ConfirmPrivateVirtualInterfaceResponse", type = "structure")
    return(populate(args, shape))
}

confirm_public_virtual_interface_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VirtualInterfaceId = structure(logical(0), 
        shape = "VirtualInterfaceId", type = "string", locationName = "virtualInterfaceId")), 
        shape = "ConfirmPublicVirtualInterfaceRequest", type = "structure")
    return(populate(args, shape))
}

confirm_public_virtual_interface_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VirtualInterfaceState = structure(logical(0), 
        shape = "VirtualInterfaceState", type = "string", locationName = "virtualInterfaceState")), 
        shape = "ConfirmPublicVirtualInterfaceResponse", type = "structure")
    return(populate(args, shape))
}

create_bgp_peer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VirtualInterfaceId = structure(logical(0), 
        shape = "VirtualInterfaceId", type = "string", locationName = "virtualInterfaceId"), 
        NewBGPPeer = structure(list(Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
            AuthKey = structure(logical(0), shape = "BGPAuthKey", 
                type = "string", locationName = "authKey"), AddressFamily = structure(logical(0), 
                shape = "AddressFamily", type = "string", locationName = "addressFamily"), 
            AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
                type = "string", locationName = "amazonAddress"), 
            CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
                type = "string", locationName = "customerAddress")), 
            shape = "NewBGPPeer", type = "structure", locationName = "newBGPPeer")), 
        shape = "CreateBGPPeerRequest", type = "structure")
    return(populate(args, shape))
}

create_bgp_peer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VirtualInterface = structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        VirtualInterfaceId = structure(logical(0), shape = "VirtualInterfaceId", 
            type = "string", locationName = "virtualInterfaceId"), 
        Location = structure(logical(0), shape = "LocationCode", 
            type = "string", locationName = "location"), ConnectionId = structure(logical(0), 
            shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        VirtualInterfaceType = structure(logical(0), shape = "VirtualInterfaceType", 
            type = "string", locationName = "virtualInterfaceType"), 
        VirtualInterfaceName = structure(logical(0), shape = "VirtualInterfaceName", 
            type = "string", locationName = "virtualInterfaceName"), 
        Vlan = structure(logical(0), shape = "VLAN", type = "integer", 
            locationName = "vlan"), Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
        AmazonSideAsn = structure(logical(0), shape = "LongAsn", 
            type = "long", locationName = "amazonSideAsn"), AuthKey = structure(logical(0), 
            shape = "BGPAuthKey", type = "string", locationName = "authKey"), 
        AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
            type = "string", locationName = "amazonAddress"), 
        CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
            type = "string", locationName = "customerAddress"), 
        AddressFamily = structure(logical(0), shape = "AddressFamily", 
            type = "string", locationName = "addressFamily"), 
        VirtualInterfaceState = structure(logical(0), shape = "VirtualInterfaceState", 
            type = "string", locationName = "virtualInterfaceState"), 
        CustomerRouterConfig = structure(logical(0), shape = "RouterConfig", 
            type = "string", locationName = "customerRouterConfig"), 
        Mtu = structure(logical(0), shape = "MTU", type = "integer", 
            locationName = "mtu"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
            type = "string", locationName = "virtualGatewayId"), 
        DirectConnectGatewayId = structure(logical(0), shape = "DirectConnectGatewayId", 
            type = "string", locationName = "directConnectGatewayId"), 
        RouteFilterPrefixes = structure(list(structure(list(Cidr = structure(logical(0), 
            shape = "CIDR", type = "string", locationName = "cidr")), 
            shape = "RouteFilterPrefix", type = "structure")), 
            shape = "RouteFilterPrefixList", type = "list", locationName = "routeFilterPrefixes"), 
        BgpPeers = structure(list(structure(list(Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
            AuthKey = structure(logical(0), shape = "BGPAuthKey", 
                type = "string", locationName = "authKey"), AddressFamily = structure(logical(0), 
                shape = "AddressFamily", type = "string", locationName = "addressFamily"), 
            AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
                type = "string", locationName = "amazonAddress"), 
            CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
                type = "string", locationName = "customerAddress"), 
            BgpPeerState = structure(logical(0), shape = "BGPPeerState", 
                type = "string", locationName = "bgpPeerState"), 
            BgpStatus = structure(logical(0), shape = "BGPStatus", 
                type = "string", locationName = "bgpStatus"), 
            AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
                type = "string", locationName = "awsDeviceV2")), 
            shape = "BGPPeer", type = "structure")), shape = "BGPPeerList", 
            type = "list", locationName = "bgpPeers"), Region = structure(logical(0), 
            shape = "Region", type = "string", locationName = "region"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "VirtualInterface", type = "structure", locationName = "virtualInterface")), 
        shape = "CreateBGPPeerResponse", type = "structure")
    return(populate(args, shape))
}

create_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Location = structure(logical(0), 
        shape = "LocationCode", type = "string", locationName = "location"), 
        Bandwidth = structure(logical(0), shape = "Bandwidth", 
            type = "string", locationName = "bandwidth"), ConnectionName = structure(logical(0), 
            shape = "ConnectionName", type = "string", locationName = "connectionName"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId")), shape = "CreateConnectionRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        ConnectionId = structure(logical(0), shape = "ConnectionId", 
            type = "string", locationName = "connectionId"), 
        ConnectionName = structure(logical(0), shape = "ConnectionName", 
            type = "string", locationName = "connectionName"), 
        ConnectionState = structure(logical(0), shape = "ConnectionState", 
            type = "string", locationName = "connectionState"), 
        Region = structure(logical(0), shape = "Region", type = "string", 
            locationName = "region"), Location = structure(logical(0), 
            shape = "LocationCode", type = "string", locationName = "location"), 
        Bandwidth = structure(logical(0), shape = "Bandwidth", 
            type = "string", locationName = "bandwidth"), Vlan = structure(logical(0), 
            shape = "VLAN", type = "integer", locationName = "vlan"), 
        PartnerName = structure(logical(0), shape = "PartnerName", 
            type = "string", locationName = "partnerName"), LoaIssueTime = structure(logical(0), 
            shape = "LoaIssueTime", type = "timestamp", locationName = "loaIssueTime"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId"), AwsDevice = structure(logical(0), 
            shape = "AwsDevice", type = "string", deprecated = TRUE, 
            locationName = "awsDevice"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "Connection", type = "structure")
    return(populate(args, shape))
}

create_direct_connect_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectConnectGatewayName = structure(logical(0), 
        shape = "DirectConnectGatewayName", type = "string", 
        locationName = "directConnectGatewayName"), AmazonSideAsn = structure(logical(0), 
        shape = "LongAsn", type = "long", locationName = "amazonSideAsn")), 
        shape = "CreateDirectConnectGatewayRequest", type = "structure")
    return(populate(args, shape))
}

create_direct_connect_gateway_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectConnectGateway = structure(list(DirectConnectGatewayId = structure(logical(0), 
        shape = "DirectConnectGatewayId", type = "string", locationName = "directConnectGatewayId"), 
        DirectConnectGatewayName = structure(logical(0), shape = "DirectConnectGatewayName", 
            type = "string", locationName = "directConnectGatewayName"), 
        AmazonSideAsn = structure(logical(0), shape = "LongAsn", 
            type = "long", locationName = "amazonSideAsn"), OwnerAccount = structure(logical(0), 
            shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        DirectConnectGatewayState = structure(logical(0), shape = "DirectConnectGatewayState", 
            type = "string", locationName = "directConnectGatewayState"), 
        StateChangeError = structure(logical(0), shape = "StateChangeError", 
            type = "string", locationName = "stateChangeError")), 
        shape = "DirectConnectGateway", type = "structure", locationName = "directConnectGateway")), 
        shape = "CreateDirectConnectGatewayResult", type = "structure")
    return(populate(args, shape))
}

create_direct_connect_gateway_association_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectConnectGatewayId = structure(logical(0), 
        shape = "DirectConnectGatewayId", type = "string", locationName = "directConnectGatewayId"), 
        VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
            type = "string", locationName = "virtualGatewayId")), 
        shape = "CreateDirectConnectGatewayAssociationRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_direct_connect_gateway_association_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectConnectGatewayAssociation = structure(list(DirectConnectGatewayId = structure(logical(0), 
        shape = "DirectConnectGatewayId", type = "string", locationName = "directConnectGatewayId"), 
        VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
            type = "string", locationName = "virtualGatewayId"), 
        VirtualGatewayRegion = structure(logical(0), shape = "VirtualGatewayRegion", 
            type = "string", locationName = "virtualGatewayRegion"), 
        VirtualGatewayOwnerAccount = structure(logical(0), shape = "OwnerAccount", 
            type = "string", locationName = "virtualGatewayOwnerAccount"), 
        AssociationState = structure(logical(0), shape = "DirectConnectGatewayAssociationState", 
            type = "string", locationName = "associationState"), 
        StateChangeError = structure(logical(0), shape = "StateChangeError", 
            type = "string", locationName = "stateChangeError")), 
        shape = "DirectConnectGatewayAssociation", type = "structure", 
        locationName = "directConnectGatewayAssociation")), shape = "CreateDirectConnectGatewayAssociationResult", 
        type = "structure")
    return(populate(args, shape))
}

create_interconnect_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InterconnectName = structure(logical(0), 
        shape = "InterconnectName", type = "string", locationName = "interconnectName"), 
        Bandwidth = structure(logical(0), shape = "Bandwidth", 
            type = "string", locationName = "bandwidth"), Location = structure(logical(0), 
            shape = "LocationCode", type = "string", locationName = "location"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId")), shape = "CreateInterconnectRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_interconnect_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InterconnectId = structure(logical(0), 
        shape = "InterconnectId", type = "string", locationName = "interconnectId"), 
        InterconnectName = structure(logical(0), shape = "InterconnectName", 
            type = "string", locationName = "interconnectName"), 
        InterconnectState = structure(logical(0), shape = "InterconnectState", 
            type = "string", locationName = "interconnectState"), 
        Region = structure(logical(0), shape = "Region", type = "string", 
            locationName = "region"), Location = structure(logical(0), 
            shape = "LocationCode", type = "string", locationName = "location"), 
        Bandwidth = structure(logical(0), shape = "Bandwidth", 
            type = "string", locationName = "bandwidth"), LoaIssueTime = structure(logical(0), 
            shape = "LoaIssueTime", type = "timestamp", locationName = "loaIssueTime"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId"), AwsDevice = structure(logical(0), 
            shape = "AwsDevice", type = "string", deprecated = TRUE, 
            locationName = "awsDevice"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "Interconnect", type = "structure")
    return(populate(args, shape))
}

create_lag_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(NumberOfConnections = structure(logical(0), 
        shape = "Count", type = "integer", locationName = "numberOfConnections"), 
        Location = structure(logical(0), shape = "LocationCode", 
            type = "string", locationName = "location"), ConnectionsBandwidth = structure(logical(0), 
            shape = "Bandwidth", type = "string", locationName = "connectionsBandwidth"), 
        LagName = structure(logical(0), shape = "LagName", type = "string", 
            locationName = "lagName"), ConnectionId = structure(logical(0), 
            shape = "ConnectionId", type = "string", locationName = "connectionId")), 
        shape = "CreateLagRequest", type = "structure")
    return(populate(args, shape))
}

create_lag_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionsBandwidth = structure(logical(0), 
        shape = "Bandwidth", type = "string", locationName = "connectionsBandwidth"), 
        NumberOfConnections = structure(logical(0), shape = "Count", 
            type = "integer", locationName = "numberOfConnections"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId"), OwnerAccount = structure(logical(0), 
            shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        LagName = structure(logical(0), shape = "LagName", type = "string", 
            locationName = "lagName"), LagState = structure(logical(0), 
            shape = "LagState", type = "string", locationName = "lagState"), 
        Location = structure(logical(0), shape = "LocationCode", 
            type = "string", locationName = "location"), Region = structure(logical(0), 
            shape = "Region", type = "string", locationName = "region"), 
        MinimumLinks = structure(logical(0), shape = "Count", 
            type = "integer", locationName = "minimumLinks"), 
        AwsDevice = structure(logical(0), shape = "AwsDevice", 
            type = "string", deprecated = TRUE, locationName = "awsDevice"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2"), Connections = structure(list(structure(list(OwnerAccount = structure(logical(0), 
            shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
            ConnectionId = structure(logical(0), shape = "ConnectionId", 
                type = "string", locationName = "connectionId"), 
            ConnectionName = structure(logical(0), shape = "ConnectionName", 
                type = "string", locationName = "connectionName"), 
            ConnectionState = structure(logical(0), shape = "ConnectionState", 
                type = "string", locationName = "connectionState"), 
            Region = structure(logical(0), shape = "Region", 
                type = "string", locationName = "region"), Location = structure(logical(0), 
                shape = "LocationCode", type = "string", locationName = "location"), 
            Bandwidth = structure(logical(0), shape = "Bandwidth", 
                type = "string", locationName = "bandwidth"), 
            Vlan = structure(logical(0), shape = "VLAN", type = "integer", 
                locationName = "vlan"), PartnerName = structure(logical(0), 
                shape = "PartnerName", type = "string", locationName = "partnerName"), 
            LoaIssueTime = structure(logical(0), shape = "LoaIssueTime", 
                type = "timestamp", locationName = "loaIssueTime"), 
            LagId = structure(logical(0), shape = "LagId", type = "string", 
                locationName = "lagId"), AwsDevice = structure(logical(0), 
                shape = "AwsDevice", type = "string", deprecated = TRUE, 
                locationName = "awsDevice"), JumboFrameCapable = structure(logical(0), 
                shape = "JumboFrameCapable", type = "boolean", 
                locationName = "jumboFrameCapable"), AwsDeviceV2 = structure(logical(0), 
                shape = "AwsDeviceV2", type = "string", locationName = "awsDeviceV2")), 
            shape = "Connection", type = "structure")), shape = "ConnectionList", 
            type = "list", locationName = "connections"), AllowsHostedConnections = structure(logical(0), 
            shape = "BooleanFlag", type = "boolean", locationName = "allowsHostedConnections"), 
        JumboFrameCapable = structure(logical(0), shape = "JumboFrameCapable", 
            type = "boolean", locationName = "jumboFrameCapable")), 
        shape = "Lag", type = "structure")
    return(populate(args, shape))
}

create_private_virtual_interface_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionId = structure(logical(0), 
        shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        NewPrivateVirtualInterface = structure(list(VirtualInterfaceName = structure(logical(0), 
            shape = "VirtualInterfaceName", type = "string", 
            locationName = "virtualInterfaceName"), Vlan = structure(logical(0), 
            shape = "VLAN", type = "integer", locationName = "vlan"), 
            Asn = structure(logical(0), shape = "ASN", type = "integer", 
                locationName = "asn"), Mtu = structure(logical(0), 
                shape = "MTU", type = "integer", locationName = "mtu"), 
            AuthKey = structure(logical(0), shape = "BGPAuthKey", 
                type = "string", locationName = "authKey"), AmazonAddress = structure(logical(0), 
                shape = "AmazonAddress", type = "string", locationName = "amazonAddress"), 
            CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
                type = "string", locationName = "customerAddress"), 
            AddressFamily = structure(logical(0), shape = "AddressFamily", 
                type = "string", locationName = "addressFamily"), 
            VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
                type = "string", locationName = "virtualGatewayId"), 
            DirectConnectGatewayId = structure(logical(0), shape = "DirectConnectGatewayId", 
                type = "string", locationName = "directConnectGatewayId")), 
            shape = "NewPrivateVirtualInterface", type = "structure", 
            locationName = "newPrivateVirtualInterface")), shape = "CreatePrivateVirtualInterfaceRequest", 
        type = "structure")
    return(populate(args, shape))
}

create_private_virtual_interface_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        VirtualInterfaceId = structure(logical(0), shape = "VirtualInterfaceId", 
            type = "string", locationName = "virtualInterfaceId"), 
        Location = structure(logical(0), shape = "LocationCode", 
            type = "string", locationName = "location"), ConnectionId = structure(logical(0), 
            shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        VirtualInterfaceType = structure(logical(0), shape = "VirtualInterfaceType", 
            type = "string", locationName = "virtualInterfaceType"), 
        VirtualInterfaceName = structure(logical(0), shape = "VirtualInterfaceName", 
            type = "string", locationName = "virtualInterfaceName"), 
        Vlan = structure(logical(0), shape = "VLAN", type = "integer", 
            locationName = "vlan"), Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
        AmazonSideAsn = structure(logical(0), shape = "LongAsn", 
            type = "long", locationName = "amazonSideAsn"), AuthKey = structure(logical(0), 
            shape = "BGPAuthKey", type = "string", locationName = "authKey"), 
        AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
            type = "string", locationName = "amazonAddress"), 
        CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
            type = "string", locationName = "customerAddress"), 
        AddressFamily = structure(logical(0), shape = "AddressFamily", 
            type = "string", locationName = "addressFamily"), 
        VirtualInterfaceState = structure(logical(0), shape = "VirtualInterfaceState", 
            type = "string", locationName = "virtualInterfaceState"), 
        CustomerRouterConfig = structure(logical(0), shape = "RouterConfig", 
            type = "string", locationName = "customerRouterConfig"), 
        Mtu = structure(logical(0), shape = "MTU", type = "integer", 
            locationName = "mtu"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
            type = "string", locationName = "virtualGatewayId"), 
        DirectConnectGatewayId = structure(logical(0), shape = "DirectConnectGatewayId", 
            type = "string", locationName = "directConnectGatewayId"), 
        RouteFilterPrefixes = structure(list(structure(list(Cidr = structure(logical(0), 
            shape = "CIDR", type = "string", locationName = "cidr")), 
            shape = "RouteFilterPrefix", type = "structure")), 
            shape = "RouteFilterPrefixList", type = "list", locationName = "routeFilterPrefixes"), 
        BgpPeers = structure(list(structure(list(Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
            AuthKey = structure(logical(0), shape = "BGPAuthKey", 
                type = "string", locationName = "authKey"), AddressFamily = structure(logical(0), 
                shape = "AddressFamily", type = "string", locationName = "addressFamily"), 
            AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
                type = "string", locationName = "amazonAddress"), 
            CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
                type = "string", locationName = "customerAddress"), 
            BgpPeerState = structure(logical(0), shape = "BGPPeerState", 
                type = "string", locationName = "bgpPeerState"), 
            BgpStatus = structure(logical(0), shape = "BGPStatus", 
                type = "string", locationName = "bgpStatus"), 
            AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
                type = "string", locationName = "awsDeviceV2")), 
            shape = "BGPPeer", type = "structure")), shape = "BGPPeerList", 
            type = "list", locationName = "bgpPeers"), Region = structure(logical(0), 
            shape = "Region", type = "string", locationName = "region"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "VirtualInterface", type = "structure")
    return(populate(args, shape))
}

create_public_virtual_interface_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionId = structure(logical(0), 
        shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        NewPublicVirtualInterface = structure(list(VirtualInterfaceName = structure(logical(0), 
            shape = "VirtualInterfaceName", type = "string", 
            locationName = "virtualInterfaceName"), Vlan = structure(logical(0), 
            shape = "VLAN", type = "integer", locationName = "vlan"), 
            Asn = structure(logical(0), shape = "ASN", type = "integer", 
                locationName = "asn"), AuthKey = structure(logical(0), 
                shape = "BGPAuthKey", type = "string", locationName = "authKey"), 
            AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
                type = "string", locationName = "amazonAddress"), 
            CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
                type = "string", locationName = "customerAddress"), 
            AddressFamily = structure(logical(0), shape = "AddressFamily", 
                type = "string", locationName = "addressFamily"), 
            RouteFilterPrefixes = structure(list(structure(list(Cidr = structure(logical(0), 
                shape = "CIDR", type = "string", locationName = "cidr")), 
                shape = "RouteFilterPrefix", type = "structure")), 
                shape = "RouteFilterPrefixList", type = "list", 
                locationName = "routeFilterPrefixes")), shape = "NewPublicVirtualInterface", 
            type = "structure", locationName = "newPublicVirtualInterface")), 
        shape = "CreatePublicVirtualInterfaceRequest", type = "structure")
    return(populate(args, shape))
}

create_public_virtual_interface_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        VirtualInterfaceId = structure(logical(0), shape = "VirtualInterfaceId", 
            type = "string", locationName = "virtualInterfaceId"), 
        Location = structure(logical(0), shape = "LocationCode", 
            type = "string", locationName = "location"), ConnectionId = structure(logical(0), 
            shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        VirtualInterfaceType = structure(logical(0), shape = "VirtualInterfaceType", 
            type = "string", locationName = "virtualInterfaceType"), 
        VirtualInterfaceName = structure(logical(0), shape = "VirtualInterfaceName", 
            type = "string", locationName = "virtualInterfaceName"), 
        Vlan = structure(logical(0), shape = "VLAN", type = "integer", 
            locationName = "vlan"), Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
        AmazonSideAsn = structure(logical(0), shape = "LongAsn", 
            type = "long", locationName = "amazonSideAsn"), AuthKey = structure(logical(0), 
            shape = "BGPAuthKey", type = "string", locationName = "authKey"), 
        AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
            type = "string", locationName = "amazonAddress"), 
        CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
            type = "string", locationName = "customerAddress"), 
        AddressFamily = structure(logical(0), shape = "AddressFamily", 
            type = "string", locationName = "addressFamily"), 
        VirtualInterfaceState = structure(logical(0), shape = "VirtualInterfaceState", 
            type = "string", locationName = "virtualInterfaceState"), 
        CustomerRouterConfig = structure(logical(0), shape = "RouterConfig", 
            type = "string", locationName = "customerRouterConfig"), 
        Mtu = structure(logical(0), shape = "MTU", type = "integer", 
            locationName = "mtu"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
            type = "string", locationName = "virtualGatewayId"), 
        DirectConnectGatewayId = structure(logical(0), shape = "DirectConnectGatewayId", 
            type = "string", locationName = "directConnectGatewayId"), 
        RouteFilterPrefixes = structure(list(structure(list(Cidr = structure(logical(0), 
            shape = "CIDR", type = "string", locationName = "cidr")), 
            shape = "RouteFilterPrefix", type = "structure")), 
            shape = "RouteFilterPrefixList", type = "list", locationName = "routeFilterPrefixes"), 
        BgpPeers = structure(list(structure(list(Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
            AuthKey = structure(logical(0), shape = "BGPAuthKey", 
                type = "string", locationName = "authKey"), AddressFamily = structure(logical(0), 
                shape = "AddressFamily", type = "string", locationName = "addressFamily"), 
            AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
                type = "string", locationName = "amazonAddress"), 
            CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
                type = "string", locationName = "customerAddress"), 
            BgpPeerState = structure(logical(0), shape = "BGPPeerState", 
                type = "string", locationName = "bgpPeerState"), 
            BgpStatus = structure(logical(0), shape = "BGPStatus", 
                type = "string", locationName = "bgpStatus"), 
            AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
                type = "string", locationName = "awsDeviceV2")), 
            shape = "BGPPeer", type = "structure")), shape = "BGPPeerList", 
            type = "list", locationName = "bgpPeers"), Region = structure(logical(0), 
            shape = "Region", type = "string", locationName = "region"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "VirtualInterface", type = "structure")
    return(populate(args, shape))
}

delete_bgp_peer_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VirtualInterfaceId = structure(logical(0), 
        shape = "VirtualInterfaceId", type = "string", locationName = "virtualInterfaceId"), 
        Asn = structure(logical(0), shape = "ASN", type = "integer", 
            locationName = "asn"), CustomerAddress = structure(logical(0), 
            shape = "CustomerAddress", type = "string", locationName = "customerAddress")), 
        shape = "DeleteBGPPeerRequest", type = "structure")
    return(populate(args, shape))
}

delete_bgp_peer_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VirtualInterface = structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        VirtualInterfaceId = structure(logical(0), shape = "VirtualInterfaceId", 
            type = "string", locationName = "virtualInterfaceId"), 
        Location = structure(logical(0), shape = "LocationCode", 
            type = "string", locationName = "location"), ConnectionId = structure(logical(0), 
            shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        VirtualInterfaceType = structure(logical(0), shape = "VirtualInterfaceType", 
            type = "string", locationName = "virtualInterfaceType"), 
        VirtualInterfaceName = structure(logical(0), shape = "VirtualInterfaceName", 
            type = "string", locationName = "virtualInterfaceName"), 
        Vlan = structure(logical(0), shape = "VLAN", type = "integer", 
            locationName = "vlan"), Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
        AmazonSideAsn = structure(logical(0), shape = "LongAsn", 
            type = "long", locationName = "amazonSideAsn"), AuthKey = structure(logical(0), 
            shape = "BGPAuthKey", type = "string", locationName = "authKey"), 
        AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
            type = "string", locationName = "amazonAddress"), 
        CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
            type = "string", locationName = "customerAddress"), 
        AddressFamily = structure(logical(0), shape = "AddressFamily", 
            type = "string", locationName = "addressFamily"), 
        VirtualInterfaceState = structure(logical(0), shape = "VirtualInterfaceState", 
            type = "string", locationName = "virtualInterfaceState"), 
        CustomerRouterConfig = structure(logical(0), shape = "RouterConfig", 
            type = "string", locationName = "customerRouterConfig"), 
        Mtu = structure(logical(0), shape = "MTU", type = "integer", 
            locationName = "mtu"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
            type = "string", locationName = "virtualGatewayId"), 
        DirectConnectGatewayId = structure(logical(0), shape = "DirectConnectGatewayId", 
            type = "string", locationName = "directConnectGatewayId"), 
        RouteFilterPrefixes = structure(list(structure(list(Cidr = structure(logical(0), 
            shape = "CIDR", type = "string", locationName = "cidr")), 
            shape = "RouteFilterPrefix", type = "structure")), 
            shape = "RouteFilterPrefixList", type = "list", locationName = "routeFilterPrefixes"), 
        BgpPeers = structure(list(structure(list(Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
            AuthKey = structure(logical(0), shape = "BGPAuthKey", 
                type = "string", locationName = "authKey"), AddressFamily = structure(logical(0), 
                shape = "AddressFamily", type = "string", locationName = "addressFamily"), 
            AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
                type = "string", locationName = "amazonAddress"), 
            CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
                type = "string", locationName = "customerAddress"), 
            BgpPeerState = structure(logical(0), shape = "BGPPeerState", 
                type = "string", locationName = "bgpPeerState"), 
            BgpStatus = structure(logical(0), shape = "BGPStatus", 
                type = "string", locationName = "bgpStatus"), 
            AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
                type = "string", locationName = "awsDeviceV2")), 
            shape = "BGPPeer", type = "structure")), shape = "BGPPeerList", 
            type = "list", locationName = "bgpPeers"), Region = structure(logical(0), 
            shape = "Region", type = "string", locationName = "region"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "VirtualInterface", type = "structure", locationName = "virtualInterface")), 
        shape = "DeleteBGPPeerResponse", type = "structure")
    return(populate(args, shape))
}

delete_connection_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionId = structure(logical(0), 
        shape = "ConnectionId", type = "string", locationName = "connectionId")), 
        shape = "DeleteConnectionRequest", type = "structure")
    return(populate(args, shape))
}

delete_connection_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        ConnectionId = structure(logical(0), shape = "ConnectionId", 
            type = "string", locationName = "connectionId"), 
        ConnectionName = structure(logical(0), shape = "ConnectionName", 
            type = "string", locationName = "connectionName"), 
        ConnectionState = structure(logical(0), shape = "ConnectionState", 
            type = "string", locationName = "connectionState"), 
        Region = structure(logical(0), shape = "Region", type = "string", 
            locationName = "region"), Location = structure(logical(0), 
            shape = "LocationCode", type = "string", locationName = "location"), 
        Bandwidth = structure(logical(0), shape = "Bandwidth", 
            type = "string", locationName = "bandwidth"), Vlan = structure(logical(0), 
            shape = "VLAN", type = "integer", locationName = "vlan"), 
        PartnerName = structure(logical(0), shape = "PartnerName", 
            type = "string", locationName = "partnerName"), LoaIssueTime = structure(logical(0), 
            shape = "LoaIssueTime", type = "timestamp", locationName = "loaIssueTime"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId"), AwsDevice = structure(logical(0), 
            shape = "AwsDevice", type = "string", deprecated = TRUE, 
            locationName = "awsDevice"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "Connection", type = "structure")
    return(populate(args, shape))
}

delete_direct_connect_gateway_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectConnectGatewayId = structure(logical(0), 
        shape = "DirectConnectGatewayId", type = "string", locationName = "directConnectGatewayId")), 
        shape = "DeleteDirectConnectGatewayRequest", type = "structure")
    return(populate(args, shape))
}

delete_direct_connect_gateway_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectConnectGateway = structure(list(DirectConnectGatewayId = structure(logical(0), 
        shape = "DirectConnectGatewayId", type = "string", locationName = "directConnectGatewayId"), 
        DirectConnectGatewayName = structure(logical(0), shape = "DirectConnectGatewayName", 
            type = "string", locationName = "directConnectGatewayName"), 
        AmazonSideAsn = structure(logical(0), shape = "LongAsn", 
            type = "long", locationName = "amazonSideAsn"), OwnerAccount = structure(logical(0), 
            shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        DirectConnectGatewayState = structure(logical(0), shape = "DirectConnectGatewayState", 
            type = "string", locationName = "directConnectGatewayState"), 
        StateChangeError = structure(logical(0), shape = "StateChangeError", 
            type = "string", locationName = "stateChangeError")), 
        shape = "DirectConnectGateway", type = "structure", locationName = "directConnectGateway")), 
        shape = "DeleteDirectConnectGatewayResult", type = "structure")
    return(populate(args, shape))
}

delete_direct_connect_gateway_association_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectConnectGatewayId = structure(logical(0), 
        shape = "DirectConnectGatewayId", type = "string", locationName = "directConnectGatewayId"), 
        VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
            type = "string", locationName = "virtualGatewayId")), 
        shape = "DeleteDirectConnectGatewayAssociationRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_direct_connect_gateway_association_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectConnectGatewayAssociation = structure(list(DirectConnectGatewayId = structure(logical(0), 
        shape = "DirectConnectGatewayId", type = "string", locationName = "directConnectGatewayId"), 
        VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
            type = "string", locationName = "virtualGatewayId"), 
        VirtualGatewayRegion = structure(logical(0), shape = "VirtualGatewayRegion", 
            type = "string", locationName = "virtualGatewayRegion"), 
        VirtualGatewayOwnerAccount = structure(logical(0), shape = "OwnerAccount", 
            type = "string", locationName = "virtualGatewayOwnerAccount"), 
        AssociationState = structure(logical(0), shape = "DirectConnectGatewayAssociationState", 
            type = "string", locationName = "associationState"), 
        StateChangeError = structure(logical(0), shape = "StateChangeError", 
            type = "string", locationName = "stateChangeError")), 
        shape = "DirectConnectGatewayAssociation", type = "structure", 
        locationName = "directConnectGatewayAssociation")), shape = "DeleteDirectConnectGatewayAssociationResult", 
        type = "structure")
    return(populate(args, shape))
}

delete_interconnect_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InterconnectId = structure(logical(0), 
        shape = "InterconnectId", type = "string", locationName = "interconnectId")), 
        shape = "DeleteInterconnectRequest", type = "structure")
    return(populate(args, shape))
}

delete_interconnect_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InterconnectState = structure(logical(0), 
        shape = "InterconnectState", type = "string", locationName = "interconnectState")), 
        shape = "DeleteInterconnectResponse", type = "structure")
    return(populate(args, shape))
}

delete_lag_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LagId = structure(logical(0), shape = "LagId", 
        type = "string", locationName = "lagId")), shape = "DeleteLagRequest", 
        type = "structure")
    return(populate(args, shape))
}

delete_lag_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionsBandwidth = structure(logical(0), 
        shape = "Bandwidth", type = "string", locationName = "connectionsBandwidth"), 
        NumberOfConnections = structure(logical(0), shape = "Count", 
            type = "integer", locationName = "numberOfConnections"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId"), OwnerAccount = structure(logical(0), 
            shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        LagName = structure(logical(0), shape = "LagName", type = "string", 
            locationName = "lagName"), LagState = structure(logical(0), 
            shape = "LagState", type = "string", locationName = "lagState"), 
        Location = structure(logical(0), shape = "LocationCode", 
            type = "string", locationName = "location"), Region = structure(logical(0), 
            shape = "Region", type = "string", locationName = "region"), 
        MinimumLinks = structure(logical(0), shape = "Count", 
            type = "integer", locationName = "minimumLinks"), 
        AwsDevice = structure(logical(0), shape = "AwsDevice", 
            type = "string", deprecated = TRUE, locationName = "awsDevice"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2"), Connections = structure(list(structure(list(OwnerAccount = structure(logical(0), 
            shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
            ConnectionId = structure(logical(0), shape = "ConnectionId", 
                type = "string", locationName = "connectionId"), 
            ConnectionName = structure(logical(0), shape = "ConnectionName", 
                type = "string", locationName = "connectionName"), 
            ConnectionState = structure(logical(0), shape = "ConnectionState", 
                type = "string", locationName = "connectionState"), 
            Region = structure(logical(0), shape = "Region", 
                type = "string", locationName = "region"), Location = structure(logical(0), 
                shape = "LocationCode", type = "string", locationName = "location"), 
            Bandwidth = structure(logical(0), shape = "Bandwidth", 
                type = "string", locationName = "bandwidth"), 
            Vlan = structure(logical(0), shape = "VLAN", type = "integer", 
                locationName = "vlan"), PartnerName = structure(logical(0), 
                shape = "PartnerName", type = "string", locationName = "partnerName"), 
            LoaIssueTime = structure(logical(0), shape = "LoaIssueTime", 
                type = "timestamp", locationName = "loaIssueTime"), 
            LagId = structure(logical(0), shape = "LagId", type = "string", 
                locationName = "lagId"), AwsDevice = structure(logical(0), 
                shape = "AwsDevice", type = "string", deprecated = TRUE, 
                locationName = "awsDevice"), JumboFrameCapable = structure(logical(0), 
                shape = "JumboFrameCapable", type = "boolean", 
                locationName = "jumboFrameCapable"), AwsDeviceV2 = structure(logical(0), 
                shape = "AwsDeviceV2", type = "string", locationName = "awsDeviceV2")), 
            shape = "Connection", type = "structure")), shape = "ConnectionList", 
            type = "list", locationName = "connections"), AllowsHostedConnections = structure(logical(0), 
            shape = "BooleanFlag", type = "boolean", locationName = "allowsHostedConnections"), 
        JumboFrameCapable = structure(logical(0), shape = "JumboFrameCapable", 
            type = "boolean", locationName = "jumboFrameCapable")), 
        shape = "Lag", type = "structure")
    return(populate(args, shape))
}

delete_virtual_interface_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VirtualInterfaceId = structure(logical(0), 
        shape = "VirtualInterfaceId", type = "string", locationName = "virtualInterfaceId")), 
        shape = "DeleteVirtualInterfaceRequest", type = "structure")
    return(populate(args, shape))
}

delete_virtual_interface_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VirtualInterfaceState = structure(logical(0), 
        shape = "VirtualInterfaceState", type = "string", locationName = "virtualInterfaceState")), 
        shape = "DeleteVirtualInterfaceResponse", type = "structure")
    return(populate(args, shape))
}

describe_connection_loa_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionId = structure(logical(0), 
        shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        ProviderName = structure(logical(0), shape = "ProviderName", 
            type = "string", locationName = "providerName"), 
        LoaContentType = structure(logical(0), shape = "LoaContentType", 
            type = "string", locationName = "loaContentType")), 
        shape = "DescribeConnectionLoaRequest", type = "structure")
    return(populate(args, shape))
}

describe_connection_loa_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Loa = structure(list(LoaContent = structure(logical(0), 
        shape = "LoaContent", type = "blob", locationName = "loaContent"), 
        LoaContentType = structure(logical(0), shape = "LoaContentType", 
            type = "string", locationName = "loaContentType")), 
        shape = "Loa", type = "structure", locationName = "loa")), 
        shape = "DescribeConnectionLoaResponse", type = "structure")
    return(populate(args, shape))
}

describe_connections_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionId = structure(logical(0), 
        shape = "ConnectionId", type = "string", locationName = "connectionId")), 
        shape = "DescribeConnectionsRequest", type = "structure")
    return(populate(args, shape))
}

describe_connections_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Connections = structure(list(structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        ConnectionId = structure(logical(0), shape = "ConnectionId", 
            type = "string", locationName = "connectionId"), 
        ConnectionName = structure(logical(0), shape = "ConnectionName", 
            type = "string", locationName = "connectionName"), 
        ConnectionState = structure(logical(0), shape = "ConnectionState", 
            type = "string", locationName = "connectionState"), 
        Region = structure(logical(0), shape = "Region", type = "string", 
            locationName = "region"), Location = structure(logical(0), 
            shape = "LocationCode", type = "string", locationName = "location"), 
        Bandwidth = structure(logical(0), shape = "Bandwidth", 
            type = "string", locationName = "bandwidth"), Vlan = structure(logical(0), 
            shape = "VLAN", type = "integer", locationName = "vlan"), 
        PartnerName = structure(logical(0), shape = "PartnerName", 
            type = "string", locationName = "partnerName"), LoaIssueTime = structure(logical(0), 
            shape = "LoaIssueTime", type = "timestamp", locationName = "loaIssueTime"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId"), AwsDevice = structure(logical(0), 
            shape = "AwsDevice", type = "string", deprecated = TRUE, 
            locationName = "awsDevice"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "Connection", type = "structure")), shape = "ConnectionList", 
        type = "list", locationName = "connections")), shape = "Connections", 
        type = "structure")
    return(populate(args, shape))
}

describe_connections_on_interconnect_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InterconnectId = structure(logical(0), 
        shape = "InterconnectId", type = "string", locationName = "interconnectId")), 
        shape = "DescribeConnectionsOnInterconnectRequest", type = "structure")
    return(populate(args, shape))
}

describe_connections_on_interconnect_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Connections = structure(list(structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        ConnectionId = structure(logical(0), shape = "ConnectionId", 
            type = "string", locationName = "connectionId"), 
        ConnectionName = structure(logical(0), shape = "ConnectionName", 
            type = "string", locationName = "connectionName"), 
        ConnectionState = structure(logical(0), shape = "ConnectionState", 
            type = "string", locationName = "connectionState"), 
        Region = structure(logical(0), shape = "Region", type = "string", 
            locationName = "region"), Location = structure(logical(0), 
            shape = "LocationCode", type = "string", locationName = "location"), 
        Bandwidth = structure(logical(0), shape = "Bandwidth", 
            type = "string", locationName = "bandwidth"), Vlan = structure(logical(0), 
            shape = "VLAN", type = "integer", locationName = "vlan"), 
        PartnerName = structure(logical(0), shape = "PartnerName", 
            type = "string", locationName = "partnerName"), LoaIssueTime = structure(logical(0), 
            shape = "LoaIssueTime", type = "timestamp", locationName = "loaIssueTime"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId"), AwsDevice = structure(logical(0), 
            shape = "AwsDevice", type = "string", deprecated = TRUE, 
            locationName = "awsDevice"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "Connection", type = "structure")), shape = "ConnectionList", 
        type = "list", locationName = "connections")), shape = "Connections", 
        type = "structure")
    return(populate(args, shape))
}

describe_direct_connect_gateway_associations_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectConnectGatewayId = structure(logical(0), 
        shape = "DirectConnectGatewayId", type = "string", locationName = "directConnectGatewayId"), 
        VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
            type = "string", locationName = "virtualGatewayId"), 
        MaxResults = structure(logical(0), shape = "MaxResultSetSize", 
            type = "integer", box = TRUE, locationName = "maxResults"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", locationName = "nextToken")), shape = "DescribeDirectConnectGatewayAssociationsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_direct_connect_gateway_associations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectConnectGatewayAssociations = structure(list(structure(list(DirectConnectGatewayId = structure(logical(0), 
        shape = "DirectConnectGatewayId", type = "string", locationName = "directConnectGatewayId"), 
        VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
            type = "string", locationName = "virtualGatewayId"), 
        VirtualGatewayRegion = structure(logical(0), shape = "VirtualGatewayRegion", 
            type = "string", locationName = "virtualGatewayRegion"), 
        VirtualGatewayOwnerAccount = structure(logical(0), shape = "OwnerAccount", 
            type = "string", locationName = "virtualGatewayOwnerAccount"), 
        AssociationState = structure(logical(0), shape = "DirectConnectGatewayAssociationState", 
            type = "string", locationName = "associationState"), 
        StateChangeError = structure(logical(0), shape = "StateChangeError", 
            type = "string", locationName = "stateChangeError")), 
        shape = "DirectConnectGatewayAssociation", type = "structure")), 
        shape = "DirectConnectGatewayAssociationList", type = "list", 
        locationName = "directConnectGatewayAssociations"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", locationName = "nextToken")), 
        shape = "DescribeDirectConnectGatewayAssociationsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_direct_connect_gateway_attachments_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectConnectGatewayId = structure(logical(0), 
        shape = "DirectConnectGatewayId", type = "string", locationName = "directConnectGatewayId"), 
        VirtualInterfaceId = structure(logical(0), shape = "VirtualInterfaceId", 
            type = "string", locationName = "virtualInterfaceId"), 
        MaxResults = structure(logical(0), shape = "MaxResultSetSize", 
            type = "integer", box = TRUE, locationName = "maxResults"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", locationName = "nextToken")), shape = "DescribeDirectConnectGatewayAttachmentsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_direct_connect_gateway_attachments_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectConnectGatewayAttachments = structure(list(structure(list(DirectConnectGatewayId = structure(logical(0), 
        shape = "DirectConnectGatewayId", type = "string", locationName = "directConnectGatewayId"), 
        VirtualInterfaceId = structure(logical(0), shape = "VirtualInterfaceId", 
            type = "string", locationName = "virtualInterfaceId"), 
        VirtualInterfaceRegion = structure(logical(0), shape = "VirtualInterfaceRegion", 
            type = "string", locationName = "virtualInterfaceRegion"), 
        VirtualInterfaceOwnerAccount = structure(logical(0), 
            shape = "OwnerAccount", type = "string", locationName = "virtualInterfaceOwnerAccount"), 
        AttachmentState = structure(logical(0), shape = "DirectConnectGatewayAttachmentState", 
            type = "string", locationName = "attachmentState"), 
        StateChangeError = structure(logical(0), shape = "StateChangeError", 
            type = "string", locationName = "stateChangeError")), 
        shape = "DirectConnectGatewayAttachment", type = "structure")), 
        shape = "DirectConnectGatewayAttachmentList", type = "list", 
        locationName = "directConnectGatewayAttachments"), NextToken = structure(logical(0), 
        shape = "PaginationToken", type = "string", locationName = "nextToken")), 
        shape = "DescribeDirectConnectGatewayAttachmentsResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_direct_connect_gateways_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectConnectGatewayId = structure(logical(0), 
        shape = "DirectConnectGatewayId", type = "string", locationName = "directConnectGatewayId"), 
        MaxResults = structure(logical(0), shape = "MaxResultSetSize", 
            type = "integer", box = TRUE, locationName = "maxResults"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", locationName = "nextToken")), shape = "DescribeDirectConnectGatewaysRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_direct_connect_gateways_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(DirectConnectGateways = structure(list(structure(list(DirectConnectGatewayId = structure(logical(0), 
        shape = "DirectConnectGatewayId", type = "string", locationName = "directConnectGatewayId"), 
        DirectConnectGatewayName = structure(logical(0), shape = "DirectConnectGatewayName", 
            type = "string", locationName = "directConnectGatewayName"), 
        AmazonSideAsn = structure(logical(0), shape = "LongAsn", 
            type = "long", locationName = "amazonSideAsn"), OwnerAccount = structure(logical(0), 
            shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        DirectConnectGatewayState = structure(logical(0), shape = "DirectConnectGatewayState", 
            type = "string", locationName = "directConnectGatewayState"), 
        StateChangeError = structure(logical(0), shape = "StateChangeError", 
            type = "string", locationName = "stateChangeError")), 
        shape = "DirectConnectGateway", type = "structure")), 
        shape = "DirectConnectGatewayList", type = "list", locationName = "directConnectGateways"), 
        NextToken = structure(logical(0), shape = "PaginationToken", 
            type = "string", locationName = "nextToken")), shape = "DescribeDirectConnectGatewaysResult", 
        type = "structure")
    return(populate(args, shape))
}

describe_hosted_connections_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionId = structure(logical(0), 
        shape = "ConnectionId", type = "string", locationName = "connectionId")), 
        shape = "DescribeHostedConnectionsRequest", type = "structure")
    return(populate(args, shape))
}

describe_hosted_connections_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Connections = structure(list(structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        ConnectionId = structure(logical(0), shape = "ConnectionId", 
            type = "string", locationName = "connectionId"), 
        ConnectionName = structure(logical(0), shape = "ConnectionName", 
            type = "string", locationName = "connectionName"), 
        ConnectionState = structure(logical(0), shape = "ConnectionState", 
            type = "string", locationName = "connectionState"), 
        Region = structure(logical(0), shape = "Region", type = "string", 
            locationName = "region"), Location = structure(logical(0), 
            shape = "LocationCode", type = "string", locationName = "location"), 
        Bandwidth = structure(logical(0), shape = "Bandwidth", 
            type = "string", locationName = "bandwidth"), Vlan = structure(logical(0), 
            shape = "VLAN", type = "integer", locationName = "vlan"), 
        PartnerName = structure(logical(0), shape = "PartnerName", 
            type = "string", locationName = "partnerName"), LoaIssueTime = structure(logical(0), 
            shape = "LoaIssueTime", type = "timestamp", locationName = "loaIssueTime"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId"), AwsDevice = structure(logical(0), 
            shape = "AwsDevice", type = "string", deprecated = TRUE, 
            locationName = "awsDevice"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "Connection", type = "structure")), shape = "ConnectionList", 
        type = "list", locationName = "connections")), shape = "Connections", 
        type = "structure")
    return(populate(args, shape))
}

describe_interconnect_loa_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InterconnectId = structure(logical(0), 
        shape = "InterconnectId", type = "string", locationName = "interconnectId"), 
        ProviderName = structure(logical(0), shape = "ProviderName", 
            type = "string", locationName = "providerName"), 
        LoaContentType = structure(logical(0), shape = "LoaContentType", 
            type = "string", locationName = "loaContentType")), 
        shape = "DescribeInterconnectLoaRequest", type = "structure")
    return(populate(args, shape))
}

describe_interconnect_loa_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Loa = structure(list(LoaContent = structure(logical(0), 
        shape = "LoaContent", type = "blob", locationName = "loaContent"), 
        LoaContentType = structure(logical(0), shape = "LoaContentType", 
            type = "string", locationName = "loaContentType")), 
        shape = "Loa", type = "structure", locationName = "loa")), 
        shape = "DescribeInterconnectLoaResponse", type = "structure")
    return(populate(args, shape))
}

describe_interconnects_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(InterconnectId = structure(logical(0), 
        shape = "InterconnectId", type = "string", locationName = "interconnectId")), 
        shape = "DescribeInterconnectsRequest", type = "structure")
    return(populate(args, shape))
}

describe_interconnects_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Interconnects = structure(list(structure(list(InterconnectId = structure(logical(0), 
        shape = "InterconnectId", type = "string", locationName = "interconnectId"), 
        InterconnectName = structure(logical(0), shape = "InterconnectName", 
            type = "string", locationName = "interconnectName"), 
        InterconnectState = structure(logical(0), shape = "InterconnectState", 
            type = "string", locationName = "interconnectState"), 
        Region = structure(logical(0), shape = "Region", type = "string", 
            locationName = "region"), Location = structure(logical(0), 
            shape = "LocationCode", type = "string", locationName = "location"), 
        Bandwidth = structure(logical(0), shape = "Bandwidth", 
            type = "string", locationName = "bandwidth"), LoaIssueTime = structure(logical(0), 
            shape = "LoaIssueTime", type = "timestamp", locationName = "loaIssueTime"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId"), AwsDevice = structure(logical(0), 
            shape = "AwsDevice", type = "string", deprecated = TRUE, 
            locationName = "awsDevice"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "Interconnect", type = "structure")), shape = "InterconnectList", 
        type = "list", locationName = "interconnects")), shape = "Interconnects", 
        type = "structure")
    return(populate(args, shape))
}

describe_lags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LagId = structure(logical(0), shape = "LagId", 
        type = "string", locationName = "lagId")), shape = "DescribeLagsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_lags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Lags = structure(list(structure(list(ConnectionsBandwidth = structure(logical(0), 
        shape = "Bandwidth", type = "string", locationName = "connectionsBandwidth"), 
        NumberOfConnections = structure(logical(0), shape = "Count", 
            type = "integer", locationName = "numberOfConnections"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId"), OwnerAccount = structure(logical(0), 
            shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        LagName = structure(logical(0), shape = "LagName", type = "string", 
            locationName = "lagName"), LagState = structure(logical(0), 
            shape = "LagState", type = "string", locationName = "lagState"), 
        Location = structure(logical(0), shape = "LocationCode", 
            type = "string", locationName = "location"), Region = structure(logical(0), 
            shape = "Region", type = "string", locationName = "region"), 
        MinimumLinks = structure(logical(0), shape = "Count", 
            type = "integer", locationName = "minimumLinks"), 
        AwsDevice = structure(logical(0), shape = "AwsDevice", 
            type = "string", deprecated = TRUE, locationName = "awsDevice"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2"), Connections = structure(list(structure(list(OwnerAccount = structure(logical(0), 
            shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
            ConnectionId = structure(logical(0), shape = "ConnectionId", 
                type = "string", locationName = "connectionId"), 
            ConnectionName = structure(logical(0), shape = "ConnectionName", 
                type = "string", locationName = "connectionName"), 
            ConnectionState = structure(logical(0), shape = "ConnectionState", 
                type = "string", locationName = "connectionState"), 
            Region = structure(logical(0), shape = "Region", 
                type = "string", locationName = "region"), Location = structure(logical(0), 
                shape = "LocationCode", type = "string", locationName = "location"), 
            Bandwidth = structure(logical(0), shape = "Bandwidth", 
                type = "string", locationName = "bandwidth"), 
            Vlan = structure(logical(0), shape = "VLAN", type = "integer", 
                locationName = "vlan"), PartnerName = structure(logical(0), 
                shape = "PartnerName", type = "string", locationName = "partnerName"), 
            LoaIssueTime = structure(logical(0), shape = "LoaIssueTime", 
                type = "timestamp", locationName = "loaIssueTime"), 
            LagId = structure(logical(0), shape = "LagId", type = "string", 
                locationName = "lagId"), AwsDevice = structure(logical(0), 
                shape = "AwsDevice", type = "string", deprecated = TRUE, 
                locationName = "awsDevice"), JumboFrameCapable = structure(logical(0), 
                shape = "JumboFrameCapable", type = "boolean", 
                locationName = "jumboFrameCapable"), AwsDeviceV2 = structure(logical(0), 
                shape = "AwsDeviceV2", type = "string", locationName = "awsDeviceV2")), 
            shape = "Connection", type = "structure")), shape = "ConnectionList", 
            type = "list", locationName = "connections"), AllowsHostedConnections = structure(logical(0), 
            shape = "BooleanFlag", type = "boolean", locationName = "allowsHostedConnections"), 
        JumboFrameCapable = structure(logical(0), shape = "JumboFrameCapable", 
            type = "boolean", locationName = "jumboFrameCapable")), 
        shape = "Lag", type = "structure")), shape = "LagList", 
        type = "list", locationName = "lags")), shape = "Lags", 
        type = "structure")
    return(populate(args, shape))
}

describe_loa_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionId = structure(logical(0), 
        shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        ProviderName = structure(logical(0), shape = "ProviderName", 
            type = "string", locationName = "providerName"), 
        LoaContentType = structure(logical(0), shape = "LoaContentType", 
            type = "string", locationName = "loaContentType")), 
        shape = "DescribeLoaRequest", type = "structure")
    return(populate(args, shape))
}

describe_loa_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LoaContent = structure(logical(0), 
        shape = "LoaContent", type = "blob", locationName = "loaContent"), 
        LoaContentType = structure(logical(0), shape = "LoaContentType", 
            type = "string", locationName = "loaContentType")), 
        shape = "Loa", type = "structure")
    return(populate(args, shape))
}

describe_locations_input <- function () 
{
    return(list())
}

describe_locations_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(Locations = structure(list(structure(list(LocationCode = structure(logical(0), 
        shape = "LocationCode", type = "string", locationName = "locationCode"), 
        LocationName = structure(logical(0), shape = "LocationName", 
            type = "string", locationName = "locationName"), 
        Region = structure(logical(0), shape = "Region", type = "string", 
            locationName = "region")), shape = "Location", type = "structure")), 
        shape = "LocationList", type = "list", locationName = "locations")), 
        shape = "Locations", type = "structure")
    return(populate(args, shape))
}

describe_tags_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArns = structure(list(structure(logical(0), 
        shape = "ResourceArn", type = "string")), shape = "ResourceArnList", 
        type = "list", locationName = "resourceArns")), shape = "DescribeTagsRequest", 
        type = "structure")
    return(populate(args, shape))
}

describe_tags_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceTags = structure(list(structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", locationName = "resourceArn"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", 
            locationName = "key"), Value = structure(logical(0), 
            shape = "TagValue", type = "string", max = 256L, 
            min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", 
            locationName = "value")), shape = "Tag", type = "structure")), 
            shape = "TagList", type = "list", min = 1L, locationName = "tags")), 
        shape = "ResourceTag", type = "structure")), shape = "ResourceTagList", 
        type = "list", locationName = "resourceTags")), shape = "DescribeTagsResponse", 
        type = "structure")
    return(populate(args, shape))
}

describe_virtual_gateways_input <- function () 
{
    return(list())
}

describe_virtual_gateways_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VirtualGateways = structure(list(structure(list(VirtualGatewayId = structure(logical(0), 
        shape = "VirtualGatewayId", type = "string", locationName = "virtualGatewayId"), 
        VirtualGatewayState = structure(logical(0), shape = "VirtualGatewayState", 
            type = "string", locationName = "virtualGatewayState")), 
        shape = "VirtualGateway", type = "structure")), shape = "VirtualGatewayList", 
        type = "list", locationName = "virtualGateways")), shape = "VirtualGateways", 
        type = "structure")
    return(populate(args, shape))
}

describe_virtual_interfaces_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionId = structure(logical(0), 
        shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        VirtualInterfaceId = structure(logical(0), shape = "VirtualInterfaceId", 
            type = "string", locationName = "virtualInterfaceId")), 
        shape = "DescribeVirtualInterfacesRequest", type = "structure")
    return(populate(args, shape))
}

describe_virtual_interfaces_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VirtualInterfaces = structure(list(structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        VirtualInterfaceId = structure(logical(0), shape = "VirtualInterfaceId", 
            type = "string", locationName = "virtualInterfaceId"), 
        Location = structure(logical(0), shape = "LocationCode", 
            type = "string", locationName = "location"), ConnectionId = structure(logical(0), 
            shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        VirtualInterfaceType = structure(logical(0), shape = "VirtualInterfaceType", 
            type = "string", locationName = "virtualInterfaceType"), 
        VirtualInterfaceName = structure(logical(0), shape = "VirtualInterfaceName", 
            type = "string", locationName = "virtualInterfaceName"), 
        Vlan = structure(logical(0), shape = "VLAN", type = "integer", 
            locationName = "vlan"), Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
        AmazonSideAsn = structure(logical(0), shape = "LongAsn", 
            type = "long", locationName = "amazonSideAsn"), AuthKey = structure(logical(0), 
            shape = "BGPAuthKey", type = "string", locationName = "authKey"), 
        AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
            type = "string", locationName = "amazonAddress"), 
        CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
            type = "string", locationName = "customerAddress"), 
        AddressFamily = structure(logical(0), shape = "AddressFamily", 
            type = "string", locationName = "addressFamily"), 
        VirtualInterfaceState = structure(logical(0), shape = "VirtualInterfaceState", 
            type = "string", locationName = "virtualInterfaceState"), 
        CustomerRouterConfig = structure(logical(0), shape = "RouterConfig", 
            type = "string", locationName = "customerRouterConfig"), 
        Mtu = structure(logical(0), shape = "MTU", type = "integer", 
            locationName = "mtu"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
            type = "string", locationName = "virtualGatewayId"), 
        DirectConnectGatewayId = structure(logical(0), shape = "DirectConnectGatewayId", 
            type = "string", locationName = "directConnectGatewayId"), 
        RouteFilterPrefixes = structure(list(structure(list(Cidr = structure(logical(0), 
            shape = "CIDR", type = "string", locationName = "cidr")), 
            shape = "RouteFilterPrefix", type = "structure")), 
            shape = "RouteFilterPrefixList", type = "list", locationName = "routeFilterPrefixes"), 
        BgpPeers = structure(list(structure(list(Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
            AuthKey = structure(logical(0), shape = "BGPAuthKey", 
                type = "string", locationName = "authKey"), AddressFamily = structure(logical(0), 
                shape = "AddressFamily", type = "string", locationName = "addressFamily"), 
            AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
                type = "string", locationName = "amazonAddress"), 
            CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
                type = "string", locationName = "customerAddress"), 
            BgpPeerState = structure(logical(0), shape = "BGPPeerState", 
                type = "string", locationName = "bgpPeerState"), 
            BgpStatus = structure(logical(0), shape = "BGPStatus", 
                type = "string", locationName = "bgpStatus"), 
            AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
                type = "string", locationName = "awsDeviceV2")), 
            shape = "BGPPeer", type = "structure")), shape = "BGPPeerList", 
            type = "list", locationName = "bgpPeers"), Region = structure(logical(0), 
            shape = "Region", type = "string", locationName = "region"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "VirtualInterface", type = "structure")), shape = "VirtualInterfaceList", 
        type = "list", locationName = "virtualInterfaces")), 
        shape = "VirtualInterfaces", type = "structure")
    return(populate(args, shape))
}

disassociate_connection_from_lag_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionId = structure(logical(0), 
        shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId")), shape = "DisassociateConnectionFromLagRequest", 
        type = "structure")
    return(populate(args, shape))
}

disassociate_connection_from_lag_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        ConnectionId = structure(logical(0), shape = "ConnectionId", 
            type = "string", locationName = "connectionId"), 
        ConnectionName = structure(logical(0), shape = "ConnectionName", 
            type = "string", locationName = "connectionName"), 
        ConnectionState = structure(logical(0), shape = "ConnectionState", 
            type = "string", locationName = "connectionState"), 
        Region = structure(logical(0), shape = "Region", type = "string", 
            locationName = "region"), Location = structure(logical(0), 
            shape = "LocationCode", type = "string", locationName = "location"), 
        Bandwidth = structure(logical(0), shape = "Bandwidth", 
            type = "string", locationName = "bandwidth"), Vlan = structure(logical(0), 
            shape = "VLAN", type = "integer", locationName = "vlan"), 
        PartnerName = structure(logical(0), shape = "PartnerName", 
            type = "string", locationName = "partnerName"), LoaIssueTime = structure(logical(0), 
            shape = "LoaIssueTime", type = "timestamp", locationName = "loaIssueTime"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId"), AwsDevice = structure(logical(0), 
            shape = "AwsDevice", type = "string", deprecated = TRUE, 
            locationName = "awsDevice"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "Connection", type = "structure")
    return(populate(args, shape))
}

tag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", locationName = "resourceArn"), 
        Tags = structure(list(structure(list(Key = structure(logical(0), 
            shape = "TagKey", type = "string", max = 128L, min = 1L, 
            pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", 
            locationName = "key"), Value = structure(logical(0), 
            shape = "TagValue", type = "string", max = 256L, 
            min = 0L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", 
            locationName = "value")), shape = "Tag", type = "structure")), 
            shape = "TagList", type = "list", min = 1L, locationName = "tags")), 
        shape = "TagResourceRequest", type = "structure")
    return(populate(args, shape))
}

tag_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "TagResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

untag_resource_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ResourceArn = structure(logical(0), 
        shape = "ResourceArn", type = "string", locationName = "resourceArn"), 
        TagKeys = structure(list(structure(logical(0), shape = "TagKey", 
            type = "string", max = 128L, min = 1L, pattern = "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$")), 
            shape = "TagKeyList", type = "list", locationName = "tagKeys")), 
        shape = "UntagResourceRequest", type = "structure")
    return(populate(args, shape))
}

untag_resource_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(), shape = "UntagResourceResponse", 
        type = "structure")
    return(populate(args, shape))
}

update_lag_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(LagId = structure(logical(0), shape = "LagId", 
        type = "string", locationName = "lagId"), LagName = structure(logical(0), 
        shape = "LagName", type = "string", locationName = "lagName"), 
        MinimumLinks = structure(logical(0), shape = "Count", 
            type = "integer", locationName = "minimumLinks")), 
        shape = "UpdateLagRequest", type = "structure")
    return(populate(args, shape))
}

update_lag_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(ConnectionsBandwidth = structure(logical(0), 
        shape = "Bandwidth", type = "string", locationName = "connectionsBandwidth"), 
        NumberOfConnections = structure(logical(0), shape = "Count", 
            type = "integer", locationName = "numberOfConnections"), 
        LagId = structure(logical(0), shape = "LagId", type = "string", 
            locationName = "lagId"), OwnerAccount = structure(logical(0), 
            shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        LagName = structure(logical(0), shape = "LagName", type = "string", 
            locationName = "lagName"), LagState = structure(logical(0), 
            shape = "LagState", type = "string", locationName = "lagState"), 
        Location = structure(logical(0), shape = "LocationCode", 
            type = "string", locationName = "location"), Region = structure(logical(0), 
            shape = "Region", type = "string", locationName = "region"), 
        MinimumLinks = structure(logical(0), shape = "Count", 
            type = "integer", locationName = "minimumLinks"), 
        AwsDevice = structure(logical(0), shape = "AwsDevice", 
            type = "string", deprecated = TRUE, locationName = "awsDevice"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2"), Connections = structure(list(structure(list(OwnerAccount = structure(logical(0), 
            shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
            ConnectionId = structure(logical(0), shape = "ConnectionId", 
                type = "string", locationName = "connectionId"), 
            ConnectionName = structure(logical(0), shape = "ConnectionName", 
                type = "string", locationName = "connectionName"), 
            ConnectionState = structure(logical(0), shape = "ConnectionState", 
                type = "string", locationName = "connectionState"), 
            Region = structure(logical(0), shape = "Region", 
                type = "string", locationName = "region"), Location = structure(logical(0), 
                shape = "LocationCode", type = "string", locationName = "location"), 
            Bandwidth = structure(logical(0), shape = "Bandwidth", 
                type = "string", locationName = "bandwidth"), 
            Vlan = structure(logical(0), shape = "VLAN", type = "integer", 
                locationName = "vlan"), PartnerName = structure(logical(0), 
                shape = "PartnerName", type = "string", locationName = "partnerName"), 
            LoaIssueTime = structure(logical(0), shape = "LoaIssueTime", 
                type = "timestamp", locationName = "loaIssueTime"), 
            LagId = structure(logical(0), shape = "LagId", type = "string", 
                locationName = "lagId"), AwsDevice = structure(logical(0), 
                shape = "AwsDevice", type = "string", deprecated = TRUE, 
                locationName = "awsDevice"), JumboFrameCapable = structure(logical(0), 
                shape = "JumboFrameCapable", type = "boolean", 
                locationName = "jumboFrameCapable"), AwsDeviceV2 = structure(logical(0), 
                shape = "AwsDeviceV2", type = "string", locationName = "awsDeviceV2")), 
            shape = "Connection", type = "structure")), shape = "ConnectionList", 
            type = "list", locationName = "connections"), AllowsHostedConnections = structure(logical(0), 
            shape = "BooleanFlag", type = "boolean", locationName = "allowsHostedConnections"), 
        JumboFrameCapable = structure(logical(0), shape = "JumboFrameCapable", 
            type = "boolean", locationName = "jumboFrameCapable")), 
        shape = "Lag", type = "structure")
    return(populate(args, shape))
}

update_virtual_interface_attributes_input <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(VirtualInterfaceId = structure(logical(0), 
        shape = "VirtualInterfaceId", type = "string", locationName = "virtualInterfaceId"), 
        Mtu = structure(logical(0), shape = "MTU", type = "integer", 
            locationName = "mtu")), shape = "UpdateVirtualInterfaceAttributesRequest", 
        type = "structure")
    return(populate(args, shape))
}

update_virtual_interface_attributes_output <- function (...) 
{
    args <- c(as.list(environment()), list(...))
    shape <- structure(list(OwnerAccount = structure(logical(0), 
        shape = "OwnerAccount", type = "string", locationName = "ownerAccount"), 
        VirtualInterfaceId = structure(logical(0), shape = "VirtualInterfaceId", 
            type = "string", locationName = "virtualInterfaceId"), 
        Location = structure(logical(0), shape = "LocationCode", 
            type = "string", locationName = "location"), ConnectionId = structure(logical(0), 
            shape = "ConnectionId", type = "string", locationName = "connectionId"), 
        VirtualInterfaceType = structure(logical(0), shape = "VirtualInterfaceType", 
            type = "string", locationName = "virtualInterfaceType"), 
        VirtualInterfaceName = structure(logical(0), shape = "VirtualInterfaceName", 
            type = "string", locationName = "virtualInterfaceName"), 
        Vlan = structure(logical(0), shape = "VLAN", type = "integer", 
            locationName = "vlan"), Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
        AmazonSideAsn = structure(logical(0), shape = "LongAsn", 
            type = "long", locationName = "amazonSideAsn"), AuthKey = structure(logical(0), 
            shape = "BGPAuthKey", type = "string", locationName = "authKey"), 
        AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
            type = "string", locationName = "amazonAddress"), 
        CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
            type = "string", locationName = "customerAddress"), 
        AddressFamily = structure(logical(0), shape = "AddressFamily", 
            type = "string", locationName = "addressFamily"), 
        VirtualInterfaceState = structure(logical(0), shape = "VirtualInterfaceState", 
            type = "string", locationName = "virtualInterfaceState"), 
        CustomerRouterConfig = structure(logical(0), shape = "RouterConfig", 
            type = "string", locationName = "customerRouterConfig"), 
        Mtu = structure(logical(0), shape = "MTU", type = "integer", 
            locationName = "mtu"), JumboFrameCapable = structure(logical(0), 
            shape = "JumboFrameCapable", type = "boolean", locationName = "jumboFrameCapable"), 
        VirtualGatewayId = structure(logical(0), shape = "VirtualGatewayId", 
            type = "string", locationName = "virtualGatewayId"), 
        DirectConnectGatewayId = structure(logical(0), shape = "DirectConnectGatewayId", 
            type = "string", locationName = "directConnectGatewayId"), 
        RouteFilterPrefixes = structure(list(structure(list(Cidr = structure(logical(0), 
            shape = "CIDR", type = "string", locationName = "cidr")), 
            shape = "RouteFilterPrefix", type = "structure")), 
            shape = "RouteFilterPrefixList", type = "list", locationName = "routeFilterPrefixes"), 
        BgpPeers = structure(list(structure(list(Asn = structure(logical(0), 
            shape = "ASN", type = "integer", locationName = "asn"), 
            AuthKey = structure(logical(0), shape = "BGPAuthKey", 
                type = "string", locationName = "authKey"), AddressFamily = structure(logical(0), 
                shape = "AddressFamily", type = "string", locationName = "addressFamily"), 
            AmazonAddress = structure(logical(0), shape = "AmazonAddress", 
                type = "string", locationName = "amazonAddress"), 
            CustomerAddress = structure(logical(0), shape = "CustomerAddress", 
                type = "string", locationName = "customerAddress"), 
            BgpPeerState = structure(logical(0), shape = "BGPPeerState", 
                type = "string", locationName = "bgpPeerState"), 
            BgpStatus = structure(logical(0), shape = "BGPStatus", 
                type = "string", locationName = "bgpStatus"), 
            AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
                type = "string", locationName = "awsDeviceV2")), 
            shape = "BGPPeer", type = "structure")), shape = "BGPPeerList", 
            type = "list", locationName = "bgpPeers"), Region = structure(logical(0), 
            shape = "Region", type = "string", locationName = "region"), 
        AwsDeviceV2 = structure(logical(0), shape = "AwsDeviceV2", 
            type = "string", locationName = "awsDeviceV2")), 
        shape = "VirtualInterface", type = "structure")
    return(populate(args, shape))
}
