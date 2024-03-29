% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_search_predefined_attributes}
\alias{connect_search_predefined_attributes}
\title{Predefined attributes that meet certain criteria}
\usage{
connect_search_predefined_attributes(
  InstanceId,
  NextToken = NULL,
  MaxResults = NULL,
  SearchCriteria = NULL
)
}
\arguments{
\item{InstanceId}{[required] The identifier of the Amazon Connect instance. You can find the instance
ID in the Amazon Resource Name (ARN) of the instance.}

\item{NextToken}{The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.}

\item{MaxResults}{The maximum number of results to return per page.}

\item{SearchCriteria}{The search criteria to be used to return predefined attributes.}
}
\description{
Predefined attributes that meet certain criteria.

See \url{https://www.paws-r-sdk.com/docs/connect_search_predefined_attributes/} for full documentation.
}
\keyword{internal}
