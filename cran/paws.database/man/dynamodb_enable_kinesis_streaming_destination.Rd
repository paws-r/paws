% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dynamodb_operations.R
\name{dynamodb_enable_kinesis_streaming_destination}
\alias{dynamodb_enable_kinesis_streaming_destination}
\title{Starts table data replication to the specified Kinesis data stream at a
timestamp chosen during the enable workflow}
\usage{
dynamodb_enable_kinesis_streaming_destination(TableName, StreamArn)
}
\arguments{
\item{TableName}{[required] The name of the DynamoDB table.}

\item{StreamArn}{[required] The ARN for a Kinesis data stream.}
}
\description{
Starts table data replication to the specified Kinesis data stream at a timestamp chosen during the enable workflow. If this operation doesn't return results immediately, use DescribeKinesisStreamingDestination to check if streaming to the Kinesis data stream is ACTIVE.

See \url{https://www.paws-r-sdk.com/docs/dynamodb_enable_kinesis_streaming_destination/} for full documentation.
}
\keyword{internal}
