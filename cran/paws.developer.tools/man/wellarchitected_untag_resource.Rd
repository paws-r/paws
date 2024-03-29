% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wellarchitected_operations.R
\name{wellarchitected_untag_resource}
\alias{wellarchitected_untag_resource}
\title{Deletes specified tags from a resource}
\usage{
wellarchitected_untag_resource(WorkloadArn, TagKeys)
}
\arguments{
\item{WorkloadArn}{[required]}

\item{TagKeys}{[required] A list of tag keys. Existing tags of the resource whose keys are members
of this list are removed from the resource.}
}
\description{
Deletes specified tags from a resource.

See \url{https://www.paws-r-sdk.com/docs/wellarchitected_untag_resource/} for full documentation.
}
\keyword{internal}
