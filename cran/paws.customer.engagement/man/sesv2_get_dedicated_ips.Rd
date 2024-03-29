% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sesv2_operations.R
\name{sesv2_get_dedicated_ips}
\alias{sesv2_get_dedicated_ips}
\title{List the dedicated IP addresses that are associated with your Amazon Web
Services account}
\usage{
sesv2_get_dedicated_ips(PoolName = NULL, NextToken = NULL, PageSize = NULL)
}
\arguments{
\item{PoolName}{The name of the IP pool that the dedicated IP address is associated
with.}

\item{NextToken}{A token returned from a previous call to
\code{\link[=sesv2_get_dedicated_ips]{get_dedicated_ips}} to indicate the position
of the dedicated IP pool in the list of IP pools.}

\item{PageSize}{The number of results to show in a single call to
\code{GetDedicatedIpsRequest}. If the number of results is larger than the
number you specified in this parameter, then the response includes a
\code{NextToken} element, which you can use to obtain additional results.}
}
\description{
List the dedicated IP addresses that are associated with your Amazon Web Services account.

See \url{https://www.paws-r-sdk.com/docs/sesv2_get_dedicated_ips/} for full documentation.
}
\keyword{internal}
