% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_local_gateway_route}
\alias{ec2_create_local_gateway_route}
\title{Creates a static route for the specified local gateway route table}
\usage{
ec2_create_local_gateway_route(
  DestinationCidrBlock = NULL,
  LocalGatewayRouteTableId,
  LocalGatewayVirtualInterfaceGroupId = NULL,
  DryRun = NULL,
  NetworkInterfaceId = NULL,
  DestinationPrefixListId = NULL
)
}
\arguments{
\item{DestinationCidrBlock}{The CIDR range used for destination matches. Routing decisions are based
on the most specific match.}

\item{LocalGatewayRouteTableId}{[required] The ID of the local gateway route table.}

\item{LocalGatewayVirtualInterfaceGroupId}{The ID of the virtual interface group.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{NetworkInterfaceId}{The ID of the network interface.}

\item{DestinationPrefixListId}{The ID of the prefix list. Use a prefix list in place of
\code{DestinationCidrBlock}. You cannot use \code{DestinationPrefixListId} and
\code{DestinationCidrBlock} in the same request.}
}
\description{
Creates a static route for the specified local gateway route table. You must specify one of the following targets:

See \url{https://www.paws-r-sdk.com/docs/ec2_create_local_gateway_route/} for full documentation.
}
\keyword{internal}
