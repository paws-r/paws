% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codebuild_operations.R
\name{codebuild_list_builds}
\alias{codebuild_list_builds}
\title{Gets a list of build IDs, with each build ID representing a single build}
\usage{
codebuild_list_builds(sortOrder = NULL, nextToken = NULL)
}
\arguments{
\item{sortOrder}{The order to list build IDs. Valid values include:
\itemize{
\item \code{ASCENDING}: List the build IDs in ascending order by build ID.
\item \code{DESCENDING}: List the build IDs in descending order by build ID.
}}

\item{nextToken}{During a previous call, if there are more than 100 items in the list,
only the first 100 items are returned, along with a unique string called
a \emph{nextToken}. To get the next batch of items in the list, call this
operation again, adding the next token to the call. To get all of the
items in the list, keep calling this operation with each subsequent next
token that is returned, until no more next tokens are returned.}
}
\description{
Gets a list of build IDs, with each build ID representing a single build.

See \url{https://www.paws-r-sdk.com/docs/codebuild_list_builds/} for full documentation.
}
\keyword{internal}
