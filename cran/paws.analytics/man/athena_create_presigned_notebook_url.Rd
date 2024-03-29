% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/athena_operations.R
\name{athena_create_presigned_notebook_url}
\alias{athena_create_presigned_notebook_url}
\title{Gets an authentication token and the URL at which the notebook can be
accessed}
\usage{
athena_create_presigned_notebook_url(SessionId)
}
\arguments{
\item{SessionId}{[required] The session ID.}
}
\description{
Gets an authentication token and the URL at which the notebook can be accessed. During programmatic access, \code{\link[=athena_create_presigned_notebook_url]{create_presigned_notebook_url}} must be called every 10 minutes to refresh the authentication token. For information about granting programmatic access, see \href{https://docs.aws.amazon.com/athena/latest/ug/setting-up.html#setting-up-grant-programmatic-access}{Grant programmatic access}.

See \url{https://www.paws-r-sdk.com/docs/athena_create_presigned_notebook_url/} for full documentation.
}
\keyword{internal}
