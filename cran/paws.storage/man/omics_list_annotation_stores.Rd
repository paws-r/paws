% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/omics_operations.R
\name{omics_list_annotation_stores}
\alias{omics_list_annotation_stores}
\title{Retrieves a list of annotation stores}
\usage{
omics_list_annotation_stores(
  ids = NULL,
  maxResults = NULL,
  nextToken = NULL,
  filter = NULL
)
}
\arguments{
\item{ids}{IDs of stores to list.}

\item{maxResults}{The maximum number of stores to return in one page of results.}

\item{nextToken}{Specify the pagination token from a previous request to retrieve the
next page of results.}

\item{filter}{A filter to apply to the list.}
}
\description{
Retrieves a list of annotation stores.

See \url{https://www.paws-r-sdk.com/docs/omics_list_annotation_stores/} for full documentation.
}
\keyword{internal}
