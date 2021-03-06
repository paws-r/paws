% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_delete_bucket_replication}
\alias{s3_delete_bucket_replication}
\title{Deletes the replication configuration from the bucket}
\usage{
s3_delete_bucket_replication(Bucket, ExpectedBucketOwner)
}
\arguments{
\item{Bucket}{[required] The bucket name.}

\item{ExpectedBucketOwner}{The account id of the expected bucket owner. If the bucket is owned by a
different account, the request will fail with an HTTP
\verb{403 (Access Denied)} error.}
}
\value{
An empty list.
}
\description{
Deletes the replication configuration from the bucket.

To use this operation, you must have permissions to perform the
\code{s3:PutReplicationConfiguration} action. The bucket owner has these
permissions by default and can grant it to others. For more information
about permissions, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources}{Permissions Related to Bucket Subresource Operations}
and \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html}{Managing Access Permissions to Your Amazon S3 Resources}.

It can take a while for the deletion of a replication configuration to
fully propagate.

For information about replication configuration, see Replication in the
\emph{Amazon S3 Developer Guide}.

The following operations are related to
\code{\link[=s3_delete_bucket_replication]{delete_bucket_replication}}:
\itemize{
\item \code{\link[=s3_put_bucket_replication]{put_bucket_replication}}
\item \code{\link[=s3_get_bucket_replication]{get_bucket_replication}}
}
}
\section{Request syntax}{
\preformatted{svc$delete_bucket_replication(
  Bucket = "string",
  ExpectedBucketOwner = "string"
)
}
}

\examples{
\dontrun{
# The following example deletes replication configuration set on bucket.
svc$delete_bucket_replication(
  Bucket = "example"
)
}

}
\keyword{internal}
