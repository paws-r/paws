% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rds_operations.R
\name{rds_delete_global_cluster}
\alias{rds_delete_global_cluster}
\title{Deletes a global database cluster}
\usage{
rds_delete_global_cluster(GlobalClusterIdentifier)
}
\arguments{
\item{GlobalClusterIdentifier}{[required] The cluster identifier of the global database cluster being deleted.}
}
\description{
Deletes a global database cluster. The primary and secondary clusters must already be detached or destroyed first.

See \url{https://www.paws-r-sdk.com/docs/rds_delete_global_cluster/} for full documentation.
}
\keyword{internal}
