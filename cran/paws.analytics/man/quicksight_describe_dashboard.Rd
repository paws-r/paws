% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_describe_dashboard}
\alias{quicksight_describe_dashboard}
\title{Provides a summary for a dashboard}
\usage{
quicksight_describe_dashboard(AwsAccountId, DashboardId, VersionNumber,
  AliasName)
}
\arguments{
\item{AwsAccountId}{[required] The ID of the AWS account that contains the dashboard that you're
describing.}

\item{DashboardId}{[required] The ID for the dashboard.}

\item{VersionNumber}{The version number for the dashboard. If a version number isn't passed,
the latest published dashboard version is described.}

\item{AliasName}{The alias name.}
}
\value{
A list with the following syntax:\preformatted{list(
  Dashboard = list(
    DashboardId = "string",
    Arn = "string",
    Name = "string",
    Version = list(
      CreatedTime = as.POSIXct(
        "2015-01-01"
      ),
      Errors = list(
        list(
          Type = "ACCESS_DENIED"|"SOURCE_NOT_FOUND"|"DATA_SET_NOT_FOUND"|"INTERNAL_FAILURE"|"PARAMETER_VALUE_INCOMPATIBLE"|"PARAMETER_TYPE_INVALID"|"PARAMETER_NOT_FOUND"|"COLUMN_TYPE_MISMATCH"|"COLUMN_GEOGRAPHIC_ROLE_MISMATCH"|"COLUMN_REPLACEMENT_MISSING",
          Message = "string"
        )
      ),
      VersionNumber = 123,
      Status = "CREATION_IN_PROGRESS"|"CREATION_SUCCESSFUL"|"CREATION_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_SUCCESSFUL"|"UPDATE_FAILED"|"DELETED",
      Arn = "string",
      SourceEntityArn = "string",
      DataSetArns = list(
        "string"
      ),
      Description = "string",
      ThemeArn = "string",
      Sheets = list(
        list(
          SheetId = "string",
          Name = "string"
        )
      )
    ),
    CreatedTime = as.POSIXct(
      "2015-01-01"
    ),
    LastPublishedTime = as.POSIXct(
      "2015-01-01"
    ),
    LastUpdatedTime = as.POSIXct(
      "2015-01-01"
    )
  ),
  Status = 123,
  RequestId = "string"
)
}
}
\description{
Provides a summary for a dashboard.
}
\section{Request syntax}{
\preformatted{svc$describe_dashboard(
  AwsAccountId = "string",
  DashboardId = "string",
  VersionNumber = 123,
  AliasName = "string"
)
}
}

\keyword{internal}
