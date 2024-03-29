% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/machinelearning_operations.R
\name{machinelearning_create_batch_prediction}
\alias{machinelearning_create_batch_prediction}
\title{Generates predictions for a group of observations}
\usage{
machinelearning_create_batch_prediction(
  BatchPredictionId,
  BatchPredictionName = NULL,
  MLModelId,
  BatchPredictionDataSourceId,
  OutputUri
)
}
\arguments{
\item{BatchPredictionId}{[required] A user-supplied ID that uniquely identifies the \code{BatchPrediction}.}

\item{BatchPredictionName}{A user-supplied name or description of the \code{BatchPrediction}.
\code{BatchPredictionName} can only use the UTF-8 character set.}

\item{MLModelId}{[required] The ID of the \code{MLModel} that will generate predictions for the group of
observations.}

\item{BatchPredictionDataSourceId}{[required] The ID of the \code{DataSource} that points to the group of observations to
predict.}

\item{OutputUri}{[required] The location of an Amazon Simple Storage Service (Amazon S3) bucket or
directory to store the batch prediction results. The following
substrings are not allowed in the \verb{s3 key} portion of the \code{outputURI}
field: ':', '//', '/./', '/../'.

Amazon ML needs permissions to store and retrieve the logs on your
behalf. For information about how to set permissions, see the \href{https://docs.aws.amazon.com/machine-learning/latest/dg/}{Amazon Machine Learning Developer Guide}.}
}
\description{
Generates predictions for a group of observations. The observations to process exist in one or more data files referenced by a \code{DataSource}. This operation creates a new \code{BatchPrediction}, and uses an \code{MLModel} and the data files referenced by the \code{DataSource} as information sources.

See \url{https://www.paws-r-sdk.com/docs/machinelearning_create_batch_prediction/} for full documentation.
}
\keyword{internal}
