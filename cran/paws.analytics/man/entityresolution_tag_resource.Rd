% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/entityresolution_operations.R
\name{entityresolution_tag_resource}
\alias{entityresolution_tag_resource}
\title{Assigns one or more tags (key-value pairs) to the specified Entity
Resolution resource}
\usage{
entityresolution_tag_resource(resourceArn, tags)
}
\arguments{
\item{resourceArn}{[required] The ARN of the resource for which you want to view tags.}

\item{tags}{[required] The tags used to organize, track, or control access for this resource.}
}
\description{
Assigns one or more tags (key-value pairs) to the specified Entity Resolution resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. In Entity Resolution, \code{SchemaMapping} and \code{MatchingWorkflow} can be tagged. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the \code{\link[=entityresolution_tag_resource]{tag_resource}} action with a resource that already has tags. If you specify a new tag key, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag.

See \url{https://www.paws-r-sdk.com/docs/entityresolution_tag_resource/} for full documentation.
}
\keyword{internal}
