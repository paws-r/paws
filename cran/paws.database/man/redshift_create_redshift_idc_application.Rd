% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/redshift_operations.R
\name{redshift_create_redshift_idc_application}
\alias{redshift_create_redshift_idc_application}
\title{Creates an Amazon Redshift application for use with IAM Identity Center}
\usage{
redshift_create_redshift_idc_application(
  IdcInstanceArn,
  RedshiftIdcApplicationName,
  IdentityNamespace = NULL,
  IdcDisplayName,
  IamRoleArn,
  AuthorizedTokenIssuerList = NULL,
  ServiceIntegrations = NULL
)
}
\arguments{
\item{IdcInstanceArn}{[required] The Amazon resource name (ARN) of the IAM Identity Center instance where
Amazon Redshift creates a new managed application.}

\item{RedshiftIdcApplicationName}{[required] The name of the Redshift application in IAM Identity Center.}

\item{IdentityNamespace}{The namespace for the Amazon Redshift IAM Identity Center application
instance. It determines which managed application verifies the
connection token.}

\item{IdcDisplayName}{[required] The display name for the Amazon Redshift IAM Identity Center application
instance. It appears in the console.}

\item{IamRoleArn}{[required] The IAM role ARN for the Amazon Redshift IAM Identity Center application
instance. It has the required permissions to be assumed and invoke the
IDC Identity Center API.}

\item{AuthorizedTokenIssuerList}{The token issuer list for the Amazon Redshift IAM Identity Center
application instance.}

\item{ServiceIntegrations}{A collection of service integrations for the Redshift IAM Identity
Center application.}
}
\description{
Creates an Amazon Redshift application for use with IAM Identity Center.

See \url{https://www.paws-r-sdk.com/docs/redshift_create_redshift_idc_application/} for full documentation.
}
\keyword{internal}
