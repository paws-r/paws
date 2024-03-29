% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/neptunedata_operations.R
\name{neptunedata_cancel_ml_model_training_job}
\alias{neptunedata_cancel_ml_model_training_job}
\title{Cancels a Neptune ML model training job}
\usage{
neptunedata_cancel_ml_model_training_job(
  id,
  neptuneIamRoleArn = NULL,
  clean = NULL
)
}
\arguments{
\item{id}{[required] The unique identifier of the model-training job to be canceled.}

\item{neptuneIamRoleArn}{The ARN of an IAM role that provides Neptune access to SageMaker and
Amazon S3 resources. This must be listed in your DB cluster parameter
group or an error will occur.}

\item{clean}{If set to \code{TRUE}, this flag specifies that all Amazon S3 artifacts
should be deleted when the job is stopped. The default is \code{FALSE}.}
}
\description{
Cancels a Neptune ML model training job. See \href{https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html}{Model training using the \code{modeltraining} command}.

See \url{https://www.paws-r-sdk.com/docs/neptunedata_cancel_ml_model_training_job/} for full documentation.
}
\keyword{internal}
