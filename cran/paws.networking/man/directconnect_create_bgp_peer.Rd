% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/directconnect_operations.R
\name{directconnect_create_bgp_peer}
\alias{directconnect_create_bgp_peer}
\title{Creates a BGP peer on the specified virtual interface}
\usage{
directconnect_create_bgp_peer(virtualInterfaceId, newBGPPeer)
}
\arguments{
\item{virtualInterfaceId}{The ID of the virtual interface.}

\item{newBGPPeer}{Information about the BGP peer.}
}
\description{
Creates a BGP peer on the specified virtual interface.
}
\details{
You must create a BGP peer for the corresponding address family
(IPv4/IPv6) in order to access AWS resources that also use that address
family.

If logical redundancy is not supported by the connection, interconnect,
or LAG, the BGP peer cannot be in the same address family as an existing
BGP peer on the virtual interface.

When creating a IPv6 BGP peer, omit the Amazon address and customer
address. IPv6 addresses are automatically assigned from the Amazon pool
of IPv6 addresses; you cannot specify custom IPv6 addresses.

For a public virtual interface, the Autonomous System Number (ASN) must
be private or already whitelisted for the virtual interface.
}
\section{Request syntax}{
\preformatted{svc$create_bgp_peer(
  virtualInterfaceId = "string",
  newBGPPeer = list(
    asn = 123,
    authKey = "string",
    addressFamily = "ipv4"|"ipv6",
    amazonAddress = "string",
    customerAddress = "string"
  )
)
}
}

\keyword{internal}