% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinesisanalyticsv2_operations.R
\name{kinesisanalyticsv2_delete_application_cloud_watch_logging_option}
\alias{kinesisanalyticsv2_delete_application_cloud_watch_logging_option}
\title{Deletes an Amazon CloudWatch log stream from an SQL-based Kinesis Data
Analytics application}
\usage{
kinesisanalyticsv2_delete_application_cloud_watch_logging_option(
  ApplicationName,
  CurrentApplicationVersionId = NULL,
  CloudWatchLoggingOptionId,
  ConditionalToken = NULL
)
}
\arguments{
\item{ApplicationName}{[required] The application name.}

\item{CurrentApplicationVersionId}{The version ID of the application. You must provide the
\code{CurrentApplicationVersionId} or the \code{ConditionalToken}. You can
retrieve the application version ID using
\code{\link[=kinesisanalyticsv2_describe_application]{describe_application}}. For
better concurrency support, use the \code{ConditionalToken} parameter instead
of \code{CurrentApplicationVersionId}.}

\item{CloudWatchLoggingOptionId}{[required] The \code{CloudWatchLoggingOptionId} of the Amazon CloudWatch logging option
to delete. You can get the \code{CloudWatchLoggingOptionId} by using the
\code{\link[=kinesisanalyticsv2_describe_application]{describe_application}}
operation.}

\item{ConditionalToken}{A value you use to implement strong concurrency for application updates.
You must provide the \code{CurrentApplicationVersionId} or the
\code{ConditionalToken}. You get the application's current \code{ConditionalToken}
using \code{\link[=kinesisanalyticsv2_describe_application]{describe_application}}.
For better concurrency support, use the \code{ConditionalToken} parameter
instead of \code{CurrentApplicationVersionId}.}
}
\description{
Deletes an Amazon CloudWatch log stream from an SQL-based Kinesis Data Analytics application.

See \url{https://www.paws-r-sdk.com/docs/kinesisanalyticsv2_delete_application_cloud_watch_logging_option/} for full documentation.
}
\keyword{internal}
