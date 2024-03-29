% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_import_rest_api}
\alias{apigateway_import_rest_api}
\title{A feature of the API Gateway control service for creating a new API from
an external API definition file}
\usage{
apigateway_import_rest_api(failOnWarnings = NULL, parameters = NULL, body)
}
\arguments{
\item{failOnWarnings}{A query parameter to indicate whether to rollback the API creation
(\code{true}) or not (\code{false}) when a warning is encountered. The default
value is \code{false}.}

\item{parameters}{A key-value map of context-specific query string parameters specifying
the behavior of different API importing operations. The following shows
operation-specific parameters and their supported values.

To exclude DocumentationParts from the import, set \code{parameters} as
\code{ignore=documentation}.

To configure the endpoint type, set \code{parameters} as
\code{endpointConfigurationTypes=EDGE},
\code{endpointConfigurationTypes=REGIONAL}, or
\code{endpointConfigurationTypes=PRIVATE}. The default endpoint type is
\code{EDGE}.

To handle imported \code{basepath}, set \code{parameters} as \code{basepath=ignore},
\code{basepath=prepend} or \code{basepath=split}.}

\item{body}{[required] The POST request body containing external API definitions. Currently,
only OpenAPI definition JSON/YAML files are supported. The maximum size
of the API definition file is 6MB.}
}
\description{
A feature of the API Gateway control service for creating a new API from an external API definition file.

See \url{https://www.paws-r-sdk.com/docs/apigateway_import_rest_api/} for full documentation.
}
\keyword{internal}
