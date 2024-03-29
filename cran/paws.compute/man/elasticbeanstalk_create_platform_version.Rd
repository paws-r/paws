% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/elasticbeanstalk_operations.R
\name{elasticbeanstalk_create_platform_version}
\alias{elasticbeanstalk_create_platform_version}
\title{Create a new version of your custom platform}
\usage{
elasticbeanstalk_create_platform_version(
  PlatformName,
  PlatformVersion,
  PlatformDefinitionBundle,
  EnvironmentName = NULL,
  OptionSettings = NULL,
  Tags = NULL
)
}
\arguments{
\item{PlatformName}{[required] The name of your custom platform.}

\item{PlatformVersion}{[required] The number, such as 1.0.2, for the new platform version.}

\item{PlatformDefinitionBundle}{[required] The location of the platform definition archive in Amazon S3.}

\item{EnvironmentName}{The name of the builder environment.}

\item{OptionSettings}{The configuration option settings to apply to the builder environment.}

\item{Tags}{Specifies the tags applied to the new platform version.

Elastic Beanstalk applies these tags only to the platform version.
Environments that you create using the platform version don't inherit
the tags.}
}
\description{
Create a new version of your custom platform.

See \url{https://www.paws-r-sdk.com/docs/elasticbeanstalk_create_platform_version/} for full documentation.
}
\keyword{internal}
