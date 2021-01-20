% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_delete_pipeline}
\alias{sagemaker_delete_pipeline}
\title{Deletes a pipeline if there are no in-progress executions}
\usage{
sagemaker_delete_pipeline(PipelineName, ClientRequestToken)
}
\arguments{
\item{PipelineName}{[required] The name of the pipeline to delete.}

\item{ClientRequestToken}{[required] A unique, case-sensitive identifier that you provide to ensure the
idempotency of the operation. An idempotent operation completes no more
than one time.}
}
\description{
Deletes a pipeline if there are no in-progress executions.
}
\section{Request syntax}{
\preformatted{svc$delete_pipeline(
  PipelineName = "string",
  ClientRequestToken = "string"
)
}
}

\keyword{internal}