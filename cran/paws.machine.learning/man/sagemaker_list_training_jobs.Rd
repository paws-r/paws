% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_list_training_jobs}
\alias{sagemaker_list_training_jobs}
\title{Lists training jobs}
\usage{
sagemaker_list_training_jobs(NextToken, MaxResults, CreationTimeAfter,
  CreationTimeBefore, LastModifiedTimeAfter, LastModifiedTimeBefore,
  NameContains, StatusEquals, SortBy, SortOrder)
}
\arguments{
\item{NextToken}{If the result of the previous \code{ListTrainingJobs} request was truncated,
the response includes a \code{NextToken}. To retrieve the next set of
training jobs, use the token in the next request.}

\item{MaxResults}{The maximum number of training jobs to return in the response.}

\item{CreationTimeAfter}{A filter that returns only training jobs created after the specified
time (timestamp).}

\item{CreationTimeBefore}{A filter that returns only training jobs created before the specified
time (timestamp).}

\item{LastModifiedTimeAfter}{A filter that returns only training jobs modified after the specified
time (timestamp).}

\item{LastModifiedTimeBefore}{A filter that returns only training jobs modified before the specified
time (timestamp).}

\item{NameContains}{A string in the training job name. This filter returns only training
jobs whose name contains the specified string.}

\item{StatusEquals}{A filter that retrieves only training jobs with a specific status.}

\item{SortBy}{The field to sort results by. The default is \code{CreationTime}.}

\item{SortOrder}{The sort order for results. The default is \code{Ascending}.}
}
\description{
Lists training jobs.
}
\section{Request syntax}{
\preformatted{svc$list_training_jobs(
  NextToken = "string",
  MaxResults = 123,
  CreationTimeAfter = as.POSIXct(
    "2015-01-01"
  ),
  CreationTimeBefore = as.POSIXct(
    "2015-01-01"
  ),
  LastModifiedTimeAfter = as.POSIXct(
    "2015-01-01"
  ),
  LastModifiedTimeBefore = as.POSIXct(
    "2015-01-01"
  ),
  NameContains = "string",
  StatusEquals = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
  SortBy = "Name"|"CreationTime"|"Status",
  SortOrder = "Ascending"|"Descending"
)
}
}

\keyword{internal}