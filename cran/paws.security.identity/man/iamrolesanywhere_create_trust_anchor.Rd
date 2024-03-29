% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iamrolesanywhere_operations.R
\name{iamrolesanywhere_create_trust_anchor}
\alias{iamrolesanywhere_create_trust_anchor}
\title{Creates a trust anchor to establish trust between IAM Roles Anywhere and
your certificate authority (CA)}
\usage{
iamrolesanywhere_create_trust_anchor(
  enabled = NULL,
  name,
  notificationSettings = NULL,
  source,
  tags = NULL
)
}
\arguments{
\item{enabled}{Specifies whether the trust anchor is enabled.}

\item{name}{[required] The name of the trust anchor.}

\item{notificationSettings}{A list of notification settings to be associated to the trust anchor.}

\item{source}{[required] The trust anchor type and its related certificate data.}

\item{tags}{The tags to attach to the trust anchor.}
}
\description{
Creates a trust anchor to establish trust between IAM Roles Anywhere and your certificate authority (CA). You can define a trust anchor as a reference to an Private Certificate Authority (Private CA) or by uploading a CA certificate. Your Amazon Web Services workloads can authenticate with the trust anchor using certificates issued by the CA in exchange for temporary Amazon Web Services credentials.

See \url{https://www.paws-r-sdk.com/docs/iamrolesanywhere_create_trust_anchor/} for full documentation.
}
\keyword{internal}
