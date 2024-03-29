% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/detective_operations.R
\name{detective_start_monitoring_member}
\alias{detective_start_monitoring_member}
\title{Sends a request to enable data ingest for a member account that has a
status of ACCEPTED_BUT_DISABLED}
\usage{
detective_start_monitoring_member(GraphArn, AccountId)
}
\arguments{
\item{GraphArn}{[required] The ARN of the behavior graph.}

\item{AccountId}{[required] The account ID of the member account to try to enable.

The account must be an invited member account with a status of
\code{ACCEPTED_BUT_DISABLED}.}
}
\description{
Sends a request to enable data ingest for a member account that has a status of \code{ACCEPTED_BUT_DISABLED}.

See \url{https://www.paws-r-sdk.com/docs/detective_start_monitoring_member/} for full documentation.
}
\keyword{internal}
