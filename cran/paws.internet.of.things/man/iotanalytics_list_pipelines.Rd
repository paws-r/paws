% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotanalytics_operations.R
\name{iotanalytics_list_pipelines}
\alias{iotanalytics_list_pipelines}
\title{Retrieves a list of pipelines}
\usage{
iotanalytics_list_pipelines(nextToken, maxResults)
}
\arguments{
\item{nextToken}{The token for the next set of results.}

\item{maxResults}{The maximum number of results to return in this request.

The default value is 100.}
}
\value{
A list with the following syntax:\preformatted{list(
  pipelineSummaries = list(
    list(
      pipelineName = "string",
      reprocessingSummaries = list(
        list(
          id = "string",
          status = "RUNNING"|"SUCCEEDED"|"CANCELLED"|"FAILED",
          creationTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      creationTime = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdateTime = as.POSIXct(
        "2015-01-01"
      )
    )
  ),
  nextToken = "string"
)
}
}
\description{
Retrieves a list of pipelines.
}
\section{Request syntax}{
\preformatted{svc$list_pipelines(
  nextToken = "string",
  maxResults = 123
)
}
}

\keyword{internal}
