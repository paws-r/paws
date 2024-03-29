% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_create_tags}
\alias{ec2_create_tags}
\title{Adds or overwrites only the specified tags for the specified Amazon EC2
resource or resources}
\usage{
ec2_create_tags(DryRun = NULL, Resources, Tags)
}
\arguments{
\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}

\item{Resources}{[required] The IDs of the resources, separated by spaces.

Constraints: Up to 1000 resource IDs. We recommend breaking up this
request into smaller batches.}

\item{Tags}{[required] The tags. The \code{value} parameter is required, but if you don't want the
tag to have a value, specify the parameter with no value, and we set the
value to an empty string.}
}
\description{
Adds or overwrites only the specified tags for the specified Amazon EC2 resource or resources. When you specify an existing tag key, the value is overwritten with the new value. Each resource can have a maximum of 50 tags. Each tag consists of a key and optional value. Tag keys must be unique per resource.

See \url{https://www.paws-r-sdk.com/docs/ec2_create_tags/} for full documentation.
}
\keyword{internal}
