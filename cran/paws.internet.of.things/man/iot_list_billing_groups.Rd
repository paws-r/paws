% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/iot_operations.R
\name{iot_list_billing_groups}
\alias{iot_list_billing_groups}
\title{Lists the billing groups you have created}
\usage{
iot_list_billing_groups(nextToken, maxResults, namePrefixFilter)
}
\arguments{
\item{nextToken}{To retrieve the next set of results, the \code{nextToken} value from a
previous response; otherwise \strong{null} to receive the first set of
results.}

\item{maxResults}{The maximum number of results to return per request.}

\item{namePrefixFilter}{Limit the results to billing groups whose names have the given prefix.}
}
\value{
A list with the following syntax:\preformatted{list(
  billingGroups = list(
    list(
      groupName = "string",
      groupArn = "string"
    )
  ),
  nextToken = "string"
)
}
}
\description{
Lists the billing groups you have created.
}
\section{Request syntax}{
\preformatted{svc$list_billing_groups(
  nextToken = "string",
  maxResults = 123,
  namePrefixFilter = "string"
)
}
}

\keyword{internal}
