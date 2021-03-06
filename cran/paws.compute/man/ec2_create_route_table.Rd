% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_route_table}
\alias{ec2_create_route_table}
\title{Creates a route table for the specified VPC}
\usage{
ec2_create_route_table(DryRun, VpcId, TagSpecifications)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{VpcId}{[required] The ID of the VPC.}

\item{TagSpecifications}{The tags to assign to the route table.}
}
\value{
A list with the following syntax:\preformatted{list(
  RouteTable = list(
    Associations = list(
      list(
        Main = TRUE|FALSE,
        RouteTableAssociationId = "string",
        RouteTableId = "string",
        SubnetId = "string",
        GatewayId = "string",
        AssociationState = list(
          State = "associating"|"associated"|"disassociating"|"disassociated"|"failed",
          StatusMessage = "string"
        )
      )
    ),
    PropagatingVgws = list(
      list(
        GatewayId = "string"
      )
    ),
    RouteTableId = "string",
    Routes = list(
      list(
        DestinationCidrBlock = "string",
        DestinationIpv6CidrBlock = "string",
        DestinationPrefixListId = "string",
        EgressOnlyInternetGatewayId = "string",
        GatewayId = "string",
        InstanceId = "string",
        InstanceOwnerId = "string",
        NatGatewayId = "string",
        TransitGatewayId = "string",
        LocalGatewayId = "string",
        CarrierGatewayId = "string",
        NetworkInterfaceId = "string",
        Origin = "CreateRouteTable"|"CreateRoute"|"EnableVgwRoutePropagation",
        State = "active"|"blackhole",
        VpcPeeringConnectionId = "string"
      )
    ),
    Tags = list(
      list(
        Key = "string",
        Value = "string"
      )
    ),
    VpcId = "string",
    OwnerId = "string"
  )
)
}
}
\description{
Creates a route table for the specified VPC. After you create a route
table, you can add routes and associate the table with a subnet.

For more information, see \href{https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html}{Route Tables}
in the \emph{Amazon Virtual Private Cloud User Guide}.
}
\section{Request syntax}{
\preformatted{svc$create_route_table(
  DryRun = TRUE|FALSE,
  VpcId = "string",
  TagSpecifications = list(
    list(
      ResourceType = "client-vpn-endpoint"|"customer-gateway"|"dedicated-host"|"dhcp-options"|"egress-only-internet-gateway"|"elastic-ip"|"elastic-gpu"|"export-image-task"|"export-instance-task"|"fleet"|"fpga-image"|"host-reservation"|"image"|"import-image-task"|"import-snapshot-task"|"instance"|"internet-gateway"|"key-pair"|"launch-template"|"local-gateway-route-table-vpc-association"|"natgateway"|"network-acl"|"network-interface"|"network-insights-analysis"|"network-insights-path"|"placement-group"|"reserved-instances"|"route-table"|"security-group"|"snapshot"|"spot-fleet-request"|"spot-instances-request"|"subnet"|"traffic-mirror-filter"|"traffic-mirror-session"|"traffic-mirror-target"|"transit-gateway"|"transit-gateway-attachment"|"transit-gateway-connect-peer"|"transit-gateway-multicast-domain"|"transit-gateway-route-table"|"volume"|"vpc"|"vpc-peering-connection"|"vpn-connection"|"vpn-gateway"|"vpc-flow-log",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
  )
)
}
}

\examples{
\dontrun{
# This example creates a route table for the specified VPC.
svc$create_route_table(
  VpcId = "vpc-a01106c2"
)
}

}
\keyword{internal}
