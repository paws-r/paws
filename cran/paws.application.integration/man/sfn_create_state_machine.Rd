% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sfn_operations.R
\name{sfn_create_state_machine}
\alias{sfn_create_state_machine}
\title{Creates a state machine}
\usage{
sfn_create_state_machine(
  name,
  definition,
  roleArn,
  type = NULL,
  loggingConfiguration = NULL,
  tags = NULL,
  tracingConfiguration = NULL,
  publish = NULL,
  versionDescription = NULL,
  encryptionConfiguration = NULL
)
}
\arguments{
\item{name}{[required] The name of the state machine.

A name must \emph{not} contain:
\itemize{
\item white space
\item brackets \verb{< > \{ \} [ ]}
\item wildcard characters \verb{? *}
\item special characters \verb{\\" # \% \\ ^ | ~ \\` $ & , ; : /}
\item control characters (\verb{U+0000-001F}, \verb{U+007F-009F})
}

To enable logging with CloudWatch Logs, the name should only contain
0-9, A-Z, a-z, - and _.

[ ]: R:\%20}

\item{definition}{[required] The Amazon States Language definition of the state machine. See \href{https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html}{Amazon States Language}.}

\item{roleArn}{[required] The Amazon Resource Name (ARN) of the IAM role to use for this state
machine.}

\item{type}{Determines whether a Standard or Express state machine is created. The
default is \code{STANDARD}. You cannot update the \code{type} of a state machine
once it has been created.}

\item{loggingConfiguration}{Defines what execution history events are logged and where they are
logged.

By default, the \code{level} is set to \code{OFF}. For more information see \href{https://docs.aws.amazon.com/step-functions/latest/dg/welcome.html}{Log Levels}
in the Step Functions User Guide.}

\item{tags}{Tags to be added when creating a state machine.

An array of key-value pairs. For more information, see \href{https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html}{Using Cost Allocation Tags}
in the \emph{Amazon Web Services Billing and Cost Management User Guide}, and
\href{https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html}{Controlling Access Using IAM Tags}.

Tags may only contain Unicode letters, digits, white space, or these
symbols: \verb{_ . : / = + - @}.}

\item{tracingConfiguration}{Selects whether X-Ray tracing is enabled.}

\item{publish}{Set to \code{true} to publish the first version of the state machine during
creation. The default is \code{false}.}

\item{versionDescription}{Sets description about the state machine version. You can only set the
description if the \code{publish} parameter is set to \code{true}. Otherwise, if
you set \code{versionDescription}, but \code{publish} to \code{false}, this API action
throws \code{ValidationException}.}

\item{encryptionConfiguration}{Settings to configure server-side encryption.}
}
\description{
Creates a state machine. A state machine consists of a collection of states that can do work (\code{Task} states), determine to which states to transition next (\code{Choice} states), stop an execution with an error (\code{Fail} states), and so on. State machines are specified using a JSON-based, structured language. For more information, see \href{https://docs.aws.amazon.com/step-functions/latest/dg/concepts-amazon-states-language.html}{Amazon States Language} in the Step Functions User Guide.

See \url{https://www.paws-r-sdk.com/docs/sfn_create_state_machine/} for full documentation.
}
\keyword{internal}
