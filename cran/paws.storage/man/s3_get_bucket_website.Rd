% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_get_bucket_website}
\alias{s3_get_bucket_website}
\title{Returns the website configuration for a bucket}
\usage{
s3_get_bucket_website(Bucket, ExpectedBucketOwner)
}
\arguments{
\item{Bucket}{[required] The bucket name for which to get the website configuration.}

\item{ExpectedBucketOwner}{The account id of the expected bucket owner. If the bucket is owned by a
different account, the request will fail with an HTTP
\verb{403 (Access Denied)} error.}
}
\value{
A list with the following syntax:\preformatted{list(
  RedirectAllRequestsTo = list(
    HostName = "string",
    Protocol = "http"|"https"
  ),
  IndexDocument = list(
    Suffix = "string"
  ),
  ErrorDocument = list(
    Key = "string"
  ),
  RoutingRules = list(
    list(
      Condition = list(
        HttpErrorCodeReturnedEquals = "string",
        KeyPrefixEquals = "string"
      ),
      Redirect = list(
        HostName = "string",
        HttpRedirectCode = "string",
        Protocol = "http"|"https",
        ReplaceKeyPrefixWith = "string",
        ReplaceKeyWith = "string"
      )
    )
  )
)
}
}
\description{
Returns the website configuration for a bucket. To host website on
Amazon S3, you can configure a bucket as website by adding a website
configuration. For more information about hosting websites, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html}{Hosting Websites on Amazon S3}.

This GET operation requires the \code{S3:GetBucketWebsite} permission. By
default, only the bucket owner can read the bucket website
configuration. However, bucket owners can allow other users to read the
website configuration by writing a bucket policy granting them the
\code{S3:GetBucketWebsite} permission.

The following operations are related to
\code{\link[=s3_delete_bucket_website]{delete_bucket_website}}:
\itemize{
\item \code{\link[=s3_delete_bucket_website]{delete_bucket_website}}
\item \code{\link[=s3_put_bucket_website]{put_bucket_website}}
}
}
\section{Request syntax}{
\preformatted{svc$get_bucket_website(
  Bucket = "string",
  ExpectedBucketOwner = "string"
)
}
}

\examples{
\dontrun{
# The following example retrieves website configuration of a bucket.
svc$get_bucket_website(
  Bucket = "examplebucket"
)
}

}
\keyword{internal}
