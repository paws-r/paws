% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudtrail_operations.R
\name{cloudtrail_disable_federation}
\alias{cloudtrail_disable_federation}
\title{Disables Lake query federation on the specified event data store}
\usage{
cloudtrail_disable_federation(EventDataStore)
}
\arguments{
\item{EventDataStore}{[required] The ARN (or ID suffix of the ARN) of the event data store for which you
want to disable Lake query federation.}
}
\description{
Disables Lake query federation on the specified event data store. When you disable federation, CloudTrail removes the metadata associated with the federated event data store in the Glue Data Catalog and removes registration for the federation role ARN and event data store in Lake Formation. No CloudTrail Lake data is deleted when you disable federation.

See \url{https://www.paws-r-sdk.com/docs/cloudtrail_disable_federation/} for full documentation.
}
\keyword{internal}
