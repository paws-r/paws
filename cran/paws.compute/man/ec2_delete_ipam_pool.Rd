% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_delete_ipam_pool}
\alias{ec2_delete_ipam_pool}
\title{Delete an IPAM pool}
\usage{
ec2_delete_ipam_pool(DryRun = NULL, IpamPoolId, Cascade = NULL)
}
\arguments{
\item{DryRun}{A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
\code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{IpamPoolId}{[required] The ID of the pool to delete.}

\item{Cascade}{Enables you to quickly delete an IPAM pool and all resources within that
pool, including provisioned CIDRs, allocations, and other pools.

You can only use this option to delete pools in the private scope or
pools in the public scope with a source resource. A source resource is a
resource used to provision CIDRs to a resource planning pool.}
}
\description{
Delete an IPAM pool.

See \url{https://www.paws-r-sdk.com/docs/ec2_delete_ipam_pool/} for full documentation.
}
\keyword{internal}
