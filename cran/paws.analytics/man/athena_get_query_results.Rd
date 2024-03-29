% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/athena_operations.R
\name{athena_get_query_results}
\alias{athena_get_query_results}
\title{Streams the results of a single query execution specified by
QueryExecutionId from the Athena query results location in Amazon S3}
\usage{
athena_get_query_results(QueryExecutionId, NextToken = NULL, MaxResults = NULL)
}
\arguments{
\item{QueryExecutionId}{[required] The unique ID of the query execution.}

\item{NextToken}{A token generated by the Athena service that specifies where to continue
pagination if a previous request was truncated. To obtain the next set
of pages, pass in the \code{NextToken} from the response object of the
previous page call.}

\item{MaxResults}{The maximum number of results (rows) to return in this request.}
}
\description{
Streams the results of a single query execution specified by \code{QueryExecutionId} from the Athena query results location in Amazon S3. For more information, see \href{https://docs.aws.amazon.com/athena/latest/ug/querying.html}{Working with query results, recent queries, and output files} in the \emph{Amazon Athena User Guide}. This request does not execute the query but returns results. Use \code{\link[=athena_start_query_execution]{start_query_execution}} to run a query.

See \url{https://www.paws-r-sdk.com/docs/athena_get_query_results/} for full documentation.
}
\keyword{internal}
