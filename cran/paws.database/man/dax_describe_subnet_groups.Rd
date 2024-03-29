% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dax_operations.R
\name{dax_describe_subnet_groups}
\alias{dax_describe_subnet_groups}
\title{Returns a list of subnet group descriptions}
\usage{
dax_describe_subnet_groups(
  SubnetGroupNames = NULL,
  MaxResults = NULL,
  NextToken = NULL
)
}
\arguments{
\item{SubnetGroupNames}{The name of the subnet group.}

\item{MaxResults}{The maximum number of results to include in the response. If more
results exist than the specified \code{MaxResults} value, a token is included
in the response so that the remaining results can be retrieved.

The value for \code{MaxResults} must be between 20 and 100.}

\item{NextToken}{An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by \code{MaxResults}.}
}
\description{
Returns a list of subnet group descriptions. If a subnet group name is specified, the list will contain only the description of that group.

See \url{https://www.paws-r-sdk.com/docs/dax_describe_subnet_groups/} for full documentation.
}
\keyword{internal}
