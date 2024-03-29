% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatchevidently_operations.R
\name{cloudwatchevidently_update_project_data_delivery}
\alias{cloudwatchevidently_update_project_data_delivery}
\title{Updates the data storage options for this project}
\usage{
cloudwatchevidently_update_project_data_delivery(
  cloudWatchLogs = NULL,
  project,
  s3Destination = NULL
)
}
\arguments{
\item{cloudWatchLogs}{A structure containing the CloudWatch Logs log group where you want to
store evaluation events.}

\item{project}{[required] The name or ARN of the project that you want to modify the data storage
options for.}

\item{s3Destination}{A structure containing the S3 bucket name and bucket prefix where you
want to store evaluation events.}
}
\description{
Updates the data storage options for this project. If you store evaluation events, you an keep them and analyze them on your own. If you choose not to store evaluation events, Evidently deletes them after using them to produce metrics and other experiment results that you can view.

See \url{https://www.paws-r-sdk.com/docs/cloudwatchevidently_update_project_data_delivery/} for full documentation.
}
\keyword{internal}
