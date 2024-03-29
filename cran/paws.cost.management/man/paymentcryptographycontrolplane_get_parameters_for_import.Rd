% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paymentcryptographycontrolplane_operations.R
\name{paymentcryptographycontrolplane_get_parameters_for_import}
\alias{paymentcryptographycontrolplane_get_parameters_for_import}
\title{Gets the import token and the wrapping key certificate in PEM format
(base64 encoded) to initiate a TR-34 WrappedKeyBlock}
\usage{
paymentcryptographycontrolplane_get_parameters_for_import(
  KeyMaterialType,
  WrappingKeyAlgorithm
)
}
\arguments{
\item{KeyMaterialType}{[required] The method to use for key material import. Import token is only required
for TR-34 WrappedKeyBlock (\code{TR34_KEY_BLOCK}).

Import token is not required for TR-31, root public key cerificate or
trusted public key certificate.}

\item{WrappingKeyAlgorithm}{[required] The wrapping key algorithm to generate a wrapping key certificate. This
certificate wraps the key under import.

At this time, \code{RSA_2048}, \code{RSA_3072}, \code{RSA_4096} are the only allowed
algorithms for TR-34 WrappedKeyBlock import.}
}
\description{
Gets the import token and the wrapping key certificate in PEM format (base64 encoded) to initiate a TR-34 WrappedKeyBlock.

See \url{https://www.paws-r-sdk.com/docs/paymentcryptographycontrolplane_get_parameters_for_import/} for full documentation.
}
\keyword{internal}
