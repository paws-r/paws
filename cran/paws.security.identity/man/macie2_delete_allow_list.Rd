% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/macie2_operations.R
\name{macie2_delete_allow_list}
\alias{macie2_delete_allow_list}
\title{Deletes an allow list}
\usage{
macie2_delete_allow_list(id, ignoreJobChecks = NULL)
}
\arguments{
\item{id}{[required] The unique identifier for the Amazon Macie resource that the request
applies to.}

\item{ignoreJobChecks}{Specifies whether to force deletion of the allow list, even if active
classification jobs are configured to use the list.

When you try to delete an allow list, Amazon Macie checks for
classification jobs that use the list and have a status other than
COMPLETE or CANCELLED. By default, Macie rejects your request if any
jobs meet these criteria. To skip these checks and delete the list, set
this value to true. To delete the list only if no active jobs are
configured to use it, set this value to false.}
}
\description{
Deletes an allow list.

See \url{https://www.paws-r-sdk.com/docs/macie2_delete_allow_list/} for full documentation.
}
\keyword{internal}
