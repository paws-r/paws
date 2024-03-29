% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_vpn_connection_route}
\alias{ec2_create_vpn_connection_route}
\title{Creates a static route associated with a VPN connection between an
existing virtual private gateway and a VPN customer gateway}
\usage{
ec2_create_vpn_connection_route(DestinationCidrBlock, VpnConnectionId)
}
\arguments{
\item{DestinationCidrBlock}{[required] The CIDR block associated with the local subnet of the customer network.}

\item{VpnConnectionId}{[required] The ID of the VPN connection.}
}
\description{
Creates a static route associated with a VPN connection between an existing virtual private gateway and a VPN customer gateway. The static route allows traffic to be routed from the virtual private gateway to the VPN customer gateway.

See \url{https://www.paws-r-sdk.com/docs/ec2_create_vpn_connection_route/} for full documentation.
}
\keyword{internal}
