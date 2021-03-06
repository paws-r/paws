% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lambda_operations.R
\name{lambda_delete_provisioned_concurrency_config}
\alias{lambda_delete_provisioned_concurrency_config}
\title{Deletes the provisioned concurrency configuration for a function}
\usage{
lambda_delete_provisioned_concurrency_config(FunctionName, Qualifier)
}
\arguments{
\item{FunctionName}{[required] The name of the Lambda function.

\strong{Name formats}
\itemize{
\item \strong{Function name} - \verb{my-function}.
\item \strong{Function ARN} -
\verb{arn:aws:lambda:us-west-2:123456789012:function:my-function}.
\item \strong{Partial ARN} - \verb{123456789012:function:my-function}.
}

The length constraint applies only to the full ARN. If you specify only
the function name, it is limited to 64 characters in length.}

\item{Qualifier}{[required] The version number or alias name.}
}
\value{
An empty list.
}
\description{
Deletes the provisioned concurrency configuration for a function.
}
\section{Request syntax}{
\preformatted{svc$delete_provisioned_concurrency_config(
  FunctionName = "string",
  Qualifier = "string"
)
}
}

\examples{
\dontrun{
# The following example deletes the provisioned concurrency configuration
# for the GREEN alias of a function named my-function.
svc$delete_provisioned_concurrency_config(
  FunctionName = "my-function",
  Qualifier = "GREEN"
)
}

}
\keyword{internal}
