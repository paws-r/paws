% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecr_operations.R
\name{ecr_get_repository_policy}
\alias{ecr_get_repository_policy}
\title{Retrieves the repository policy for the specified repository}
\usage{
ecr_get_repository_policy(registryId = NULL, repositoryName)
}
\arguments{
\item{registryId}{The Amazon Web Services account ID associated with the registry that
contains the repository. If you do not specify a registry, the default
registry is assumed.}

\item{repositoryName}{[required] The name of the repository with the policy to retrieve.}
}
\description{
Retrieves the repository policy for the specified repository.

See \url{https://www.paws-r-sdk.com/docs/ecr_get_repository_policy/} for full documentation.
}
\keyword{internal}
