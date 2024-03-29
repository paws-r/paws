% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datazone_operations.R
\name{datazone_revoke_subscription}
\alias{datazone_revoke_subscription}
\title{Revokes a specified subscription in Amazon DataZone}
\usage{
datazone_revoke_subscription(
  domainIdentifier,
  identifier,
  retainPermissions = NULL
)
}
\arguments{
\item{domainIdentifier}{[required] The identifier of the Amazon DataZone domain where you want to revoke a
subscription.}

\item{identifier}{[required] The identifier of the revoked subscription.}

\item{retainPermissions}{Specifies whether permissions are retained when the subscription is
revoked.}
}
\description{
Revokes a specified subscription in Amazon DataZone.

See \url{https://www.paws-r-sdk.com/docs/datazone_revoke_subscription/} for full documentation.
}
\keyword{internal}
