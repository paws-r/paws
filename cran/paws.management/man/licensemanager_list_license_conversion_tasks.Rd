% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/licensemanager_operations.R
\name{licensemanager_list_license_conversion_tasks}
\alias{licensemanager_list_license_conversion_tasks}
\title{Lists the license type conversion tasks for your account}
\usage{
licensemanager_list_license_conversion_tasks(
  NextToken = NULL,
  MaxResults = NULL,
  Filters = NULL
)
}
\arguments{
\item{NextToken}{Token for the next set of results.}

\item{MaxResults}{Maximum number of results to return in a single call.}

\item{Filters}{Filters to scope the results. Valid filters are \code{ResourceArns} and
\code{Status}.}
}
\description{
Lists the license type conversion tasks for your account.

See \url{https://www.paws-r-sdk.com/docs/licensemanager_list_license_conversion_tasks/} for full documentation.
}
\keyword{internal}
