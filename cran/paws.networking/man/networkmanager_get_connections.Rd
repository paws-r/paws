% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/networkmanager_operations.R
\name{networkmanager_get_connections}
\alias{networkmanager_get_connections}
\title{Gets information about one or more of your connections in a global
network}
\usage{
networkmanager_get_connections(
  GlobalNetworkId,
  ConnectionIds = NULL,
  DeviceId = NULL,
  MaxResults = NULL,
  NextToken = NULL
)
}
\arguments{
\item{GlobalNetworkId}{[required] The ID of the global network.}

\item{ConnectionIds}{One or more connection IDs.}

\item{DeviceId}{The ID of the device.}

\item{MaxResults}{The maximum number of results to return.}

\item{NextToken}{The token for the next page of results.}
}
\description{
Gets information about one or more of your connections in a global network.

See \url{https://www.paws-r-sdk.com/docs/networkmanager_get_connections/} for full documentation.
}
\keyword{internal}
