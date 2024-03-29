% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/forecastservice_operations.R
\name{forecastservice_list_dataset_import_jobs}
\alias{forecastservice_list_dataset_import_jobs}
\title{Returns a list of dataset import jobs created using the
CreateDatasetImportJob operation}
\usage{
forecastservice_list_dataset_import_jobs(
  NextToken = NULL,
  MaxResults = NULL,
  Filters = NULL
)
}
\arguments{
\item{NextToken}{If the result of the previous request was truncated, the response
includes a \code{NextToken}. To retrieve the next set of results, use the
token in the next request. Tokens expire after 24 hours.}

\item{MaxResults}{The number of items to return in the response.}

\item{Filters}{An array of filters. For each filter, you provide a condition and a
match statement. The condition is either \code{IS} or \code{IS_NOT}, which
specifies whether to include or exclude the datasets that match the
statement from the list, respectively. The match statement consists of a
key and a value.

\strong{Filter properties}
\itemize{
\item \code{Condition} - The condition to apply. Valid values are \code{IS} and
\code{IS_NOT}. To include the datasets that match the statement, specify
\code{IS}. To exclude matching datasets, specify \code{IS_NOT}.
\item \code{Key} - The name of the parameter to filter on. Valid values are
\code{DatasetArn} and \code{Status}.
\item \code{Value} - The value to match.
}

For example, to list all dataset import jobs whose status is ACTIVE, you
specify the following filter:

\verb{"Filters": [ \{ "Condition": "IS", "Key": "Status", "Value": "ACTIVE" \} ]}}
}
\description{
Returns a list of dataset import jobs created using the \code{\link[=forecastservice_create_dataset_import_job]{create_dataset_import_job}} operation. For each import job, this operation returns a summary of its properties, including its Amazon Resource Name (ARN). You can retrieve the complete set of properties by using the ARN with the \code{\link[=forecastservice_describe_dataset_import_job]{describe_dataset_import_job}} operation. You can filter the list by providing an array of \href{https://docs.aws.amazon.com/forecast/latest/dg/API_Filter.html}{Filter} objects.

See \url{https://www.paws-r-sdk.com/docs/forecastservice_list_dataset_import_jobs/} for full documentation.
}
\keyword{internal}
