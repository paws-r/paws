% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_get_relational_database_master_user_password}
\alias{lightsail_get_relational_database_master_user_password}
\title{Returns the current, previous, or pending versions of the master user
password for a Lightsail database}
\usage{
lightsail_get_relational_database_master_user_password(
  relationalDatabaseName,
  passwordVersion = NULL
)
}
\arguments{
\item{relationalDatabaseName}{[required] The name of your database for which to get the master user password.}

\item{passwordVersion}{The password version to return.

Specifying \code{CURRENT} or \code{PREVIOUS} returns the current or previous
passwords respectively. Specifying \code{PENDING} returns the newest version
of the password that will rotate to \code{CURRENT}. After the \code{PENDING}
password rotates to \code{CURRENT}, the \code{PENDING} password is no longer
available.

Default: \code{CURRENT}}
}
\description{
Returns the current, previous, or pending versions of the master user password for a Lightsail database.

See \url{https://www.paws-r-sdk.com/docs/lightsail_get_relational_database_master_user_password/} for full documentation.
}
\keyword{internal}
