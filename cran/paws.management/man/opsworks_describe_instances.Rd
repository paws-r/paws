% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/opsworks_operations.R
\name{opsworks_describe_instances}
\alias{opsworks_describe_instances}
\title{Requests a description of a set of instances}
\usage{
opsworks_describe_instances(StackId = NULL, LayerId = NULL, InstanceIds = NULL)
}
\arguments{
\item{StackId}{A stack ID. If you use this parameter,
\code{\link[=opsworks_describe_instances]{describe_instances}} returns descriptions
of the instances associated with the specified stack.}

\item{LayerId}{A layer ID. If you use this parameter,
\code{\link[=opsworks_describe_instances]{describe_instances}} returns descriptions
of the instances associated with the specified layer.}

\item{InstanceIds}{An array of instance IDs to be described. If you use this parameter,
\code{\link[=opsworks_describe_instances]{describe_instances}} returns a
description of the specified instances. Otherwise, it returns a
description of every instance.}
}
\description{
Requests a description of a set of instances.

See \url{https://www.paws-r-sdk.com/docs/opsworks_describe_instances/} for full documentation.
}
\keyword{internal}
