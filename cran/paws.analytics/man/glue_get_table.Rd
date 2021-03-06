% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_get_table}
\alias{glue_get_table}
\title{Retrieves the Table definition in a Data Catalog for a specified table}
\usage{
glue_get_table(CatalogId, DatabaseName, Name)
}
\arguments{
\item{CatalogId}{The ID of the Data Catalog where the table resides. If none is provided,
the AWS account ID is used by default.}

\item{DatabaseName}{[required] The name of the database in the catalog in which the table resides. For
Hive compatibility, this name is entirely lowercase.}

\item{Name}{[required] The name of the table for which to retrieve the definition. For Hive
compatibility, this name is entirely lowercase.}
}
\value{
A list with the following syntax:\preformatted{list(
  Table = list(
    Name = "string",
    DatabaseName = "string",
    Description = "string",
    Owner = "string",
    CreateTime = as.POSIXct(
      "2015-01-01"
    ),
    UpdateTime = as.POSIXct(
      "2015-01-01"
    ),
    LastAccessTime = as.POSIXct(
      "2015-01-01"
    ),
    LastAnalyzedTime = as.POSIXct(
      "2015-01-01"
    ),
    Retention = 123,
    StorageDescriptor = list(
      Columns = list(
        list(
          Name = "string",
          Type = "string",
          Comment = "string",
          Parameters = list(
            "string"
          )
        )
      ),
      Location = "string",
      InputFormat = "string",
      OutputFormat = "string",
      Compressed = TRUE|FALSE,
      NumberOfBuckets = 123,
      SerdeInfo = list(
        Name = "string",
        SerializationLibrary = "string",
        Parameters = list(
          "string"
        )
      ),
      BucketColumns = list(
        "string"
      ),
      SortColumns = list(
        list(
          Column = "string",
          SortOrder = 123
        )
      ),
      Parameters = list(
        "string"
      ),
      SkewedInfo = list(
        SkewedColumnNames = list(
          "string"
        ),
        SkewedColumnValues = list(
          "string"
        ),
        SkewedColumnValueLocationMaps = list(
          "string"
        )
      ),
      StoredAsSubDirectories = TRUE|FALSE,
      SchemaReference = list(
        SchemaId = list(
          SchemaArn = "string",
          SchemaName = "string",
          RegistryName = "string"
        ),
        SchemaVersionId = "string",
        SchemaVersionNumber = 123
      )
    ),
    PartitionKeys = list(
      list(
        Name = "string",
        Type = "string",
        Comment = "string",
        Parameters = list(
          "string"
        )
      )
    ),
    ViewOriginalText = "string",
    ViewExpandedText = "string",
    TableType = "string",
    Parameters = list(
      "string"
    ),
    CreatedBy = "string",
    IsRegisteredWithLakeFormation = TRUE|FALSE,
    TargetTable = list(
      CatalogId = "string",
      DatabaseName = "string",
      Name = "string"
    ),
    CatalogId = "string"
  )
)
}
}
\description{
Retrieves the \code{Table} definition in a Data Catalog for a specified
table.
}
\section{Request syntax}{
\preformatted{svc$get_table(
  CatalogId = "string",
  DatabaseName = "string",
  Name = "string"
)
}
}

\keyword{internal}
