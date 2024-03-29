% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comprehend_operations.R
\name{comprehend_tag_resource}
\alias{comprehend_tag_resource}
\title{Associates a specific tag with an Amazon Comprehend resource}
\usage{
comprehend_tag_resource(ResourceArn, Tags)
}
\arguments{
\item{ResourceArn}{[required] The Amazon Resource Name (ARN) of the given Amazon Comprehend resource
to which you want to associate the tags.}

\item{Tags}{[required] Tags being associated with a specific Amazon Comprehend resource. There
can be a maximum of 50 tags (both existing and pending) associated with
a specific resource.}
}
\description{
Associates a specific tag with an Amazon Comprehend resource. A tag is a key-value pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key might be added to a resource to indicate its use by the sales department.

See \url{https://www.paws-r-sdk.com/docs/comprehend_tag_resource/} for full documentation.
}
\keyword{internal}
