% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_client_vpn_routes}
\alias{ec2_describe_client_vpn_routes}
\title{Describes the routes for the specified Client VPN endpoint}
\usage{
ec2_describe_client_vpn_routes(
  ClientVpnEndpointId,
  Filters = NULL,
  MaxResults = NULL,
  NextToken = NULL,
  DryRun = NULL
)
}
\arguments{
\item{ClientVpnEndpointId}{[required] The ID of the Client VPN endpoint.}

\item{Filters}{One or more filters. Filter names and values are case-sensitive.
\itemize{
\item \code{destination-cidr} - The CIDR of the route destination.
\item \code{origin} - How the route was associated with the Client VPN endpoint
(\code{associate} | \code{add-route}).
\item \code{target-subnet} - The ID of the subnet through which traffic is
routed.
}}

\item{MaxResults}{The maximum number of results to return for the request in a single
page. The remaining results can be seen by sending another request with
the nextToken value.}

\item{NextToken}{The token to retrieve the next page of results.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Describes the routes for the specified Client VPN endpoint.

See \url{https://www.paws-r-sdk.com/docs/ec2_describe_client_vpn_routes/} for full documentation.
}
\keyword{internal}
