% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_create_edge_deployment_plan}
\alias{sagemaker_create_edge_deployment_plan}
\title{Creates an edge deployment plan, consisting of multiple stages}
\usage{
sagemaker_create_edge_deployment_plan(
  EdgeDeploymentPlanName,
  ModelConfigs,
  DeviceFleetName,
  Stages = NULL,
  Tags = NULL
)
}
\arguments{
\item{EdgeDeploymentPlanName}{[required] The name of the edge deployment plan.}

\item{ModelConfigs}{[required] List of models associated with the edge deployment plan.}

\item{DeviceFleetName}{[required] The device fleet used for this edge deployment plan.}

\item{Stages}{List of stages of the edge deployment plan. The number of stages is
limited to 10 per deployment.}

\item{Tags}{List of tags with which to tag the edge deployment plan.}
}
\description{
Creates an edge deployment plan, consisting of multiple stages. Each stage may have a different deployment configuration and devices.

See \url{https://www.paws-r-sdk.com/docs/sagemaker_create_edge_deployment_plan/} for full documentation.
}
\keyword{internal}
