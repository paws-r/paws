% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codeguruprofiler_operations.R
\name{codeguruprofiler_list_findings_reports}
\alias{codeguruprofiler_list_findings_reports}
\title{List the available reports for a given profiling group and time range}
\usage{
codeguruprofiler_list_findings_reports(
  dailyReportsOnly = NULL,
  endTime,
  maxResults = NULL,
  nextToken = NULL,
  profilingGroupName,
  startTime
)
}
\arguments{
\item{dailyReportsOnly}{A \code{Boolean} value indicating whether to only return reports from daily
profiles. If set to \code{True}, only analysis data from daily profiles is
returned. If set to \code{False}, analysis data is returned from smaller time
windows (for example, one hour).}

\item{endTime}{[required] The end time of the profile to get analysis data about. You must specify
\code{startTime} and \code{endTime}. This is specified using the ISO 8601 format.
For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past June
1, 2020 1:15:02 PM UTC.}

\item{maxResults}{The maximum number of report results returned by
\code{\link[=codeguruprofiler_list_findings_reports]{list_findings_reports}} in
paginated output. When this parameter is used,
\code{\link[=codeguruprofiler_list_findings_reports]{list_findings_reports}} only
returns \code{maxResults} results in a single page along with a \code{nextToken}
response element. The remaining results of the initial request can be
seen by sending another
\code{\link[=codeguruprofiler_list_findings_reports]{list_findings_reports}}
request with the returned \code{nextToken} value.}

\item{nextToken}{The \code{nextToken} value returned from a previous paginated
\code{ListFindingsReportsRequest} request where \code{maxResults} was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the \code{nextToken} value.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.}

\item{profilingGroupName}{[required] The name of the profiling group from which to search for analysis data.}

\item{startTime}{[required] The start time of the profile to get analysis data about. You must
specify \code{startTime} and \code{endTime}. This is specified using the ISO 8601
format. For example, 2020-06-01T13:15:02.001Z represents 1 millisecond
past June 1, 2020 1:15:02 PM UTC.}
}
\description{
List the available reports for a given profiling group and time range.

See \url{https://www.paws-r-sdk.com/docs/codeguruprofiler_list_findings_reports/} for full documentation.
}
\keyword{internal}
