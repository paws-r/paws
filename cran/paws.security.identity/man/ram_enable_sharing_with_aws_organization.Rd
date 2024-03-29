% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ram_operations.R
\name{ram_enable_sharing_with_aws_organization}
\alias{ram_enable_sharing_with_aws_organization}
\title{Enables resource sharing within your organization in Organizations}
\usage{
ram_enable_sharing_with_aws_organization()
}
\description{
Enables resource sharing within your organization in Organizations. This operation creates a service-linked role called \code{AWSServiceRoleForResourceAccessManager} that has the IAM managed policy named AWSResourceAccessManagerServiceRolePolicy attached. This role permits RAM to retrieve information about the organization and its structure. This lets you share resources with all of the accounts in the calling account's organization by specifying the organization ID, or all of the accounts in an organizational unit (OU) by specifying the OU ID. Until you enable sharing within the organization, you can specify only individual Amazon Web Services accounts, or for supported resource types, IAM roles and users.

See \url{https://www.paws-r-sdk.com/docs/ram_enable_sharing_with_aws_organization/} for full documentation.
}
\keyword{internal}
