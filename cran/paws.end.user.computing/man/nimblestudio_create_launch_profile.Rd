% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nimblestudio_operations.R
\name{nimblestudio_create_launch_profile}
\alias{nimblestudio_create_launch_profile}
\title{Create a launch profile}
\usage{
nimblestudio_create_launch_profile(
  clientToken = NULL,
  description = NULL,
  ec2SubnetIds,
  launchProfileProtocolVersions,
  name,
  streamConfiguration,
  studioComponentIds,
  studioId,
  tags = NULL
)
}
\arguments{
\item{clientToken}{Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you don’t specify a client token, the
Amazon Web Services SDK automatically generates a client token and uses
it for the request to ensure idempotency.}

\item{description}{The description.}

\item{ec2SubnetIds}{[required] Specifies the IDs of the EC2 subnets where streaming sessions will be
accessible from. These subnets must support the specified instance
types.}

\item{launchProfileProtocolVersions}{[required] The version number of the protocol that is used by the launch profile.
The only valid version is "2021-03-31".}

\item{name}{[required] The name for the launch profile.}

\item{streamConfiguration}{[required] A configuration for a streaming session.}

\item{studioComponentIds}{[required] Unique identifiers for a collection of studio components that can be
used with this launch profile.}

\item{studioId}{[required] The studio ID.}

\item{tags}{A collection of labels, in the form of key-value pairs, that apply to
this resource.}
}
\description{
Create a launch profile.

See \url{https://www.paws-r-sdk.com/docs/nimblestudio_create_launch_profile/} for full documentation.
}
\keyword{internal}
