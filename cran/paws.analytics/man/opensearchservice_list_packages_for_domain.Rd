% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opensearchservice_operations.R
\name{opensearchservice_list_packages_for_domain}
\alias{opensearchservice_list_packages_for_domain}
\title{Lists all packages associated with an Amazon OpenSearch Service domain}
\usage{
opensearchservice_list_packages_for_domain(
  DomainName,
  MaxResults = NULL,
  NextToken = NULL
)
}
\arguments{
\item{DomainName}{[required] The name of the domain for which you want to list associated packages.}

\item{MaxResults}{An optional parameter that specifies the maximum number of results to
return. You can use \code{nextToken} to get the next page of results.}

\item{NextToken}{If your initial
\code{\link[=opensearchservice_list_packages_for_domain]{list_packages_for_domain}}
operation returns a \code{nextToken}, you can include the returned
\code{nextToken} in subsequent
\code{\link[=opensearchservice_list_packages_for_domain]{list_packages_for_domain}}
operations, which returns results in the next page.}
}
\description{
Lists all packages associated with an Amazon OpenSearch Service domain. For more information, see \href{https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html}{Custom packages for Amazon OpenSearch Service}.

See \url{https://www.paws-r-sdk.com/docs/opensearchservice_list_packages_for_domain/} for full documentation.
}
\keyword{internal}
