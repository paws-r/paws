% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53domains_operations.R
\name{route53domains_associate_delegation_signer_to_domain}
\alias{route53domains_associate_delegation_signer_to_domain}
\title{Creates a delegation signer (DS) record in the registry zone for this
domain name}
\usage{
route53domains_associate_delegation_signer_to_domain(
  DomainName,
  SigningAttributes
)
}
\arguments{
\item{DomainName}{[required] The name of the domain.}

\item{SigningAttributes}{[required] The information about a key, including the algorithm, public key-value,
and flags.}
}
\description{
Creates a delegation signer (DS) record in the registry zone for this domain name.

See \url{https://www.paws-r-sdk.com/docs/route53domains_associate_delegation_signer_to_domain/} for full documentation.
}
\keyword{internal}
