% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_delete_ml_transform}
\alias{glue_delete_ml_transform}
\title{Deletes an Glue machine learning transform}
\usage{
glue_delete_ml_transform(TransformId)
}
\arguments{
\item{TransformId}{[required] The unique identifier of the transform to delete.}
}
\description{
Deletes an Glue machine learning transform. Machine learning transforms are a special type of transform that use machine learning to learn the details of the transformation to be performed by learning from examples provided by humans. These transformations are then saved by Glue. If you no longer need a transform, you can delete it by calling \code{DeleteMLTransforms}. However, any Glue jobs that still reference the deleted transform will no longer succeed.

See \url{https://www.paws-r-sdk.com/docs/glue_delete_ml_transform/} for full documentation.
}
\keyword{internal}
