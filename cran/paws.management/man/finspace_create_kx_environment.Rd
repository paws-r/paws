% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/finspace_operations.R
\name{finspace_create_kx_environment}
\alias{finspace_create_kx_environment}
\title{Creates a managed kdb environment for the account}
\usage{
finspace_create_kx_environment(
  name,
  description = NULL,
  kmsKeyId,
  tags = NULL,
  clientToken = NULL
)
}
\arguments{
\item{name}{[required] The name of the kdb environment that you want to create.}

\item{description}{A description for the kdb environment.}

\item{kmsKeyId}{[required] The KMS key ID to encrypt your data in the FinSpace environment.}

\item{tags}{A list of key-value pairs to label the kdb environment. You can add up
to 50 tags to your kdb environment.}

\item{clientToken}{A token that ensures idempotency. This token expires in 10 minutes.}
}
\description{
Creates a managed kdb environment for the account.

See \url{https://www.paws-r-sdk.com/docs/finspace_create_kx_environment/} for full documentation.
}
\keyword{internal}
