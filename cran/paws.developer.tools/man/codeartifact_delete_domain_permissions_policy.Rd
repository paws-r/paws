% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codeartifact_operations.R
\name{codeartifact_delete_domain_permissions_policy}
\alias{codeartifact_delete_domain_permissions_policy}
\title{Deletes the resource policy set on a domain}
\usage{
codeartifact_delete_domain_permissions_policy(
  domain,
  domainOwner = NULL,
  policyRevision = NULL
)
}
\arguments{
\item{domain}{[required] The name of the domain associated with the resource policy to be
deleted.}

\item{domainOwner}{The 12-digit account number of the Amazon Web Services account that owns
the domain. It does not include dashes or spaces.}

\item{policyRevision}{The current revision of the resource policy to be deleted. This revision
is used for optimistic locking, which prevents others from overwriting
your changes to the domain's resource policy.}
}
\description{
Deletes the resource policy set on a domain.

See \url{https://www.paws-r-sdk.com/docs/codeartifact_delete_domain_permissions_policy/} for full documentation.
}
\keyword{internal}
