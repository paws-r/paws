% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prometheusservice_operations.R
\name{prometheusservice_create_workspace}
\alias{prometheusservice_create_workspace}
\title{Creates a new AMP workspace}
\usage{
prometheusservice_create_workspace(
  alias = NULL,
  clientToken = NULL,
  tags = NULL,
  kmsKeyArn = NULL
)
}
\arguments{
\item{alias}{An optional user-assigned alias for this workspace. This alias is for
user reference and does not need to be unique.}

\item{clientToken}{Optional, unique, case-sensitive, user-provided identifier to ensure the
idempotency of the request.}

\item{tags}{Optional, user-provided tags for this workspace.}

\item{kmsKeyArn}{Optional, customer managed KMS key used to encrypt data for this
workspace}
}
\description{
Creates a new AMP workspace.

See \url{https://www.paws-r-sdk.com/docs/prometheusservice_create_workspace/} for full documentation.
}
\keyword{internal}
