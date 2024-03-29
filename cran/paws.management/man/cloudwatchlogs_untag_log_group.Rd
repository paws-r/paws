% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatchlogs_operations.R
\name{cloudwatchlogs_untag_log_group}
\alias{cloudwatchlogs_untag_log_group}
\title{The UntagLogGroup operation is on the path to deprecation}
\usage{
cloudwatchlogs_untag_log_group(logGroupName, tags)
}
\arguments{
\item{logGroupName}{[required] The name of the log group.}

\item{tags}{[required] The tag keys. The corresponding tags are removed from the log group.}
}
\description{
The UntagLogGroup operation is on the path to deprecation. We recommend that you use \code{\link[=cloudwatchlogs_untag_resource]{untag_resource}} instead.

See \url{https://www.paws-r-sdk.com/docs/cloudwatchlogs_untag_log_group/} for full documentation.
}
\keyword{internal}
