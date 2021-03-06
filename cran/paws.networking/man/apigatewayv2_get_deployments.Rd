% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigatewayv2_operations.R
\name{apigatewayv2_get_deployments}
\alias{apigatewayv2_get_deployments}
\title{Gets the Deployments for an API}
\usage{
apigatewayv2_get_deployments(ApiId, MaxResults, NextToken)
}
\arguments{
\item{ApiId}{[required] The API identifier.}

\item{MaxResults}{The maximum number of elements to be returned for this resource.}

\item{NextToken}{The next page of elements from this collection. Not valid for the last
element of the collection.}
}
\value{
A list with the following syntax:\preformatted{list(
  Items = list(
    list(
      AutoDeployed = TRUE|FALSE,
      CreatedDate = as.POSIXct(
        "2015-01-01"
      ),
      DeploymentId = "string",
      DeploymentStatus = "PENDING"|"FAILED"|"DEPLOYED",
      DeploymentStatusMessage = "string",
      Description = "string"
    )
  ),
  NextToken = "string"
)
}
}
\description{
Gets the Deployments for an API.
}
\section{Request syntax}{
\preformatted{svc$get_deployments(
  ApiId = "string",
  MaxResults = "string",
  NextToken = "string"
)
}
}

\keyword{internal}
