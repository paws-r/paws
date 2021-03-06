% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/applicationinsights_operations.R
\name{applicationinsights_list_log_pattern_sets}
\alias{applicationinsights_list_log_pattern_sets}
\title{Lists the log pattern sets in the specific application}
\usage{
applicationinsights_list_log_pattern_sets(ResourceGroupName, MaxResults,
  NextToken)
}
\arguments{
\item{ResourceGroupName}{[required] The name of the resource group.}

\item{MaxResults}{The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned \code{NextToken}
value.}

\item{NextToken}{The token to request the next page of results.}
}
\value{
A list with the following syntax:\preformatted{list(
  ResourceGroupName = "string",
  LogPatternSets = list(
    "string"
  ),
  NextToken = "string"
)
}
}
\description{
Lists the log pattern sets in the specific application.
}
\section{Request syntax}{
\preformatted{svc$list_log_pattern_sets(
  ResourceGroupName = "string",
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
