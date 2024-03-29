% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/schemas_operations.R
\name{schemas_list_discoverers}
\alias{schemas_list_discoverers}
\title{List the discoverers}
\usage{
schemas_list_discoverers(
  DiscovererIdPrefix = NULL,
  Limit = NULL,
  NextToken = NULL,
  SourceArnPrefix = NULL
)
}
\arguments{
\item{DiscovererIdPrefix}{Specifying this limits the results to only those discoverer IDs that
start with the specified prefix.}

\item{Limit}{}

\item{NextToken}{The token that specifies the next page of results to return. To request
the first page, leave NextToken empty. The token will expire in 24
hours, and cannot be shared with other accounts.}

\item{SourceArnPrefix}{Specifying this limits the results to only those ARNs that start with
the specified prefix.}
}
\description{
List the discoverers.

See \url{https://www.paws-r-sdk.com/docs/schemas_list_discoverers/} for full documentation.
}
\keyword{internal}
