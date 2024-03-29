% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sfn_operations.R
\name{sfn_stop_execution}
\alias{sfn_stop_execution}
\title{Stops an execution}
\usage{
sfn_stop_execution(executionArn, error = NULL, cause = NULL)
}
\arguments{
\item{executionArn}{[required] The Amazon Resource Name (ARN) of the execution to stop.}

\item{error}{The error code of the failure.}

\item{cause}{A more detailed explanation of the cause of the failure.}
}
\description{
Stops an execution.

See \url{https://www.paws-r-sdk.com/docs/sfn_stop_execution/} for full documentation.
}
\keyword{internal}
