% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudtrail_operations.R
\name{cloudtrail_get_query_results}
\alias{cloudtrail_get_query_results}
\title{Gets event data results of a query}
\usage{
cloudtrail_get_query_results(
  EventDataStore = NULL,
  QueryId,
  NextToken = NULL,
  MaxQueryResults = NULL
)
}
\arguments{
\item{EventDataStore}{The ARN (or ID suffix of the ARN) of the event data store against which
the query was run.}

\item{QueryId}{[required] The ID of the query for which you want to get results.}

\item{NextToken}{A token you can use to get the next page of query results.}

\item{MaxQueryResults}{The maximum number of query results to display on a single page.}
}
\description{
Gets event data results of a query. You must specify the \code{QueryID} value returned by the \code{\link[=cloudtrail_start_query]{start_query}} operation.

See \url{https://www.paws-r-sdk.com/docs/cloudtrail_get_query_results/} for full documentation.
}
\keyword{internal}
