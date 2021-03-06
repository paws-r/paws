% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mobile_operations.R
\name{mobile_describe_project}
\alias{mobile_describe_project}
\title{Gets details about a project in AWS Mobile Hub}
\usage{
mobile_describe_project(projectId, syncFromResources)
}
\arguments{
\item{projectId}{[required] Unique project identifier.}

\item{syncFromResources}{If set to true, causes AWS Mobile Hub to synchronize information from
other services, e.g., update state of AWS CloudFormation stacks in the
AWS Mobile Hub project.}
}
\value{
A list with the following syntax:\preformatted{list(
  details = list(
    name = "string",
    projectId = "string",
    region = "string",
    state = "NORMAL"|"SYNCING"|"IMPORTING",
    createdDate = as.POSIXct(
      "2015-01-01"
    ),
    lastUpdatedDate = as.POSIXct(
      "2015-01-01"
    ),
    consoleUrl = "string",
    resources = list(
      list(
        type = "string",
        name = "string",
        arn = "string",
        feature = "string",
        attributes = list(
          "string"
        )
      )
    )
  )
)
}
}
\description{
Gets details about a project in AWS Mobile Hub.
}
\section{Request syntax}{
\preformatted{svc$describe_project(
  projectId = "string",
  syncFromResources = TRUE|FALSE
)
}
}

\keyword{internal}
