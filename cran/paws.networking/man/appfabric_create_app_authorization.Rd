% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appfabric_operations.R
\name{appfabric_create_app_authorization}
\alias{appfabric_create_app_authorization}
\title{Creates an app authorization within an app bundle, which allows
AppFabric to connect to an application}
\usage{
appfabric_create_app_authorization(
  appBundleIdentifier,
  app,
  credential,
  tenant,
  authType,
  clientToken = NULL,
  tags = NULL
)
}
\arguments{
\item{appBundleIdentifier}{[required] The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of
the app bundle to use for the request.}

\item{app}{[required] The name of the application.

Valid values are:
\itemize{
\item \code{SLACK}
\item \code{ASANA}
\item \code{JIRA}
\item \code{M365}
\item \code{M365AUDITLOGS}
\item \code{ZOOM}
\item \code{ZENDESK}
\item \code{OKTA}
\item \code{GOOGLE}
\item \code{DROPBOX}
\item \code{SMARTSHEET}
\item \code{CISCO}
}}

\item{credential}{[required] Contains credentials for the application, such as an API key or OAuth2
client ID and secret.

Specify credentials that match the authorization type for your request.
For example, if the authorization type for your request is OAuth2
(\code{oauth2}), then you should provide only the OAuth2 credentials.}

\item{tenant}{[required] Contains information about an application tenant, such as the
application display name and identifier.}

\item{authType}{[required] The authorization type for the app authorization.}

\item{clientToken}{Specifies a unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. This lets you safely retry the request
without accidentally performing the same operation a second time.
Passing the same value to a later call to an operation requires that you
also pass the same value for all other parameters. We recommend that you
use a \href{https://en.wikipedia.org/wiki/Universally_unique_identifier}{UUID type of value}.

If you don't provide this value, then Amazon Web Services generates a
random one for you.

If you retry the operation with the same \code{ClientToken}, but with
different parameters, the retry fails with an
\code{IdempotentParameterMismatch} error.}

\item{tags}{A map of the key-value pairs of the tag or tags to assign to the
resource.}
}
\description{
Creates an app authorization within an app bundle, which allows AppFabric to connect to an application.

See \url{https://www.paws-r-sdk.com/docs/appfabric_create_app_authorization/} for full documentation.
}
\keyword{internal}
