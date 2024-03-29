% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/networkmanager_operations.R
\name{networkmanager_update_global_network}
\alias{networkmanager_update_global_network}
\title{Updates an existing global network}
\usage{
networkmanager_update_global_network(GlobalNetworkId, Description = NULL)
}
\arguments{
\item{GlobalNetworkId}{[required] The ID of your global network.}

\item{Description}{A description of the global network.

Constraints: Maximum length of 256 characters.}
}
\description{
Updates an existing global network. To remove information for any of the parameters, specify an empty string.

See \url{https://www.paws-r-sdk.com/docs/networkmanager_update_global_network/} for full documentation.
}
\keyword{internal}
