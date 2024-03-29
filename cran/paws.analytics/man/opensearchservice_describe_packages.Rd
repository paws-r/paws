% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opensearchservice_operations.R
\name{opensearchservice_describe_packages}
\alias{opensearchservice_describe_packages}
\title{Describes all packages available to OpenSearch Service}
\usage{
opensearchservice_describe_packages(
  Filters = NULL,
  MaxResults = NULL,
  NextToken = NULL
)
}
\arguments{
\item{Filters}{Only returns packages that match the \code{DescribePackagesFilterList}
values.}

\item{MaxResults}{An optional parameter that specifies the maximum number of results to
return. You can use \code{nextToken} to get the next page of results.}

\item{NextToken}{If your initial \code{DescribePackageFilters} operation returns a
\code{nextToken}, you can include the returned \code{nextToken} in subsequent
\code{DescribePackageFilters} operations, which returns results in the next
page.}
}
\description{
Describes all packages available to OpenSearch Service. For more information, see \href{https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html}{Custom packages for Amazon OpenSearch Service}.

See \url{https://www.paws-r-sdk.com/docs/opensearchservice_describe_packages/} for full documentation.
}
\keyword{internal}
