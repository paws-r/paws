% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/signer_operations.R
\name{signer_revoke_signing_profile}
\alias{signer_revoke_signing_profile}
\title{Changes the state of a signing profile to REVOKED}
\usage{
signer_revoke_signing_profile(profileName, profileVersion, reason,
  effectiveTime)
}
\arguments{
\item{profileName}{[required] The name of the signing profile to be revoked.}

\item{profileVersion}{[required] The version of the signing profile to be revoked.}

\item{reason}{[required] The reason for revoking a signing profile.}

\item{effectiveTime}{[required] A timestamp for when revocation of a Signing Profile should become
effective. Signatures generated using the signing profile after this
timestamp are not trusted.}
}
\value{
An empty list.
}
\description{
Changes the state of a signing profile to REVOKED. This indicates that
signatures generated using the signing profile after an effective start
date are no longer valid.
}
\section{Request syntax}{
\preformatted{svc$revoke_signing_profile(
  profileName = "string",
  profileVersion = "string",
  reason = "string",
  effectiveTime = as.POSIXct(
    "2015-01-01"
  )
)
}
}

\keyword{internal}
