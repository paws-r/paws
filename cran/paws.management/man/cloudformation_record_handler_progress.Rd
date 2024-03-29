% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudformation_operations.R
\name{cloudformation_record_handler_progress}
\alias{cloudformation_record_handler_progress}
\title{Reports progress of a resource handler to CloudFormation}
\usage{
cloudformation_record_handler_progress(
  BearerToken,
  OperationStatus,
  CurrentOperationStatus = NULL,
  StatusMessage = NULL,
  ErrorCode = NULL,
  ResourceModel = NULL,
  ClientRequestToken = NULL
)
}
\arguments{
\item{BearerToken}{[required] Reserved for use by the \href{https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html}{CloudFormation CLI}.}

\item{OperationStatus}{[required] Reserved for use by the \href{https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html}{CloudFormation CLI}.}

\item{CurrentOperationStatus}{Reserved for use by the \href{https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html}{CloudFormation CLI}.}

\item{StatusMessage}{Reserved for use by the \href{https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html}{CloudFormation CLI}.}

\item{ErrorCode}{Reserved for use by the \href{https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html}{CloudFormation CLI}.}

\item{ResourceModel}{Reserved for use by the \href{https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html}{CloudFormation CLI}.}

\item{ClientRequestToken}{Reserved for use by the \href{https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html}{CloudFormation CLI}.}
}
\description{
Reports progress of a resource handler to CloudFormation.

See \url{https://www.paws-r-sdk.com/docs/cloudformation_record_handler_progress/} for full documentation.
}
\keyword{internal}
