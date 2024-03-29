% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emr_operations.R
\name{emr_modify_cluster}
\alias{emr_modify_cluster}
\title{Modifies the number of steps that can be executed concurrently for the
cluster specified using ClusterID}
\usage{
emr_modify_cluster(ClusterId, StepConcurrencyLevel = NULL)
}
\arguments{
\item{ClusterId}{[required] The unique identifier of the cluster.}

\item{StepConcurrencyLevel}{The number of steps that can be executed concurrently. You can specify a
minimum of 1 step and a maximum of 256 steps. We recommend that you do
not change this parameter while steps are running or the
\code{ActionOnFailure} setting may not behave as expected. For more
information see Step$ActionOnFailure.}
}
\description{
Modifies the number of steps that can be executed concurrently for the cluster specified using ClusterID.

See \url{https://www.paws-r-sdk.com/docs/emr_modify_cluster/} for full documentation.
}
\keyword{internal}
