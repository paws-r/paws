% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elasticsearchservice_operations.R
\name{elasticsearchservice_create_vpc_endpoint}
\alias{elasticsearchservice_create_vpc_endpoint}
\title{Creates an Amazon OpenSearch Service-managed VPC endpoint}
\usage{
elasticsearchservice_create_vpc_endpoint(
  DomainArn,
  VpcOptions,
  ClientToken = NULL
)
}
\arguments{
\item{DomainArn}{[required] The Amazon Resource Name (ARN) of the domain to grant access to.}

\item{VpcOptions}{[required] Options to specify the subnets and security groups for the endpoint.}

\item{ClientToken}{Unique, case-sensitive identifier to ensure idempotency of the request.}
}
\description{
Creates an Amazon OpenSearch Service-managed VPC endpoint.

See \url{https://www.paws-r-sdk.com/docs/elasticsearchservice_create_vpc_endpoint/} for full documentation.
}
\keyword{internal}
