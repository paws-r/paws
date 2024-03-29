% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_describe_dashboard_snapshot_job_result}
\alias{quicksight_describe_dashboard_snapshot_job_result}
\title{Describes the result of an existing snapshot job that has finished
running}
\usage{
quicksight_describe_dashboard_snapshot_job_result(
  AwsAccountId,
  DashboardId,
  SnapshotJobId
)
}
\arguments{
\item{AwsAccountId}{[required] The ID of the Amazon Web Services account that the dashboard snapshot
job is executed in.}

\item{DashboardId}{[required] The ID of the dashboard that you have started a snapshot job for.}

\item{SnapshotJobId}{[required] The ID of the job to be described. The job ID is set when you start a
new job with a
\code{\link[=quicksight_start_dashboard_snapshot_job]{start_dashboard_snapshot_job}}
API call.}
}
\description{
Describes the result of an existing snapshot job that has finished running.

See \url{https://www.paws-r-sdk.com/docs/quicksight_describe_dashboard_snapshot_job_result/} for full documentation.
}
\keyword{internal}
