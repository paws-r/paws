% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/quicksight_operations.R
\name{quicksight_delete_template}
\alias{quicksight_delete_template}
\title{Deletes a template}
\usage{
quicksight_delete_template(AwsAccountId, TemplateId, VersionNumber = NULL)
}
\arguments{
\item{AwsAccountId}{[required] The ID of the Amazon Web Services account that contains the template
that you're deleting.}

\item{TemplateId}{[required] An ID for the template you want to delete.}

\item{VersionNumber}{Specifies the version of the template that you want to delete. If you
don't provide a version number,
\code{\link[=quicksight_delete_template]{delete_template}} deletes all versions of
the template.}
}
\description{
Deletes a template.

See \url{https://www.paws-r-sdk.com/docs/quicksight_delete_template/} for full documentation.
}
\keyword{internal}
