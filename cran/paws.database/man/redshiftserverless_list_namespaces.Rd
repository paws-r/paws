% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/redshiftserverless_operations.R
\name{redshiftserverless_list_namespaces}
\alias{redshiftserverless_list_namespaces}
\title{Returns information about a list of specified namespaces}
\usage{
redshiftserverless_list_namespaces(maxResults = NULL, nextToken = NULL)
}
\arguments{
\item{maxResults}{An optional parameter that specifies the maximum number of results to
return. You can use \code{nextToken} to display the next page of results.}

\item{nextToken}{If your initial \code{\link[=redshiftserverless_list_namespaces]{list_namespaces}}
operation returns a \code{nextToken}, you can include the returned
\code{nextToken} in following
\code{\link[=redshiftserverless_list_namespaces]{list_namespaces}} operations,
which returns results in the next page.}
}
\description{
Returns information about a list of specified namespaces.

See \url{https://www.paws-r-sdk.com/docs/redshiftserverless_list_namespaces/} for full documentation.
}
\keyword{internal}
