% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gamelift_operations.R
\name{gamelift_describe_fleet_events}
\alias{gamelift_describe_fleet_events}
\title{Retrieves entries from the specified fleet's event log}
\usage{
gamelift_describe_fleet_events(FleetId, StartTime, EndTime, Limit,
  NextToken)
}
\arguments{
\item{FleetId}{[required] Unique identifier for a fleet to get event logs for.}

\item{StartTime}{Earliest date to retrieve event logs for. If no start time is specified,
this call returns entries starting from when the fleet was created to
the specified end time. Format is a number expressed in Unix time as
milliseconds (ex: "1469498468.057").}

\item{EndTime}{Most recent date to retrieve event logs for. If no end time is
specified, this call returns entries from the specified start time up to
the present. Format is a number expressed in Unix time as milliseconds
(ex: "1469498468.057").}

\item{Limit}{Maximum number of results to return. Use this parameter with \code{NextToken}
to get results as a set of sequential pages.}

\item{NextToken}{Token that indicates the start of the next sequential page of results.
Use the token that is returned with a previous call to this action. To
start at the beginning of the result set, do not specify a value.}
}
\description{
Retrieves entries from the specified fleet's event log. You can specify
a time range to limit the result set. Use the pagination parameters to
retrieve results as a set of sequential pages. If successful, a
collection of event log entries matching the request are returned.
}
\details{
\strong{Learn more}

\href{https://docs.aws.amazon.com/gamelift/latest/developerguide/fleets-intro.html}{Working with Fleets}.

\strong{Related operations}
\itemize{
\item CreateFleet
\item ListFleets
\item DeleteFleet
\item Describe fleets:
\item DescribeFleetAttributes
\item DescribeFleetCapacity
\item DescribeFleetPortSettings
\item DescribeFleetUtilization
\item DescribeRuntimeConfiguration
\item DescribeEC2InstanceLimits
\item DescribeFleetEvents
\item Update fleets:
\item UpdateFleetAttributes
\item UpdateFleetCapacity
\item UpdateFleetPortSettings
\item UpdateRuntimeConfiguration
\item Manage fleet actions:
\item StartFleetActions
\item StopFleetActions
}
}
\section{Request syntax}{
\preformatted{svc$describe_fleet_events(
  FleetId = "string",
  StartTime = as.POSIXct(
    "2015-01-01"
  ),
  EndTime = as.POSIXct(
    "2015-01-01"
  ),
  Limit = 123,
  NextToken = "string"
)
}
}

\keyword{internal}