% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_delete_identity_propagation_config}
\alias{quicksight_delete_identity_propagation_config}
\title{Deletes all access scopes and authorized targets that are associated
with a service from the Amazon QuickSight IAM Identity Center
application}
\usage{
quicksight_delete_identity_propagation_config(AwsAccountId, Service)
}
\arguments{
\item{AwsAccountId}{[required] The ID of the Amazon Web Services account that you want to delete an
identity propagation configuration from.}

\item{Service}{[required] The name of the Amazon Web Services service that you want to delete the
associated access scopes and authorized targets from.}
}
\description{
Deletes all access scopes and authorized targets that are associated with a service from the Amazon QuickSight IAM Identity Center application.

See \url{https://www.paws-r-sdk.com/docs/quicksight_delete_identity_propagation_config/} for full documentation.
}
\keyword{internal}
