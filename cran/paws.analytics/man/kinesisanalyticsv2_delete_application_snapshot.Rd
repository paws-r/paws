% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kinesisanalyticsv2_operations.R
\name{kinesisanalyticsv2_delete_application_snapshot}
\alias{kinesisanalyticsv2_delete_application_snapshot}
\title{Deletes a snapshot of application state}
\usage{
kinesisanalyticsv2_delete_application_snapshot(
  ApplicationName,
  SnapshotName,
  SnapshotCreationTimestamp
)
}
\arguments{
\item{ApplicationName}{[required] The name of an existing application.}

\item{SnapshotName}{[required] The identifier for the snapshot delete.}

\item{SnapshotCreationTimestamp}{[required] The creation timestamp of the application snapshot to delete. You can
retrieve this value using or .}
}
\description{
Deletes a snapshot of application state.

See \url{https://www.paws-r-sdk.com/docs/kinesisanalyticsv2_delete_application_snapshot/} for full documentation.
}
\keyword{internal}
