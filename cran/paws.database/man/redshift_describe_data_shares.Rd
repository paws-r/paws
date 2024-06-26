% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/redshift_operations.R
\name{redshift_describe_data_shares}
\alias{redshift_describe_data_shares}
\title{Shows the status of any inbound or outbound datashares available in the
specified account}
\usage{
redshift_describe_data_shares(
  DataShareArn = NULL,
  MaxRecords = NULL,
  Marker = NULL
)
}
\arguments{
\item{DataShareArn}{The Amazon resource name (ARN) of the datashare to describe details of.}

\item{MaxRecords}{The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified \code{MaxRecords}
value, a value is returned in a \code{marker} field of the response. You can
retrieve the next set of records by retrying the command with the
returned marker value.}

\item{Marker}{An optional parameter that specifies the starting point to return a set
of response records. When the results of a
\code{\link[=redshift_describe_data_shares]{describe_data_shares}} request exceed
the value specified in \code{MaxRecords}, Amazon Web Services returns a value
in the \code{Marker} field of the response. You can retrieve the next set of
response records by providing the returned marker value in the \code{Marker}
parameter and retrying the request.}
}
\description{
Shows the status of any inbound or outbound datashares available in the specified account.

See \url{https://www.paws-r-sdk.com/docs/redshift_describe_data_shares/} for full documentation.
}
\keyword{internal}
