% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_create_agent_status}
\alias{connect_create_agent_status}
\title{This API is in preview release for Amazon Connect and is subject to
change}
\usage{
connect_create_agent_status(
  InstanceId,
  Name,
  Description = NULL,
  State,
  DisplayOrder = NULL,
  Tags = NULL
)
}
\arguments{
\item{InstanceId}{[required] The identifier of the Amazon Connect instance. You can \href{https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html}{find the instance ID}
in the Amazon Resource Name (ARN) of the instance.}

\item{Name}{[required] The name of the status.}

\item{Description}{The description of the status.}

\item{State}{[required] The state of the status.}

\item{DisplayOrder}{The display order of the status.}

\item{Tags}{The tags used to organize, track, or control access for this resource.
For example, \{ "Tags": \{"key1":"value1", "key2":"value2"\} \}.}
}
\description{
This API is in preview release for Amazon Connect and is subject to change.

See \url{https://www.paws-r-sdk.com/docs/connect_create_agent_status/} for full documentation.
}
\keyword{internal}
