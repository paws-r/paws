% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatch_operations.R
\name{cloudwatch_list_dashboards}
\alias{cloudwatch_list_dashboards}
\title{Returns a list of the dashboards for your account}
\usage{
cloudwatch_list_dashboards(DashboardNamePrefix, NextToken)
}
\arguments{
\item{DashboardNamePrefix}{If you specify this parameter, only the dashboards with names starting
with the specified string are listed. The maximum length is 255, and
valid characters are A-Z, a-z, 0-9, ".", "-", and "\_".}

\item{NextToken}{The token returned by a previous call to indicate that there is more
data available.}
}
\description{
Returns a list of the dashboards for your account. If you include
\code{DashboardNamePrefix}, only those dashboards with names starting with
the prefix are listed. Otherwise, all dashboards in your account are
listed.
}
\details{
\code{ListDashboards} returns up to 1000 results on one page. If there are
more than 1000 dashboards, you can call \code{ListDashboards} again and
include the value you received for \code{NextToken} in the first call, to
receive the next 1000 results.
}
\section{Request syntax}{
\preformatted{svc$list_dashboards(
  DashboardNamePrefix = "string",
  NextToken = "string"
)
}
}

\keyword{internal}