% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfront_operations.R
\name{cloudfront_delete_cloud_front_origin_access_identity}
\alias{cloudfront_delete_cloud_front_origin_access_identity}
\title{Delete an origin access identity}
\usage{
cloudfront_delete_cloud_front_origin_access_identity(Id, IfMatch)
}
\arguments{
\item{Id}{[required] The origin access identity's ID.}

\item{IfMatch}{The value of the \code{ETag} header you received from a previous \code{GET} or
\code{PUT} request. For example: \code{E2QWRUHAPOMQZL}.}
}
\description{
Delete an origin access identity.
}
\section{Request syntax}{
\preformatted{svc$delete_cloud_front_origin_access_identity(
  Id = "string",
  IfMatch = "string"
)
}
}

\keyword{internal}