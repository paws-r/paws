% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/applicationdiscoveryservice_operations.R
\name{applicationdiscoveryservice_start_continuous_export}
\alias{applicationdiscoveryservice_start_continuous_export}
\title{Start the continuous flow of agent's discovered data into Amazon Athena}
\usage{
applicationdiscoveryservice_start_continuous_export()
}
\value{
A list with the following syntax:\preformatted{list(
  exportId = "string",
  s3Bucket = "string",
  startTime = as.POSIXct(
    "2015-01-01"
  ),
  dataSource = "AGENT",
  schemaStorageConfig = list(
    "string"
  )
)
}
}
\description{
Start the continuous flow of agent's discovered data into Amazon Athena.
}
\section{Request syntax}{
\preformatted{svc$start_continuous_export()
}
}

\keyword{internal}
