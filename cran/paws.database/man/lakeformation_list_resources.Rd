% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lakeformation_operations.R
\name{lakeformation_list_resources}
\alias{lakeformation_list_resources}
\title{Lists the resources registered to be managed by the Data Catalog}
\usage{
lakeformation_list_resources(
  FilterConditionList = NULL,
  MaxResults = NULL,
  NextToken = NULL
)
}
\arguments{
\item{FilterConditionList}{Any applicable row-level and/or column-level filtering conditions for
the resources.}

\item{MaxResults}{The maximum number of resource results.}

\item{NextToken}{A continuation token, if this is not the first call to retrieve these
resources.}
}
\description{
Lists the resources registered to be managed by the Data Catalog.

See \url{https://www.paws-r-sdk.com/docs/lakeformation_list_resources/} for full documentation.
}
\keyword{internal}
