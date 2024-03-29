% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_update_resource_data_sync}
\alias{ssm_update_resource_data_sync}
\title{Update a resource data sync}
\usage{
ssm_update_resource_data_sync(SyncName, SyncType, SyncSource)
}
\arguments{
\item{SyncName}{[required] The name of the resource data sync you want to update.}

\item{SyncType}{[required] The type of resource data sync. The supported \code{SyncType} is
SyncFromSource.}

\item{SyncSource}{[required] Specify information about the data sources to synchronize.}
}
\description{
Update a resource data sync. After you create a resource data sync for a Region, you can't change the account options for that sync. For example, if you create a sync in the us-east-2 (Ohio) Region and you choose the \verb{Include only the current account} option, you can't edit that sync later and choose the \verb{Include all accounts from my Organizations configuration} option. Instead, you must delete the first resource data sync, and create a new one.

See \url{https://www.paws-r-sdk.com/docs/ssm_update_resource_data_sync/} for full documentation.
}
\keyword{internal}
