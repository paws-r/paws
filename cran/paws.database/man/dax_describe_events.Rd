% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dax_operations.R
\name{dax_describe_events}
\alias{dax_describe_events}
\title{Returns events related to DAX clusters and parameter groups}
\usage{
dax_describe_events(SourceName, SourceType, StartTime, EndTime,
  Duration, MaxResults, NextToken)
}
\arguments{
\item{SourceName}{The identifier of the event source for which events will be returned. If
not specified, then all sources are included in the response.}

\item{SourceType}{The event source to retrieve events for. If no value is specified, all
events are returned.}

\item{StartTime}{The beginning of the time interval to retrieve events for, specified in
ISO 8601 format.}

\item{EndTime}{The end of the time interval for which to retrieve events, specified in
ISO 8601 format.}

\item{Duration}{The number of minutes' worth of events to retrieve.}

\item{MaxResults}{The maximum number of results to include in the response. If more
results exist than the specified \code{MaxResults} value, a token is included
in the response so that the remaining results can be retrieved.

The value for \code{MaxResults} must be between 20 and 100.}

\item{NextToken}{An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by \code{MaxResults}.}
}
\description{
Returns events related to DAX clusters and parameter groups. You can
obtain events specific to a particular DAX cluster or parameter group by
providing the name as a parameter.
}
\details{
By default, only the events occurring within the last hour are returned;
however, you can retrieve up to 14 days' worth of events if necessary.
}
\section{Request syntax}{
\preformatted{svc$describe_events(
  SourceName = "string",
  SourceType = "CLUSTER"|"PARAMETER_GROUP"|"SUBNET_GROUP",
  StartTime = as.POSIXct(
    "2015-01-01"
  ),
  EndTime = as.POSIXct(
    "2015-01-01"
  ),
  Duration = 123,
  MaxResults = 123,
  NextToken = "string"
)
}
}

\keyword{internal}