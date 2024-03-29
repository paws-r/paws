% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_describe_local_gateways}
\alias{ec2_describe_local_gateways}
\title{Describes one or more local gateways}
\usage{
ec2_describe_local_gateways(
  LocalGatewayIds = NULL,
  Filters = NULL,
  MaxResults = NULL,
  NextToken = NULL,
  DryRun = NULL
)
}
\arguments{
\item{LocalGatewayIds}{The IDs of the local gateways.}

\item{Filters}{One or more filters.
\itemize{
\item \code{local-gateway-id} - The ID of a local gateway.
\item \code{outpost-arn} - The Amazon Resource Name (ARN) of the Outpost.
\item \code{owner-id} - The ID of the Amazon Web Services account that owns the
local gateway.
\item \code{state} - The state of the association.
}}

\item{MaxResults}{The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned \code{nextToken}
value.}

\item{NextToken}{The token for the next page of results.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Describes one or more local gateways. By default, all local gateways are described. Alternatively, you can filter the results.

See \url{https://www.paws-r-sdk.com/docs/ec2_describe_local_gateways/} for full documentation.
}
\keyword{internal}
