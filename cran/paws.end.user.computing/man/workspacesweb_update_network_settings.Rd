% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/workspacesweb_operations.R
\name{workspacesweb_update_network_settings}
\alias{workspacesweb_update_network_settings}
\title{Updates network settings}
\usage{
workspacesweb_update_network_settings(
  clientToken = NULL,
  networkSettingsArn,
  securityGroupIds = NULL,
  subnetIds = NULL,
  vpcId = NULL
)
}
\arguments{
\item{clientToken}{A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original request
completes successfully, subsequent retries with the same client token
return the result from the original successful request.

If you do not specify a client token, one is automatically generated by
the Amazon Web Services SDK.}

\item{networkSettingsArn}{[required] The ARN of the network settings.}

\item{securityGroupIds}{One or more security groups used to control access from streaming
instances to your VPC.}

\item{subnetIds}{The subnets in which network interfaces are created to connect streaming
instances to your VPC. At least two of these subnets must be in
different availability zones.}

\item{vpcId}{The VPC that streaming instances will connect to.}
}
\description{
Updates network settings.

See \url{https://www.paws-r-sdk.com/docs/workspacesweb_update_network_settings/} for full documentation.
}
\keyword{internal}
