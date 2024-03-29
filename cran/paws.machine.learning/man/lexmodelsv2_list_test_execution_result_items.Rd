% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lexmodelsv2_operations.R
\name{lexmodelsv2_list_test_execution_result_items}
\alias{lexmodelsv2_list_test_execution_result_items}
\title{Gets a list of test execution result items}
\usage{
lexmodelsv2_list_test_execution_result_items(
  testExecutionId,
  resultFilterBy,
  maxResults = NULL,
  nextToken = NULL
)
}
\arguments{
\item{testExecutionId}{[required] The unique identifier of the test execution to list the result items.}

\item{resultFilterBy}{[required] The filter for the list of results from the test set execution.}

\item{maxResults}{The maximum number of test execution result items to return in each
page. If there are fewer results than the max page size, only the actual
number of results are returned.}

\item{nextToken}{If the response from the
\code{\link[=lexmodelsv2_list_test_execution_result_items]{list_test_execution_result_items}}
operation contains more results than specified in the \code{maxResults}
parameter, a token is returned in the response. Use that token in the
\code{nextToken} parameter to return the next page of results.}
}
\description{
Gets a list of test execution result items.

See \url{https://www.paws-r-sdk.com/docs/lexmodelsv2_list_test_execution_result_items/} for full documentation.
}
\keyword{internal}
