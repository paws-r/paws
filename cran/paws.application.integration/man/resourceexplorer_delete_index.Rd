% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resourceexplorer_operations.R
\name{resourceexplorer_delete_index}
\alias{resourceexplorer_delete_index}
\title{Deletes the specified index and turns off Amazon Web Services Resource
Explorer in the specified Amazon Web Services Region}
\usage{
resourceexplorer_delete_index(Arn)
}
\arguments{
\item{Arn}{[required] The \href{https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html}{Amazon resource name (ARN)}
of the index that you want to delete.}
}
\description{
Deletes the specified index and turns off Amazon Web Services Resource Explorer in the specified Amazon Web Services Region. When you delete an index, Resource Explorer stops discovering and indexing resources in that Region. Resource Explorer also deletes all views in that Region. These actions occur as asynchronous background tasks. You can check to see when the actions are complete by using the \code{\link[=resourceexplorer_get_index]{get_index}} operation and checking the \code{Status} response value.

See \url{https://www.paws-r-sdk.com/docs/resourceexplorer_delete_index/} for full documentation.
}
\keyword{internal}
