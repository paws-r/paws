% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_dhcp_options}
\alias{ec2_create_dhcp_options}
\title{Creates a custom set of DHCP options}
\usage{
ec2_create_dhcp_options(
  DhcpConfigurations,
  TagSpecifications = NULL,
  DryRun = NULL
)
}
\arguments{
\item{DhcpConfigurations}{[required] A DHCP configuration option.}

\item{TagSpecifications}{The tags to assign to the DHCP option.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Creates a custom set of DHCP options. After you create a DHCP option set, you associate it with a VPC. After you associate a DHCP option set with a VPC, all existing and newly launched instances in the VPC use this set of DHCP options.

See \url{https://www.paws-r-sdk.com/docs/ec2_create_dhcp_options/} for full documentation.
}
\keyword{internal}
