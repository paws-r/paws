% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/storagegateway_operations.R
\name{storagegateway_describe_tapes}
\alias{storagegateway_describe_tapes}
\title{Returns a description of virtual tapes that correspond to the specified
Amazon Resource Names (ARNs)}
\usage{
storagegateway_describe_tapes(
  GatewayARN,
  TapeARNs = NULL,
  Marker = NULL,
  Limit = NULL
)
}
\arguments{
\item{GatewayARN}{[required]}

\item{TapeARNs}{Specifies one or more unique Amazon Resource Names (ARNs) that represent
the virtual tapes you want to describe. If this parameter is not
specified, Tape gateway returns a description of all virtual tapes
associated with the specified gateway.}

\item{Marker}{A marker value, obtained in a previous call to
\code{\link[=storagegateway_describe_tapes]{describe_tapes}}. This marker indicates
which page of results to retrieve.

If not specified, the first page of results is retrieved.}

\item{Limit}{Specifies that the number of virtual tapes described be limited to the
specified number.

Amazon Web Services may impose its own limit, if this field is not set.}
}
\description{
Returns a description of virtual tapes that correspond to the specified Amazon Resource Names (ARNs). If \code{TapeARN} is not specified, returns a description of the virtual tapes associated with the specified gateway. This operation is only supported for the tape gateway type.

See \url{https://www.paws-r-sdk.com/docs/storagegateway_describe_tapes/} for full documentation.
}
\keyword{internal}
