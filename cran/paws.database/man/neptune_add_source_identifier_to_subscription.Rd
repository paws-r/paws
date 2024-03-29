% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/neptune_operations.R
\name{neptune_add_source_identifier_to_subscription}
\alias{neptune_add_source_identifier_to_subscription}
\title{Adds a source identifier to an existing event notification subscription}
\usage{
neptune_add_source_identifier_to_subscription(
  SubscriptionName,
  SourceIdentifier
)
}
\arguments{
\item{SubscriptionName}{[required] The name of the event notification subscription you want to add a source
identifier to.}

\item{SourceIdentifier}{[required] The identifier of the event source to be added.

Constraints:
\itemize{
\item If the source type is a DB instance, then a \code{DBInstanceIdentifier}
must be supplied.
\item If the source type is a DB security group, a \code{DBSecurityGroupName}
must be supplied.
\item If the source type is a DB parameter group, a \code{DBParameterGroupName}
must be supplied.
\item If the source type is a DB snapshot, a \code{DBSnapshotIdentifier} must
be supplied.
}}
}
\description{
Adds a source identifier to an existing event notification subscription.

See \url{https://www.paws-r-sdk.com/docs/neptune_add_source_identifier_to_subscription/} for full documentation.
}
\keyword{internal}
