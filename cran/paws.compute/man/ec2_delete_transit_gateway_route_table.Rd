% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_delete_transit_gateway_route_table}
\alias{ec2_delete_transit_gateway_route_table}
\title{Deletes the specified transit gateway route table}
\usage{
ec2_delete_transit_gateway_route_table(
  TransitGatewayRouteTableId,
  DryRun = NULL
)
}
\arguments{
\item{TransitGatewayRouteTableId}{[required] The ID of the transit gateway route table.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Deletes the specified transit gateway route table. If there are any route tables associated with the transit gateway route table, you must first run \code{\link[=ec2_disassociate_route_table]{disassociate_route_table}} before you can delete the transit gateway route table. This removes any route tables associated with the transit gateway route table.

See \url{https://www.paws-r-sdk.com/docs/ec2_delete_transit_gateway_route_table/} for full documentation.
}
\keyword{internal}
