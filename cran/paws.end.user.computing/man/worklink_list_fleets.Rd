% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/worklink_operations.R
\name{worklink_list_fleets}
\alias{worklink_list_fleets}
\title{Retrieves a list of fleets for the current account and Region}
\usage{
worklink_list_fleets(NextToken = NULL, MaxResults = NULL)
}
\arguments{
\item{NextToken}{The pagination token used to retrieve the next page of results for this
operation. If this value is null, it retrieves the first page.}

\item{MaxResults}{The maximum number of results to be included in the next page.}
}
\description{
Retrieves a list of fleets for the current account and Region.

See \url{https://www.paws-r-sdk.com/docs/worklink_list_fleets/} for full documentation.
}
\keyword{internal}
