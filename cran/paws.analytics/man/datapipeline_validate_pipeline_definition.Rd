% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datapipeline_operations.R
\name{datapipeline_validate_pipeline_definition}
\alias{datapipeline_validate_pipeline_definition}
\title{Validates the specified pipeline definition to ensure that it is well
formed and can be run without error}
\usage{
datapipeline_validate_pipeline_definition(
  pipelineId,
  pipelineObjects,
  parameterObjects = NULL,
  parameterValues = NULL
)
}
\arguments{
\item{pipelineId}{[required] The ID of the pipeline.}

\item{pipelineObjects}{[required] The objects that define the pipeline changes to validate against the
pipeline.}

\item{parameterObjects}{The parameter objects used with the pipeline.}

\item{parameterValues}{The parameter values used with the pipeline.}
}
\description{
Validates the specified pipeline definition to ensure that it is well formed and can be run without error.

See \url{https://www.paws-r-sdk.com/docs/datapipeline_validate_pipeline_definition/} for full documentation.
}
\keyword{internal}
