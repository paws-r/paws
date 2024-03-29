% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/organizations_operations.R
\name{organizations_describe_handshake}
\alias{organizations_describe_handshake}
\title{Retrieves information about a previously requested handshake}
\usage{
organizations_describe_handshake(HandshakeId)
}
\arguments{
\item{HandshakeId}{[required] The unique identifier (ID) of the handshake that you want information
about. You can get the ID from the original call to
\code{\link[=organizations_invite_account_to_organization]{invite_account_to_organization}},
or from a call to
\code{\link[=organizations_list_handshakes_for_account]{list_handshakes_for_account}}
or
\code{\link[=organizations_list_handshakes_for_organization]{list_handshakes_for_organization}}.

The \href{https://en.wikipedia.org/wiki/Regex}{regex pattern} for handshake
ID string requires "h-" followed by from 8 to 32 lowercase letters or
digits.}
}
\description{
Retrieves information about a previously requested handshake. The handshake ID comes from the response to the original \code{\link[=organizations_invite_account_to_organization]{invite_account_to_organization}} operation that generated the handshake.

See \url{https://www.paws-r-sdk.com/docs/organizations_describe_handshake/} for full documentation.
}
\keyword{internal}
