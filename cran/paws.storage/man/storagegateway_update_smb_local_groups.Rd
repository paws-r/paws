% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/storagegateway_operations.R
\name{storagegateway_update_smb_local_groups}
\alias{storagegateway_update_smb_local_groups}
\title{Updates the list of Active Directory users and groups that have special
permissions for SMB file shares on the gateway}
\usage{
storagegateway_update_smb_local_groups(GatewayARN, SMBLocalGroups)
}
\arguments{
\item{GatewayARN}{[required]}

\item{SMBLocalGroups}{[required] A list of Active Directory users and groups that you want to grant
special permissions for SMB file shares on the gateway.}
}
\description{
Updates the list of Active Directory users and groups that have special permissions for SMB file shares on the gateway.

See \url{https://www.paws-r-sdk.com/docs/storagegateway_update_smb_local_groups/} for full documentation.
}
\keyword{internal}
