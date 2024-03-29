% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_get_relational_database_bundles}
\alias{lightsail_get_relational_database_bundles}
\title{Returns the list of bundles that are available in Amazon Lightsail}
\usage{
lightsail_get_relational_database_bundles(
  pageToken = NULL,
  includeInactive = NULL
)
}
\arguments{
\item{pageToken}{The token to advance to the next page of results from your request.

To get a page token, perform an initial
\code{\link[=lightsail_get_relational_database_bundles]{get_relational_database_bundles}}
request. If your results are paginated, the response will return a next
page token that you can specify as the page token in a subsequent
request.}

\item{includeInactive}{A Boolean value that indicates whether to include inactive (unavailable)
bundles in the response of your request.}
}
\description{
Returns the list of bundles that are available in Amazon Lightsail. A bundle describes the performance specifications for a database.

See \url{https://www.paws-r-sdk.com/docs/lightsail_get_relational_database_bundles/} for full documentation.
}
\keyword{internal}
