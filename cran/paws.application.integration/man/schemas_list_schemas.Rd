% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/schemas_operations.R
\name{schemas_list_schemas}
\alias{schemas_list_schemas}
\title{List the schemas}
\usage{
schemas_list_schemas(
  Limit = NULL,
  NextToken = NULL,
  RegistryName,
  SchemaNamePrefix = NULL
)
}
\arguments{
\item{Limit}{}

\item{NextToken}{The token that specifies the next page of results to return. To request
the first page, leave NextToken empty. The token will expire in 24
hours, and cannot be shared with other accounts.}

\item{RegistryName}{[required] The name of the registry.}

\item{SchemaNamePrefix}{Specifying this limits the results to only those schema names that start
with the specified prefix.}
}
\description{
List the schemas.

See \url{https://www.paws-r-sdk.com/docs/schemas_list_schemas/} for full documentation.
}
\keyword{internal}
