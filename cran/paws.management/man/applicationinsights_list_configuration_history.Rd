% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/applicationinsights_operations.R
\name{applicationinsights_list_configuration_history}
\alias{applicationinsights_list_configuration_history}
\title{Lists the INFO, WARN, and ERROR events for periodic configuration
updates performed by Application Insights}
\usage{
applicationinsights_list_configuration_history(ResourceGroupName,
  StartTime, EndTime, EventStatus, MaxResults, NextToken)
}
\arguments{
\item{ResourceGroupName}{Resource group to which the application belongs.}

\item{StartTime}{The start time of the event.}

\item{EndTime}{The end time of the event.}

\item{EventStatus}{The status of the configuration update event. Possible values include
INFO, WARN, and ERROR.}

\item{MaxResults}{The maximum number of results returned by \code{ListConfigurationHistory} in
paginated output. When this parameter is used,
\code{ListConfigurationHistory} returns only \code{MaxResults} in a single page
along with a \code{NextToken} response element. The remaining results of the
initial request can be seen by sending another
\code{ListConfigurationHistory} request with the returned \code{NextToken} value.
If this parameter is not used, then \code{ListConfigurationHistory} returns
all results.}

\item{NextToken}{The \code{NextToken} value returned from a previous paginated
\code{ListConfigurationHistory} request where \code{MaxResults} was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the \code{NextToken} value.
This value is \code{null} when there are no more results to return.}
}
\description{
Lists the INFO, WARN, and ERROR events for periodic configuration
updates performed by Application Insights. Examples of events
represented are:
}
\details{
\itemize{
\item INFO: creating a new alarm or updating an alarm threshold.
\item WARN: alarm not created due to insufficient data points used to
predict thresholds.
\item ERROR: alarm not created due to permission errors or exceeding
quotas.
}
}
\section{Request syntax}{
\preformatted{svc$list_configuration_history(
  ResourceGroupName = "string",
  StartTime = as.POSIXct(
    "2015-01-01"
  ),
  EndTime = as.POSIXct(
    "2015-01-01"
  ),
  EventStatus = "INFO"|"WARN"|"ERROR",
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}