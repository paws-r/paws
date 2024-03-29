% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codegurureviewer_operations.R
\name{codegurureviewer_describe_repository_association}
\alias{codegurureviewer_describe_repository_association}
\title{Returns a RepositoryAssociation object that contains information about
the requested repository association}
\usage{
codegurureviewer_describe_repository_association(AssociationArn)
}
\arguments{
\item{AssociationArn}{[required] The Amazon Resource Name (ARN) of the
\href{https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html}{RepositoryAssociation}
object. You can retrieve this ARN by calling
\code{\link[=codegurureviewer_list_repository_associations]{list_repository_associations}}.}
}
\description{
Returns a \href{https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html}{RepositoryAssociation} object that contains information about the requested repository association.

See \url{https://www.paws-r-sdk.com/docs/codegurureviewer_describe_repository_association/} for full documentation.
}
\keyword{internal}
