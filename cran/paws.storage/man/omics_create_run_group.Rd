% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/omics_operations.R
\name{omics_create_run_group}
\alias{omics_create_run_group}
\title{Creates a run group}
\usage{
omics_create_run_group(
  name = NULL,
  maxCpus = NULL,
  maxRuns = NULL,
  maxDuration = NULL,
  tags = NULL,
  requestId,
  maxGpus = NULL
)
}
\arguments{
\item{name}{A name for the group.}

\item{maxCpus}{The maximum number of CPUs to use in the group.}

\item{maxRuns}{The maximum number of concurrent runs for the group.}

\item{maxDuration}{A maximum run time for the group in minutes.}

\item{tags}{Tags for the group.}

\item{requestId}{[required] To ensure that requests don't run multiple times, specify a unique ID
for each request.}

\item{maxGpus}{The maximum GPUs that can be used by a run group.}
}
\description{
Creates a run group.

See \url{https://www.paws-r-sdk.com/docs/omics_create_run_group/} for full documentation.
}
\keyword{internal}
