% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_list_training_jobs_for_hyper_parameter_tuning_job}
\alias{sagemaker_list_training_jobs_for_hyper_parameter_tuning_job}
\title{Gets a list of TrainingJobSummary objects that describe the training
jobs that a hyperparameter tuning job launched}
\usage{
sagemaker_list_training_jobs_for_hyper_parameter_tuning_job(
  HyperParameterTuningJobName,
  NextToken = NULL,
  MaxResults = NULL,
  StatusEquals = NULL,
  SortBy = NULL,
  SortOrder = NULL
)
}
\arguments{
\item{HyperParameterTuningJobName}{[required] The name of the tuning job whose training jobs you want to list.}

\item{NextToken}{If the result of the previous
\code{\link[=sagemaker_list_training_jobs_for_hyper_parameter_tuning_job]{list_training_jobs_for_hyper_parameter_tuning_job}}
request was truncated, the response includes a \code{NextToken}. To retrieve
the next set of training jobs, use the token in the next request.}

\item{MaxResults}{The maximum number of training jobs to return. The default value is 10.}

\item{StatusEquals}{A filter that returns only training jobs with the specified status.}

\item{SortBy}{The field to sort results by. The default is \code{Name}.

If the value of this field is \code{FinalObjectiveMetricValue}, any training
jobs that did not return an objective metric are not listed.}

\item{SortOrder}{The sort order for results. The default is \code{Ascending}.}
}
\description{
Gets a list of \href{https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_TrainingJobSummary.html}{TrainingJobSummary} objects that describe the training jobs that a hyperparameter tuning job launched.

See \url{https://www.paws-r-sdk.com/docs/sagemaker_list_training_jobs_for_hyper_parameter_tuning_job/} for full documentation.
}
\keyword{internal}
