% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apigateway_operations.R
\name{apigateway_create_usage_plan}
\alias{apigateway_create_usage_plan}
\title{Creates a usage plan with the throttle and quota limits, as well as the
associated API stages, specified in the payload}
\usage{
apigateway_create_usage_plan(
  name,
  description = NULL,
  apiStages = NULL,
  throttle = NULL,
  quota = NULL,
  tags = NULL
)
}
\arguments{
\item{name}{[required] The name of the usage plan.}

\item{description}{The description of the usage plan.}

\item{apiStages}{The associated API stages of the usage plan.}

\item{throttle}{The throttling limits of the usage plan.}

\item{quota}{The quota of the usage plan.}

\item{tags}{The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with \verb{aws:}. The tag value can be up to 256 characters.}
}
\description{
Creates a usage plan with the throttle and quota limits, as well as the associated API stages, specified in the payload.

See \url{https://www.paws-r-sdk.com/docs/apigateway_create_usage_plan/} for full documentation.
}
\keyword{internal}
