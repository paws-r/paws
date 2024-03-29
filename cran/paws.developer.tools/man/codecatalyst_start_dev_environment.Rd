% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codecatalyst_operations.R
\name{codecatalyst_start_dev_environment}
\alias{codecatalyst_start_dev_environment}
\title{Starts a specified Dev Environment and puts it into an active state}
\usage{
codecatalyst_start_dev_environment(
  spaceName,
  projectName,
  id,
  ides = NULL,
  instanceType = NULL,
  inactivityTimeoutMinutes = NULL
)
}
\arguments{
\item{spaceName}{[required] The name of the space.}

\item{projectName}{[required] The name of the project in the space.}

\item{id}{[required] The system-generated unique ID of the Dev Environment.}

\item{ides}{Information about the integrated development environment (IDE)
configured for a Dev Environment.}

\item{instanceType}{The Amazon EC2 instace type to use for the Dev Environment.}

\item{inactivityTimeoutMinutes}{The amount of time the Dev Environment will run without any activity
detected before stopping, in minutes. Only whole integers are allowed.
Dev Environments consume compute minutes when running.}
}
\description{
Starts a specified Dev Environment and puts it into an active state.

See \url{https://www.paws-r-sdk.com/docs/codecatalyst_start_dev_environment/} for full documentation.
}
\keyword{internal}
