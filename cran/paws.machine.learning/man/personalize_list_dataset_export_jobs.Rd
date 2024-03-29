% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/personalize_operations.R
\name{personalize_list_dataset_export_jobs}
\alias{personalize_list_dataset_export_jobs}
\title{Returns a list of dataset export jobs that use the given dataset}
\usage{
personalize_list_dataset_export_jobs(
  datasetArn = NULL,
  nextToken = NULL,
  maxResults = NULL
)
}
\arguments{
\item{datasetArn}{The Amazon Resource Name (ARN) of the dataset to list the dataset export
jobs for.}

\item{nextToken}{A token returned from the previous call to
\code{\link[=personalize_list_dataset_export_jobs]{list_dataset_export_jobs}} for
getting the next set of dataset export jobs (if they exist).}

\item{maxResults}{The maximum number of dataset export jobs to return.}
}
\description{
Returns a list of dataset export jobs that use the given dataset. When a dataset is not specified, all the dataset export jobs associated with the account are listed. The response provides the properties for each dataset export job, including the Amazon Resource Name (ARN). For more information on dataset export jobs, see \code{\link[=personalize_create_dataset_export_job]{create_dataset_export_job}}. For more information on datasets, see \code{\link[=personalize_create_dataset]{create_dataset}}.

See \url{https://www.paws-r-sdk.com/docs/personalize_list_dataset_export_jobs/} for full documentation.
}
\keyword{internal}
