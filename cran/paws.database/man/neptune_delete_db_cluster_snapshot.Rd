% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/neptune_operations.R
\name{neptune_delete_db_cluster_snapshot}
\alias{neptune_delete_db_cluster_snapshot}
\title{Deletes a DB cluster snapshot}
\usage{
neptune_delete_db_cluster_snapshot(DBClusterSnapshotIdentifier)
}
\arguments{
\item{DBClusterSnapshotIdentifier}{[required] The identifier of the DB cluster snapshot to delete.

Constraints: Must be the name of an existing DB cluster snapshot in the
\code{available} state.}
}
\description{
Deletes a DB cluster snapshot. If the snapshot is being copied, the copy
operation is terminated.
}
\details{
The DB cluster snapshot must be in the \code{available} state to be deleted.
}
\section{Request syntax}{
\preformatted{svc$delete_db_cluster_snapshot(
  DBClusterSnapshotIdentifier = "string"
)
}
}

\keyword{internal}