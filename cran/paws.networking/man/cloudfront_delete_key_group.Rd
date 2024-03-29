% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudfront_operations.R
\name{cloudfront_delete_key_group}
\alias{cloudfront_delete_key_group}
\title{Deletes a key group}
\usage{
cloudfront_delete_key_group(Id, IfMatch = NULL)
}
\arguments{
\item{Id}{[required] The identifier of the key group that you are deleting. To get the
identifier, use \code{\link[=cloudfront_list_key_groups]{list_key_groups}}.}

\item{IfMatch}{The version of the key group that you are deleting. The version is the
key group's \code{ETag} value. To get the \code{ETag}, use
\code{\link[=cloudfront_get_key_group]{get_key_group}} or
\code{\link[=cloudfront_get_key_group_config]{get_key_group_config}}.}
}
\description{
Deletes a key group.

See \url{https://www.paws-r-sdk.com/docs/cloudfront_delete_key_group/} for full documentation.
}
\keyword{internal}
