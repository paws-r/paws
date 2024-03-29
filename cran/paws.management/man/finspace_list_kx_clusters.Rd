% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/finspace_operations.R
\name{finspace_list_kx_clusters}
\alias{finspace_list_kx_clusters}
\title{Returns a list of clusters}
\usage{
finspace_list_kx_clusters(
  environmentId,
  clusterType = NULL,
  maxResults = NULL,
  nextToken = NULL
)
}
\arguments{
\item{environmentId}{[required] A unique identifier for the kdb environment.}

\item{clusterType}{Specifies the type of KDB database that is being created. The following
types are available:
\itemize{
\item HDB – A Historical Database. The data is only accessible with
read-only permissions from one of the FinSpace managed kdb databases
mounted to the cluster.
\item RDB – A Realtime Database. This type of database captures all the
data from a ticker plant and stores it in memory until the end of
day, after which it writes all of its data to a disk and reloads the
HDB. This cluster type requires local storage for temporary storage
of data during the savedown process. If you specify this field in
your request, you must provide the \code{savedownStorageConfiguration}
parameter.
\item GATEWAY – A gateway cluster allows you to access data across
processes in kdb systems. It allows you to create your own routing
logic using the initialization scripts and custom code. This type of
cluster does not require a writable local storage.
\item GP – A general purpose cluster allows you to quickly iterate on code
during development by granting greater access to system commands and
enabling a fast reload of custom code. This cluster type can
optionally mount databases including cache and savedown storage. For
this cluster type, the node count is fixed at 1. It does not support
autoscaling and supports only \code{SINGLE} AZ mode.
\item Tickerplant – A tickerplant cluster allows you to subscribe to feed
handlers based on IAM permissions. It can publish to RDBs, other
Tickerplants, and real-time subscribers (RTS). Tickerplants can
persist messages to log, which is readable by any RDB environment.
It supports only single-node that is only one kdb process.
}}

\item{maxResults}{The maximum number of results to return in this request.}

\item{nextToken}{A token that indicates where a results page should begin.}
}
\description{
Returns a list of clusters.

See \url{https://www.paws-r-sdk.com/docs/finspace_list_kx_clusters/} for full documentation.
}
\keyword{internal}
