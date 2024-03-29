% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_get_deployments}
\alias{apigateway_get_deployments}
\title{Gets information about a Deployments collection}
\usage{
apigateway_get_deployments(restApiId, position = NULL, limit = NULL)
}
\arguments{
\item{restApiId}{[required] The string identifier of the associated RestApi.}

\item{position}{The current pagination position in the paged result set.}

\item{limit}{The maximum number of returned results per page. The default value is 25
and the maximum value is 500.}
}
\description{
Gets information about a Deployments collection.

See \url{https://www.paws-r-sdk.com/docs/apigateway_get_deployments/} for full documentation.
}
\keyword{internal}
