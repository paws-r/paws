% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opsworks_operations.R
\name{opsworks_start_stack}
\alias{opsworks_start_stack}
\title{Starts a stack's instances}
\usage{
opsworks_start_stack(StackId)
}
\arguments{
\item{StackId}{[required] The stack ID.}
}
\value{
An empty list.
}
\description{
Starts a stack's instances.

\strong{Required Permissions}: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see \href{https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html}{Managing User Permissions}.
}
\section{Request syntax}{
\preformatted{svc$start_stack(
  StackId = "string"
)
}
}

\keyword{internal}
