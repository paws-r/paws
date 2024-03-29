% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/proton_operations.R
\name{proton_list_service_instances}
\alias{proton_list_service_instances}
\title{List service instances with summary data}
\usage{
proton_list_service_instances(
  filters = NULL,
  maxResults = NULL,
  nextToken = NULL,
  serviceName = NULL,
  sortBy = NULL,
  sortOrder = NULL
)
}
\arguments{
\item{filters}{An array of filtering criteria that scope down the result list. By
default, all service instances in the Amazon Web Services account are
returned.}

\item{maxResults}{The maximum number of service instances to list.}

\item{nextToken}{A token that indicates the location of the next service in the array of
service instances, after the list of service instances that was
previously requested.}

\item{serviceName}{The name of the service that the service instance belongs to.}

\item{sortBy}{The field that the result list is sorted by.

When you choose to sort by \code{serviceName}, service instances within each
service are sorted by service instance name.

Default: \code{serviceName}}

\item{sortOrder}{Result list sort order.

Default: \code{ASCENDING}}
}
\description{
List service instances with summary data. This action lists service instances of all services in the Amazon Web Services account.

See \url{https://www.paws-r-sdk.com/docs/proton_list_service_instances/} for full documentation.
}
\keyword{internal}
