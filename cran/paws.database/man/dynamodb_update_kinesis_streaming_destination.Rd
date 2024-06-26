% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dynamodb_operations.R
\name{dynamodb_update_kinesis_streaming_destination}
\alias{dynamodb_update_kinesis_streaming_destination}
\title{The command to update the Kinesis stream destination}
\usage{
dynamodb_update_kinesis_streaming_destination(
  TableName,
  StreamArn,
  UpdateKinesisStreamingConfiguration = NULL
)
}
\arguments{
\item{TableName}{[required] The table name for the Kinesis streaming destination input. You can also
provide the ARN of the table in this parameter.}

\item{StreamArn}{[required] The Amazon Resource Name (ARN) for the Kinesis stream input.}

\item{UpdateKinesisStreamingConfiguration}{The command to update the Kinesis stream configuration.}
}
\description{
The command to update the Kinesis stream destination.

See \url{https://www.paws-r-sdk.com/docs/dynamodb_update_kinesis_streaming_destination/} for full documentation.
}
\keyword{internal}
