% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/redshift_operations.R
\name{redshift_describe_table_restore_status}
\alias{redshift_describe_table_restore_status}
\title{Lists the status of one or more table restore requests made using the
RestoreTableFromClusterSnapshot API action}
\usage{
redshift_describe_table_restore_status(
  ClusterIdentifier = NULL,
  TableRestoreRequestId = NULL,
  MaxRecords = NULL,
  Marker = NULL
)
}
\arguments{
\item{ClusterIdentifier}{The Amazon Redshift cluster that the table is being restored to.}

\item{TableRestoreRequestId}{The identifier of the table restore request to return status for. If you
don't specify a \code{TableRestoreRequestId} value, then
\code{\link[=redshift_describe_table_restore_status]{describe_table_restore_status}}
returns the status of all in-progress table restore requests.}

\item{MaxRecords}{The maximum number of records to include in the response. If more
records exist than the specified \code{MaxRecords} value, a pagination token
called a marker is included in the response so that the remaining
results can be retrieved.}

\item{Marker}{An optional pagination token provided by a previous
\code{\link[=redshift_describe_table_restore_status]{describe_table_restore_status}}
request. If this parameter is specified, the response includes only
records beyond the marker, up to the value specified by the \code{MaxRecords}
parameter.}
}
\description{
Lists the status of one or more table restore requests made using the \code{\link[=redshift_restore_table_from_cluster_snapshot]{restore_table_from_cluster_snapshot}} API action. If you don't specify a value for the \code{TableRestoreRequestId} parameter, then \code{\link[=redshift_describe_table_restore_status]{describe_table_restore_status}} returns the status of all table restore requests ordered by the date and time of the request in ascending order. Otherwise \code{\link[=redshift_describe_table_restore_status]{describe_table_restore_status}} returns the status of the table specified by \code{TableRestoreRequestId}.

See \url{https://www.paws-r-sdk.com/docs/redshift_describe_table_restore_status/} for full documentation.
}
\keyword{internal}
