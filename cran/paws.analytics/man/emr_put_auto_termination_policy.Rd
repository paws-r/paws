% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emr_operations.R
\name{emr_put_auto_termination_policy}
\alias{emr_put_auto_termination_policy}
\title{Auto-termination is supported in Amazon EMR releases 5}
\usage{
emr_put_auto_termination_policy(ClusterId, AutoTerminationPolicy = NULL)
}
\arguments{
\item{ClusterId}{[required] Specifies the ID of the Amazon EMR cluster to which the auto-termination
policy will be attached.}

\item{AutoTerminationPolicy}{Specifies the auto-termination policy to attach to the cluster.}
}
\description{
Auto-termination is supported in Amazon EMR releases 5.30.0 and 6.1.0 and later. For more information, see \href{https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-auto-termination-policy.html}{Using an auto-termination policy}.

See \url{https://www.paws-r-sdk.com/docs/emr_put_auto_termination_policy/} for full documentation.
}
\keyword{internal}
