% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_describe_data_set}
\alias{quicksight_describe_data_set}
\title{Describes a dataset}
\usage{
quicksight_describe_data_set(AwsAccountId, DataSetId)
}
\arguments{
\item{AwsAccountId}{[required] The AWS account ID.}

\item{DataSetId}{[required] The ID for the dataset that you want to create. This ID is unique per
AWS Region for each AWS account.}
}
\value{
A list with the following syntax:\preformatted{list(
  DataSet = list(
    Arn = "string",
    DataSetId = "string",
    Name = "string",
    CreatedTime = as.POSIXct(
      "2015-01-01"
    ),
    LastUpdatedTime = as.POSIXct(
      "2015-01-01"
    ),
    PhysicalTableMap = list(
      list(
        RelationalTable = list(
          DataSourceArn = "string",
          Catalog = "string",
          Schema = "string",
          Name = "string",
          InputColumns = list(
            list(
              Name = "string",
              Type = "STRING"|"INTEGER"|"DECIMAL"|"DATETIME"|"BIT"|"BOOLEAN"|"JSON"
            )
          )
        ),
        CustomSql = list(
          DataSourceArn = "string",
          Name = "string",
          SqlQuery = "string",
          Columns = list(
            list(
              Name = "string",
              Type = "STRING"|"INTEGER"|"DECIMAL"|"DATETIME"|"BIT"|"BOOLEAN"|"JSON"
            )
          )
        ),
        S3Source = list(
          DataSourceArn = "string",
          UploadSettings = list(
            Format = "CSV"|"TSV"|"CLF"|"ELF"|"XLSX"|"JSON",
            StartFromRow = 123,
            ContainsHeader = TRUE|FALSE,
            TextQualifier = "DOUBLE_QUOTE"|"SINGLE_QUOTE",
            Delimiter = "string"
          ),
          InputColumns = list(
            list(
              Name = "string",
              Type = "STRING"|"INTEGER"|"DECIMAL"|"DATETIME"|"BIT"|"BOOLEAN"|"JSON"
            )
          )
        )
      )
    ),
    LogicalTableMap = list(
      list(
        Alias = "string",
        DataTransforms = list(
          list(
            ProjectOperation = list(
              ProjectedColumns = list(
                "string"
              )
            ),
            FilterOperation = list(
              ConditionExpression = "string"
            ),
            CreateColumnsOperation = list(
              Columns = list(
                list(
                  ColumnName = "string",
                  ColumnId = "string",
                  Expression = "string"
                )
              )
            ),
            RenameColumnOperation = list(
              ColumnName = "string",
              NewColumnName = "string"
            ),
            CastColumnTypeOperation = list(
              ColumnName = "string",
              NewColumnType = "STRING"|"INTEGER"|"DECIMAL"|"DATETIME",
              Format = "string"
            ),
            TagColumnOperation = list(
              ColumnName = "string",
              Tags = list(
                list(
                  ColumnGeographicRole = "COUNTRY"|"STATE"|"COUNTY"|"CITY"|"POSTCODE"|"LONGITUDE"|"LATITUDE",
                  ColumnDescription = list(
                    Text = "string"
                  )
                )
              )
            )
          )
        ),
        Source = list(
          JoinInstruction = list(
            LeftOperand = "string",
            RightOperand = "string",
            LeftJoinKeyProperties = list(
              UniqueKey = TRUE|FALSE
            ),
            RightJoinKeyProperties = list(
              UniqueKey = TRUE|FALSE
            ),
            Type = "INNER"|"OUTER"|"LEFT"|"RIGHT",
            OnClause = "string"
          ),
          PhysicalTableId = "string"
        )
      )
    ),
    OutputColumns = list(
      list(
        Name = "string",
        Description = "string",
        Type = "STRING"|"INTEGER"|"DECIMAL"|"DATETIME"
      )
    ),
    ImportMode = "SPICE"|"DIRECT_QUERY",
    ConsumedSpiceCapacityInBytes = 123,
    ColumnGroups = list(
      list(
        GeoSpatialColumnGroup = list(
          Name = "string",
          CountryCode = "US",
          Columns = list(
            "string"
          )
        )
      )
    ),
    RowLevelPermissionDataSet = list(
      Namespace = "string",
      Arn = "string",
      PermissionPolicy = "GRANT_ACCESS"|"DENY_ACCESS"
    ),
    ColumnLevelPermissionRules = list(
      list(
        Principals = list(
          "string"
        ),
        ColumnNames = list(
          "string"
        )
      )
    )
  ),
  RequestId = "string",
  Status = 123
)
}
}
\description{
Describes a dataset.
}
\section{Request syntax}{
\preformatted{svc$describe_data_set(
  AwsAccountId = "string",
  DataSetId = "string"
)
}
}

\keyword{internal}
