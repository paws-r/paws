% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_accept_vpc_peering_connection}
\alias{ec2_accept_vpc_peering_connection}
\title{Accept a VPC peering connection request}
\usage{
ec2_accept_vpc_peering_connection(DryRun = NULL, VpcPeeringConnectionId)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{VpcPeeringConnectionId}{[required] The ID of the VPC peering connection. You must specify this parameter in
the request.}
}
\description{
Accept a VPC peering connection request. To accept a request, the VPC peering connection must be in the \code{pending-acceptance} state, and you must be the owner of the peer VPC. Use \code{\link[=ec2_describe_vpc_peering_connections]{describe_vpc_peering_connections}} to view your outstanding VPC peering connection requests.

See \url{https://www.paws-r-sdk.com/docs/ec2_accept_vpc_peering_connection/} for full documentation.
}
\keyword{internal}
