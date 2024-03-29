% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ses_operations.R
\name{ses_get_identity_dkim_attributes}
\alias{ses_get_identity_dkim_attributes}
\title{Returns the current status of Easy DKIM signing for an entity}
\usage{
ses_get_identity_dkim_attributes(Identities)
}
\arguments{
\item{Identities}{[required] A list of one or more verified identities - email addresses, domains, or
both.}
}
\description{
Returns the current status of Easy DKIM signing for an entity. For domain name identities, this operation also returns the DKIM tokens that are required for Easy DKIM signing, and whether Amazon SES has successfully verified that these tokens have been published.

See \url{https://www.paws-r-sdk.com/docs/ses_get_identity_dkim_attributes/} for full documentation.
}
\keyword{internal}
