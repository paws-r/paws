% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/athena_operations.R
\name{athena_get_query_execution}
\alias{athena_get_query_execution}
\title{Returns information about a single execution of a query if you have
access to the workgroup in which the query ran}
\usage{
athena_get_query_execution(QueryExecutionId)
}
\arguments{
\item{QueryExecutionId}{[required] The unique ID of the query execution.}
}
\description{
Returns information about a single execution of a query if you have access to the workgroup in which the query ran. Each time a query executes, information about the query execution is saved with a unique ID.

See \url{https://www.paws-r-sdk.com/docs/athena_get_query_execution/} for full documentation.
}
\keyword{internal}
