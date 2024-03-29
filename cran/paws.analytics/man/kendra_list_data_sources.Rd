% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kendra_operations.R
\name{kendra_list_data_sources}
\alias{kendra_list_data_sources}
\title{Lists the data source connectors that you have created}
\usage{
kendra_list_data_sources(IndexId, NextToken = NULL, MaxResults = NULL)
}
\arguments{
\item{IndexId}{[required] The identifier of the index used with one or more data source
connectors.}

\item{NextToken}{If the previous response was incomplete (because there is more data to
retrieve), Amazon Kendra returns a pagination token in the response. You
can use this pagination token to retrieve the next set of data source
connectors.}

\item{MaxResults}{The maximum number of data source connectors to return.}
}
\description{
Lists the data source connectors that you have created.

See \url{https://www.paws-r-sdk.com/docs/kendra_list_data_sources/} for full documentation.
}
\keyword{internal}
