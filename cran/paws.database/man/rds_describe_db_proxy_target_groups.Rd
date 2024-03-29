% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rds_operations.R
\name{rds_describe_db_proxy_target_groups}
\alias{rds_describe_db_proxy_target_groups}
\title{Returns information about DB proxy target groups, represented by
DBProxyTargetGroup data structures}
\usage{
rds_describe_db_proxy_target_groups(
  DBProxyName,
  TargetGroupName = NULL,
  Filters = NULL,
  Marker = NULL,
  MaxRecords = NULL
)
}
\arguments{
\item{DBProxyName}{[required] The identifier of the \code{DBProxy} associated with the target group.}

\item{TargetGroupName}{The identifier of the \code{DBProxyTargetGroup} to describe.}

\item{Filters}{This parameter is not currently supported.}

\item{Marker}{An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by \code{MaxRecords}.}

\item{MaxRecords}{The maximum number of records to include in the response. If more
records exist than the specified \code{MaxRecords} value, a pagination token
called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.}
}
\description{
Returns information about DB proxy target groups, represented by \code{DBProxyTargetGroup} data structures.

See \url{https://www.paws-r-sdk.com/docs/rds_describe_db_proxy_target_groups/} for full documentation.
}
\keyword{internal}
