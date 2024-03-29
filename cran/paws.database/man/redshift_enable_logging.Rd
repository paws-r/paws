% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/redshift_operations.R
\name{redshift_enable_logging}
\alias{redshift_enable_logging}
\title{Starts logging information, such as queries and connection attempts, for
the specified Amazon Redshift cluster}
\usage{
redshift_enable_logging(
  ClusterIdentifier,
  BucketName = NULL,
  S3KeyPrefix = NULL,
  LogDestinationType = NULL,
  LogExports = NULL
)
}
\arguments{
\item{ClusterIdentifier}{[required] The identifier of the cluster on which logging is to be started.

Example: \code{examplecluster}}

\item{BucketName}{The name of an existing S3 bucket where the log files are to be stored.

Constraints:
\itemize{
\item Must be in the same region as the cluster
\item The cluster must have read bucket and put object permissions
}}

\item{S3KeyPrefix}{The prefix applied to the log file names.

Constraints:
\itemize{
\item Cannot exceed 512 characters
\item Cannot contain spaces( ), double quotes ("), single quotes ('), a
backslash (\\), or control characters. The hexadecimal codes for
invalid characters are:
\itemize{
\item x00 to x20
\item x22
\item x27
\item x5c
\item x7f or larger
}
}}

\item{LogDestinationType}{The log destination type. An enum with possible values of \code{s3} and
\code{cloudwatch}.}

\item{LogExports}{The collection of exported log types. Possible values are
\code{connectionlog}, \code{useractivitylog}, and \code{userlog}.}
}
\description{
Starts logging information, such as queries and connection attempts, for the specified Amazon Redshift cluster.

See \url{https://www.paws-r-sdk.com/docs/redshift_enable_logging/} for full documentation.
}
\keyword{internal}
