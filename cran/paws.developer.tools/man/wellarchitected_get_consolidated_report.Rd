% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wellarchitected_operations.R
\name{wellarchitected_get_consolidated_report}
\alias{wellarchitected_get_consolidated_report}
\title{Get a consolidated report of your workloads}
\usage{
wellarchitected_get_consolidated_report(
  Format,
  IncludeSharedResources = NULL,
  NextToken = NULL,
  MaxResults = NULL
)
}
\arguments{
\item{Format}{[required] The format of the consolidated report.

For \code{PDF}, \code{Base64String} is returned. For \code{JSON}, \code{Metrics} is
returned.}

\item{IncludeSharedResources}{Set to \code{true} to have shared resources included in the report.}

\item{NextToken}{}

\item{MaxResults}{The maximum number of results to return for this request.}
}
\description{
Get a consolidated report of your workloads.

See \url{https://www.paws-r-sdk.com/docs/wellarchitected_get_consolidated_report/} for full documentation.
}
\keyword{internal}
