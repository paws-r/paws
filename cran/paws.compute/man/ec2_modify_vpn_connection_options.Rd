% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_modify_vpn_connection_options}
\alias{ec2_modify_vpn_connection_options}
\title{Modifies the connection options for your Site-to-Site VPN connection}
\usage{
ec2_modify_vpn_connection_options(
  VpnConnectionId,
  LocalIpv4NetworkCidr = NULL,
  RemoteIpv4NetworkCidr = NULL,
  LocalIpv6NetworkCidr = NULL,
  RemoteIpv6NetworkCidr = NULL,
  DryRun = NULL
)
}
\arguments{
\item{VpnConnectionId}{[required] The ID of the Site-to-Site VPN connection.}

\item{LocalIpv4NetworkCidr}{The IPv4 CIDR on the customer gateway (on-premises) side of the VPN
connection.

Default: \verb{0.0.0.0/0}}

\item{RemoteIpv4NetworkCidr}{The IPv4 CIDR on the Amazon Web Services side of the VPN connection.

Default: \verb{0.0.0.0/0}}

\item{LocalIpv6NetworkCidr}{The IPv6 CIDR on the customer gateway (on-premises) side of the VPN
connection.

Default: \verb{::/0}}

\item{RemoteIpv6NetworkCidr}{The IPv6 CIDR on the Amazon Web Services side of the VPN connection.

Default: \verb{::/0}}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Modifies the connection options for your Site-to-Site VPN connection.

See \url{https://www.paws-r-sdk.com/docs/ec2_modify_vpn_connection_options/} for full documentation.
}
\keyword{internal}
