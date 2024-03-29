% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/configservice_operations.R
\name{configservice_start_resource_evaluation}
\alias{configservice_start_resource_evaluation}
\title{Runs an on-demand evaluation for the specified resource to determine
whether the resource details will comply with configured Config rules}
\usage{
configservice_start_resource_evaluation(
  ResourceDetails,
  EvaluationContext = NULL,
  EvaluationMode,
  EvaluationTimeout = NULL,
  ClientToken = NULL
)
}
\arguments{
\item{ResourceDetails}{[required] Returns a \code{ResourceDetails} object.}

\item{EvaluationContext}{Returns an \code{EvaluationContext} object.}

\item{EvaluationMode}{[required] The mode of an evaluation. The valid values for this API are \code{DETECTIVE}
and \code{PROACTIVE}.}

\item{EvaluationTimeout}{The timeout for an evaluation. The default is 900 seconds. You cannot
specify a number greater than 3600. If you specify 0, Config uses the
default.}

\item{ClientToken}{A client token is a unique, case-sensitive string of up to 64 ASCII
characters. To make an idempotent API request using one of these
actions, specify a client token in the request.

Avoid reusing the same client token for other API requests. If you retry
a request that completed successfully using the same client token and
the same parameters, the retry succeeds without performing any further
actions. If you retry a successful request using the same client token,
but one or more of the parameters are different, other than the Region
or Availability Zone, the retry fails with an
IdempotentParameterMismatch error.}
}
\description{
Runs an on-demand evaluation for the specified resource to determine whether the resource details will comply with configured Config rules. You can also use it for evaluation purposes. Config recommends using an evaluation context. It runs an execution against the resource details with all of the Config rules in your account that match with the specified proactive mode and resource type.

See \url{https://www.paws-r-sdk.com/docs/configservice_start_resource_evaluation/} for full documentation.
}
\keyword{internal}
