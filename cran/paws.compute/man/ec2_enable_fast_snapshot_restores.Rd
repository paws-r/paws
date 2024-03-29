% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_enable_fast_snapshot_restores}
\alias{ec2_enable_fast_snapshot_restores}
\title{Enables fast snapshot restores for the specified snapshots in the
specified Availability Zones}
\usage{
ec2_enable_fast_snapshot_restores(
  AvailabilityZones,
  SourceSnapshotIds,
  DryRun = NULL
)
}
\arguments{
\item{AvailabilityZones}{[required] One or more Availability Zones. For example, \verb{us-east-2a}.}

\item{SourceSnapshotIds}{[required] The IDs of one or more snapshots. For example, \verb{snap-1234567890abcdef0}.
You can specify a snapshot that was shared with you from another Amazon
Web Services account.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Enables fast snapshot restores for the specified snapshots in the specified Availability Zones.

See \url{https://www.paws-r-sdk.com/docs/ec2_enable_fast_snapshot_restores/} for full documentation.
}
\keyword{internal}
