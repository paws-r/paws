% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fsx_operations.R
\name{fsx_describe_data_repository_associations}
\alias{fsx_describe_data_repository_associations}
\title{Returns the description of specific Amazon FSx for Lustre or Amazon File
Cache data repository associations, if one or more AssociationIds values
are provided in the request, or if filters are used in the request}
\usage{
fsx_describe_data_repository_associations(
  AssociationIds = NULL,
  Filters = NULL,
  MaxResults = NULL,
  NextToken = NULL
)
}
\arguments{
\item{AssociationIds}{IDs of the data repository associations whose descriptions you want to
retrieve (String).}

\item{Filters}{}

\item{MaxResults}{The maximum number of resources to return in the response. This value
must be an integer greater than zero.}

\item{NextToken}{}
}
\description{
Returns the description of specific Amazon FSx for Lustre or Amazon File Cache data repository associations, if one or more \code{AssociationIds} values are provided in the request, or if filters are used in the request. Data repository associations are supported on Amazon File Cache resources and all FSx for Lustre 2.12 and 2,15 file systems, excluding \code{scratch_1} deployment type.

See \url{https://www.paws-r-sdk.com/docs/fsx_describe_data_repository_associations/} for full documentation.
}
\keyword{internal}
