% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_list_model_quality_job_definitions}
\alias{sagemaker_list_model_quality_job_definitions}
\title{Gets a list of model quality monitoring job definitions in your account}
\usage{
sagemaker_list_model_quality_job_definitions(
  EndpointName = NULL,
  SortBy = NULL,
  SortOrder = NULL,
  NextToken = NULL,
  MaxResults = NULL,
  NameContains = NULL,
  CreationTimeBefore = NULL,
  CreationTimeAfter = NULL
)
}
\arguments{
\item{EndpointName}{A filter that returns only model quality monitoring job definitions that
are associated with the specified endpoint.}

\item{SortBy}{The field to sort results by. The default is \code{CreationTime}.}

\item{SortOrder}{Whether to sort the results in \code{Ascending} or \code{Descending} order. The
default is \code{Descending}.}

\item{NextToken}{If the result of the previous
\code{\link[=sagemaker_list_model_quality_job_definitions]{list_model_quality_job_definitions}}
request was truncated, the response includes a \code{NextToken}. To retrieve
the next set of model quality monitoring job definitions, use the token
in the next request.}

\item{MaxResults}{The maximum number of results to return in a call to
\code{\link[=sagemaker_list_model_quality_job_definitions]{list_model_quality_job_definitions}}.}

\item{NameContains}{A string in the transform job name. This filter returns only model
quality monitoring job definitions whose name contains the specified
string.}

\item{CreationTimeBefore}{A filter that returns only model quality monitoring job definitions
created before the specified time.}

\item{CreationTimeAfter}{A filter that returns only model quality monitoring job definitions
created after the specified time.}
}
\description{
Gets a list of model quality monitoring job definitions in your account.

See \url{https://www.paws-r-sdk.com/docs/sagemaker_list_model_quality_job_definitions/} for full documentation.
}
\keyword{internal}
