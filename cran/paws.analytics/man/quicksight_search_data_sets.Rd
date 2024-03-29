% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_search_data_sets}
\alias{quicksight_search_data_sets}
\title{Use the SearchDataSets operation to search for datasets that belong to
an account}
\usage{
quicksight_search_data_sets(
  AwsAccountId,
  Filters,
  NextToken = NULL,
  MaxResults = NULL
)
}
\arguments{
\item{AwsAccountId}{[required] The Amazon Web Services account ID.}

\item{Filters}{[required] The filters to apply to the search.}

\item{NextToken}{A pagination token that can be used in a subsequent request.}

\item{MaxResults}{The maximum number of results to be returned per request.}
}
\description{
Use the \code{\link[=quicksight_search_data_sets]{search_data_sets}} operation to search for datasets that belong to an account.

See \url{https://www.paws-r-sdk.com/docs/quicksight_search_data_sets/} for full documentation.
}
\keyword{internal}
