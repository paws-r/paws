% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_get_model}
\alias{apigateway_get_model}
\title{Describes an existing model defined for a RestApi resource}
\usage{
apigateway_get_model(restApiId, modelName, flatten = NULL)
}
\arguments{
\item{restApiId}{[required] The RestApi identifier under which the Model exists.}

\item{modelName}{[required] The name of the model as an identifier.}

\item{flatten}{A query parameter of a Boolean value to resolve (\code{true}) all external
model references and returns a flattened model schema or not (\code{false})
The default is \code{false}.}
}
\description{
Describes an existing model defined for a RestApi resource.

See \url{https://www.paws-r-sdk.com/docs/apigateway_get_model/} for full documentation.
}
\keyword{internal}
