% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elasticsearchservice_operations.R
\name{elasticsearchservice_list_vpc_endpoints_for_domain}
\alias{elasticsearchservice_list_vpc_endpoints_for_domain}
\title{Retrieves all Amazon OpenSearch Service-managed VPC endpoints associated
with a particular domain}
\usage{
elasticsearchservice_list_vpc_endpoints_for_domain(
  DomainName,
  NextToken = NULL
)
}
\arguments{
\item{DomainName}{[required] Name of the ElasticSearch domain whose VPC endpoints are to be listed.}

\item{NextToken}{Provides an identifier to allow retrieval of paginated results.}
}
\description{
Retrieves all Amazon OpenSearch Service-managed VPC endpoints associated with a particular domain.

See \url{https://www.paws-r-sdk.com/docs/elasticsearchservice_list_vpc_endpoints_for_domain/} for full documentation.
}
\keyword{internal}
