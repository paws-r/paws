% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/serverlessapplicationrepository_operations.R
\name{serverlessapplicationrepository_list_application_dependencies}
\alias{serverlessapplicationrepository_list_application_dependencies}
\title{Retrieves the list of applications nested in the containing application}
\usage{
serverlessapplicationrepository_list_application_dependencies(
  ApplicationId,
  MaxItems = NULL,
  NextToken = NULL,
  SemanticVersion = NULL
)
}
\arguments{
\item{ApplicationId}{[required] The Amazon Resource Name (ARN) of the application.}

\item{MaxItems}{The total number of items to return.}

\item{NextToken}{A token to specify where to start paginating.}

\item{SemanticVersion}{The semantic version of the application to get.}
}
\description{
Retrieves the list of applications nested in the containing application.

See \url{https://www.paws-r-sdk.com/docs/serverlessapplicationrepository_list_application_dependencies/} for full documentation.
}
\keyword{internal}
