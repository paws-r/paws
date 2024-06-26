% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inspector2_operations.R
\name{inspector2_create_cis_scan_configuration}
\alias{inspector2_create_cis_scan_configuration}
\title{Creates a CIS scan configuration}
\usage{
inspector2_create_cis_scan_configuration(
  scanName,
  schedule,
  securityLevel,
  tags = NULL,
  targets
)
}
\arguments{
\item{scanName}{[required] The scan name for the CIS scan configuration.}

\item{schedule}{[required] The schedule for the CIS scan configuration.}

\item{securityLevel}{[required] The security level for the CIS scan configuration. Security level refers
to the Benchmark levels that CIS assigns to a profile.}

\item{tags}{The tags for the CIS scan configuration.}

\item{targets}{[required] The targets for the CIS scan configuration.}
}
\description{
Creates a CIS scan configuration.

See \url{https://www.paws-r-sdk.com/docs/inspector2_create_cis_scan_configuration/} for full documentation.
}
\keyword{internal}
