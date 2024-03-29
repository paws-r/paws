% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/arczonalshift_operations.R
\name{arczonalshift_update_zonal_autoshift_configuration}
\alias{arczonalshift_update_zonal_autoshift_configuration}
\title{You can update the zonal autoshift status for a resource, to enable or
disable zonal autoshift}
\usage{
arczonalshift_update_zonal_autoshift_configuration(
  resourceIdentifier,
  zonalAutoshiftStatus
)
}
\arguments{
\item{resourceIdentifier}{[required] The identifier for the resource that you want to update the zonal
autoshift configuration for. The identifier is the Amazon Resource Name
(ARN) for the resource.}

\item{zonalAutoshiftStatus}{[required] The zonal autoshift status for the resource that you want to update the
zonal autoshift configuration for.}
}
\description{
You can update the zonal autoshift status for a resource, to enable or disable zonal autoshift. When zonal autoshift is \code{ENABLED}, Amazon Web Services shifts away resource traffic from an Availability Zone, on your behalf, when Amazon Web Services determines that there's an issue in the Availability Zone that could potentially affect customers.

See \url{https://www.paws-r-sdk.com/docs/arczonalshift_update_zonal_autoshift_configuration/} for full documentation.
}
\keyword{internal}
