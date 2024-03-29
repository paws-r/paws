% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_retry_pipeline_execution}
\alias{sagemaker_retry_pipeline_execution}
\title{Retry the execution of the pipeline}
\usage{
sagemaker_retry_pipeline_execution(
  PipelineExecutionArn,
  ClientRequestToken,
  ParallelismConfiguration = NULL
)
}
\arguments{
\item{PipelineExecutionArn}{[required] The Amazon Resource Name (ARN) of the pipeline execution.}

\item{ClientRequestToken}{[required] A unique, case-sensitive identifier that you provide to ensure the
idempotency of the operation. An idempotent operation completes no more
than once.}

\item{ParallelismConfiguration}{This configuration, if specified, overrides the parallelism
configuration of the parent pipeline.}
}
\description{
Retry the execution of the pipeline.

See \url{https://www.paws-r-sdk.com/docs/sagemaker_retry_pipeline_execution/} for full documentation.
}
\keyword{internal}
