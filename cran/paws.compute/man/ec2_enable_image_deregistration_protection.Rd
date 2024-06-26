% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_enable_image_deregistration_protection}
\alias{ec2_enable_image_deregistration_protection}
\title{Enables deregistration protection for an AMI}
\usage{
ec2_enable_image_deregistration_protection(
  ImageId,
  WithCooldown = NULL,
  DryRun = NULL
)
}
\arguments{
\item{ImageId}{[required] The ID of the AMI.}

\item{WithCooldown}{If \code{true}, enforces deregistration protection for 24 hours after
deregistration protection is disabled.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Enables deregistration protection for an AMI. When deregistration protection is enabled, the AMI can't be deregistered.

See \url{https://www.paws-r-sdk.com/docs/ec2_enable_image_deregistration_protection/} for full documentation.
}
\keyword{internal}
