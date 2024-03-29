% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opensearchserviceserverless_operations.R
\name{opensearchserviceserverless_create_vpc_endpoint}
\alias{opensearchserviceserverless_create_vpc_endpoint}
\title{Creates an OpenSearch Serverless-managed interface VPC endpoint}
\usage{
opensearchserviceserverless_create_vpc_endpoint(
  clientToken = NULL,
  name,
  securityGroupIds = NULL,
  subnetIds,
  vpcId
)
}
\arguments{
\item{clientToken}{Unique, case-sensitive identifier to ensure idempotency of the request.}

\item{name}{[required] The name of the interface endpoint.}

\item{securityGroupIds}{The unique identifiers of the security groups that define the ports,
protocols, and sources for inbound traffic that you are authorizing into
your endpoint.}

\item{subnetIds}{[required] The ID of one or more subnets from which you'll access OpenSearch
Serverless.}

\item{vpcId}{[required] The ID of the VPC from which you'll access OpenSearch Serverless.}
}
\description{
Creates an OpenSearch Serverless-managed interface VPC endpoint. For more information, see \href{https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html}{Access Amazon OpenSearch Serverless using an interface endpoint}.

See \url{https://www.paws-r-sdk.com/docs/opensearchserviceserverless_create_vpc_endpoint/} for full documentation.
}
\keyword{internal}
