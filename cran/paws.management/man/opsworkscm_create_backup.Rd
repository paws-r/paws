% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opsworkscm_operations.R
\name{opsworkscm_create_backup}
\alias{opsworkscm_create_backup}
\title{Creates an application-level backup of a server}
\usage{
opsworkscm_create_backup(ServerName, Description = NULL, Tags = NULL)
}
\arguments{
\item{ServerName}{[required] The name of the server that you want to back up.}

\item{Description}{A user-defined description of the backup.}

\item{Tags}{A map that contains tag keys and tag values to attach to an AWS
OpsWorks-CM server backup.
\itemize{
\item The key cannot be empty.
\item The key can be a maximum of 127 characters, and can contain only
Unicode letters, numbers, or separators, or the following special
characters: \verb{+ - = . _ : /}
\item The value can be a maximum 255 characters, and contain only Unicode
letters, numbers, or separators, or the following special
characters: \verb{+ - = . _ : /}
\item Leading and trailing white spaces are trimmed from both the key and
value.
\item A maximum of 50 user-applied tags is allowed for tag-supported AWS
OpsWorks-CM resources.
}}
}
\description{
Creates an application-level backup of a server. While the server is in the \code{BACKING_UP} state, the server cannot be changed, and no additional backup can be created.

See \url{https://www.paws-r-sdk.com/docs/opsworkscm_create_backup/} for full documentation.
}
\keyword{internal}
