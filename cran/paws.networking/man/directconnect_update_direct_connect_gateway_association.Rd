% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/directconnect_operations.R
\name{directconnect_update_direct_connect_gateway_association}
\alias{directconnect_update_direct_connect_gateway_association}
\title{Updates the specified attributes of the Direct Connect gateway
association}
\usage{
directconnect_update_direct_connect_gateway_association(associationId,
  addAllowedPrefixesToDirectConnectGateway,
  removeAllowedPrefixesToDirectConnectGateway)
}
\arguments{
\item{associationId}{The ID of the Direct Connect gateway association.}

\item{addAllowedPrefixesToDirectConnectGateway}{The Amazon VPC prefixes to advertise to the Direct Connect gateway.}

\item{removeAllowedPrefixesToDirectConnectGateway}{The Amazon VPC prefixes to no longer advertise to the Direct Connect
gateway.}
}
\value{
A list with the following syntax:\preformatted{list(
  directConnectGatewayAssociation = list(
    directConnectGatewayId = "string",
    directConnectGatewayOwnerAccount = "string",
    associationState = "associating"|"associated"|"disassociating"|"disassociated"|"updating",
    stateChangeError = "string",
    associatedGateway = list(
      id = "string",
      type = "virtualPrivateGateway"|"transitGateway",
      ownerAccount = "string",
      region = "string"
    ),
    associationId = "string",
    allowedPrefixesToDirectConnectGateway = list(
      list(
        cidr = "string"
      )
    ),
    virtualGatewayId = "string",
    virtualGatewayRegion = "string",
    virtualGatewayOwnerAccount = "string"
  )
)
}
}
\description{
Updates the specified attributes of the Direct Connect gateway
association.

Add or remove prefixes from the association.
}
\section{Request syntax}{
\preformatted{svc$update_direct_connect_gateway_association(
  associationId = "string",
  addAllowedPrefixesToDirectConnectGateway = list(
    list(
      cidr = "string"
    )
  ),
  removeAllowedPrefixesToDirectConnectGateway = list(
    list(
      cidr = "string"
    )
  )
)
}
}

\keyword{internal}
