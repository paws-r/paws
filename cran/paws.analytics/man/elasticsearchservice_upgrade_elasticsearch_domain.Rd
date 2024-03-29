% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elasticsearchservice_operations.R
\name{elasticsearchservice_upgrade_elasticsearch_domain}
\alias{elasticsearchservice_upgrade_elasticsearch_domain}
\title{Allows you to either upgrade your domain or perform an Upgrade
eligibility check to a compatible Elasticsearch version}
\usage{
elasticsearchservice_upgrade_elasticsearch_domain(
  DomainName,
  TargetVersion,
  PerformCheckOnly = NULL
)
}
\arguments{
\item{DomainName}{[required]}

\item{TargetVersion}{[required] The version of Elasticsearch that you intend to upgrade the domain to.}

\item{PerformCheckOnly}{This flag, when set to True, indicates that an Upgrade Eligibility Check
needs to be performed. This will not actually perform the Upgrade.}
}
\description{
Allows you to either upgrade your domain or perform an Upgrade eligibility check to a compatible Elasticsearch version.

See \url{https://www.paws-r-sdk.com/docs/elasticsearchservice_upgrade_elasticsearch_domain/} for full documentation.
}
\keyword{internal}
