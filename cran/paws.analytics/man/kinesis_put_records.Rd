% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinesis_operations.R
\name{kinesis_put_records}
\alias{kinesis_put_records}
\title{Writes multiple data records into a Kinesis data stream in a single call
(also referred to as a PutRecords request)}
\usage{
kinesis_put_records(Records, StreamName = NULL, StreamARN = NULL)
}
\arguments{
\item{Records}{[required] The records associated with the request.}

\item{StreamName}{The stream name associated with the request.}

\item{StreamARN}{The ARN of the stream.}
}
\description{
Writes multiple data records into a Kinesis data stream in a single call (also referred to as a \code{\link[=kinesis_put_records]{put_records}} request). Use this operation to send data into the stream for data ingestion and processing.

See \url{https://www.paws-r-sdk.com/docs/kinesis_put_records/} for full documentation.
}
\keyword{internal}
