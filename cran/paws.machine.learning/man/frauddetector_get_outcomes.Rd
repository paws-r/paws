% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frauddetector_operations.R
\name{frauddetector_get_outcomes}
\alias{frauddetector_get_outcomes}
\title{Gets one or more outcomes}
\usage{
frauddetector_get_outcomes(name = NULL, nextToken = NULL, maxResults = NULL)
}
\arguments{
\item{name}{The name of the outcome or outcomes to get.}

\item{nextToken}{The next page token for the request.}

\item{maxResults}{The maximum number of objects to return for the request.}
}
\description{
Gets one or more outcomes. This is a paginated API. If you provide a null \code{maxResults}, this actions retrieves a maximum of 100 records per page. If you provide a \code{maxResults}, the value must be between 50 and 100. To get the next page results, provide the pagination token from the \code{GetOutcomesResult} as part of your request. A null pagination token fetches the records from the beginning.

See \url{https://www.paws-r-sdk.com/docs/frauddetector_get_outcomes/} for full documentation.
}
\keyword{internal}
