% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/applicationinsights_operations.R
\name{applicationinsights_list_applications}
\alias{applicationinsights_list_applications}
\title{Lists the IDs of the applications that you are monitoring}
\usage{
applicationinsights_list_applications(MaxResults, NextToken)
}
\arguments{
\item{MaxResults}{The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned \code{NextToken}
value.}

\item{NextToken}{The token to request the next page of results.}
}
\value{
A list with the following syntax:\preformatted{list(
  ApplicationInfoList = list(
    list(
      ResourceGroupName = "string",
      LifeCycle = "string",
      OpsItemSNSTopicArn = "string",
      OpsCenterEnabled = TRUE|FALSE,
      CWEMonitorEnabled = TRUE|FALSE,
      Remarks = "string"
    )
  ),
  NextToken = "string"
)
}
}
\description{
Lists the IDs of the applications that you are monitoring.
}
\section{Request syntax}{
\preformatted{svc$list_applications(
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}
