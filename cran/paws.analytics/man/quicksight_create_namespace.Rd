% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_create_namespace}
\alias{quicksight_create_namespace}
\title{(Enterprise edition only) Creates a new namespace for you to use with
Amazon QuickSight}
\usage{
quicksight_create_namespace(
  AwsAccountId,
  Namespace,
  IdentityStore,
  Tags = NULL
)
}
\arguments{
\item{AwsAccountId}{[required] The ID for the Amazon Web Services account that you want to create the
Amazon QuickSight namespace in.}

\item{Namespace}{[required] The name that you want to use to describe the new namespace.}

\item{IdentityStore}{[required] Specifies the type of your user identity directory. Currently, this
supports users with an identity type of \code{QUICKSIGHT}.}

\item{Tags}{The tags that you want to associate with the namespace that you're
creating.}
}
\description{
(Enterprise edition only) Creates a new namespace for you to use with Amazon QuickSight.

See \url{https://www.paws-r-sdk.com/docs/quicksight_create_namespace/} for full documentation.
}
\keyword{internal}
