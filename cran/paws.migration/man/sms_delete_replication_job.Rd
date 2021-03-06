% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sms_operations.R
\name{sms_delete_replication_job}
\alias{sms_delete_replication_job}
\title{Deletes the specified replication job}
\usage{
sms_delete_replication_job(replicationJobId)
}
\arguments{
\item{replicationJobId}{[required] The ID of the replication job.}
}
\value{
An empty list.
}
\description{
Deletes the specified replication job.

After you delete a replication job, there are no further replication
runs. AWS deletes the contents of the Amazon S3 bucket used to store AWS
SMS artifacts. The AMIs created by the replication runs are not deleted.
}
\section{Request syntax}{
\preformatted{svc$delete_replication_job(
  replicationJobId = "string"
)
}
}

\keyword{internal}
