% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dax_operations.R
\name{dax_decrease_replication_factor}
\alias{dax_decrease_replication_factor}
\title{Removes one or more nodes from a DAX cluster}
\usage{
dax_decrease_replication_factor(
  ClusterName,
  NewReplicationFactor,
  AvailabilityZones = NULL,
  NodeIdsToRemove = NULL
)
}
\arguments{
\item{ClusterName}{[required] The name of the DAX cluster from which you want to remove nodes.}

\item{NewReplicationFactor}{[required] The new number of nodes for the DAX cluster.}

\item{AvailabilityZones}{The Availability Zone(s) from which to remove nodes.}

\item{NodeIdsToRemove}{The unique identifiers of the nodes to be removed from the cluster.}
}
\description{
Removes one or more nodes from a DAX cluster.

See \url{https://www.paws-r-sdk.com/docs/dax_decrease_replication_factor/} for full documentation.
}
\keyword{internal}
