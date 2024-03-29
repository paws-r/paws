% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dynamodb_operations.R
\name{dynamodb_create_global_table}
\alias{dynamodb_create_global_table}
\title{Creates a global table from an existing table}
\usage{
dynamodb_create_global_table(GlobalTableName, ReplicationGroup)
}
\arguments{
\item{GlobalTableName}{[required] The global table name.}

\item{ReplicationGroup}{[required] The Regions where the global table needs to be created.}
}
\description{
Creates a global table from an existing table. A global table creates a replication relationship between two or more DynamoDB tables with the same table name in the provided Regions.

See \url{https://www.paws-r-sdk.com/docs/dynamodb_create_global_table/} for full documentation.
}
\keyword{internal}
