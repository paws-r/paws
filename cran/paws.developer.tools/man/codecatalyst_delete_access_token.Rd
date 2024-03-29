% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codecatalyst_operations.R
\name{codecatalyst_delete_access_token}
\alias{codecatalyst_delete_access_token}
\title{Deletes a specified personal access token (PAT)}
\usage{
codecatalyst_delete_access_token(id)
}
\arguments{
\item{id}{[required] The ID of the personal access token to delete. You can find the IDs of
all PATs associated with your Amazon Web Services Builder ID in a space
by calling \code{\link[=codecatalyst_list_access_tokens]{list_access_tokens}}.}
}
\description{
Deletes a specified personal access token (PAT). A personal access token can only be deleted by the user who created it.

See \url{https://www.paws-r-sdk.com/docs/codecatalyst_delete_access_token/} for full documentation.
}
\keyword{internal}
