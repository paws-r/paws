% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resourcegroups_operations.R
\name{resourcegroups_ungroup_resources}
\alias{resourcegroups_ungroup_resources}
\title{Removes the specified resources from the specified group}
\usage{
resourcegroups_ungroup_resources(Group, ResourceArns)
}
\arguments{
\item{Group}{[required] The name or the ARN of the resource group from which to remove the
resources.}

\item{ResourceArns}{[required] The ARNs of the resources to be removed from the group.}
}
\description{
Removes the specified resources from the specified group.

See \url{https://paws-r.github.io/docs/resourcegroups/ungroup_resources.html} for full documentation.
}
\keyword{internal}