% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ssm_operations.R
\name{ssm_cancel_command}
\alias{ssm_cancel_command}
\title{Attempts to cancel the command specified by the Command ID}
\usage{
ssm_cancel_command(CommandId, InstanceIds)
}
\arguments{
\item{CommandId}{[required] The ID of the command you want to cancel.}

\item{InstanceIds}{(Optional) A list of instance IDs on which you want to cancel the
command. If not provided, the command is canceled on every instance on
which it was requested.}
}
\value{
An empty list.
}
\description{
Attempts to cancel the command specified by the Command ID. There is no
guarantee that the command will be terminated and the underlying process
stopped.
}
\section{Request syntax}{
\preformatted{svc$cancel_command(
  CommandId = "string",
  InstanceIds = list(
    "string"
  )
)
}
}

\keyword{internal}
