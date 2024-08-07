% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_create_hub_content_reference}
\alias{sagemaker_create_hub_content_reference}
\title{Create a hub content reference in order to add a model in the JumpStart
public hub to a private hub}
\usage{
sagemaker_create_hub_content_reference(
  HubName,
  SageMakerPublicHubContentArn,
  HubContentName = NULL,
  MinVersion = NULL,
  Tags = NULL
)
}
\arguments{
\item{HubName}{[required] The name of the hub to add the hub content reference to.}

\item{SageMakerPublicHubContentArn}{[required] The ARN of the public hub content to reference.}

\item{HubContentName}{The name of the hub content to reference.}

\item{MinVersion}{The minimum version of the hub content to reference.}

\item{Tags}{Any tags associated with the hub content to reference.}
}
\description{
Create a hub content reference in order to add a model in the JumpStart public hub to a private hub.

See \url{https://www.paws-r-sdk.com/docs/sagemaker_create_hub_content_reference/} for full documentation.
}
\keyword{internal}
