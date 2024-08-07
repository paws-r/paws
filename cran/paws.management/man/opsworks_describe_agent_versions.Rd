% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opsworks_operations.R
\name{opsworks_describe_agent_versions}
\alias{opsworks_describe_agent_versions}
\title{Describes the available OpsWorks Stacks agent versions}
\usage{
opsworks_describe_agent_versions(StackId = NULL, ConfigurationManager = NULL)
}
\arguments{
\item{StackId}{The stack ID.}

\item{ConfigurationManager}{The configuration manager.}
}
\description{
Describes the available OpsWorks Stacks agent versions. You must specify a stack ID or a configuration manager. \code{\link[=opsworks_describe_agent_versions]{describe_agent_versions}} returns a list of available agent versions for the specified stack or configuration manager.

See \url{https://www.paws-r-sdk.com/docs/opsworks_describe_agent_versions/} for full documentation.
}
\keyword{internal}
