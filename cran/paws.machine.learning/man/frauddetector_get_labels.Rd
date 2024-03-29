% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frauddetector_operations.R
\name{frauddetector_get_labels}
\alias{frauddetector_get_labels}
\title{Gets all labels or a specific label if name is provided}
\usage{
frauddetector_get_labels(name = NULL, nextToken = NULL, maxResults = NULL)
}
\arguments{
\item{name}{The name of the label or labels to get.}

\item{nextToken}{The next token for the subsequent request.}

\item{maxResults}{The maximum number of objects to return for the request.}
}
\description{
Gets all labels or a specific label if name is provided. This is a paginated API. If you provide a null \code{maxResults}, this action retrieves a maximum of 50 records per page. If you provide a \code{maxResults}, the value must be between 10 and 50. To get the next page results, provide the pagination token from the \code{GetGetLabelsResponse} as part of your request. A null pagination token fetches the records from the beginning.

See \url{https://www.paws-r-sdk.com/docs/frauddetector_get_labels/} for full documentation.
}
\keyword{internal}
