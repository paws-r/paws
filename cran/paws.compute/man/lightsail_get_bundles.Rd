% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lightsail_operations.R
\name{lightsail_get_bundles}
\alias{lightsail_get_bundles}
\title{Returns the list of bundles that are available for purchase}
\usage{
lightsail_get_bundles(includeInactive, pageToken)
}
\arguments{
\item{includeInactive}{A Boolean value that indicates whether to include inactive bundle
results in your request.}

\item{pageToken}{The token to advance to the next page of results from your request.

To get a page token, perform an initial
\code{\link[=lightsail_get_bundles]{get_bundles}} request. If your results are
paginated, the response will return a next page token that you can
specify as the page token in a subsequent request.}
}
\value{
A list with the following syntax:\preformatted{list(
  bundles = list(
    list(
      price = 123.0,
      cpuCount = 123,
      diskSizeInGb = 123,
      bundleId = "string",
      instanceType = "string",
      isActive = TRUE|FALSE,
      name = "string",
      power = 123,
      ramSizeInGb = 123.0,
      transferPerMonthInGb = 123,
      supportedPlatforms = list(
        "LINUX_UNIX"|"WINDOWS"
      )
    )
  ),
  nextPageToken = "string"
)
}
}
\description{
Returns the list of bundles that are available for purchase. A bundle
describes the specs for your virtual private server (or \emph{instance}).
}
\section{Request syntax}{
\preformatted{svc$get_bundles(
  includeInactive = TRUE|FALSE,
  pageToken = "string"
)
}
}

\keyword{internal}
