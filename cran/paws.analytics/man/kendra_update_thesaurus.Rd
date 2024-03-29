% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kendra_operations.R
\name{kendra_update_thesaurus}
\alias{kendra_update_thesaurus}
\title{Updates a thesaurus for an index}
\usage{
kendra_update_thesaurus(
  Id,
  Name = NULL,
  IndexId,
  Description = NULL,
  RoleArn = NULL,
  SourceS3Path = NULL
)
}
\arguments{
\item{Id}{[required] The identifier of the thesaurus you want to update.}

\item{Name}{A new name for the thesaurus.}

\item{IndexId}{[required] The identifier of the index for the thesaurus.}

\item{Description}{A new description for the thesaurus.}

\item{RoleArn}{An IAM role that gives Amazon Kendra permissions to access thesaurus
file specified in \code{SourceS3Path}.}

\item{SourceS3Path}{}
}
\description{
Updates a thesaurus for an index.

See \url{https://www.paws-r-sdk.com/docs/kendra_update_thesaurus/} for full documentation.
}
\keyword{internal}
