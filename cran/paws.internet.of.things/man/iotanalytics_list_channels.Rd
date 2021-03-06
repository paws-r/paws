% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iotanalytics_operations.R
\name{iotanalytics_list_channels}
\alias{iotanalytics_list_channels}
\title{Retrieves a list of channels}
\usage{
iotanalytics_list_channels(nextToken, maxResults)
}
\arguments{
\item{nextToken}{The token for the next set of results.}

\item{maxResults}{The maximum number of results to return in this request.

The default value is 100.}
}
\value{
A list with the following syntax:\preformatted{list(
  channelSummaries = list(
    list(
      channelName = "string",
      channelStorage = list(
        serviceManagedS3 = list(),
        customerManagedS3 = list(
          bucket = "string",
          keyPrefix = "string",
          roleArn = "string"
        )
      ),
      status = "CREATING"|"ACTIVE"|"DELETING",
      creationTime = as.POSIXct(
        "2015-01-01"
      ),
      lastUpdateTime = as.POSIXct(
        "2015-01-01"
      ),
      lastMessageArrivalTime = as.POSIXct(
        "2015-01-01"
      )
    )
  ),
  nextToken = "string"
)
}
}
\description{
Retrieves a list of channels.
}
\section{Request syntax}{
\preformatted{svc$list_channels(
  nextToken = "string",
  maxResults = 123
)
}
}

\keyword{internal}
