% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opsworks_operations.R
\name{opsworks_delete_layer}
\alias{opsworks_delete_layer}
\title{Deletes a specified layer}
\usage{
opsworks_delete_layer(LayerId)
}
\arguments{
\item{LayerId}{[required] The layer ID.}
}
\value{
An empty list.
}
\description{
Deletes a specified layer. You must first stop and then delete all
associated instances or unassign registered instances. For more
information, see \href{https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html}{How to Delete a Layer}.

\strong{Required Permissions}: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see \href{https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html}{Managing User Permissions}.
}
\section{Request syntax}{
\preformatted{svc$delete_layer(
  LayerId = "string"
)
}
}

\keyword{internal}
