% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/schemas_operations.R
\name{schemas_describe_schema}
\alias{schemas_describe_schema}
\title{Retrieve the schema definition}
\usage{
schemas_describe_schema(RegistryName, SchemaName, SchemaVersion = NULL)
}
\arguments{
\item{RegistryName}{[required] The name of the registry.}

\item{SchemaName}{[required] The name of the schema.}

\item{SchemaVersion}{Specifying this limits the results to only this schema version.}
}
\description{
Retrieve the schema definition.

See \url{https://paws-r.github.io/docs/schemas/describe_schema.html} for full documentation.
}
\keyword{internal}