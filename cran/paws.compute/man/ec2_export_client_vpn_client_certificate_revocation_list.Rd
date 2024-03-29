% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_export_client_vpn_client_certificate_revocation_list}
\alias{ec2_export_client_vpn_client_certificate_revocation_list}
\title{Downloads the client certificate revocation list for the specified
Client VPN endpoint}
\usage{
ec2_export_client_vpn_client_certificate_revocation_list(
  ClientVpnEndpointId,
  DryRun = NULL
)
}
\arguments{
\item{ClientVpnEndpointId}{[required] The ID of the Client VPN endpoint.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Downloads the client certificate revocation list for the specified Client VPN endpoint.

See \url{https://www.paws-r-sdk.com/docs/ec2_export_client_vpn_client_certificate_revocation_list/} for full documentation.
}
\keyword{internal}
