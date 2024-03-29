% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/redshift_operations.R
\name{redshift_describe_hsm_configurations}
\alias{redshift_describe_hsm_configurations}
\title{Returns information about the specified Amazon Redshift HSM
configuration}
\usage{
redshift_describe_hsm_configurations(
  HsmConfigurationIdentifier = NULL,
  MaxRecords = NULL,
  Marker = NULL,
  TagKeys = NULL,
  TagValues = NULL
)
}
\arguments{
\item{HsmConfigurationIdentifier}{The identifier of a specific Amazon Redshift HSM configuration to be
described. If no identifier is specified, information is returned for
all HSM configurations owned by your Amazon Web Services account.}

\item{MaxRecords}{The maximum number of response records to return in each call. If the
number of remaining response records exceeds the specified \code{MaxRecords}
value, a value is returned in a \code{marker} field of the response. You can
retrieve the next set of records by retrying the command with the
returned marker value.

Default: \code{100}

Constraints: minimum 20, maximum 100.}

\item{Marker}{An optional parameter that specifies the starting point to return a set
of response records. When the results of a
\code{\link[=redshift_describe_hsm_configurations]{describe_hsm_configurations}}
request exceed the value specified in \code{MaxRecords}, Amazon Web Services
returns a value in the \code{Marker} field of the response. You can retrieve
the next set of response records by providing the returned marker value
in the \code{Marker} parameter and retrying the request.}

\item{TagKeys}{A tag key or keys for which you want to return all matching HSM
configurations that are associated with the specified key or keys. For
example, suppose that you have HSM configurations that are tagged with
keys called \code{owner} and \code{environment}. If you specify both of these tag
keys in the request, Amazon Redshift returns a response with the HSM
configurations that have either or both of these tag keys associated
with them.}

\item{TagValues}{A tag value or values for which you want to return all matching HSM
configurations that are associated with the specified tag value or
values. For example, suppose that you have HSM configurations that are
tagged with values called \code{admin} and \code{test}. If you specify both of
these tag values in the request, Amazon Redshift returns a response with
the HSM configurations that have either or both of these tag values
associated with them.}
}
\description{
Returns information about the specified Amazon Redshift HSM configuration. If no configuration ID is specified, returns information about all the HSM configurations owned by your Amazon Web Services account.

See \url{https://www.paws-r-sdk.com/docs/redshift_describe_hsm_configurations/} for full documentation.
}
\keyword{internal}
