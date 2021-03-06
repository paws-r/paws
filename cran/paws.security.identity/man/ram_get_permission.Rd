% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ram_operations.R
\name{ram_get_permission}
\alias{ram_get_permission}
\title{Gets the contents of an AWS RAM permission in JSON format}
\usage{
ram_get_permission(permissionArn, permissionVersion)
}
\arguments{
\item{permissionArn}{[required] The ARN of the permission.}

\item{permissionVersion}{The identifier for the version of the permission.}
}
\value{
A list with the following syntax:\preformatted{list(
  permission = list(
    arn = "string",
    version = "string",
    defaultVersion = TRUE|FALSE,
    name = "string",
    resourceType = "string",
    permission = "string",
    creationTime = as.POSIXct(
      "2015-01-01"
    ),
    lastUpdatedTime = as.POSIXct(
      "2015-01-01"
    )
  )
)
}
}
\description{
Gets the contents of an AWS RAM permission in JSON format.
}
\section{Request syntax}{
\preformatted{svc$get_permission(
  permissionArn = "string",
  permissionVersion = 123
)
}
}

\keyword{internal}
