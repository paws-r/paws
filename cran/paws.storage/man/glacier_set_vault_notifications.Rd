% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glacier_operations.R
\name{glacier_set_vault_notifications}
\alias{glacier_set_vault_notifications}
\title{This operation configures notifications that will be sent when specific
events happen to a vault}
\usage{
glacier_set_vault_notifications(
  accountId,
  vaultName,
  vaultNotificationConfig = NULL
)
}
\arguments{
\item{accountId}{[required] The \code{AccountId} value is the AWS account ID of the account that owns the
vault. You can either specify an AWS account ID or optionally a single
'\code{-}' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID
associated with the credentials used to sign the request. If you use an
account ID, do not include any hyphens ('-') in the ID.}

\item{vaultName}{[required] The name of the vault.}

\item{vaultNotificationConfig}{Provides options for specifying notification configuration.}
}
\description{
This operation configures notifications that will be sent when specific events happen to a vault. By default, you don't get any notifications.

See \url{https://www.paws-r-sdk.com/docs/glacier_set_vault_notifications/} for full documentation.
}
\keyword{internal}
