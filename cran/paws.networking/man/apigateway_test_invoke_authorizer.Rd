% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_test_invoke_authorizer}
\alias{apigateway_test_invoke_authorizer}
\title{Simulate the execution of an Authorizer in your RestApi with headers,
parameters, and an incoming request body}
\usage{
apigateway_test_invoke_authorizer(
  restApiId,
  authorizerId,
  headers = NULL,
  multiValueHeaders = NULL,
  pathWithQueryString = NULL,
  body = NULL,
  stageVariables = NULL,
  additionalContext = NULL
)
}
\arguments{
\item{restApiId}{[required] The string identifier of the associated RestApi.}

\item{authorizerId}{[required] Specifies a test invoke authorizer request's Authorizer ID.}

\item{headers}{A key-value map of headers to simulate an incoming invocation request.
This is where the incoming authorization token, or identity source,
should be specified.}

\item{multiValueHeaders}{The headers as a map from string to list of values to simulate an
incoming invocation request. This is where the incoming authorization
token, or identity source, may be specified.}

\item{pathWithQueryString}{The URI path, including query string, of the simulated invocation
request. Use this to specify path parameters and query string
parameters.}

\item{body}{The simulated request body of an incoming invocation request.}

\item{stageVariables}{A key-value map of stage variables to simulate an invocation on a
deployed Stage.}

\item{additionalContext}{A key-value map of additional context variables.}
}
\description{
Simulate the execution of an Authorizer in your RestApi with headers, parameters, and an incoming request body.

See \url{https://www.paws-r-sdk.com/docs/apigateway_test_invoke_authorizer/} for full documentation.
}
\keyword{internal}
