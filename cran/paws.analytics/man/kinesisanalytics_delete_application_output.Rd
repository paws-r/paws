% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinesisanalytics_operations.R
\name{kinesisanalytics_delete_application_output}
\alias{kinesisanalytics_delete_application_output}
\title{This documentation is for version 1 of the Amazon Kinesis Data Analytics
API, which only supports SQL applications}
\usage{
kinesisanalytics_delete_application_output(
  ApplicationName,
  CurrentApplicationVersionId,
  OutputId
)
}
\arguments{
\item{ApplicationName}{[required] Amazon Kinesis Analytics application name.}

\item{CurrentApplicationVersionId}{[required] Amazon Kinesis Analytics application version. You can use the
\code{\link[=kinesisanalytics_describe_application]{describe_application}}
operation to get the current application version. If the version
specified is not the current version, the
\code{ConcurrentModificationException} is returned.}

\item{OutputId}{[required] The ID of the configuration to delete. Each output configuration that is
added to the application, either when the application is created or
later using the
\code{\link[=kinesisanalytics_add_application_output]{add_application_output}}
operation, has a unique ID. You need to provide the ID to uniquely
identify the output configuration that you want to delete from the
application configuration. You can use the
\code{\link[=kinesisanalytics_describe_application]{describe_application}}
operation to get the specific \code{OutputId}.}
}
\description{
This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications. Version 2 of the API supports SQL and Java applications. For more information about version 2, see Amazon Kinesis Data Analytics API V2 Documentation.

See \url{https://www.paws-r-sdk.com/docs/kinesisanalytics_delete_application_output/} for full documentation.
}
\keyword{internal}
