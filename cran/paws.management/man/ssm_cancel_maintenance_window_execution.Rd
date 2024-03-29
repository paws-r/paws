% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_cancel_maintenance_window_execution}
\alias{ssm_cancel_maintenance_window_execution}
\title{Stops a maintenance window execution that is already in progress and
cancels any tasks in the window that haven't already starting running}
\usage{
ssm_cancel_maintenance_window_execution(WindowExecutionId)
}
\arguments{
\item{WindowExecutionId}{[required] The ID of the maintenance window execution to stop.}
}
\description{
Stops a maintenance window execution that is already in progress and cancels any tasks in the window that haven't already starting running. Tasks already in progress will continue to completion.

See \url{https://www.paws-r-sdk.com/docs/ssm_cancel_maintenance_window_execution/} for full documentation.
}
\keyword{internal}
