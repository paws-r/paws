% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/identitystore_operations.R
\name{identitystore_update_group}
\alias{identitystore_update_group}
\title{For the specified group in the specified identity store, updates the
group metadata and attributes}
\usage{
identitystore_update_group(IdentityStoreId, GroupId, Operations)
}
\arguments{
\item{IdentityStoreId}{[required] The globally unique identifier for the identity store.}

\item{GroupId}{[required] The identifier for a group in the identity store.}

\item{Operations}{[required] A list of \code{AttributeOperation} objects to apply to the requested group.
These operations might add, replace, or remove an attribute.}
}
\description{
For the specified group in the specified identity store, updates the group metadata and attributes.

See \url{https://www.paws-r-sdk.com/docs/identitystore_update_group/} for full documentation.
}
\keyword{internal}
