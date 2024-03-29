% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kafka_operations.R
\name{kafka_put_cluster_policy}
\alias{kafka_put_cluster_policy}
\title{Creates or updates the MSK cluster policy specified by the cluster
Amazon Resource Name (ARN) in the request}
\usage{
kafka_put_cluster_policy(ClusterArn, CurrentVersion = NULL, Policy)
}
\arguments{
\item{ClusterArn}{[required] The Amazon Resource Name (ARN) of the cluster.}

\item{CurrentVersion}{The policy version.}

\item{Policy}{[required] The policy.}
}
\description{
Creates or updates the MSK cluster policy specified by the cluster Amazon Resource Name (ARN) in the request.

See \url{https://www.paws-r-sdk.com/docs/kafka_put_cluster_policy/} for full documentation.
}
\keyword{internal}
