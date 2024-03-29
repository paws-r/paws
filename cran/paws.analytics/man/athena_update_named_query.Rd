% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/athena_operations.R
\name{athena_update_named_query}
\alias{athena_update_named_query}
\title{Updates a NamedQuery object}
\usage{
athena_update_named_query(NamedQueryId, Name, Description = NULL, QueryString)
}
\arguments{
\item{NamedQueryId}{[required] The unique identifier (UUID) of the query.}

\item{Name}{[required] The name of the query.}

\item{Description}{The query description.}

\item{QueryString}{[required] The contents of the query with all query statements.}
}
\description{
Updates a NamedQuery object. The database or workgroup cannot be updated.

See \url{https://www.paws-r-sdk.com/docs/athena_update_named_query/} for full documentation.
}
\keyword{internal}
