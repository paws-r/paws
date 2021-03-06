% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/redshift_operations.R
\name{redshift_batch_delete_cluster_snapshots}
\alias{redshift_batch_delete_cluster_snapshots}
\title{Deletes a set of cluster snapshots}
\usage{
redshift_batch_delete_cluster_snapshots(Identifiers)
}
\arguments{
\item{Identifiers}{[required] A list of identifiers for the snapshots that you want to delete.}
}
\value{
A list with the following syntax:\preformatted{list(
  Resources = list(
    "string"
  ),
  Errors = list(
    list(
      SnapshotIdentifier = "string",
      SnapshotClusterIdentifier = "string",
      FailureCode = "string",
      FailureReason = "string"
    )
  )
)
}
}
\description{
Deletes a set of cluster snapshots.
}
\section{Request syntax}{
\preformatted{svc$batch_delete_cluster_snapshots(
  Identifiers = list(
    list(
      SnapshotIdentifier = "string",
      SnapshotClusterIdentifier = "string"
    )
  )
)
}
}

\keyword{internal}
