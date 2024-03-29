% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apprunner_operations.R
\name{apprunner_list_vpc_connectors}
\alias{apprunner_list_vpc_connectors}
\title{Returns a list of App Runner VPC connectors in your Amazon Web Services
account}
\usage{
apprunner_list_vpc_connectors(MaxResults = NULL, NextToken = NULL)
}
\arguments{
\item{MaxResults}{The maximum number of results to include in each response (result page).
It's used for a paginated request.

If you don't specify \code{MaxResults}, the request retrieves all available
results in a single response.}

\item{NextToken}{A token from a previous result page. It's used for a paginated request.
The request retrieves the next result page. All other parameter values
must be identical to the ones that are specified in the initial request.

If you don't specify \code{NextToken}, the request retrieves the first result
page.}
}
\description{
Returns a list of App Runner VPC connectors in your Amazon Web Services account.

See \url{https://www.paws-r-sdk.com/docs/apprunner_list_vpc_connectors/} for full documentation.
}
\keyword{internal}
