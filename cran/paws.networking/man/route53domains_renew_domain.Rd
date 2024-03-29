% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53domains_operations.R
\name{route53domains_renew_domain}
\alias{route53domains_renew_domain}
\title{This operation renews a domain for the specified number of years}
\usage{
route53domains_renew_domain(
  DomainName,
  DurationInYears = NULL,
  CurrentExpiryYear
)
}
\arguments{
\item{DomainName}{[required] The name of the domain that you want to renew.}

\item{DurationInYears}{The number of years that you want to renew the domain for. The maximum
number of years depends on the top-level domain. For the range of valid
values for your domain, see \href{https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html}{Domains that You Can Register with Amazon Route 53}
in the \emph{Amazon Route 53 Developer Guide}.

Default: 1}

\item{CurrentExpiryYear}{[required] The year when the registration for the domain is set to expire. This
value must match the current expiration date for the domain.}
}
\description{
This operation renews a domain for the specified number of years. The cost of renewing your domain is billed to your Amazon Web Services account.

See \url{https://www.paws-r-sdk.com/docs/route53domains_renew_domain/} for full documentation.
}
\keyword{internal}
