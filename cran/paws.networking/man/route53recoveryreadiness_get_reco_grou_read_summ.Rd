% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/route53recoveryreadiness_operations.R
\name{route53recoveryreadiness_get_recovery_group_readiness_summary}
\alias{route53recoveryreadiness_get_recovery_group_readiness_summary}
\title{Displays a summary of information about a recovery group's readiness
status}
\usage{
route53recoveryreadiness_get_recovery_group_readiness_summary(
  MaxResults = NULL,
  NextToken = NULL,
  RecoveryGroupName
)
}
\arguments{
\item{MaxResults}{The number of objects that you want to return with this call.}

\item{NextToken}{The token that identifies which batch of results you want to see.}

\item{RecoveryGroupName}{[required] The name of a recovery group.}
}
\description{
Displays a summary of information about a recovery group's readiness status. Includes the readiness checks for resources in the recovery group and the readiness status of each one.

See \url{https://www.paws-r-sdk.com/docs/route53recoveryreadiness_get_recovery_group_readiness_summary/} for full documentation.
}
\keyword{internal}
