% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_get_partition}
\alias{glue_get_partition}
\title{Retrieves information about a specified partition}
\usage{
glue_get_partition(CatalogId, DatabaseName, TableName, PartitionValues)
}
\arguments{
\item{CatalogId}{The ID of the Data Catalog where the partition in question resides. If
none is supplied, the AWS account ID is used by default.}

\item{DatabaseName}{[required] The name of the catalog database where the partition resides.}

\item{TableName}{[required] The name of the partition's table.}

\item{PartitionValues}{[required] The values that define the partition.}
}
\description{
Retrieves information about a specified partition.
}
\section{Request syntax}{
\preformatted{svc$get_partition(
  CatalogId = "string",
  DatabaseName = "string",
  TableName = "string",
  PartitionValues = list(
    "string"
  )
)
}
}

\keyword{internal}